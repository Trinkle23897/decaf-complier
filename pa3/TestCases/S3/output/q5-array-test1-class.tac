VTABLE(_A) {
    <empty>
    A
    _A.seta;
    _A.printA;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_A_New) {
memo ''
_A_New:
    _T3 = 12
    parm _T3
    _T4 =  call _Alloc
    _T5 = 0
    *(_T4 + 4) = _T5
    *(_T4 + 8) = _T5
    _T6 = VTBL <_A>
    *(_T4 + 0) = _T6
    return _T4
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T7 = 4
    parm _T7
    _T8 =  call _Alloc
    _T9 = VTBL <_Main>
    *(_T8 + 0) = _T9
    return _T8
}

FUNCTION(_A.seta) {
memo '_T0:4 _T1:8'
_A.seta:
    _T10 = *(_T0 + 8)
    *(_T0 + 8) = _T1
}

FUNCTION(_A.printA) {
memo '_T2:4'
_A.printA:
    _T11 = *(_T2 + 8)
    parm _T11
    call _PrintInt
    _T12 = "\n"
    parm _T12
    call _PrintString
}

FUNCTION(main) {
memo ''
main:
    _T15 =  call _A_New
    _T14 = _T15
    _T16 = 10
    parm _T14
    parm _T16
    _T17 = *(_T14 + 0)
    _T18 = *(_T17 + 8)
    call _T18
    _T19 = 6
    _T20 = 0
    _T21 = (_T19 < _T20)
    if (_T21 == 0) branch _L13
    _T22 = "Decaf runtime error: The length of the created array should not be less than 0.\n"
    parm _T22
    call _PrintString
    call _Halt
_L13:
    _T23 = 4
    _T24 = (_T23 * _T19)
    _T25 = (_T23 + _T24)
    parm _T25
    _T26 =  call _Alloc
    *(_T26 + 0) = _T19
    _T27 = 0
    _T26 = (_T26 + _T25)
_L14:
    _T25 = (_T25 - _T23)
    if (_T25 == 0) branch _L15
    _T26 = (_T26 - _T23)
    *(_T26 + 0) = _T27
    branch _L14
_L15:
    _T28 = 0
_L17:
    _T29 = (_T28 < _T19)
    if (_T29 == 0) branch _L16
    _T30 = 4
    _T31 = (_T28 * _T30)
    _T32 = (_T26 + _T31)
    *(_T32 + 0) = _T14
    _T33 =  call _A_New
    _T34 = *(_T14 + 8)
    *(_T33 + 8) = _T34
    _T35 = *(_T14 + 4)
    *(_T33 + 4) = _T35
    *(_T32 + 0) = _T33
    _T36 = 1
    _T37 = (_T28 + _T36)
    _T28 = _T37
    branch _L17
_L16:
    _T13 = _T26
    _T38 = 1
    _T39 = *(_T13 - 4)
    _T40 = (_T38 < _T39)
    if (_T40 == 0) branch _L18
    _T41 = 0
    _T42 = (_T38 < _T41)
    if (_T42 == 0) branch _L19
_L18:
    _T43 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T43
    call _PrintString
    call _Halt
_L19:
    _T44 = 4
    _T45 = (_T38 * _T44)
    _T46 = (_T13 + _T45)
    _T47 = *(_T46 + 0)
    _T48 = 15
    parm _T47
    parm _T48
    _T49 = *(_T47 + 0)
    _T50 = *(_T49 + 8)
    call _T50
    _T51 = 0
    _T52 = *(_T13 - 4)
    _T53 = (_T51 < _T52)
    if (_T53 == 0) branch _L20
    _T54 = 0
    _T55 = (_T51 < _T54)
    if (_T55 == 0) branch _L21
_L20:
    _T56 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T56
    call _PrintString
    call _Halt
_L21:
    _T57 = 4
    _T58 = (_T51 * _T57)
    _T59 = (_T13 + _T58)
    _T60 = *(_T59 + 0)
    parm _T60
    _T61 = *(_T60 + 0)
    _T62 = *(_T61 + 12)
    call _T62
    _T63 = 1
    _T64 = *(_T13 - 4)
    _T65 = (_T63 < _T64)
    if (_T65 == 0) branch _L22
    _T66 = 0
    _T67 = (_T63 < _T66)
    if (_T67 == 0) branch _L23
_L22:
    _T68 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T68
    call _PrintString
    call _Halt
_L23:
    _T69 = 4
    _T70 = (_T63 * _T69)
    _T71 = (_T13 + _T70)
    _T72 = *(_T71 + 0)
    parm _T72
    _T73 = *(_T72 + 0)
    _T74 = *(_T73 + 12)
    call _T74
}

