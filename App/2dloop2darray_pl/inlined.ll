; ModuleID = 'inlined.bc'
source_filename = "2dloop2darray_pl.cc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define dso_local void @_Z4subfPA100_i([100 x i32]* nocapture %A) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata [100 x i32]* %A, metadata !16, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 100, metadata !17, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 50, metadata !18, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 1, metadata !19, metadata !DIExpression()), !dbg !32
  br label %for.cond1.preheader, !dbg !33

for.cond1.preheader:                              ; preds = %for.cond.cleanup3, %entry
  %indvars.iv116 = phi i64 [ 1, %entry ], [ %indvars.iv.next117, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv116, metadata !19, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata i32 1, metadata !21, metadata !DIExpression()), !dbg !34
  %0 = add nsw i64 %indvars.iv116, -1
  br label %for.body4, !dbg !35

for.cond.cleanup3:                                ; preds = %for.body4
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1, !dbg !36
  call void @llvm.dbg.value(metadata i32 undef, metadata !19, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  %exitcond119 = icmp eq i64 %indvars.iv.next117, 100, !dbg !37
  br i1 %exitcond119, label %for.cond34.preheader, label %for.cond1.preheader, !dbg !33, !llvm.loop !38

for.body4:                                        ; preds = %for.body4, %for.cond1.preheader
  %indvars.iv112 = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next113, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv112, metadata !21, metadata !DIExpression()), !dbg !34
  %1 = add nsw i64 %indvars.iv112, -1, !dbg !40
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %1, i64 %0, !dbg !42
  %2 = load i32, i32* %arrayidx7, align 4, !dbg !42, !tbaa !43
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %indvars.iv112, i64 %0, !dbg !47
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !47, !tbaa !43
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %1, i64 %indvars.iv116, !dbg !48
  %4 = load i32, i32* %arrayidx18, align 4, !dbg !48, !tbaa !43
  %add13 = add i32 %2, 1, !dbg !49
  %add19 = add i32 %add13, %3, !dbg !50
  %add20 = add i32 %add19, %4, !dbg !51
  %arrayidx24 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %indvars.iv112, i64 %indvars.iv116, !dbg !52
  store i32 %add20, i32* %arrayidx24, align 4, !dbg !53, !tbaa !43
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1, !dbg !54
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !34
  %exitcond115 = icmp eq i64 %indvars.iv.next113, 51, !dbg !55
  br i1 %exitcond115, label %for.cond.cleanup3, label %for.body4, !dbg !35, !llvm.loop !56

for.cond34.preheader:                             ; preds = %for.cond.cleanup37, %for.cond.cleanup3
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.cond.cleanup37 ], [ 1, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv108, metadata !24, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 1, metadata !26, metadata !DIExpression()), !dbg !59
  %5 = add nsw i64 %indvars.iv108, -1
  br label %for.body38, !dbg !60

for.cond.cleanup31:                               ; preds = %for.cond.cleanup37
  ret void, !dbg !61

