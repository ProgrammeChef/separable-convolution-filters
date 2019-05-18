; ModuleID = '/mnt/hgfs/Dropbox/Filtri_VivadoHLS/Sep_Convolution_Filter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@window_V_2 = internal unnamed_addr global i8 0
@window_V_1 = internal unnamed_addr global i8 0
@window_V_0 = internal unnamed_addr global i8 0
@sep_convolution_filter_str = internal unnamed_addr constant [23 x i8] c"sep_convolution_filter\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@line_buffer_V_1 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_0 = internal unnamed_addr global [640 x i8] zeroinitializer
@convolution_buffer_V_2 = internal unnamed_addr global i17 0
@convolution_buffer_V_1 = internal global i17 0
@Loop_row_Loop_col_str = internal unnamed_addr constant [18 x i8] c"Loop_row_Loop_col\00"
@p_str6 = private unnamed_addr constant [9 x i8] c"Loop_col\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sep_convolution_filter(i8* %in_img_V, i8* %out_img_V) {
.preheader68.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %in_img_V), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_img_V), !map !88
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @sep_convolution_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %out_img_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_img_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  br label %0

; <label>:0                                       ; preds = %.preheader68.preheader, %._crit_edge74
  %indvar_flatten = phi i19 [ 0, %.preheader68.preheader ], [ %indvar_flatten_next, %._crit_edge74 ]
  %row = phi i9 [ 0, %.preheader68.preheader ], [ %row_mid2, %._crit_edge74 ]
  %col = phi i10 [ 0, %.preheader68.preheader ], [ %col_1, %._crit_edge74 ]
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -215967
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.preheader.preheader:                             ; preds = %.reset
  %tmp_5 = zext i10 %col_mid2 to i64
  %line_buffer_V_0_addr = getelementptr [640 x i8]* @line_buffer_V_0, i64 0, i64 %tmp_5
  %line_buffer_V_0_load = load i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_0_load, i8* @window_V_0, align 1
  %line_buffer_V_1_addr = getelementptr [640 x i8]* @line_buffer_V_1, i64 0, i64 %tmp_5
  %line_buffer_V_1_load = load i8* %line_buffer_V_1_addr, align 1
  store i8 %line_buffer_V_1_load, i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_1_load, i8* @window_V_1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.reset
  %or_cond = and i1 %tmp_4, %tmp_mid2
  br i1 %or_cond, label %1, label %.loopexit._crit_edge

; <label>:1                                       ; preds = %.loopexit
  %in_temp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %in_img_V)
  store i8 %in_temp_V, i8* @window_V_2, align 1
  %tmp_8 = zext i10 %col_mid2 to i64
  %line_buffer_V_1_addr_1 = getelementptr [640 x i8]* @line_buffer_V_1, i64 0, i64 %tmp_8
  store i8 %in_temp_V, i8* %line_buffer_V_1_addr_1, align 1
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %1, %.loopexit
  %tmp_9 = icmp ne i10 %col_mid2, 0
  %or_cond1 = and i1 %tmp_2_mid2, %tmp_9
  br i1 %or_cond1, label %.preheader79.0, label %._crit_edge74

