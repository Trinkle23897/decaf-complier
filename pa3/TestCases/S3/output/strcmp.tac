VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T4 = 4
    parm _T4
    _T5 =  call _Alloc
    _T6 = VTBL <_Main>
    *(_T5 + 0) = _T6
    return _T5
}

FUNCTION(_Main.compareString) {
memo '_T0:4 _T1:8'
_Main.compareString:
    parm _T0
    parm _T1
    _T7 =  call _StringEqual
    if (_T7 == 0) branch _L12
    _T8 = "Equal"
    return _T8
    branch _L13
_L12:
    parm _T0
    parm _T1
    _T9 =  call _StringEqual
    _T10 = ! _T9
    if (_T10 == 0) branch _L14
    _T11 = "Unequal"
    return _T11
    branch _L15
_L14:
    _T12 = "The impossible happens!"
    return _T12
_L15:
_L13:
}

FUNCTION(_Main.printCompareString) {
memo '_T2:4 _T3:8'
_Main.printCompareString:
    _T13 = "\""
    parm _T13
    call _PrintString
    parm _T2
    call _PrintString
    _T14 = "\" and \""
    parm _T14
    call _PrintString
    parm _T3
    call _PrintString
    _T15 = "\": "
    parm _T15
    call _PrintString
    parm _T2
    parm _T3
    _T16 =  call _Main.compareString
    parm _T16
    call _PrintString
    _T17 = "\n"
    parm _T17
    call _PrintString
}

FUNCTION(main) {
memo ''
main:
    _T18 = "Jobs"
    _T19 = "Gates"
    parm _T18
    parm _T19
    call _Main.printCompareString
    _T20 = "case sensitive"
    _T21 = "CASE SENSITIVE"
    parm _T20
    parm _T21
    call _Main.printCompareString
    _T22 = "Hello"
    _T23 = "Hello"
    parm _T22
    parm _T23
    call _Main.printCompareString
}

