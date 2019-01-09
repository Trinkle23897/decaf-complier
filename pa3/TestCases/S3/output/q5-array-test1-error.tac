VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T0 = 4
    parm _T0
    _T1 =  call _Alloc
    _T2 = VTBL <_Main>
    *(_T1 + 0) = _T2
    return _T1
}

FUNCTION(main) {
memo ''
main:
    _T6 = 2
    _T4 = _T6
    _T7 = 2
    _T8 = 3
    _T9 = (_T7 - _T8)
    _T5 = _T9
    _T10 = 3
    _T11 = 0
    _T12 = (_T5 < _T11)
    if (_T12 == 0) branch _L10
    _T13 = "Decaf runtime error: The length of the created array should not be less than 0.\n"
    parm _T13
    call _PrintString
    call _Halt
_L10:
    _T14 = 4
    _T15 = (_T14 * _T5)
    _T16 = (_T14 + _T15)
    parm _T16
    _T17 =  call _Alloc
    *(_T17 + 0) = _T5
    _T18 = 0
    _T17 = (_T17 + _T16)
_L11:
    _T16 = (_T16 - _T14)
    if (_T16 == 0) branch _L12
    _T17 = (_T17 - _T14)
    *(_T17 + 0) = _T18
    branch _L11
_L12:
    _T19 = 0
_L14:
    _T20 = (_T19 < _T5)
    if (_T20 == 0) branch _L13
    _T21 = 4
    _T22 = (_T19 * _T21)
    _T23 = (_T17 + _T22)
    *(_T23 + 0) = _T10
    _T24 = 1
    _T25 = (_T19 + _T24)
    _T19 = _T25
    branch _L14
_L13:
    _T3 = _T17
    _T26 = 1
    _T27 = *(_T3 - 4)
    _T28 = (_T26 < _T27)
    if (_T28 == 0) branch _L15
    _T29 = 0
    _T30 = (_T26 < _T29)
    if (_T30 == 0) branch _L16
_L15:
    _T31 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T31
    call _PrintString
    call _Halt
_L16:
    _T32 = 4
    _T33 = (_T26 * _T32)
    _T34 = (_T3 + _T33)
    _T35 = *(_T34 + 0)
    _T36 = 1
    _T37 = *(_T3 - 4)
    _T38 = (_T36 < _T37)
    if (_T38 == 0) branch _L17
    _T39 = 0
    _T40 = (_T36 < _T39)
    if (_T40 == 0) branch _L18
_L17:
    _T41 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T41
    call _PrintString
    call _Halt
_L18:
    _T42 = 4
    _T43 = (_T36 * _T42)
    _T44 = (_T3 + _T43)
    _T45 = *(_T44 + 0)
    _T46 = 1
    _T47 = (_T45 + _T46)
    _T48 = 4
    _T49 = (_T26 * _T48)
    _T50 = (_T3 + _T49)
    *(_T50 + 0) = _T47
    _T51 = 0
    _T52 = *(_T3 - 4)
    _T53 = (_T51 < _T52)
    if (_T53 == 0) branch _L19
    _T54 = 0
    _T55 = (_T51 < _T54)
    if (_T55 == 0) branch _L20
_L19:
    _T56 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T56
    call _PrintString
    call _Halt
_L20:
    _T57 = 4
    _T58 = (_T51 * _T57)
    _T59 = (_T3 + _T58)
    _T60 = *(_T59 + 0)
    parm _T60
    call _PrintInt
    _T61 = "\n"
    parm _T61
    call _PrintString
    _T62 = 1
    _T63 = *(_T3 - 4)
    _T64 = (_T62 < _T63)
    if (_T64 == 0) branch _L21
    _T65 = 0
    _T66 = (_T62 < _T65)
    if (_T66 == 0) branch _L22
_L21:
    _T67 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T67
    call _PrintString
    call _Halt
_L22:
    _T68 = 4
    _T69 = (_T62 * _T68)
    _T70 = (_T3 + _T69)
    _T71 = *(_T70 + 0)
    parm _T71
    call _PrintInt
    _T72 = "\n"
    parm _T72
    call _PrintString
}

