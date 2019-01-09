VTABLE(_Main) {
    <empty>
    Main
}

VTABLE(_Base) {
    <empty>
    Base
}

VTABLE(_Sub1) {
    _Base
    Sub1
}

VTABLE(_Sub2) {
    _Base
    Sub2
}

VTABLE(_Sub3) {
    _Sub1
    Sub3
}

VTABLE(_Sub4) {
    _Sub3
    Sub4
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T1 = 4
    parm _T1
    _T2 =  call _Alloc
    _T3 = VTBL <_Main>
    *(_T2 + 0) = _T3
    return _T2
}

FUNCTION(_Base_New) {
memo ''
_Base_New:
    _T4 = 4
    parm _T4
    _T5 =  call _Alloc
    _T6 = VTBL <_Base>
    *(_T5 + 0) = _T6
    return _T5
}

FUNCTION(_Sub1_New) {
memo ''
_Sub1_New:
    _T7 = 4
    parm _T7
    _T8 =  call _Alloc
    _T9 = VTBL <_Sub1>
    *(_T8 + 0) = _T9
    return _T8
}

FUNCTION(_Sub2_New) {
memo ''
_Sub2_New:
    _T10 = 4
    parm _T10
    _T11 =  call _Alloc
    _T12 = VTBL <_Sub2>
    *(_T11 + 0) = _T12
    return _T11
}

FUNCTION(_Sub3_New) {
memo ''
_Sub3_New:
    _T13 = 4
    parm _T13
    _T14 =  call _Alloc
    _T15 = VTBL <_Sub3>
    *(_T14 + 0) = _T15
    return _T14
}

FUNCTION(_Sub4_New) {
memo ''
_Sub4_New:
    _T16 = 4
    parm _T16
    _T17 =  call _Alloc
    _T18 = VTBL <_Sub4>
    *(_T17 + 0) = _T18
    return _T17
}

FUNCTION(main) {
memo ''
main:
    _T24 =  call _Base_New
    _T19 = _T24
    _T25 =  call _Sub1_New
    _T20 = _T25
    _T26 =  call _Sub2_New
    _T21 = _T26
    _T27 =  call _Sub3_New
    _T22 = _T27
    _T28 =  call _Sub4_New
    _T23 = _T28
    parm _T19
    call _Main.printType
    parm _T20
    call _Main.printType
    parm _T21
    call _Main.printType
    parm _T22
    call _Main.printType
    parm _T23
    call _Main.printType
    _T19 = _T23
    parm _T19
    call _Main.printType
    _T30 = VTBL <_Sub1>
    _T31 = *(_T19 + 0)
_L16:
    _T29 = (_T30 == _T31)
    if (_T29 != 0) branch _L17
    _T31 = *(_T31 + 0)
    if (_T31 != 0) branch _L16
    _T32 = "Decaf runtime error: "
    parm _T32
    call _PrintString
    _T33 = *(_T19 + 0)
    _T34 = *(_T33 + 4)
    parm _T34
    call _PrintString
    _T35 = " cannot be cast to "
    parm _T35
    call _PrintString
    _T36 = VTBL <_Sub1>
    _T37 = *(_T36 + 4)
    parm _T37
    call _PrintString
    _T38 = "\n"
    parm _T38
    call _PrintString
    call _Halt
_L17:
    _T20 = _T19
    parm _T20
    call _Main.printType
}

FUNCTION(_Main.printType) {
memo '_T0:4'
_Main.printType:
    _T40 = VTBL <_Sub4>
    _T41 = *(_T0 + 0)
_L18:
    _T39 = (_T40 == _T41)
    if (_T39 != 0) branch _L19
    _T41 = *(_T41 + 0)
    if (_T41 != 0) branch _L18
    _T39 = 0
_L19:
    if (_T39 == 0) branch _L20
    _T42 = "Sub4\n"
    parm _T42
    call _PrintString
    branch _L21
_L20:
    _T44 = VTBL <_Sub3>
    _T45 = *(_T0 + 0)
_L22:
    _T43 = (_T44 == _T45)
    if (_T43 != 0) branch _L23
    _T45 = *(_T45 + 0)
    if (_T45 != 0) branch _L22
    _T43 = 0
_L23:
    if (_T43 == 0) branch _L24
    _T46 = "Sub3\n"
    parm _T46
    call _PrintString
    branch _L25
_L24:
    _T48 = VTBL <_Sub2>
    _T49 = *(_T0 + 0)
_L26:
    _T47 = (_T48 == _T49)
    if (_T47 != 0) branch _L27
    _T49 = *(_T49 + 0)
    if (_T49 != 0) branch _L26
    _T47 = 0
_L27:
    if (_T47 == 0) branch _L28
    _T50 = "Sub2\n"
    parm _T50
    call _PrintString
    branch _L29
_L28:
    _T52 = VTBL <_Sub1>
    _T53 = *(_T0 + 0)
_L30:
    _T51 = (_T52 == _T53)
    if (_T51 != 0) branch _L31
    _T53 = *(_T53 + 0)
    if (_T53 != 0) branch _L30
    _T51 = 0
_L31:
    if (_T51 == 0) branch _L32
    _T54 = "Sub1\n"
    parm _T54
    call _PrintString
    branch _L33
_L32:
    _T56 = VTBL <_Base>
    _T57 = *(_T0 + 0)
_L34:
    _T55 = (_T56 == _T57)
    if (_T55 != 0) branch _L35
    _T57 = *(_T57 + 0)
    if (_T57 != 0) branch _L34
    _T55 = 0
_L35:
    if (_T55 == 0) branch _L36
    _T58 = "Base\n"
    parm _T58
    call _PrintString
_L36:
_L33:
_L29:
_L25:
_L21:
}

