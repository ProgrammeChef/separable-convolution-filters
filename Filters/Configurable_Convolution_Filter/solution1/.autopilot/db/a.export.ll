; ModuleID = '/mnt/hgfs/Dropbox/Filtri_VivadoHLS/Configurable_Convolution_Filter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@window_V_6_6 = internal unnamed_addr global i8 0
@window_V_6_5 = internal unnamed_addr global i8 0
@window_V_6_4 = internal unnamed_addr global i8 0
@window_V_6_3 = internal unnamed_addr global i8 0
@window_V_6_2 = internal unnamed_addr global i8 0
@window_V_6_1 = internal unnamed_addr global i8 0
@window_V_5_6 = internal unnamed_addr global i8 0
@window_V_5_5 = internal unnamed_addr global i8 0
@window_V_5_4 = internal unnamed_addr global i8 0
@window_V_5_3 = internal unnamed_addr global i8 0
@window_V_5_2 = internal unnamed_addr global i8 0
@window_V_5_1 = internal unnamed_addr global i8 0
@window_V_4_6 = internal unnamed_addr global i8 0
@window_V_4_5 = internal unnamed_addr global i8 0
@window_V_4_4 = internal unnamed_addr global i8 0
@window_V_4_3 = internal unnamed_addr global i8 0
@window_V_4_2 = internal unnamed_addr global i8 0
@window_V_4_1 = internal unnamed_addr global i8 0
@window_V_3_6 = internal unnamed_addr global i8 0
@window_V_3_5 = internal unnamed_addr global i8 0
@window_V_3_4 = internal unnamed_addr global i8 0
@window_V_3_3 = internal unnamed_addr global i8 0
@window_V_3_2 = internal unnamed_addr global i8 0
@window_V_3_1 = internal unnamed_addr global i8 0
@window_V_2_6 = internal unnamed_addr global i8 0
@window_V_2_5 = internal unnamed_addr global i8 0
@window_V_2_4 = internal unnamed_addr global i8 0
@window_V_2_3 = internal unnamed_addr global i8 0
@window_V_2_2 = internal unnamed_addr global i8 0
@window_V_2_1 = internal unnamed_addr global i8 0
@window_V_1_6 = internal unnamed_addr global i8 0
@window_V_1_5 = internal unnamed_addr global i8 0
@window_V_1_4 = internal unnamed_addr global i8 0
@window_V_1_3 = internal unnamed_addr global i8 0
@window_V_1_2 = internal unnamed_addr global i8 0
@window_V_1_1 = internal unnamed_addr global i8 0
@window_V_0_6 = internal unnamed_addr global i8 0
@window_V_0_5 = internal unnamed_addr global i8 0
@window_V_0_4 = internal unnamed_addr global i8 0
@window_V_0_3 = internal unnamed_addr global i8 0
@window_V_0_2 = internal unnamed_addr global i8 0
@window_V_0_1 = internal unnamed_addr global i8 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@line_buffer_V_5 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_4 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_3 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_2 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_1 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_0 = internal unnamed_addr global [640 x i8] zeroinitializer
@convolution_filter_str = internal unnamed_addr constant [19 x i8] c"convolution_filter\00"
@Loop_row_Loop_col_str = internal unnamed_addr constant [18 x i8] c"Loop_row_Loop_col\00"
@p_str9 = private unnamed_addr constant [9 x i8] c"Loop_col\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"Mul_LUT\00", align 1
@p_str4 = private unnamed_addr constant [29 x i8] c"?Mul_LUT_temp_Region_2424343\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @convolution_filter(i8* %in_img_V, i8* %out_img_V) {
.preheader245.preheader:
  %in_temp_V_1 = alloca i8
  %window_V_5_6_loc_1 = alloca i8
  %window_V_4_6_loc_1 = alloca i8
  %window_V_3_6_loc_1 = alloca i8
  %window_V_2_6_loc_1 = alloca i8
  %window_V_1_6_loc_1 = alloca i8
  %window_V_0_6_loc_1 = alloca i8
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %in_img_V), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_img_V), !map !78
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @convolution_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %out_img_V, [5 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_img_V, [5 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  %window_V_0_6_load = load i8* @window_V_0_6, align 1
  %window_V_1_6_load = load i8* @window_V_1_6, align 1
  %window_V_2_6_load = load i8* @window_V_2_6, align 1
  %window_V_3_6_load = load i8* @window_V_3_6, align 1
  %window_V_4_6_load = load i8* @window_V_4_6, align 1
  %window_V_5_6_load = load i8* @window_V_5_6, align 1
  %window_V_6_6_load = load i8* @window_V_6_6, align 1
  store i8 %window_V_0_6_load, i8* %window_V_0_6_loc_1
  store i8 %window_V_1_6_load, i8* %window_V_1_6_loc_1
  store i8 %window_V_2_6_load, i8* %window_V_2_6_loc_1
  store i8 %window_V_3_6_load, i8* %window_V_3_6_loc_1
  store i8 %window_V_4_6_load, i8* %window_V_4_6_loc_1
  store i8 %window_V_5_6_load, i8* %window_V_5_6_loc_1
  store i8 %window_V_6_6_load, i8* %in_temp_V_1
  br label %0

; <label>:0                                       ; preds = %.preheader245.preheader, %._crit_edge251
  %indvar_flatten = phi i19 [ 0, %.preheader245.preheader ], [ %indvar_flatten_next, %._crit_edge251 ]
  %row = phi i9 [ 0, %.preheader245.preheader ], [ %row_mid2, %._crit_edge251 ]
  %col = phi i10 [ 0, %.preheader245.preheader ], [ %col_1, %._crit_edge251 ]
  %in_temp_V_1_load = load i8* %in_temp_V_1
  %window_V_5_6_loc_1_load = load i8* %window_V_5_6_loc_1
  %window_V_4_6_loc_1_load = load i8* %window_V_4_6_loc_1
  %window_V_3_6_loc_1_load = load i8* %window_V_3_6_loc_1
  %window_V_2_6_loc_1_load = load i8* %window_V_2_6_loc_1
  %window_V_1_6_loc_1_load = load i8* %window_V_1_6_loc_1
  %window_V_0_6_loc_1_load = load i8* %window_V_0_6_loc_1
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -213719
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.preheader.preheader:                             ; preds = %.reset
  %tmp_6 = zext i10 %col_mid2 to i64
  %line_buffer_V_0_addr = getelementptr [640 x i8]* @line_buffer_V_0, i64 0, i64 %tmp_6
  %line_buffer_V_0_load = load i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_0_load, i8* @window_V_0_6, align 2
  %line_buffer_V_1_addr = getelementptr [640 x i8]* @line_buffer_V_1, i64 0, i64 %tmp_6
  %line_buffer_V_1_load = load i8* %line_buffer_V_1_addr, align 1
  store i8 %line_buffer_V_1_load, i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_1_load, i8* @window_V_1_6, align 1
  %line_buffer_V_2_addr = getelementptr [640 x i8]* @line_buffer_V_2, i64 0, i64 %tmp_6
  %line_buffer_V_2_load = load i8* %line_buffer_V_2_addr, align 1
  store i8 %line_buffer_V_2_load, i8* %line_buffer_V_1_addr, align 1
  store i8 %line_buffer_V_2_load, i8* @window_V_2_6, align 2
  %line_buffer_V_3_addr = getelementptr [640 x i8]* @line_buffer_V_3, i64 0, i64 %tmp_6
  %line_buffer_V_3_load = load i8* %line_buffer_V_3_addr, align 1
  store i8 %line_buffer_V_3_load, i8* %line_buffer_V_2_addr, align 1
  store i8 %line_buffer_V_3_load, i8* @window_V_3_6, align 1
  %line_buffer_V_4_addr = getelementptr [640 x i8]* @line_buffer_V_4, i64 0, i64 %tmp_6
  %line_buffer_V_4_load = load i8* %line_buffer_V_4_addr, align 1
  store i8 %line_buffer_V_4_load, i8* %line_buffer_V_3_addr, align 1
  store i8 %line_buffer_V_4_load, i8* @window_V_4_6, align 2
  %line_buffer_V_5_addr = getelementptr [640 x i8]* @line_buffer_V_5, i64 0, i64 %tmp_6
  %line_buffer_V_5_load = load i8* %line_buffer_V_5_addr, align 1
  store i8 %line_buffer_V_5_load, i8* %line_buffer_V_4_addr, align 1
  store i8 %line_buffer_V_5_load, i8* @window_V_5_6, align 1
  store i8 %line_buffer_V_0_load, i8* %window_V_0_6_loc_1
  store i8 %line_buffer_V_1_load, i8* %window_V_1_6_loc_1
  store i8 %line_buffer_V_2_load, i8* %window_V_2_6_loc_1
  store i8 %line_buffer_V_3_load, i8* %window_V_3_6_loc_1
  store i8 %line_buffer_V_4_load, i8* %window_V_4_6_loc_1
  store i8 %line_buffer_V_5_load, i8* %window_V_5_6_loc_1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.reset
  %or_cond = and i1 %tmp_4, %tmp_mid2
  br i1 %or_cond, label %1, label %.loopexit._crit_edge

; <label>:1                                       ; preds = %.loopexit
  %in_temp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %in_img_V)
  store i8 %in_temp_V, i8* @window_V_6_6, align 2
  %tmp_8 = zext i10 %col_mid2 to i64
  %line_buffer_V_5_addr_1 = getelementptr [640 x i8]* @line_buffer_V_5, i64 0, i64 %tmp_8
  store i8 %in_temp_V, i8* %line_buffer_V_5_addr_1, align 1
  store i8 %in_temp_V, i8* %in_temp_V_1
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %1, %.loopexit
  %tmp_9 = icmp ugt i10 %col_mid2, 2
  %or_cond1 = and i1 %tmp_2_mid2, %tmp_9
  br i1 %or_cond1, label %.preheader6, label %._crit_edge251

.preheader6:                                      ; preds = %.loopexit._crit_edge
  %in_temp_V_1_load_1 = load i8* %in_temp_V_1
  %window_V_5_6_loc_1_load_1 = load i8* %window_V_5_6_loc_1
  %window_V_4_6_loc_1_load_1 = load i8* %window_V_4_6_loc_1
  %window_V_3_6_loc_1_load_1 = load i8* %window_V_3_6_loc_1
  %window_V_2_6_loc_1_load_1 = load i8* %window_V_2_6_loc_1
  %window_V_1_6_loc_1_load_1 = load i8* %window_V_1_6_loc_1
  %window_V_0_6_loc_1_load_1 = load i8* %window_V_0_6_loc_1
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_cast = zext i8 %window_V_0_1_load to i14
  %r_V = mul i14 %lhs_V_cast, 30
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_s)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_0_1_cast = zext i8 %window_V_0_2_load to i15
  %r_V_0_1 = mul i15 %lhs_V_0_1_cast, 39
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_0_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_1)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_0_2_cast = zext i8 %window_V_0_3_load to i15
  %r_V_0_2 = mul i15 %lhs_V_0_2_cast, 48
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_0_2, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_7)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecFUCore(i8 %window_V_0_6_loc_1_load, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_3)
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_0_4_cast = zext i8 %window_V_0_5_load to i13
  %r_V_0_4 = mul i13 %lhs_V_0_4_cast, 10
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_0_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_10)
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_0_5_cast = zext i8 %window_V_0_6_loc_1_load to i14
  %r_V_0_5 = mul i14 %lhs_V_0_5_cast, 19
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_0_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_11)
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_0_6_cast = zext i8 %window_V_0_6_loc_1_load_1 to i14
  %r_V_0_6 = mul i14 %lhs_V_0_6_cast, 28
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_0_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_12)
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_cast = zext i8 %window_V_1_1_load to i15
  %r_V_1 = mul i15 %lhs_V_1_cast, 38
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_13)
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_1_cast = zext i8 %window_V_1_2_load to i15
  %r_V_1_1 = mul i15 %lhs_V_1_1_cast, 47
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_1_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_14)
  %tmp_56 = trunc i15 %r_V_1_1 to i8
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_2_cast = zext i8 %window_V_1_3_load to i12
  %r_V_1_2 = mul i12 %lhs_V_1_2_cast, 7
  call void (...)* @_ssdm_op_SpecFUCore(i12 %r_V_1_2, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_15)
  %tmp_57 = trunc i12 %r_V_1_2 to i8
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_3_cast = zext i8 %window_V_1_4_load to i13
  %r_V_1_3 = mul i13 %lhs_V_1_3_cast, 9
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_1_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_16)
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_4_cast = zext i8 %window_V_1_5_load to i14
  %r_V_1_4 = mul i14 %lhs_V_1_4_cast, 18
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_1_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_17)
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_5_cast = zext i8 %window_V_1_6_loc_1_load to i14
  %r_V_1_5 = mul i14 %lhs_V_1_5_cast, 27
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_1_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_18)
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_1_6_cast = zext i8 %window_V_1_6_loc_1_load_1 to i14
  %r_V_1_6 = mul i14 %lhs_V_1_6_cast, 29
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_1_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_19)
  %tmp_58 = trunc i14 %r_V_1_6 to i8
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_2_cast = zext i8 %window_V_2_1_load to i15
  %r_V_2 = mul i15 %lhs_V_2_cast, 46
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_2, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_20)
  %tmp_59 = trunc i15 %r_V_2 to i8
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_2_1_cast = zext i8 %window_V_2_2_load to i12
  %r_V_2_1 = mul i12 %lhs_V_2_1_cast, 6
  call void (...)* @_ssdm_op_SpecFUCore(i12 %r_V_2_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_21)
  %tmp_60 = trunc i12 %r_V_2_1 to i8
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecFUCore([29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_22)
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_2_3_cast = zext i8 %window_V_2_4_load to i14
  %r_V_2_3 = mul i14 %lhs_V_2_3_cast, 17
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_2_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_23)
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_2_4_cast = zext i8 %window_V_2_5_load to i14
  %r_V_2_4 = mul i14 %lhs_V_2_4_cast, 26
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_2_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_24)
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_2_5_cast = zext i8 %window_V_2_6_loc_1_load to i15
  %r_V_2_5 = mul i15 %lhs_V_2_5_cast, 35
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_2_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_25)
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_2_6_cast = zext i8 %window_V_2_6_loc_1_load_1 to i15
  %r_V_2_6 = mul i15 %lhs_V_2_6_cast, 37
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_2_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_26)
  %tmp_61 = trunc i15 %r_V_2_6 to i8
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_3_cast = zext i8 %window_V_3_1_load to i12
  %r_V_3 = mul i12 %lhs_V_3_cast, 5
  call void (...)* @_ssdm_op_SpecFUCore(i12 %r_V_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_27)
  %tmp_62 = trunc i12 %r_V_3 to i8
  %tmp_28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_3_1_cast = zext i8 %window_V_3_2_load to i13
  %r_V_3_1 = mul i13 %lhs_V_3_1_cast, 14
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_3_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_28)
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecFUCore([29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_29)
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_3_3_cast = zext i8 %window_V_3_4_load to i14
  %r_V_3_3 = mul i14 %lhs_V_3_3_cast, 25
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_3_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_30)
  %tmp_31 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_3_4_cast = zext i8 %window_V_3_5_load to i15
  %r_V_3_4 = mul i15 %lhs_V_3_4_cast, 34
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_3_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_31)
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_3_5_cast = zext i8 %window_V_3_6_loc_1_load to i15
  %r_V_3_5 = mul i15 %lhs_V_3_5_cast, 36
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_3_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_32)
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_3_6_cast = zext i8 %window_V_3_6_loc_1_load_1 to i15
  %r_V_3_6 = mul i15 %lhs_V_3_6_cast, 45
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_3_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_33)
  %tmp_34 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_4_cast = zext i8 %window_V_4_1_load to i13
  %r_V_4 = mul i13 %lhs_V_4_cast, 13
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_34)
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_4_1_cast = zext i8 %window_V_4_2_load to i13
  %r_V_4_1 = mul i13 %lhs_V_4_1_cast, 15
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_4_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_35)
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_4_2_cast = zext i8 %window_V_4_3_load to i14
  %r_V_4_2 = mul i14 %lhs_V_4_2_cast, 24
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_4_2, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_36)
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_4_3_cast = zext i8 %window_V_4_4_load to i15
  %r_V_4_3 = mul i15 %lhs_V_4_3_cast, 33
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_4_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_37)
  %tmp_38 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_4_4_cast = zext i8 %window_V_4_5_load to i15
  %r_V_4_4 = mul i15 %lhs_V_4_4_cast, 42
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_4_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_38)
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_4_5_cast = zext i8 %window_V_4_6_loc_1_load to i15
  %r_V_4_5 = mul i15 %lhs_V_4_5_cast, 44
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_4_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_39)
  %tmp_40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecFUCore([29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_40)
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_5_cast = zext i8 %window_V_5_1_load to i14
  %r_V_5 = mul i14 %lhs_V_5_cast, 21
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_41)
  %tmp_42 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_5_1_cast = zext i8 %window_V_5_2_load to i14
  %r_V_5_1 = mul i14 %lhs_V_5_1_cast, 23
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_5_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_42)
  %tmp_43 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecFUCore([29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_43)
  %tmp_44 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_5_3_cast = zext i8 %window_V_5_4_load to i15
  %r_V_5_3 = mul i15 %lhs_V_5_3_cast, 41
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_5_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_44)
  %tmp_45 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_5_4_cast = zext i8 %window_V_5_5_load to i15
  %r_V_5_4 = mul i15 %lhs_V_5_4_cast, 43
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_5_4, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_45)
  %tmp_46 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_5_5_cast = zext i8 %window_V_5_6_loc_1_load to i11
  %r_V_5_5 = mul i11 %lhs_V_5_5_cast, 3
  call void (...)* @_ssdm_op_SpecFUCore(i11 %r_V_5_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_46)
  %tmp_47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_5_6_cast = zext i8 %window_V_5_6_loc_1_load_1 to i13
  %r_V_5_6 = mul i13 %lhs_V_5_6_cast, 12
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_5_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_47)
  %tmp_48 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_6_cast = zext i8 %window_V_6_1_load to i14
  %r_V_6 = mul i14 %lhs_V_6_cast, 22
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_48)
  %tmp_49 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_6_1_cast = zext i8 %window_V_6_2_load to i14
  %r_V_6_1 = mul i14 %lhs_V_6_1_cast, 31
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_6_1, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_49)
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_6_2_cast = zext i8 %window_V_6_3_load to i15
  %r_V_6_2 = mul i15 %lhs_V_6_2_cast, 40
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_6_2, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_50)
  %tmp_51 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_6_3_cast = zext i8 %window_V_6_4_load to i15
  %r_V_6_3 = mul i15 %lhs_V_6_3_cast, 49
  call void (...)* @_ssdm_op_SpecFUCore(i15 %r_V_6_3, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_51)
  %tmp_52 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecFUCore([29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_52)
  %tmp_63 = shl i8 %window_V_6_5_load, 1
  %tmp_53 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_6_5_cast = zext i8 %in_temp_V_1_load to i13
  %r_V_6_5 = mul i13 %lhs_V_6_5_cast, 11
  call void (...)* @_ssdm_op_SpecFUCore(i13 %r_V_6_5, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_53)
  %tmp_64 = trunc i13 %r_V_6_5 to i8
  %tmp_54 = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str4)
  %lhs_V_6_6_cast = zext i8 %in_temp_V_1_load_1 to i14
  %r_V_6_6 = mul i14 %lhs_V_6_6_cast, 20
  call void (...)* @_ssdm_op_SpecFUCore(i14 %r_V_6_6, [29 x i8]* @p_str4, [1 x i8]* @p_str, [8 x i8]* @p_str5, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_50 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str4, i32 %tmp_54)
  %tmp_65 = trunc i14 %r_V_6_6 to i8
  %tmp5 = add i15 %r_V_0_2, %r_V_0_1
  %tmp_66 = trunc i14 %r_V to i8
  %tmp_67 = trunc i15 %tmp5 to i8
  %tmp4_cast = add i8 %tmp_66, %tmp_67
  %tmp7 = add i14 %r_V_0_6, %r_V_0_5
  %tmp_68 = trunc i13 %r_V_0_4 to i8
  %tmp_69 = trunc i14 %tmp7 to i8
  %tmp6_cast = add i8 %tmp_68, %tmp_69
  %tmp3 = add i8 %tmp4_cast, %tmp6_cast
  %tmp10 = add i8 %tmp_57, %tmp_56
  %tmp_70 = trunc i15 %r_V_1 to i8
  %tmp9_cast = add i8 %tmp_70, %tmp10
  %tmp12 = add i14 %r_V_1_5, %r_V_1_4
  %tmp_71 = trunc i13 %r_V_1_3 to i8
  %tmp_72 = trunc i14 %tmp12 to i8
  %tmp11_cast = add i8 %tmp_71, %tmp_72
  %tmp8 = add i8 %tmp9_cast, %tmp11_cast
  %tmp2 = add i8 %tmp3, %tmp8
  %tmp16 = add i8 %tmp_60, %tmp_59
  %tmp15 = add i8 %tmp_58, %tmp16
  %tmp18 = add i14 %r_V_2_4, %r_V_2_3
  %tmp_73 = shl i8 %window_V_2_3_load, 3
  %tmp_74 = trunc i14 %tmp18 to i8
  %tmp17_cast = add i8 %tmp_73, %tmp_74
  %tmp14 = add i8 %tmp15, %tmp17_cast
  %tmp21 = add i8 %tmp_62, %tmp_61
  %tmp_75 = trunc i15 %r_V_2_5 to i8
  %tmp20_cast = add i8 %tmp_75, %tmp21
  %tmp_76 = trunc i14 %r_V_3_3 to i8
  %tmp_77 = shl i8 %window_V_3_3_load, 4
  %tmp_78 = trunc i13 %r_V_3_1 to i8
  %tmp_79 = add i8 %tmp_76, %tmp_77
  %tmp22_cast = add i8 %tmp_78, %tmp_79
  %tmp19 = add i8 %tmp20_cast, %tmp22_cast
  %tmp13 = add i8 %tmp14, %tmp19
  %tmp1 = add i8 %tmp2, %tmp13
  %tmp28 = add i15 %r_V_3_6, %r_V_3_5
  %tmp27 = add i15 %r_V_3_4, %tmp28
  %tmp_80 = trunc i15 %tmp27 to i8
  %tmp_81 = trunc i14 %r_V_4_2 to i8
  %tmp_82 = trunc i13 %r_V_4_1 to i8
  %tmp_83 = trunc i13 %r_V_4 to i8
  %tmp_84 = add i8 %tmp_81, %tmp_82
  %tmp29_cast = add i8 %tmp_83, %tmp_84
  %tmp26 = add i8 %tmp_80, %tmp29_cast
  %tmp33 = add i15 %r_V_4_5, %r_V_4_4
  %tmp32 = add i15 %r_V_4_3, %tmp33
  %tmp_85 = trunc i15 %tmp32 to i8
  %tmp35 = add i14 %r_V_5_1, %r_V_5
  %tmp_86 = shl i8 %window_V_4_6_loc_1_load_1, 2
  %tmp_87 = trunc i14 %tmp35 to i8
  %tmp34_cast = add i8 %tmp_86, %tmp_87
  %tmp31 = add i8 %tmp_85, %tmp34_cast
  %tmp25 = add i8 %tmp26, %tmp31
  %tmp39 = add i15 %r_V_5_4, %r_V_5_3
  %tmp_88 = shl i8 %window_V_5_3_load, 5
  %tmp_89 = trunc i15 %tmp39 to i8
  %tmp38_cast = add i8 %tmp_88, %tmp_89
  %tmp_90 = trunc i14 %r_V_6 to i8
  %tmp_91 = trunc i13 %r_V_5_6 to i8
  %tmp_92 = trunc i11 %r_V_5_5 to i8
  %tmp_93 = add i8 %tmp_90, %tmp_91
  %tmp40_cast = add i8 %tmp_92, %tmp_93
  %tmp37 = add i8 %tmp38_cast, %tmp40_cast
  %tmp44 = add i15 %r_V_6_3, %r_V_6_2
  %tmp_94 = trunc i14 %r_V_6_1 to i8
  %tmp_95 = trunc i15 %tmp44 to i8
  %tmp43_cast = add i8 %tmp_94, %tmp_95
  %tmp46 = add i8 %tmp_64, %tmp_63
  %tmp47 = add i8 %window_V_0_4_load, %tmp_65
  %tmp45 = add i8 %tmp46, %tmp47
  %tmp42 = add i8 %tmp43_cast, %tmp45
  %tmp36 = add i8 %tmp37, %tmp42
  %tmp24 = add i8 %tmp25, %tmp36
  %tmp_55 = add i8 %tmp24, %tmp1
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %out_img_V, i8 %tmp_55)
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %.preheader6, %.loopexit._crit_edge
  %empty_51 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str9, i32 %tmp_5)
  %col_1 = add i10 %col_mid2, 1
  br label %0

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @Loop_row_Loop_col_str)
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 310569, i64 310569, i64 310569)
  %exitcond = icmp eq i10 %col, -381
  %col_mid2 = select i1 %exitcond, i10 0, i10 %col
  %row_s = add i9 %row, 1
  %tmp_mid1 = icmp ult i9 %row_s, -32
  %tmp = icmp ult i9 %row, -32
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp
  %tmp_2_mid1 = icmp ugt i9 %row_s, 2
  %tmp_2 = icmp ugt i9 %row, 2
  %tmp_2_mid2 = select i1 %exitcond, i1 %tmp_2_mid1, i1 %tmp_2
  %row_mid2 = select i1 %exitcond, i9 %row_s, i9 %row
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str9) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %window_V_0_1_load = load i8* @window_V_0_1, align 1
  %window_V_0_2_load = load i8* @window_V_0_2, align 2
  store i8 %window_V_0_2_load, i8* @window_V_0_1, align 1
  %window_V_0_3_load = load i8* @window_V_0_3, align 1
  store i8 %window_V_0_3_load, i8* @window_V_0_2, align 2
  %window_V_0_4_load = load i8* @window_V_0_4, align 4
  store i8 %window_V_0_4_load, i8* @window_V_0_3, align 1
  %window_V_0_5_load = load i8* @window_V_0_5, align 1
  store i8 %window_V_0_5_load, i8* @window_V_0_4, align 4
  store i8 %window_V_0_6_loc_1_load, i8* @window_V_0_5, align 1
  %window_V_1_1_load = load i8* @window_V_1_1, align 1
  %window_V_1_2_load = load i8* @window_V_1_2, align 1
  store i8 %window_V_1_2_load, i8* @window_V_1_1, align 1
  %window_V_1_3_load = load i8* @window_V_1_3, align 1
  store i8 %window_V_1_3_load, i8* @window_V_1_2, align 1
  %window_V_1_4_load = load i8* @window_V_1_4, align 1
  store i8 %window_V_1_4_load, i8* @window_V_1_3, align 1
  %window_V_1_5_load = load i8* @window_V_1_5, align 1
  store i8 %window_V_1_5_load, i8* @window_V_1_4, align 1
  store i8 %window_V_1_6_loc_1_load, i8* @window_V_1_5, align 1
  %window_V_2_1_load = load i8* @window_V_2_1, align 1
  %window_V_2_2_load = load i8* @window_V_2_2, align 2
  store i8 %window_V_2_2_load, i8* @window_V_2_1, align 1
  %window_V_2_3_load = load i8* @window_V_2_3, align 1
  store i8 %window_V_2_3_load, i8* @window_V_2_2, align 2
  %window_V_2_4_load = load i8* @window_V_2_4, align 2
  store i8 %window_V_2_4_load, i8* @window_V_2_3, align 1
  %window_V_2_5_load = load i8* @window_V_2_5, align 1
  store i8 %window_V_2_5_load, i8* @window_V_2_4, align 2
  store i8 %window_V_2_6_loc_1_load, i8* @window_V_2_5, align 1
  %window_V_3_1_load = load i8* @window_V_3_1, align 1
  %window_V_3_2_load = load i8* @window_V_3_2, align 1
  store i8 %window_V_3_2_load, i8* @window_V_3_1, align 1
  %window_V_3_3_load = load i8* @window_V_3_3, align 1
  store i8 %window_V_3_3_load, i8* @window_V_3_2, align 1
  %window_V_3_4_load = load i8* @window_V_3_4, align 1
  store i8 %window_V_3_4_load, i8* @window_V_3_3, align 1
  %window_V_3_5_load = load i8* @window_V_3_5, align 1
  store i8 %window_V_3_5_load, i8* @window_V_3_4, align 1
  store i8 %window_V_3_6_loc_1_load, i8* @window_V_3_5, align 1
  %window_V_4_1_load = load i8* @window_V_4_1, align 1
  %window_V_4_2_load = load i8* @window_V_4_2, align 2
  store i8 %window_V_4_2_load, i8* @window_V_4_1, align 1
  %window_V_4_3_load = load i8* @window_V_4_3, align 1
  store i8 %window_V_4_3_load, i8* @window_V_4_2, align 2
  %window_V_4_4_load = load i8* @window_V_4_4, align 4
  store i8 %window_V_4_4_load, i8* @window_V_4_3, align 1
  %window_V_4_5_load = load i8* @window_V_4_5, align 1
  store i8 %window_V_4_5_load, i8* @window_V_4_4, align 4
  store i8 %window_V_4_6_loc_1_load, i8* @window_V_4_5, align 1
  %window_V_5_1_load = load i8* @window_V_5_1, align 1
  %window_V_5_2_load = load i8* @window_V_5_2, align 1
  store i8 %window_V_5_2_load, i8* @window_V_5_1, align 1
  %window_V_5_3_load = load i8* @window_V_5_3, align 1
  store i8 %window_V_5_3_load, i8* @window_V_5_2, align 1
  %window_V_5_4_load = load i8* @window_V_5_4, align 1
  store i8 %window_V_5_4_load, i8* @window_V_5_3, align 1
  %window_V_5_5_load = load i8* @window_V_5_5, align 1
  store i8 %window_V_5_5_load, i8* @window_V_5_4, align 1
  store i8 %window_V_5_6_loc_1_load, i8* @window_V_5_5, align 1
  %window_V_6_1_load = load i8* @window_V_6_1, align 1
  %window_V_6_2_load = load i8* @window_V_6_2, align 2
  store i8 %window_V_6_2_load, i8* @window_V_6_1, align 1
  %window_V_6_3_load = load i8* @window_V_6_3, align 1
  store i8 %window_V_6_3_load, i8* @window_V_6_2, align 2
  %window_V_6_4_load = load i8* @window_V_6_4, align 2
  store i8 %window_V_6_4_load, i8* @window_V_6_3, align 1
  %window_V_6_5_load = load i8* @window_V_6_5, align 1
  store i8 %window_V_6_5_load, i8* @window_V_6_4, align 2
  store i8 %in_temp_V_1_load, i8* @window_V_6_5, align 1
  %tmp_4 = icmp ult i10 %col_mid2, -384
  br i1 %tmp_4, label %.preheader.preheader, label %.loopexit

