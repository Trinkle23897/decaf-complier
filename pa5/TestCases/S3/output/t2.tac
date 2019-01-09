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
    _T6 = 1
    _T5 = _T6
    _T7 = "wow!"
    _T4 = _T7
    _T8 = 3
    _T3 = _T8
    if (_T5 == 0) branch _L10
    _T9 = 5
    _T10 = (_T3 * _T9)
    _T3 = _T10
_L10:
    parm _T5
    call _PrintBool
    _T11 = " "
    parm _T11
    call _PrintString
    parm _T3
    call _PrintInt
}

