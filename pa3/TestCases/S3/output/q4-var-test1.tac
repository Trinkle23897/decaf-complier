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

FUNCTION(_Main.foo) {
memo ''
_Main.foo:
    _T4 = 100
    _T3 = _T4
    return _T3
}

FUNCTION(main) {
memo ''
main:
    _T6 = 30
    _T5 = _T6
    _T7 = _T5
    parm _T7
    call _PrintInt
}

