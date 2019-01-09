VTABLE(_Main) {
    <empty>
    Main
    _Main.create;
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T2 = 8
    parm _T2
    _T3 =  call _Alloc
    _T4 = 0
    *(_T3 + 4) = _T4
    _T5 = VTBL <_Main>
    *(_T3 + 0) = _T5
    return _T3
}

FUNCTION(main) {
memo ''
main:
    _T6 =  call _Main_New
    _T7 = 1
    _T8 = - _T7
    parm _T6
    parm _T8
    _T9 = *(_T6 + 0)
    _T10 = *(_T9 + 8)
    icall _T10
}

FUNCTION(_Main.create) {
memo '_T0:4 _T1:8'
_Main.create:
    _T11 = *(_T0 + 4)
    _T12 = 0
    _T13 = (_T1 < _T12)
    if (_T13 == 0) branch _L11
    _T14 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T14
    call _PrintString
    call _Halt
_L11:
    _T15 = 4
    _T16 = (_T15 * _T1)
    _T17 = (_T15 + _T16)
    parm _T17
    _T18 =  call _Alloc
    *(_T18 + 0) = _T1
    _T19 = 0
    _T18 = (_T18 + _T17)
_L12:
    _T17 = (_T17 - _T15)
    if (_T17 == 0) branch _L13
    _T18 = (_T18 - _T15)
    *(_T18 + 0) = _T19
    branch _L12
_L13:
    *(_T0 + 4) = _T18
}

