VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T2 = 4
    parm _T2
    _T3 =  call _Alloc
    _T4 = VTBL <_Main>
    *(_T3 + 0) = _T4
    return _T3
}

FUNCTION(main) {
memo ''
main:
    _T7 = "hello"
    _T6 = _T7
    _T8 = 4
    _T9 = 5
    parm _T8
    parm _T9
    _T10 =  call _Main.test
    _T5 = _T10
    parm _T5
    call _PrintInt
    parm _T6
    call _PrintString
}

FUNCTION(_Main.test) {
memo '_T0:4 _T1:8'
_Main.test:
    _T11 = (_T0 + _T1)
    return _T11
}

