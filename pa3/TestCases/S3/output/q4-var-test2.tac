VTABLE(_A) {
    <empty>
    A
    _A.seta;
    _A.getA;
}

VTABLE(_Father) {
    <empty>
    Father
    _Father.init;
    _Father.setfield;
    _Father.printfield;
    _Father.seta;
    _Father.getA;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_A_New) {
memo ''
_A_New:
    _T11 = 8
    parm _T11
    _T12 =  call _Alloc
    _T13 = 0
    *(_T12 + 4) = _T13
    _T14 = VTBL <_A>
    *(_T12 + 0) = _T14
    return _T12
}

FUNCTION(_Father_New) {
memo ''
_Father_New:
    _T15 = 12
    parm _T15
    _T16 =  call _Alloc
    _T17 = 0
    *(_T16 + 4) = _T17
    *(_T16 + 8) = _T17
    _T18 = VTBL <_Father>
    *(_T16 + 0) = _T18
    return _T16
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T19 = 4
    parm _T19
    _T20 =  call _Alloc
    _T21 = VTBL <_Main>
    *(_T20 + 0) = _T21
    return _T20
}

FUNCTION(_A.seta) {
memo '_T0:4 _T1:8'
_A.seta:
    _T22 = *(_T0 + 4)
    *(_T0 + 4) = _T1
}

FUNCTION(_A.getA) {
memo '_T2:4'
_A.getA:
    _T23 = *(_T2 + 4)
    return _T23
}

FUNCTION(_Father.init) {
memo '_T3:4 _T4:8'
_Father.init:
    _T24 = *(_T3 + 4)
    *(_T3 + 4) = _T4
    _T25 = *(_T3 + 8)
    _T26 =  call _A_New
    *(_T3 + 8) = _T26
}

FUNCTION(_Father.setfield) {
memo '_T5:4 _T6:8'
_Father.setfield:
    _T27 = *(_T5 + 4)
    *(_T5 + 4) = _T6
}

FUNCTION(_Father.printfield) {
memo '_T7:4'
_Father.printfield:
    _T28 = *(_T7 + 4)
    parm _T28
    call _PrintInt
}

FUNCTION(_Father.seta) {
memo '_T8:4 _T9:8'
_Father.seta:
    _T29 = *(_T8 + 8)
    parm _T29
    parm _T9
    _T30 = *(_T29 + 0)
    _T31 = *(_T30 + 8)
    call _T31
}

FUNCTION(_Father.getA) {
memo '_T10:4'
_Father.getA:
    _T32 = *(_T10 + 8)
    parm _T32
    _T33 = *(_T32 + 0)
    _T34 = *(_T33 + 12)
    _T35 =  call _T34
}

FUNCTION(main) {
memo ''
main:
    _T37 =  call _Father_New
    _T36 = _T37
    _T38 = 10
    parm _T36
    parm _T38
    _T39 = *(_T36 + 0)
    _T40 = *(_T39 + 8)
    call _T40
    _T41 = 10
    parm _T36
    parm _T41
    _T42 = *(_T36 + 0)
    _T43 = *(_T42 + 20)
    call _T43
    _T44 = _T36
    parm _T36
    _T45 = *(_T36 + 0)
    _T46 = *(_T45 + 24)
    _T47 =  call _T46
    parm _T47
    call _PrintInt
    parm _T44
    _T48 = *(_T44 + 0)
    _T49 = *(_T48 + 24)
    _T50 =  call _T49
    parm _T50
    call _PrintInt
    parm _T36
    _T51 = *(_T36 + 0)
    _T52 = *(_T51 + 16)
    call _T52
    parm _T44
    _T53 = *(_T44 + 0)
    _T54 = *(_T53 + 16)
    call _T54
    _T55 = 5
    parm _T36
    parm _T55
    _T56 = *(_T36 + 0)
    _T57 = *(_T56 + 12)
    call _T57
    _T58 = 5
    parm _T36
    parm _T58
    _T59 = *(_T36 + 0)
    _T60 = *(_T59 + 20)
    call _T60
    parm _T36
    _T61 = *(_T36 + 0)
    _T62 = *(_T61 + 24)
    _T63 =  call _T62
    parm _T63
    call _PrintInt
    parm _T44
    _T64 = *(_T44 + 0)
    _T65 = *(_T64 + 24)
    _T66 =  call _T65
    parm _T66
    call _PrintInt
    parm _T36
    _T67 = *(_T36 + 0)
    _T68 = *(_T67 + 16)
    call _T68
    parm _T44
    _T69 = *(_T44 + 0)
    _T70 = *(_T69 + 16)
    call _T70
}