.preheader79.0:                                   ; preds = %.loopexit._crit_edge
  %window_V_0_load = load i8* @window_V_0, align 1
  %p_shl1 = call i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8 %window_V_0_load, i5 0)
  %p_shl1_cast = zext i13 %p_shl1 to i14
  %p_shl2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %window_V_0_load, i3 0)
  %p_shl2_cast = zext i11 %p_shl2 to i14
  %r_V = sub i14 %p_shl2_cast, %p_shl1_cast
  %r_V_cast = sext i14 %r_V to i16
  %window_V_1_load = load i8* @window_V_1, align 1
  %rhs_V_s = zext i8 %window_V_1_load to i16
  %r_V_s = mul i16 %rhs_V_s, 67
  %window_V_2_load = load i8* @window_V_2, align 1
  %rhs_V_1 = zext i8 %window_V_2_load to i16
  %r_V_2 = mul i16 %rhs_V_1, -114
  %tmp_13_2_cast = sext i16 %r_V_2 to i17
  %tmp1 = add i16 %r_V_s, %r_V_cast
  %tmp1_cast = sext i16 %tmp1 to i17
  %temp_v_V_2 = add i17 %tmp1_cast, %tmp_13_2_cast
  %convolution_buffer_V_1_load = load i17* @convolution_buffer_V_1, align 4
  %tmp = call i22 @_ssdm_op_BitConcatenate.i22.i17.i5(i17 %convolution_buffer_V_1_load, i5 0)
  %p_shl3_cast = sext i22 %tmp to i24
  %tmp_1 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %convolution_buffer_V_1_load, i3 0)
  %p_shl4_cast = sext i20 %tmp_1 to i24
  %r_V_4 = sub i24 %p_shl4_cast, %p_shl3_cast
  %convolution_buffer_V_2_load = load i17* @convolution_buffer_V_2, align 4
  store i17 %convolution_buffer_V_2_load, i17* @convolution_buffer_V_1, align 4
  %lhs_V_3_1 = sext i17 %convolution_buffer_V_2_load to i24
  %r_V_4_1 = mul i24 %lhs_V_3_1, 71
  %lhs_V_cast_cast = sext i17 %temp_v_V_2 to i23
  %r_V_1 = mul i23 %lhs_V_cast_cast, -22
  %r_V_1_cast = sext i23 %r_V_1 to i24
  %tmp2 = add i24 %r_V_4, %r_V_1_cast
  %temp_h_V = add i24 %tmp2, %r_V_4_1
  store i17 %temp_v_V_2, i17* @convolution_buffer_V_2, align 4
  %sext_cast = sext i24 %temp_h_V to i48
  %mul = mul i48 %sext_cast, 16909321
  %neg_mul = sub i48 0, %mul
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %temp_h_V, i32 23)
  %tmp_3 = call i17 @_ssdm_op_PartSelect.i17.i48.i32.i32(i48 %neg_mul, i32 31, i32 47)
  %tmp_6 = call i17 @_ssdm_op_PartSelect.i17.i48.i32.i32(i48 %mul, i32 31, i32 47)
  %p_v_v = select i1 %tmp_2, i17 %tmp_3, i17 %tmp_6
  %neg_ti = sub i17 0, %p_v_v
  %tmp_10 = trunc i17 %neg_ti to i8
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i48.i32.i32(i48 %mul, i32 31, i32 38)
  %tmp_12 = select i1 %tmp_2, i8 %tmp_10, i8 %tmp_11
  %tmp_13 = add i8 %tmp_12, 63
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %out_img_V, i8 %tmp_13)
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %.preheader79.0, %.loopexit._crit_edge
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str6, i32 %tmp_7)
  %col_1 = add i10 %col_mid2, 1
  br label %0

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @Loop_row_Loop_col_str)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 308321, i64 308321, i64 308321)
  %exitcond = icmp eq i10 %col, -383
  %col_mid2 = select i1 %exitcond, i10 0, i10 %col
  %row_s = add i9 %row, 1
  %tmp_mid1 = icmp ult i9 %row_s, -32
  %tmp6 = icmp ult i9 %row, -32
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp6
  %tmp_2_mid1 = icmp ne i9 %row_s, 0
  %tmp_s = icmp ne i9 %row, 0
  %tmp_2_mid2 = select i1 %exitcond, i1 %tmp_2_mid1, i1 %tmp_s
  %row_mid2 = select i1 %exitcond, i9 %row_s, i9 %row
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str6) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_4 = icmp ult i10 %col_mid2, -384
  br i1 %tmp_4, label %.preheader.preheader, label %.loopexit

; <label>:2                                       ; preds = %0
  ret void
}

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_5 = trunc i48 %empty to i8
  ret i8 %empty_5
}

declare i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17, i32, i32) nounwind readnone

