#name: PR ld/12570 (no PLT)
#as: --64
#ld: -mcgc_x86_64 -shared
#readcgc: -wf --wide

#failif
#...
  DW_CFA_def_cfa_expression \(DW_OP_breg7 \(rsp\): 8; DW_OP_breg16 \(rip\): 0;.*
#...
