VTABLE(_Math) {
    <empty>
    Math
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Math_New) {
memo ''
_Math_New:
    _T8 = 4
    parm _T8
    _T9 =  call _Alloc
    _T10 = VTBL <_Math>
    *(_T9 + 0) = _T10
    return _T9
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T11 = 4
    parm _T11
    _T12 =  call _Alloc
    _T13 = VTBL <_Main>
    *(_T12 + 0) = _T13
    return _T12
}

FUNCTION(_Math.abs) {
memo '_T0:4'
_Math.abs:
    _T14 = 0
    _T15 = (_T0 >= _T14)
    if (_T15 == 0) branch _L16
    return _T0
    branch _L17
_L16:
    _T16 = - _T0
    return _T16
_L17:
}

FUNCTION(_Math.pow) {
memo '_T1:4 _T2:8'
_Math.pow:
    _T19 = 1
    _T18 = _T19
    _T20 = 0
    _T17 = _T20
    branch _L18
_L19:
    _T21 = 1
    _T22 = (_T17 + _T21)
    _T17 = _T22
_L18:
    _T23 = (_T17 < _T2)
    if (_T23 == 0) branch _L20
    _T24 = (_T18 * _T1)
    _T18 = _T24
    branch _L19
_L20:
    return _T18
}

FUNCTION(_Math.log) {
memo '_T3:4'
_Math.log:
    _T25 = 1
    _T26 = (_T3 < _T25)
    if (_T26 == 0) branch _L21
    _T27 = 1
    _T28 = - _T27
    return _T28
_L21:
    _T30 = 0
    _T29 = _T30
_L22:
    _T31 = 1
    _T32 = (_T3 > _T31)
    if (_T32 == 0) branch _L23
    _T33 = 1
    _T34 = (_T29 + _T33)
    _T29 = _T34
    _T35 = 2
    _T36 = (_T3 / _T35)
    _T3 = _T36
    branch _L22
_L23:
    return _T29
}

FUNCTION(_Math.max) {
memo '_T4:4 _T5:8'
_Math.max:
    _T37 = (_T4 > _T5)
    if (_T37 == 0) branch _L24
    return _T4
    branch _L25
_L24:
    return _T5
_L25:
}

FUNCTION(_Math.min) {
memo '_T6:4 _T7:8'
_Math.min:
    _T38 = (_T6 < _T7)
    if (_T38 == 0) branch _L26
    return _T6
    branch _L27
_L26:
    return _T7
_L27:
}

FUNCTION(main) {
memo ''
main:
    _T39 = 1
    _T40 = - _T39
    parm _T40
    _T41 =  call _Math.abs
    parm _T41
    call _PrintInt
    _T42 = "\n"
    parm _T42
    call _PrintString
    _T43 = 2
    _T44 = 3
    parm _T43
    parm _T44
    _T45 =  call _Math.pow
    parm _T45
    call _PrintInt
    _T46 = "\n"
    parm _T46
    call _PrintString
    _T47 = 16
    parm _T47
    _T48 =  call _Math.log
    parm _T48
    call _PrintInt
    _T49 = "\n"
    parm _T49
    call _PrintString
    _T50 = 1
    _T51 = 2
    parm _T50
    parm _T51
    _T52 =  call _Math.max
    parm _T52
    call _PrintInt
    _T53 = "\n"
    parm _T53
    call _PrintString
    _T54 = 1
    _T55 = 2
    parm _T54
    parm _T55
    _T56 =  call _Math.min
    parm _T56
    call _PrintInt
    _T57 = "\n"
    parm _T57
    call _PrintString
}