define weak i17 @_ssdm_op_PartSelect.i17.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_6 = trunc i48 %empty to i17
  ret i17 %empty_6
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_7 = shl i24 1, %empty
  %empty_8 = and i24 %0, %empty_7
  %empty_9 = icmp ne i24 %empty_8, 0
  ret i1 %empty_9
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i17.i5(i17, i5) nounwind readnone {
entry:
  %empty = zext i17 %0 to i22
  %empty_10 = zext i5 %1 to i22
  %empty_11 = shl i22 %empty, 5
  %empty_12 = or i22 %empty_11, %empty_10
  ret i22 %empty_12
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17, i3) nounwind readnone {
entry:
  %empty = zext i17 %0 to i20
  %empty_13 = zext i3 %1 to i20
  %empty_14 = shl i20 %empty, 3
  %empty_15 = or i20 %empty_14, %empty_13
  ret i20 %empty_15
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %0 to i13
  %empty_16 = zext i5 %1 to i13
  %empty_17 = shl i13 %empty, 5
  %empty_18 = or i13 %empty_17, %empty_16
  ret i13 %empty_18
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_19 = zext i3 %1 to i11
  %empty_20 = shl i11 %empty, 3
  %empty_21 = or i11 %empty_20, %empty_19
  ret i11 %empty_21
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !19, !19, !19, !19, !19, !19, !25, !25, !25, !19, !19, !19, !19, !28, !31, !35, !35, !41, !19, !19, !19, !44, !44, !47, !47, !49, !19, !19, !19, !47, !47, !19, !19, !51, !53, !55, !55, !57, !57, !59, !19, !19, !19, !44, !44, !61, !61, !63, !63, !19, !19, !65, !67, !19, !19, !19, !69, !69, !61, !61, !71, !19, !19, !19, !73, !73, !44, !44, !13, !13, !13, !13, !13, !13, !13, !13, !19, !19, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!75}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"s_int*", metadata !"s_int*", metadata !"s_int", metadata !"s_int", metadata !"pixel*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"kernel_h", metadata !"kernel_v", metadata !"kern_sum", metadata !"kern_off", metadata !"window"}
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
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<30, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!31 = metadata !{null, metadata !32, metadata !9, metadata !33, metadata !11, metadata !34, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!35 = metadata !{null, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !6}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!37 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<30, true>*", metadata !"int", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!41 = metadata !{null, metadata !32, metadata !9, metadata !42, metadata !11, metadata !43, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, true> &", metadata !"const ap_int_base<8, true> &"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!44 = metadata !{null, metadata !14, metadata !15, metadata !45, metadata !17, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!47 = metadata !{null, metadata !14, metadata !15, metadata !48, metadata !17, metadata !46, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, true> &"}
!49 = metadata !{null, metadata !32, metadata !9, metadata !50, metadata !11, metadata !43, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<28, true> &", metadata !"const ap_int_base<8, true> &"}
!51 = metadata !{null, metadata !14, metadata !15, metadata !52, metadata !17, metadata !30, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<28> &"}
!53 = metadata !{null, metadata !32, metadata !9, metadata !54, metadata !11, metadata !43, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<28, true> &", metadata !"const ap_int_base<26, true> &"}
!55 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !46, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<26, true> &"}
!57 = metadata !{null, metadata !14, metadata !15, metadata !58, metadata !17, metadata !46, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<28, true> &"}
!59 = metadata !{null, metadata !32, metadata !9, metadata !60, metadata !11, metadata !43, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, true> &", metadata !"const ap_int_base<8, true> &"}
!61 = metadata !{null, metadata !14, metadata !15, metadata !62, metadata !17, metadata !46, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, true> &"}
!63 = metadata !{null, metadata !14, metadata !15, metadata !64, metadata !17, metadata !46, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, true> &"}
!65 = metadata !{null, metadata !14, metadata !15, metadata !66, metadata !17, metadata !30, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<18> &"}
!67 = metadata !{null, metadata !32, metadata !9, metadata !68, metadata !11, metadata !43, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, true> &", metadata !"const ap_int_base<16, true> &"}
!69 = metadata !{null, metadata !14, metadata !15, metadata !70, metadata !17, metadata !46, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!71 = metadata !{null, metadata !32, metadata !9, metadata !72, metadata !11, metadata !43, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &", metadata !"const ap_int_base<8, false> &"}
!73 = metadata !{null, metadata !14, metadata !15, metadata !74, metadata !17, metadata !46, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!75 = metadata !{metadata !76, [1 x i32]* @llvm_global_ctors_0}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 31, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"llvm.global_ctors.0", metadata !80, metadata !"", i32 0, i32 31}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 0, i32 1}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 7, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"in_img.V", metadata !86, metadata !"uint8", i32 0, i32 7}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 307199, i32 1}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 7, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"out_img.V", metadata !86, metadata !"uint8", i32 0, i32 7}
