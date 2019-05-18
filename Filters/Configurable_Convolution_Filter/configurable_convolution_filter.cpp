#include "configurable_convolution_filter.h"

pixel pixel_weighted_average
(
		s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH],
		s_int kern_sum,
		s_int kern_off,
		pixel window[KERNEL_HEIGHT][KERNEL_WIDTH]
)
{
#pragma HLS INLINE

	ap_int<MAC_BITS> out_temp = 0;
	ap_int<MUL_BITS> temp = 0;
#pragma HLS RESOURCE variable=temp core=Mul_LUT

	Edge_i:  for(int i = 0; i < KERNEL_HEIGHT; i++)
		Edge_j: for(int j = 0; j < KERNEL_WIDTH; j++)
		{
			temp = window[i][j] * kernel[i][j];
			out_temp = out_temp + temp;
		}

	return ((out_temp / kern_sum) + kern_off)(PIXEL_BITS - 1,0);
}

#if defined(CONFIGURABLE)
void convolution_filter
(
		s_int kernel_config[CONFIG_LEN],
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
)
{
	//#pragma HLS RESOURCE variable=kernel_config core=RAM_S2P_LUTRAM
	#pragma HLS INTERFACE s_axilite port=kernel_config
#else
void convolution_filter
(
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
)
{
#endif

#pragma HLS INTERFACE axis port=out_img
#pragma HLS INTERFACE axis port=in_img

	//line buffer
	static pixel line_buffer[KERNEL_HEIGHT - 1][IMG_WIDTH];
#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1

	//processing window
	static pixel window[KERNEL_HEIGHT][KERNEL_WIDTH];
#pragma HLS ARRAY_PARTITION variable=window complete dim=0

#if defined(CONFIGURABLE)
	//kernel_config
	static s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH];
#pragma HLS ARRAY_PARTITION variable=kernel complete dim=0

	static s_int kernel_sum = 1;
	static s_int kernel_off = 0;

	static int i = 0;
	static int j = 0;
	static int iteration = 0;

	iteration = 0;
	i = 0;
	j = 0;
#else
	s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH] =
	{
			{ 30, 	39,    48,     1,    10,    19,    28},
			{38,    47,     7,     9,    18,    27,    29},
			{46,     6,     8,    17,    26,    35,    37},
			{5,    14,    16,    25,    34,    36,    45},
			{13,    15,    24,    33,    42 ,   44,     4},
			{21,    23,    32,    41,    43,     3 ,   12},
			{22,    31,    40,    49,     2 ,   11 ,   20}
	};
	s_int kernel_sum = 1;
	s_int kernel_off = 0;
#endif

	Loop_row: for(int row = 0; row < IMG_HEIGHT + KERNEL_MID_HEIGHT; row++)
		Loop_col: for(int col = 0; col < IMG_WIDTH + KERNEL_MID_WIDTH; col++)
		{
#pragma HLS PIPELINE II=1

#if defined(CONFIGURABLE)
			//kernel_config setup
			if (iteration < KERNEL_HEIGHT * KERNEL_WIDTH)
			{
				if (j >= KERNEL_WIDTH)
				{
					j = 0;
					i++;
				}
				kernel[i][j] = kernel_config[iteration];
				j++;
			}
			else if (iteration == KERNEL_SUM_INDEX)
				kernel_sum = kernel_config[KERNEL_SUM_INDEX];
			else if (iteration == KERNEL_OFF_INDEX)
				kernel_off = kernel_config[KERNEL_OFF_INDEX];
#endif

			//shift processing window columns
			for(int ii = 0; ii < KERNEL_HEIGHT; ii++)
				for(int jj = 0; jj < KERNEL_WIDTH - 1; jj++)
					window[ii][jj] = window[ii][jj+1];

			//copy KERN_H - 1 values from line_buffer to processing window
			if(col < IMG_WIDTH)
			{
				for(int ii = 0; ii < KERNEL_HEIGHT - 1; ii++)
				{
					window[ii][KERNEL_WIDTH - 1] = line_buffer[ii][col];
					if (ii < KERNEL_HEIGHT - 2)
						line_buffer[ii][col] = line_buffer[ii + 1][col];
				}
			}

			//input value
			if(col < IMG_WIDTH && row < IMG_HEIGHT)
			{
				pixel in_temp = in_img[row * IMG_WIDTH + col];
				window[KERNEL_HEIGHT - 1][KERNEL_WIDTH - 1] = in_temp;
				line_buffer[KERNEL_HEIGHT - 2][col] = in_temp;
			}

			//output value
			if (row >= KERNEL_MID_HEIGHT && col >= KERNEL_MID_WIDTH)
			{
				pixel out = pixel_weighted_average(kernel, kernel_sum, kernel_off, window);
				out_img[(row - KERNEL_MID_HEIGHT) * IMG_WIDTH + (col - KERNEL_MID_WIDTH)] = out;
			}

#if defined(CONFIGURABLE)
			iteration++;
#endif

		} //col loop

}
