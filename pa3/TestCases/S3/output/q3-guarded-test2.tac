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
    _T5 = 0
    _T6 = (_T3 > _T5)
    if (_T6 == 0) branch _L10
    _T7 = "a>0\n"
    parm _T7
    call _PrintString
_L10:
    _T8 = 50
    _T9 = (_T3 < _T8)
    if (_T9 == 0) branch _L11
    _T10 = "a<50\n"
    parm _T10
    call _PrintString
_L11:
    _T11 = 100
    _T12 = (_T3 > _T11)
    if (_T12 == 0) branch _L12
    _T13 = "a>100\n"
    parm _T13
    call _PrintString
_L12:
    _T14 = 200
    _T15 = (_T3 < _T14)
    if (_T15 == 0) branch _L13
    _T16 = "a<200\n"
    parm _T16
    call _PrintString
_L13:
    parm _T3
    call _PrintInt
}

