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
    _T4 = 2
    _T5 = 0
    _T6 = (_T4 < _T5)
    if (_T6 == 0) branch _L10
    _T7 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T7
    call _PrintString
    call _Halt
_L10:
    _T8 = 4
    _T9 = (_T8 * _T4)
    _T10 = (_T8 + _T9)
    parm _T10
    _T11 =  call _Alloc
    *(_T11 + 0) = _T4
    _T12 = 0
    _T11 = (_T11 + _T10)
_L11:
    _T10 = (_T10 - _T8)
    if (_T10 == 0) branch _L12
    _T11 = (_T11 - _T8)
    *(_T11 + 0) = _T12
    branch _L11
_L12:
    _T3 = _T11
    _T13 = 2
    _T14 = *(_T3 - 4)
    _T15 = (_T13 < _T14)
    if (_T15 == 0) branch _L13
    _T16 = 0
    _T17 = (_T13 < _T16)
    if (_T17 == 0) branch _L14
_L13:
    _T18 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T18
    call _PrintString
    call _Halt
_L14:
    _T19 = 4
    _T20 = (_T13 * _T19)
    _T21 = (_T3 + _T20)
    _T22 = *(_T21 + 0)
    _T23 = 0
    _T24 = 4
    _T25 = (_T13 * _T24)
    _T26 = (_T3 + _T25)
    *(_T26 + 0) = _T23
}

