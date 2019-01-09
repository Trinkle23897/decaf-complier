VTABLE(_QueueItem) {
    <empty>
    QueueItem
    _QueueItem.Init;
    _QueueItem.GetData;
    _QueueItem.GetNext;
    _QueueItem.GetPrev;
    _QueueItem.SetNext;
    _QueueItem.SetPrev;
}

VTABLE(_Queue) {
    <empty>
    Queue
    _Queue.Init;
    _Queue.EnQueue;
    _Queue.DeQueue;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_QueueItem_New) {
memo ''
_QueueItem_New:
    _T15 = 16
    parm _T15
    _T16 =  call _Alloc
    _T17 = 0
    *(_T16 + 4) = _T17
    *(_T16 + 8) = _T17
    *(_T16 + 12) = _T17
    _T18 = VTBL <_QueueItem>
    *(_T16 + 0) = _T18
    return _T16
}

FUNCTION(_Queue_New) {
memo ''
_Queue_New:
    _T19 = 12
    parm _T19
    _T20 =  call _Alloc
    _T21 = 0
    *(_T20 + 4) = _T21
    *(_T20 + 8) = _T21
    _T22 = VTBL <_Queue>
    *(_T20 + 0) = _T22
    return _T20
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T23 = 4
    parm _T23
    _T24 =  call _Alloc
    _T25 = VTBL <_Main>
    *(_T24 + 0) = _T25
    return _T24
}

FUNCTION(_QueueItem.Init) {
memo '_T0:4 _T1:8 _T2:12 _T3:16'
_QueueItem.Init:
    _T26 = *(_T0 + 4)
    *(_T0 + 4) = _T1
    _T27 = *(_T0 + 8)
    *(_T0 + 8) = _T2
    _T28 = *(_T2 + 12)
    *(_T2 + 12) = _T0
    _T29 = *(_T0 + 12)
    *(_T0 + 12) = _T3
    _T30 = *(_T3 + 8)
    *(_T3 + 8) = _T0
}

FUNCTION(_QueueItem.GetData) {
memo '_T4:4'
_QueueItem.GetData:
    _T31 = *(_T4 + 4)
    return _T31
}

FUNCTION(_QueueItem.GetNext) {
memo '_T5:4'
_QueueItem.GetNext:
    _T32 = *(_T5 + 8)
    return _T32
}

FUNCTION(_QueueItem.GetPrev) {
memo '_T6:4'
_QueueItem.GetPrev:
    _T33 = *(_T6 + 12)
    return _T33
}

FUNCTION(_QueueItem.SetNext) {
memo '_T7:4 _T8:8'
_QueueItem.SetNext:
    _T34 = *(_T7 + 8)
    *(_T7 + 8) = _T8
}

FUNCTION(_QueueItem.SetPrev) {
memo '_T9:4 _T10:8'
_QueueItem.SetPrev:
    _T35 = *(_T9 + 12)
    *(_T9 + 12) = _T10
}

FUNCTION(_Queue.Init) {
memo '_T11:4'
_Queue.Init:
    _T36 = *(_T11 + 8)
    _T37 =  call _QueueItem_New
    *(_T11 + 8) = _T37
    _T38 = *(_T11 + 8)
    _T39 = 0
    _T40 = *(_T11 + 8)
    _T41 = *(_T11 + 8)
    parm _T38
    parm _T39
    parm _T40
    parm _T41
    _T42 = *(_T38 + 0)
    _T43 = *(_T42 + 8)
    icall _T43
}

FUNCTION(_Queue.EnQueue) {
memo '_T12:4 _T13:8'
_Queue.EnQueue:
    _T45 =  call _QueueItem_New
    _T44 = _T45
    _T46 = *(_T12 + 8)
    parm _T46
    _T47 = *(_T46 + 0)
    _T48 = *(_T47 + 16)
    _T49 =  icall _T48
    _T50 = *(_T12 + 8)
    parm _T44
    parm _T13
    parm _T49
    parm _T50
    _T51 = *(_T44 + 0)
    _T52 = *(_T51 + 8)
    icall _T52
}

