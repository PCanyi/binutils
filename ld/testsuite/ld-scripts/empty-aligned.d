#source: empty-aligned.s
#ld: -T empty-aligned.t
#readcgc: -l --wide
#xfail: "hppa64-*-*"
#notarget: frv-*-*linux*

#...
Program Headers:
 +Type +Offset +VirtAddr +PhysAddr +FileSiz +MemSiz +Flg +Align
 +LOAD +0x[0-9a-f]+ 0x[0-9a-f]+ 0x[0-9a-f]+ 0x[0-9a-f]+ 0x[0-9a-f]+ [RWE ]+ +0x[0-9a-f]+
! +LOAD .*
#...
 +Segment Sections\.\.\.
 +00 +.text 
