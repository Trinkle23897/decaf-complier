VTABLE(_Main) {
    <empty>
    Main
    _Main.tester;
    _Main.start;
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T3 = 12
    parm _T3
    _T4 =  call _Alloc
    _T5 = 0
    *(_T4 + 4) = _T5
    *(_T4 + 8) = _T5
    _T6 = VTBL <_Main>
    *(_T4 + 0) = _T6
    return _T4
}

FUNCTION(_Main.tester) {
memo '_T0:4 _T1:8'
_Main.tester:
    _T7 = *(_T0 + 8)
    _T8 = 1
    _T9 = 0
    _T10 = (_T8 < _T9)
    if (_T10 == 0) branch _L12
    _T11 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T11
    call _PrintString
    call _Halt
_L12:
    _T12 = 4
    _T13 = (_T12 * _T8)
    _T14 = (_T12 + _T13)
    parm _T14
    _T15 =  call _Alloc
    *(_T15 + 0) = _T8
    _T16 = 0
    _T15 = (_T15 + _T14)
_L13:
    _T14 = (_T14 - _T12)
    if (_T14 == 0) branch _L14
    _T15 = (_T15 - _T12)
    *(_T15 + 0) = _T16
    branch _L13
_L14:
    *(_T0 + 8) = _T15
    _T17 = 0
    _T18 = (_T1 < _T17)
    if (_T18 == 0) branch _L15
    _T19 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T19
    call _PrintString
    call _Halt
_L15:
    _T20 = 4
    _T21 = (_T20 * _T1)
    _T22 = (_T20 + _T21)
    parm _T22
    _T23 =  call _Alloc
    *(_T23 + 0) = _T1
    _T24 = 0
    _T23 = (_T23 + _T22)
_L16:
    _T22 = (_T22 - _T20)
    if (_T22 == 0) branch _L17
    _T23 = (_T23 - _T20)
    *(_T23 + 0) = _T24
    branch _L16
_L17:
    return _T23
}

FUNCTION(_Main.start) {
memo '_T2:4'
_Main.start:
    _T28 = 1
    _T25 = _T28
_L18:
    _T29 = 5
    _T30 = (_T25 < _T29)
    if (_T30 == 0) branch _L19
    _T31 = 2
    _T32 = (_T25 % _T31)
    _T33 = 0
    _T34 = (_T32 == _T33)
    if (_T34 == 0) branch _L20
    parm _T2
    parm _T25
    _T35 = *(_T2 + 0)
    _T36 = *(_T35 + 8)
    _T37 =  icall _T36
    _T27 = _T37
    branch _L19
_L20:
    _T38 = "Loop "
    parm _T38
    call _PrintString
    parm _T25
    call _PrintInt
    _T39 = "\n"
    parm _T39
    call _PrintString
    _T40 = 1
    _T41 = (_T25 + _T40)
    _T25 = _T41
    branch _L18
_L19:
    _T42 = 0
    _T43 = *(_T27 - 4)
    _T44 = (_T42 < _T43)
    if (_T44 == 0) branch _L21
    _T45 = 0
    _T46 = (_T42 < _T45)
    if (_T46 == 0) branch _L22
_L21:
    _T47 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T47
    call _PrintString
    call _Halt
_L22:
    _T48 = 4
    _T49 = (_T42 * _T48)
    _T50 = (_T27 + _T49)
    _T51 = *(_T50 + 0)
    _T52 = 0
    _T53 = 4
    _T54 = (_T42 * _T53)
    _T55 = (_T27 + _T54)
    *(_T55 + 0) = _T52
    _T56 = 0
    _T57 = *(_T27 - 4)
    _T58 = (_T56 < _T57)
    if (_T58 == 0) branch _L23
    _T59 = 0
    _T60 = (_T56 < _T59)
    if (_T60 == 0) branch _L24
_L23:
    _T61 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T61
    call _PrintString
    call _Halt
_L24:
    _T62 = 4
    _T63 = (_T56 * _T62)
    _T64 = (_T27 + _T63)
    _T65 = *(_T64 + 0)
    _T66 = *(_T27 - 4)
    _T67 = (_T65 < _T66)
    if (_T67 == 0) branch _L25
    _T68 = 0
    _T69 = (_T65 < _T68)
    if (_T69 == 0) branch _L26
_L25:
    _T70 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T70
    call _PrintString
    call _Halt
_L26:
    _T71 = 4
    _T72 = (_T65 * _T71)
    _T73 = (_T27 + _T72)
    _T74 = *(_T73 + 0)
    parm _T74
    call _PrintInt
    _T75 = "\n"
    parm _T75
    call _PrintString
    _T76 = *(_T27 - 4)
    parm _T76
    call _PrintInt
    _T77 = "\n"
    parm _T77
    call _PrintString
}

FUNCTION(main) {
memo ''
main:
    _T78 =  call _Main_New
    parm _T78
    _T79 = *(_T78 + 0)
    _T80 = *(_T79 + 12)
    icall _T80
}