FUNCTION(_Queue.DeQueue) {
memo '_T14:4'
_Queue.DeQueue:
    _T54 = *(_T14 + 8)
    parm _T54
    _T55 = *(_T54 + 0)
    _T56 = *(_T55 + 20)
    _T57 =  icall _T56
    _T58 = *(_T14 + 8)
    _T59 = (_T57 == _T58)
    if (_T59 == 0) branch _L21
    _T60 = "Queue Is Empty"
    parm _T60
    call _PrintString
    _T61 = 0
    return _T61
    branch _L22
_L21:
    _T63 = *(_T14 + 8)
    parm _T63
    _T64 = *(_T63 + 0)
    _T65 = *(_T64 + 20)
    _T66 =  icall _T65
    _T62 = _T66
    parm _T62
    _T67 = *(_T62 + 0)
    _T68 = *(_T67 + 12)
    _T69 =  icall _T68
    _T53 = _T69
    parm _T62
    _T70 = *(_T62 + 0)
    _T71 = *(_T70 + 20)
    _T72 =  icall _T71
    parm _T62
    _T73 = *(_T62 + 0)
    _T74 = *(_T73 + 16)
    _T75 =  icall _T74
    parm _T72
    parm _T75
    _T76 = *(_T72 + 0)
    _T77 = *(_T76 + 24)
    icall _T77
    parm _T62
    _T78 = *(_T62 + 0)
    _T79 = *(_T78 + 16)
    _T80 =  icall _T79
    parm _T62
    _T81 = *(_T62 + 0)
    _T82 = *(_T81 + 20)
    _T83 =  icall _T82
    parm _T80
    parm _T83
    _T84 = *(_T80 + 0)
    _T85 = *(_T84 + 28)
    icall _T85
_L22:
    return _T53
}

FUNCTION(main) {
memo ''
main:
    _T88 =  call _Queue_New
    _T86 = _T88
    parm _T86
    _T89 = *(_T86 + 0)
    _T90 = *(_T89 + 8)
    icall _T90
    _T91 = 0
    _T87 = _T91
    branch _L23
_L24:
    _T92 = 1
    _T93 = (_T87 + _T92)
    _T87 = _T93
_L23:
    _T94 = 10
    _T95 = (_T87 < _T94)
    if (_T95 == 0) branch _L25
    parm _T86
    parm _T87
    _T96 = *(_T86 + 0)
    _T97 = *(_T96 + 12)
    icall _T97
    branch _L24
_L25:
    _T98 = 0
    _T87 = _T98
    branch _L26
_L27:
    _T99 = 1
    _T100 = (_T87 + _T99)
    _T87 = _T100
_L26:
    _T101 = 4
    _T102 = (_T87 < _T101)
    if (_T102 == 0) branch _L28
    parm _T86
    _T103 = *(_T86 + 0)
    _T104 = *(_T103 + 16)
    _T105 =  icall _T104
    parm _T105
    call _PrintInt
    _T106 = " "
    parm _T106
    call _PrintString
    branch _L27
_L28:
    _T107 = "\n"
    parm _T107
    call _PrintString
    _T108 = 0
    _T87 = _T108
    branch _L29
_L30:
    _T109 = 1
    _T110 = (_T87 + _T109)
    _T87 = _T110
_L29:
    _T111 = 10
    _T112 = (_T87 < _T111)
    if (_T112 == 0) branch _L31
    parm _T86
    parm _T87
    _T113 = *(_T86 + 0)
    _T114 = *(_T113 + 12)
    icall _T114
    branch _L30
_L31:
    _T115 = 0
    _T87 = _T115
    branch _L32
_L33:
    _T116 = 1
    _T117 = (_T87 + _T116)
    _T87 = _T117
_L32:
    _T118 = 17
    _T119 = (_T87 < _T118)
    if (_T119 == 0) branch _L34
    parm _T86
    _T120 = *(_T86 + 0)
    _T121 = *(_T120 + 16)
    _T122 =  icall _T121
    parm _T122
    call _PrintInt
    _T123 = " "
    parm _T123
    call _PrintString
    branch _L33
_L34:
    _T124 = "\n"
    parm _T124
    call _PrintString
}

