VTABLE(_Main) {
    <empty>
    Main
}

VTABLE(_A) {
    _Main
    A
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

FUNCTION(_A_New) {
memo ''
_A_New:
    _T3 = 4
    parm _T3
    _T4 =  call _Alloc
    _T5 = VTBL <_A>
    *(_T4 + 0) = _T5
    return _T4
}

FUNCTION(main) {
memo ''
main:
    _T7 =  call _Main_New
    _T6 = _T7
    _T10 = VTBL <_A>
    _T11 = *(_T6 + 0)
_L11:
    _T9 = (_T10 == _T11)
    if (_T9 != 0) branch _L12
    _T11 = *(_T11 + 0)
    if (_T11 != 0) branch _L11
    _T12 = "Decaf runtime error: "
    parm _T12
    call _PrintString
    _T13 = *(_T6 + 0)
    _T14 = *(_T13 + 4)
    parm _T14
    call _PrintString
    _T15 = " cannot be cast to "
    parm _T15
    call _PrintString
    _T16 = VTBL <_A>
    _T17 = *(_T16 + 4)
    parm _T17
    call _PrintString
    _T18 = "\n"
    parm _T18
    call _PrintString
    call _Halt
_L12:
    _T8 = _T6
}

