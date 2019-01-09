VTABLE(_Stack) {
    <empty>
    Stack
    _Stack.Init;
    _Stack.Push;
    _Stack.Pop;
    _Stack.NumElems;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Stack_New) {
memo ''
_Stack_New:
    _T5 = 12
    parm _T5
    _T6 =  call _Alloc
    _T7 = 0
    *(_T6 + 4) = _T7
    *(_T6 + 8) = _T7
    _T8 = VTBL <_Stack>
    *(_T6 + 0) = _T8
    return _T6
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T9 = 4
    parm _T9
    _T10 =  call _Alloc
    _T11 = VTBL <_Main>
    *(_T10 + 0) = _T11
    return _T10
}

FUNCTION(_Stack.Init) {
memo '_T0:4'
_Stack.Init:
    _T12 = *(_T0 + 8)
    _T13 = 100
    _T14 = 0
    _T15 = (_T13 < _T14)
    if (_T15 == 0) branch _L16
    _T16 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T16
    call _PrintString
    call _Halt
_L16:
    _T17 = 4
    _T18 = (_T17 * _T13)
    _T19 = (_T17 + _T18)
    parm _T19
    _T20 =  call _Alloc
    *(_T20 + 0) = _T13
    _T21 = 0
    _T20 = (_T20 + _T19)
_L17:
    _T19 = (_T19 - _T17)
    if (_T19 == 0) branch _L18
    _T20 = (_T20 - _T17)
    *(_T20 + 0) = _T21
    branch _L17
_L18:
    *(_T0 + 8) = _T20
    _T22 = *(_T0 + 4)
    _T23 = 0
    *(_T0 + 4) = _T23
    _T24 = 3
    parm _T0
    parm _T24
    _T25 = *(_T0 + 0)
    _T26 = *(_T25 + 12)
    call _T26
}

FUNCTION(_Stack.Push) {
memo '_T1:4 _T2:8'
_Stack.Push:
    _T27 = *(_T1 + 8)
    _T28 = *(_T1 + 4)
    _T29 = *(_T27 - 4)
    _T30 = (_T28 < _T29)
    if (_T30 == 0) branch _L19
    _T31 = 0
    _T32 = (_T28 < _T31)
    if (_T32 == 0) branch _L20
_L19:
    _T33 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T33
    call _PrintString
    call _Halt
_L20:
    _T34 = 4
    _T35 = (_T28 * _T34)
    _T36 = (_T27 + _T35)
    _T37 = *(_T36 + 0)
    _T38 = 4
    _T39 = (_T28 * _T38)
    _T40 = (_T27 + _T39)
    *(_T40 + 0) = _T2
    _T41 = *(_T1 + 4)
    _T42 = *(_T1 + 4)
    _T43 = 1
    _T44 = (_T42 + _T43)
    *(_T1 + 4) = _T44
}

FUNCTION(_Stack.Pop) {
memo '_T3:4'
_Stack.Pop:
    _T46 = *(_T3 + 8)
    _T47 = *(_T3 + 4)
    _T48 = 1
    _T49 = (_T47 - _T48)
    _T50 = *(_T46 - 4)
    _T51 = (_T49 < _T50)
    if (_T51 == 0) branch _L21
    _T52 = 0
    _T53 = (_T49 < _T52)
    if (_T53 == 0) branch _L22
_L21:
    _T54 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T54
    call _PrintString
    call _Halt
_L22:
    _T55 = 4
    _T56 = (_T49 * _T55)
    _T57 = (_T46 + _T56)
    _T58 = *(_T57 + 0)
    _T45 = _T58
    _T59 = *(_T3 + 4)
    _T60 = *(_T3 + 4)
    _T61 = 1
    _T62 = (_T60 - _T61)
    *(_T3 + 4) = _T62
    return _T45
}

FUNCTION(_Stack.NumElems) {
memo '_T4:4'
_Stack.NumElems:
    _T63 = *(_T4 + 4)
    return _T63
}

FUNCTION(_Stack.main) {
memo ''
_Stack.main:
    _T65 =  call _Stack_New
    _T64 = _T65
    parm _T64
    _T66 = *(_T64 + 0)
    _T67 = *(_T66 + 8)
    call _T67
    _T68 = 3
    parm _T64
    parm _T68
    _T69 = *(_T64 + 0)
    _T70 = *(_T69 + 12)
    call _T70
    _T71 = 7
    parm _T64
    parm _T71
    _T72 = *(_T64 + 0)
    _T73 = *(_T72 + 12)
    call _T73
    _T74 = 4
    parm _T64
    parm _T74
    _T75 = *(_T64 + 0)
    _T76 = *(_T75 + 12)
    call _T76
    parm _T64
    _T77 = *(_T64 + 0)
    _T78 = *(_T77 + 20)
    _T79 =  call _T78
    parm _T79
    call _PrintInt
    _T80 = " "
    parm _T80
    call _PrintString
    parm _T64
    _T81 = *(_T64 + 0)
    _T82 = *(_T81 + 16)
    _T83 =  call _T82
    parm _T83
    call _PrintInt
    _T84 = " "
    parm _T84
    call _PrintString
    parm _T64
    _T85 = *(_T64 + 0)
    _T86 = *(_T85 + 16)
    _T87 =  call _T86
    parm _T87
    call _PrintInt
    _T88 = " "
    parm _T88
    call _PrintString
    parm _T64
    _T89 = *(_T64 + 0)
    _T90 = *(_T89 + 16)
    _T91 =  call _T90
    parm _T91
    call _PrintInt
    _T92 = " "
    parm _T92
    call _PrintString
    parm _T64
    _T93 = *(_T64 + 0)
    _T94 = *(_T93 + 20)
    _T95 =  call _T94
    parm _T95
    call _PrintInt
}

FUNCTION(main) {
memo ''
main:
    call _Stack.main
}

