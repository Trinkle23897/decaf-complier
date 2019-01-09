VTABLE(_Cow) {
    <empty>
    Cow
    _Cow.Init;
    _Cow.Moo;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Cow_New) {
memo ''
_Cow_New:
    _T4 = 12
    parm _T4
    _T5 =  call _Alloc
    _T6 = 0
    *(_T5 + 4) = _T6
    *(_T5 + 8) = _T6
    _T7 = VTBL <_Cow>
    *(_T5 + 0) = _T7
    return _T5
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T8 = 4
    parm _T8
    _T9 =  call _Alloc
    _T10 = VTBL <_Main>
    *(_T9 + 0) = _T10
    return _T9
}

FUNCTION(_Cow.Init) {
memo '_T0:4 _T1:8 _T2:12'
_Cow.Init:
    _T11 = *(_T0 + 8)
    *(_T0 + 8) = _T1
    _T12 = *(_T0 + 4)
    *(_T0 + 4) = _T2
}

FUNCTION(_Cow.Moo) {
memo '_T3:4'
_Cow.Moo:
    _T13 = *(_T3 + 4)
    parm _T13
    call _PrintInt
    _T14 = " "
    parm _T14
    call _PrintString
    _T15 = *(_T3 + 8)
    parm _T15
    call _PrintInt
    _T16 = "\n"
    parm _T16
    call _PrintString
}

FUNCTION(main) {
memo ''
main:
    _T18 =  call _Cow_New
    _T17 = _T18
    _T19 = 100
    _T20 = 122
    parm _T17
    parm _T19
    parm _T20
    _T21 = *(_T17 + 0)
    _T22 = *(_T21 + 8)
    icall _T22
    parm _T17
    _T23 = *(_T17 + 0)
    _T24 = *(_T23 + 12)
    icall _T24
}

