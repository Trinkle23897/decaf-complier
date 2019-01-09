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
    _T4 = "pa1"
    _T5 = 2
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
    _T22 = 0
    _T23 = "pa2"
    _T25 = 0
    _T26 = (_T22 >= _T25)
    if (_T26 == 0) branch _L15
    _T27 = *(_T3 - 4)
    _T28 = (_T22 < _T27)
    if (_T28 == 0) branch _L15
    _T29 = 4
    _T30 = (_T22 * _T29)
    _T31 = (_T3 + _T30)
    _T32 = *(_T31 + 0)
    _T24 = _T32
    branch _L16
_L15:
    _T24 = _T23
_L16:
    _T21 = _T24
    _T34 = 2
    _T35 = "pa3"
    _T37 = 0
    _T38 = (_T34 >= _T37)
    if (_T38 == 0) branch _L17
    _T39 = *(_T3 - 4)
    _T40 = (_T34 < _T39)
    if (_T40 == 0) branch _L17
    _T41 = 4
    _T42 = (_T34 * _T41)
    _T43 = (_T3 + _T42)
    _T44 = *(_T43 + 0)
    _T36 = _T44
    branch _L18
_L17:
    _T36 = _T35
_L18:
    _T33 = _T36
    parm _T21
    call _PrintString
    parm _T33
    call _PrintString
}

