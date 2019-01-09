VTABLE(_Computer) {
    <empty>
    Computer
    _Computer.Crash;
}

VTABLE(_Mac) {
    _Computer
    Mac
    _Mac.Crash;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Computer_New) {
memo ''
_Computer_New:
    _T4 = 8
    parm _T4
    _T5 =  call _Alloc
    _T6 = 0
    *(_T5 + 4) = _T6
    _T7 = VTBL <_Computer>
    *(_T5 + 0) = _T7
    return _T5
}

FUNCTION(_Mac_New) {
memo ''
_Mac_New:
    _T8 = 12
    parm _T8
    _T9 =  call _Alloc
    _T10 = 0
    *(_T9 + 4) = _T10
    *(_T9 + 8) = _T10
    _T11 = VTBL <_Mac>
    *(_T9 + 0) = _T11
    return _T9
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T12 = 4
    parm _T12
    _T13 =  call _Alloc
    _T14 = VTBL <_Main>
    *(_T13 + 0) = _T14
    return _T13
}

FUNCTION(_Computer.Crash) {
memo '_T0:4 _T1:8'
_Computer.Crash:
    _T16 = 0
    _T15 = _T16
    branch _L14
_L15:
    _T17 = 1
    _T18 = (_T15 + _T17)
    _T15 = _T18
_L14:
    _T19 = (_T15 < _T1)
    if (_T19 == 0) branch _L16
    _T20 = "sad\n"
    parm _T20
    call _PrintString
    branch _L15
_L16:
}

FUNCTION(_Mac.Crash) {
memo '_T2:4 _T3:8'
_Mac.Crash:
    _T21 = "ack!"
    parm _T21
    call _PrintString
}

FUNCTION(main) {
memo ''
main:
    _T23 =  call _Mac_New
    _T22 = _T23
    _T24 = 2
    parm _T22
    parm _T24
    _T25 = *(_T22 + 0)
    _T26 = *(_T25 + 8)
    icall _T26
}

