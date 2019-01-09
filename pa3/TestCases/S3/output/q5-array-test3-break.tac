VTABLE(_Father) {
    <empty>
    Father
    _Father.foo;
}

VTABLE(_Child) {
    _Father
    Child
    _Father.foo;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Father_New) {
memo ''
_Father_New:
    _T1 = 8
    parm _T1
    _T2 =  call _Alloc
    _T3 = 0
    *(_T2 + 4) = _T3
    _T4 = VTBL <_Father>
    *(_T2 + 0) = _T4
    return _T2
}

FUNCTION(_Child_New) {
memo ''
_Child_New:
    _T5 = 12
    parm _T5
    _T6 =  call _Alloc
    _T7 = 0
    *(_T6 + 4) = _T7
    *(_T6 + 8) = _T7
    _T8 = VTBL <_Child>
    *(_T6 + 0) = _T8
    return _T6
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T9 = 4
    parm _T9
    _T10 =  call _Alloc
    _T11 = VTBL <_Main>
    *(_T10 + 0) = _T11
    return _T10
}

FUNCTION(_Father.foo) {
memo '_T0:4'
_Father.foo:
    _T12 = *(_T0 + 4)
    return _T12
}

FUNCTION(main) {
memo ''
main:
    _T15 = 3
    _T14 = _T15
    _T16 = 10
    _T17 = 0
    _T18 = (_T16 < _T17)
    if (_T18 == 0) branch _L13
    _T19 = "Decaf runtime error: The length of the created array should not be less than 0.\n"
    parm _T19
    call _PrintString
    call _Halt
_L13:
    _T20 = 4
    _T21 = (_T20 * _T16)
    _T22 = (_T20 + _T21)
    parm _T22
    _T23 =  call _Alloc
    *(_T23 + 0) = _T16
    _T24 = 0
    _T23 = (_T23 + _T22)
_L14:
    _T22 = (_T22 - _T20)
    if (_T22 == 0) branch _L15
    _T23 = (_T23 - _T20)
    *(_T23 + 0) = _T24
    branch _L14
_L15:
    _T25 = 0
_L17:
    _T26 = (_T25 < _T16)
    if (_T26 == 0) branch _L16
    _T27 = 4
    _T28 = (_T25 * _T27)
    _T29 = (_T23 + _T28)
    *(_T29 + 0) = _T14
    _T30 = 1
    _T31 = (_T25 + _T30)
    _T25 = _T31
    branch _L17
_L16:
    _T13 = _T23
    _T33 = 0
    _T34 = 1
    _T35 = *(_T13 - 4)
    branch _L19
_L20:
    _T36 = (_T33 + _T34)
    _T33 = _T36
_L19:
    _T37 = (_T33 < _T35)
    if (_T37 == 0) branch _L18
    _T38 = 4
    _T39 = (_T33 * _T38)
    _T40 = (_T13 + _T39)
    _T41 = *(_T40 + 0)
    _T32 = _T41
    _T42 = 2
    _T43 = (_T14 > _T42)
    if (_T43 == 0) branch _L18
    _T44 = (_T14 + _T32)
    _T14 = _T44
    parm _T32
    call _PrintInt
    parm _T14
    call _PrintInt
    _T45 = "\n"
    parm _T45
    call _PrintString
    _T46 = 20
    _T47 = (_T14 > _T46)
    if (_T47 == 0) branch _L21
    branch _L18
_L21:
    branch _L20
_L18:
}