; <label>:2                                       ; preds = %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecFUCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i14.i32.i32(i14, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_53 = zext i1 %1 to i9
  %empty_54 = shl i9 %empty, 1
  %empty_55 = or i9 %empty_54, %empty_53
  ret i9 %empty_55
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

declare i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone

declare i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone

declare i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone

declare i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone

define weak i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %0 to i13
  %empty_56 = zext i5 %1 to i13
  %empty_57 = shl i13 %empty, 5
  %empty_58 = or i13 %empty_57, %empty_56
  ret i13 %empty_58
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i8.i4(i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %0 to i12
  %empty_59 = zext i4 %1 to i12
  %empty_60 = shl i12 %empty, 4
  %empty_61 = or i12 %empty_60, %empty_59
  ret i12 %empty_61
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_62 = zext i3 %1 to i11
  %empty_63 = shl i11 %empty, 3
  %empty_64 = or i11 %empty_63, %empty_62
  ret i11 %empty_64
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_65 = zext i2 %1 to i10
  %empty_66 = shl i10 %empty, 2
  %empty_67 = or i10 %empty_66, %empty_65
  ret i10 %empty_67
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !19, !22, !22, !22, !22, !22, !22, !28, !28, !28, !22, !22, !22, !22, !31, !35, !35, !41, !22, !22, !22, !44, !44, !47, !47, !49, !22, !22, !22, !47, !47, !22, !22, !51, !53, !55, !55, !57, !57, !55, !55, !22, !22, !59, !61, !22, !44, !44, !63, !63, !19, !19, !19, !19, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!65}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"s_int [7]*", metadata !"s_int", metadata !"s_int", metadata !"pixel [7]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"kernel", metadata !"kern_sum", metadata !"kern_off", metadata !"window"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"pixel*", metadata !"pixel*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in_img", metadata !"out_img"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!19 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space"}
!24 = metadata !{metadata !"kernel_arg_access_qual"}
!25 = metadata !{metadata !"kernel_arg_type"}
!26 = metadata !{metadata !"kernel_arg_type_qual"}
!27 = metadata !{metadata !"kernel_arg_name"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<24, true> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!31 = metadata !{null, metadata !32, metadata !9, metadata !33, metadata !11, metadata !34, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!35 = metadata !{null, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !6}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!37 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, true>*", metadata !"int", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!41 = metadata !{null, metadata !32, metadata !9, metadata !42, metadata !11, metadata !43, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<8, true> &"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!44 = metadata !{null, metadata !14, metadata !15, metadata !45, metadata !17, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!47 = metadata !{null, metadata !14, metadata !15, metadata !48, metadata !17, metadata !46, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!49 = metadata !{null, metadata !32, metadata !9, metadata !50, metadata !11, metadata !43, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, true> &", metadata !"const ap_int_base<8, true> &"}
!51 = metadata !{null, metadata !14, metadata !15, metadata !52, metadata !17, metadata !18, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<22> &"}
!53 = metadata !{null, metadata !32, metadata !9, metadata !54, metadata !11, metadata !43, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, true> &", metadata !"const ap_int_base<16, true> &"}
!55 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !46, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!57 = metadata !{null, metadata !14, metadata !15, metadata !58, metadata !17, metadata !46, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, true> &"}
!59 = metadata !{null, metadata !14, metadata !15, metadata !60, metadata !17, metadata !18, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<16> &"}
!61 = metadata !{null, metadata !32, metadata !9, metadata !62, metadata !11, metadata !43, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, true> &"}
!63 = metadata !{null, metadata !14, metadata !15, metadata !64, metadata !17, metadata !46, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!65 = metadata !{metadata !66, [1 x i32]* @llvm_global_ctors_0}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 31, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"llvm.global_ctors.0", metadata !70, metadata !"", i32 0, i32 31}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 0, i32 1}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 7, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"in_img.V", metadata !76, metadata !"uint8", i32 0, i32 7}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 307199, i32 1}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 7, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"out_img.V", metadata !76, metadata !"uint8", i32 0, i32 7}