for.cond.cleanup37:                               ; preds = %for.body38
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1, !dbg !62
  call void @llvm.dbg.value(metadata i32 undef, metadata !24, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !58
  %exitcond111 = icmp eq i64 %indvars.iv.next109, 100, !dbg !63
  br i1 %exitcond111, label %for.cond.cleanup31, label %for.cond34.preheader, !dbg !64, !llvm.loop !65

for.body38:                                       ; preds = %for.body38, %for.cond34.preheader
  %indvars.iv = phi i64 [ 1, %for.cond34.preheader ], [ %indvars.iv.next, %for.body38 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !26, metadata !DIExpression()), !dbg !59
  %6 = add nsw i64 %indvars.iv, -1, !dbg !67
  %arrayidx44 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %6, i64 %5, !dbg !69
  %7 = load i32, i32* %arrayidx44, align 4, !dbg !69, !tbaa !43
  %arrayidx49 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %indvars.iv, i64 %5, !dbg !70
  %8 = load i32, i32* %arrayidx49, align 4, !dbg !70, !tbaa !43
  %arrayidx55 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %6, i64 %indvars.iv108, !dbg !71
  %9 = load i32, i32* %arrayidx55, align 4, !dbg !71, !tbaa !43
  %add50 = add i32 %7, 1, !dbg !72
  %add56 = add i32 %add50, %8, !dbg !73
  %add57 = add i32 %add56, %9, !dbg !74
  %arrayidx61 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %indvars.iv, i64 %indvars.iv108, !dbg !75
  store i32 %add57, i32* %arrayidx61, align 4, !dbg !76, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !77
  call void @llvm.dbg.value(metadata i32 undef, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !59
  %exitcond = icmp eq i64 %indvars.iv.next, 51, !dbg !78
  br i1 %exitcond, label %for.cond.cleanup37, label %for.body38, !dbg !60, !llvm.loop !79
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @_Z1fPA100_i([100 x i32]* nocapture %A) local_unnamed_addr #0 !dbg !81 {
entry:
  call void @llvm.dbg.value(metadata [100 x i32]* %A, metadata !83, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 100, metadata !84, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 56, metadata !85, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !94
  br label %for.cond1.preheader, !dbg !95

for.cond1.preheader:                              ; preds = %for.cond.cleanup3, %entry
  %indvars.iv50 = phi i64 [ 1, %entry ], [ %indvars.iv.next51, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv50, metadata !86, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32 1, metadata !88, metadata !DIExpression()), !dbg !96
  %0 = add nsw i64 %indvars.iv50, -1
  br label %for.body4, !dbg !97

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  tail call void @_Z4subfPA100_i([100 x i32]* nonnull %A), !dbg !98
  tail call void @_Z4subfPA100_i([100 x i32]* nonnull %A), !dbg !99
  ret void, !dbg !100

for.cond.cleanup3:                                ; preds = %for.body4
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !101
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !94
  %exitcond53 = icmp eq i64 %indvars.iv.next51, 100, !dbg !102
  br i1 %exitcond53, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !95, !llvm.loop !103

for.body4:                                        ; preds = %for.body4, %for.cond1.preheader
  %indvars.iv = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !88, metadata !DIExpression()), !dbg !96
  %1 = add nsw i64 %indvars.iv, -1, !dbg !105
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %1, i64 %0, !dbg !108
  %2 = load i32, i32* %arrayidx7, align 4, !dbg !108, !tbaa !43
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %indvars.iv, i64 %0, !dbg !109
  %3 = load i32, i32* %arrayidx12, align 4, !dbg !109, !tbaa !43
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %1, i64 %indvars.iv50, !dbg !110
  %4 = load i32, i32* %arrayidx18, align 4, !dbg !110, !tbaa !43
  %add13 = add i32 %2, 1, !dbg !111
  %add19 = add i32 %add13, %3, !dbg !112
  %add20 = add i32 %add19, %4, !dbg !113
  %arrayidx24 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %indvars.iv, i64 %indvars.iv50, !dbg !114
  store i32 %add20, i32* %arrayidx24, align 4, !dbg !115, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !116
  call void @llvm.dbg.value(metadata i32 undef, metadata !88, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !96
  %exitcond = icmp eq i64 %indvars.iv.next, 57, !dbg !117
  br i1 %exitcond, label %for.cond.cleanup3, label %for.body4, !dbg !97, !llvm.loop !118
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 9.0.0 (a7c2c8ff4eb589c59ad9ff6e80fa50edf5b97a46)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "2dloop2darray_pl.cc", directory: "/home/tingyuan/Dropbox/LLVM-Learner-Note/App/2dloop2darray_pl")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.0 (a7c2c8ff4eb589c59ad9ff6e80fa50edf5b97a46)"}
!7 = distinct !DISubprogram(name: "subf", linkageName: "_Z4subfPA100_i", scope: !1, file: !1, line: 2, type: !8, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !13)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14}
!14 = !DISubrange(count: 100)
!15 = !{!16, !17, !18, !19, !21, !24, !26}
!16 = !DILocalVariable(name: "A", arg: 1, scope: !7, file: !1, line: 2, type: !10)
!17 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 4, type: !12)
!18 = !DILocalVariable(name: "M", scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocalVariable(name: "j", scope: !20, file: !1, line: 6, type: !12)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 3)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 7, type: !12)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 7, column: 5)
!23 = distinct !DILexicalBlock(scope: !20, file: !1, line: 6, column: 3)
!24 = !DILocalVariable(name: "j", scope: !25, file: !1, line: 9, type: !12)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!26 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 10, type: !12)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 5)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 3)
!29 = !DILocation(line: 2, column: 17, scope: !7)
!30 = !DILocation(line: 4, column: 7, scope: !7)
!31 = !DILocation(line: 5, column: 7, scope: !7)
!32 = !DILocation(line: 6, column: 13, scope: !20)
!33 = !DILocation(line: 6, column: 3, scope: !20)
!34 = !DILocation(line: 7, column: 15, scope: !22)
!35 = !DILocation(line: 7, column: 5, scope: !22)
!36 = !DILocation(line: 6, column: 28, scope: !23)
!37 = !DILocation(line: 6, column: 22, scope: !23)
!38 = distinct !{!38, !33, !39}
!39 = !DILocation(line: 8, column: 55, scope: !20)
!40 = !DILocation(line: 8, column: 20, scope: !41)
!41 = distinct !DILexicalBlock(scope: !22, file: !1, line: 7, column: 5)
!42 = !DILocation(line: 8, column: 17, scope: !41)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !DILocation(line: 8, column: 31, scope: !41)
!48 = !DILocation(line: 8, column: 43, scope: !41)
!49 = !DILocation(line: 8, column: 29, scope: !41)
!50 = !DILocation(line: 8, column: 41, scope: !41)
!51 = !DILocation(line: 8, column: 53, scope: !41)
!52 = !DILocation(line: 8, column: 7, scope: !41)
!53 = !DILocation(line: 8, column: 15, scope: !41)
!54 = !DILocation(line: 7, column: 32, scope: !41)
!55 = !DILocation(line: 7, column: 24, scope: !41)
!56 = distinct !{!56, !35, !57}
!57 = !DILocation(line: 8, column: 55, scope: !22)
!58 = !DILocation(line: 9, column: 13, scope: !25)
!59 = !DILocation(line: 10, column: 15, scope: !27)
!60 = !DILocation(line: 10, column: 5, scope: !27)
!61 = !DILocation(line: 13, column: 1, scope: !7)
!62 = !DILocation(line: 9, column: 28, scope: !28)
!63 = !DILocation(line: 9, column: 22, scope: !28)
!64 = !DILocation(line: 9, column: 3, scope: !25)
!65 = distinct !{!65, !64, !66}
!66 = !DILocation(line: 11, column: 55, scope: !25)
!67 = !DILocation(line: 11, column: 20, scope: !68)
!68 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 5)
!69 = !DILocation(line: 11, column: 17, scope: !68)
!70 = !DILocation(line: 11, column: 31, scope: !68)
!71 = !DILocation(line: 11, column: 43, scope: !68)
!72 = !DILocation(line: 11, column: 29, scope: !68)
!73 = !DILocation(line: 11, column: 41, scope: !68)
!74 = !DILocation(line: 11, column: 53, scope: !68)
!75 = !DILocation(line: 11, column: 7, scope: !68)
!76 = !DILocation(line: 11, column: 15, scope: !68)
!77 = !DILocation(line: 10, column: 32, scope: !68)
!78 = !DILocation(line: 10, column: 24, scope: !68)
!79 = distinct !{!79, !60, !80}
!80 = !DILocation(line: 11, column: 55, scope: !27)
!81 = distinct !DISubprogram(name: "f", linkageName: "_Z1fPA100_i", scope: !1, file: !1, line: 18, type: !8, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!82 = !{!83, !84, !85, !86, !88}
!83 = !DILocalVariable(name: "A", arg: 1, scope: !81, file: !1, line: 18, type: !10)
!84 = !DILocalVariable(name: "N", scope: !81, file: !1, line: 20, type: !12)
!85 = !DILocalVariable(name: "M", scope: !81, file: !1, line: 21, type: !12)
!86 = !DILocalVariable(name: "j", scope: !87, file: !1, line: 22, type: !12)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 22, column: 3)
!88 = !DILocalVariable(name: "i", scope: !89, file: !1, line: 23, type: !12)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 23, column: 7)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 22, column: 3)
!91 = !DILocation(line: 18, column: 14, scope: !81)
!92 = !DILocation(line: 20, column: 7, scope: !81)
!93 = !DILocation(line: 21, column: 7, scope: !81)
!94 = !DILocation(line: 22, column: 13, scope: !87)
!95 = !DILocation(line: 22, column: 3, scope: !87)
!96 = !DILocation(line: 23, column: 17, scope: !89)
!97 = !DILocation(line: 23, column: 7, scope: !89)
!98 = !DILocation(line: 31, column: 3, scope: !81)
!99 = !DILocation(line: 32, column: 3, scope: !81)
!100 = !DILocation(line: 34, column: 1, scope: !81)
!101 = !DILocation(line: 22, column: 28, scope: !90)
!102 = !DILocation(line: 22, column: 22, scope: !90)
!103 = distinct !{!103, !95, !104}
!104 = !DILocation(line: 30, column: 9, scope: !87)
!105 = !DILocation(line: 25, column: 26, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 24, column: 9)
!107 = distinct !DILexicalBlock(scope: !89, file: !1, line: 23, column: 7)
!108 = !DILocation(line: 25, column: 23, scope: !106)
!109 = !DILocation(line: 25, column: 37, scope: !106)
!110 = !DILocation(line: 25, column: 49, scope: !106)
!111 = !DILocation(line: 25, column: 35, scope: !106)
!112 = !DILocation(line: 25, column: 47, scope: !106)
!113 = !DILocation(line: 25, column: 59, scope: !106)
!114 = !DILocation(line: 25, column: 13, scope: !106)
!115 = !DILocation(line: 25, column: 21, scope: !106)
!116 = !DILocation(line: 23, column: 34, scope: !107)
!117 = !DILocation(line: 23, column: 26, scope: !107)
!118 = distinct !{!118, !97, !119}
!119 = !DILocation(line: 30, column: 9, scope: !89)
