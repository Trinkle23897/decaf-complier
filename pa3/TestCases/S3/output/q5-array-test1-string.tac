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
    _T4 = "first"
    _T5 = 3
    _T6 = 0
    _T7 = (_T5 < _T6)
    if (_T7 == 0) branch _L10
    _T8 = "Decaf runtime error: The length of the created array should not be less than 0.\n"
    parm _T8
    call _PrintString
    call _Halt
_L10:
    _T9 = 4
    _T10 = (_T9 * _T5)
    _T11 = (_T9 + _T10)
    parm _T11
    _T12 =  call _Alloc
    *(_T12 + 0) = _T5
    _T13 = 0
    _T12 = (_T12 + _T11)
_L11:
    _T11 = (_T11 - _T9)
    if (_T11 == 0) branch _L12
    _T12 = (_T12 - _T9)
    *(_T12 + 0) = _T13
    branch _L11
_L12:
    _T14 = 0
_L14:
    _T15 = (_T14 < _T5)
    if (_T15 == 0) branch _L13
    _T16 = 4
    _T17 = (_T14 * _T16)
    _T18 = (_T12 + _T17)
    *(_T18 + 0) = _T4
    _T19 = 1
    _T20 = (_T14 + _T19)
    _T14 = _T20
    branch _L14
_L13:
    _T3 = _T12
    _T21 = 1
    _T22 = *(_T3 - 4)
    _T23 = (_T21 < _T22)
    if (_T23 == 0) branch _L15
    _T24 = 0
    _T25 = (_T21 < _T24)
    if (_T25 == 0) branch _L16
_L15:
    _T26 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T26
    call _PrintString
    call _Halt
_L16:
    _T27 = 4
    _T28 = (_T21 * _T27)
    _T29 = (_T3 + _T28)
    _T30 = *(_T29 + 0)
    _T31 = "second"
    _T32 = 4
    _T33 = (_T21 * _T32)
    _T34 = (_T3 + _T33)
    *(_T34 + 0) = _T31
    _T35 = 0
    _T36 = *(_T3 - 4)
    _T37 = (_T35 < _T36)
    if (_T37 == 0) branch _L17
    _T38 = 0
    _T39 = (_T35 < _T38)
    if (_T39 == 0) branch _L18
_L17:
    _T40 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T40
    call _PrintString
    call _Halt
_L18:
    _T41 = 4
    _T42 = (_T35 * _T41)
    _T43 = (_T3 + _T42)
    _T44 = *(_T43 + 0)
    parm _T44
    call _PrintString
    _T45 = "\n"
    parm _T45
    call _PrintString
    _T46 = 1
    _T47 = *(_T3 - 4)
    _T48 = (_T46 < _T47)
    if (_T48 == 0) branch _L19
    _T49 = 0
    _T50 = (_T46 < _T49)
    if (_T50 == 0) branch _L20
_L19:
    _T51 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T51
    call _PrintString
    call _Halt
_L20:
    _T52 = 4
    _T53 = (_T46 * _T52)
    _T54 = (_T3 + _T53)
    _T55 = *(_T54 + 0)
    parm _T55
    call _PrintString
    _T56 = "\n"
    parm _T56
    call _PrintString
}

