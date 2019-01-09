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
    _T4 = 110
    _T3 = _T4
    _T6 = 100
    _T7 = (_T3 > _T6)
    if (_T7 == 0) branch _L10
    _T8 = 100
    _T9 = (_T3 - _T8)
    _T5 = _T9
_L10:
    _T10 = 50
    _T11 = (_T3 < _T10)
    if (_T11 == 0) branch _L11
    _T12 = 50
    _T13 = (_T3 + _T12)
    _T5 = _T13
_L11:
    _T14 = 0
    _T15 = (_T3 < _T14)
    if (_T15 == 0) branch _L12
    _T16 = 200
    _T17 = (_T3 + _T16)
    _T5 = _T17
_L12:
    parm _T3
    call _PrintInt
    parm _T5
    call _PrintInt
}

