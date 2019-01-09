VTABLE(_Matrix) {
    <empty>
    Matrix
    _Matrix.Init;
    _Matrix.Set;
    _Matrix.Get;
    _Matrix.PrintMatrix;
    _Matrix.SeedMatrix;
}

VTABLE(_DenseMatrix) {
    _Matrix
    DenseMatrix
    _DenseMatrix.Init;
    _DenseMatrix.Set;
    _DenseMatrix.Get;
    _Matrix.PrintMatrix;
    _Matrix.SeedMatrix;
}

VTABLE(_SparseItem) {
    <empty>
    SparseItem
    _SparseItem.Init;
    _SparseItem.GetNext;
    _SparseItem.GetY;
    _SparseItem.GetData;
    _SparseItem.SetData;
}

VTABLE(_SparseMatrix) {
    _Matrix
    SparseMatrix
    _SparseMatrix.Init;
    _SparseMatrix.Set;
    _SparseMatrix.Get;
    _Matrix.PrintMatrix;
    _Matrix.SeedMatrix;
    _SparseMatrix.Find;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_Matrix_New) {
memo ''
_Matrix_New:
    _T38 = 4
    parm _T38
    _T39 =  call _Alloc
    _T40 = VTBL <_Matrix>
    *(_T39 + 0) = _T40
    return _T39
}

FUNCTION(_DenseMatrix_New) {
memo ''
_DenseMatrix_New:
    _T41 = 8
    parm _T41
    _T42 =  call _Alloc
    _T43 = 0
    *(_T42 + 4) = _T43
    _T44 = VTBL <_DenseMatrix>
    *(_T42 + 0) = _T44
    return _T42
}

FUNCTION(_SparseItem_New) {
memo ''
_SparseItem_New:
    _T45 = 16
    parm _T45
    _T46 =  call _Alloc
    _T47 = 0
    *(_T46 + 4) = _T47
    *(_T46 + 8) = _T47
    *(_T46 + 12) = _T47
    _T48 = VTBL <_SparseItem>
    *(_T46 + 0) = _T48
    return _T46
}

FUNCTION(_SparseMatrix_New) {
memo ''
_SparseMatrix_New:
    _T49 = 8
    parm _T49
    _T50 =  call _Alloc
    _T51 = 0
    *(_T50 + 4) = _T51
    _T52 = VTBL <_SparseMatrix>
    *(_T50 + 0) = _T52
    return _T50
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T53 = 4
    parm _T53
    _T54 =  call _Alloc
    _T55 = VTBL <_Main>
    *(_T54 + 0) = _T55
    return _T54
}

FUNCTION(_Matrix.Init) {
memo '_T0:4'
_Matrix.Init:
}

FUNCTION(_Matrix.Set) {
memo '_T1:4 _T2:8 _T3:12 _T4:16'
_Matrix.Set:
}

FUNCTION(_Matrix.Get) {
memo '_T5:4 _T6:8 _T7:12'
_Matrix.Get:
}

FUNCTION(_Matrix.PrintMatrix) {
memo '_T8:4'
_Matrix.PrintMatrix:
    _T58 = 0
    _T56 = _T58
_L31:
    _T59 = 10
    _T60 = (_T56 < _T59)
    if (_T60 == 0) branch _L32
    _T61 = 0
    _T57 = _T61
_L33:
    _T62 = 10
    _T63 = (_T57 < _T62)
    if (_T63 == 0) branch _L34
    parm _T8
    parm _T56
    parm _T57
    _T64 = *(_T8 + 0)
    _T65 = *(_T64 + 16)
    _T66 =  icall _T65
    parm _T66
    call _PrintInt
    _T67 = "\t"
    parm _T67
    call _PrintString
    _T68 = 1
    _T69 = (_T57 + _T68)
    _T57 = _T69
    branch _L33
_L34:
    _T70 = 1
    _T71 = (_T56 + _T70)
    _T56 = _T71
    _T72 = "\n"
    parm _T72
    call _PrintString
    branch _L31
_L32:
}

FUNCTION(_Matrix.SeedMatrix) {
memo '_T9:4'
_Matrix.SeedMatrix:
    _T75 = 0
    _T73 = _T75
_L35:
    _T76 = 5
    _T77 = (_T73 < _T76)
    if (_T77 == 0) branch _L36
    _T78 = 0
    _T74 = _T78
_L37:
    _T79 = 5
    _T80 = (_T74 < _T79)
    if (_T80 == 0) branch _L38
    _T81 = (_T73 + _T74)
    parm _T9
    parm _T73
    parm _T74
    parm _T81
    _T82 = *(_T9 + 0)
    _T83 = *(_T82 + 12)
    icall _T83
    _T84 = 1
    _T85 = (_T74 + _T84)
    _T74 = _T85
    branch _L37
_L38:
    _T86 = 1
    _T87 = (_T73 + _T86)
    _T73 = _T87
    branch _L35
_L36:
    _T88 = 2
    _T89 = 3
    _T90 = 4
    parm _T9
    parm _T88
    parm _T89
    parm _T90
    _T91 = *(_T9 + 0)
    _T92 = *(_T91 + 12)
    icall _T92
    _T93 = 4
    _T94 = 6
    _T95 = 2
    parm _T9
    parm _T93
    parm _T94
    parm _T95
    _T96 = *(_T9 + 0)
    _T97 = *(_T96 + 12)
    icall _T97
    _T98 = 2
    _T99 = 3
    _T100 = 5
    parm _T9
    parm _T98
    parm _T99
    parm _T100
    _T101 = *(_T9 + 0)
    _T102 = *(_T101 + 12)
    icall _T102
    _T103 = 0
    _T104 = 0
    _T105 = 1
    parm _T9
    parm _T103
    parm _T104
    parm _T105
    _T106 = *(_T9 + 0)
    _T107 = *(_T106 + 12)
    icall _T107
    _T108 = 1
    _T109 = 6
    _T110 = 3
    parm _T9
    parm _T108
    parm _T109
    parm _T110
    _T111 = *(_T9 + 0)
    _T112 = *(_T111 + 12)
    icall _T112
    _T113 = 7
    _T114 = 7
    _T115 = 7
    parm _T9
    parm _T113
    parm _T114
    parm _T115
    _T116 = *(_T9 + 0)
    _T117 = *(_T116 + 12)
    icall _T117
}

FUNCTION(_DenseMatrix.Init) {
memo '_T10:4'
_DenseMatrix.Init:
    _T120 = 0
    _T118 = _T120
    _T121 = *(_T10 + 4)
    _T122 = 10
    _T123 = 0
    _T124 = (_T122 < _T123)
    if (_T124 == 0) branch _L39
    _T125 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T125
    call _PrintString
    call _Halt
_L39:
    _T126 = 4
    _T127 = (_T126 * _T122)
    _T128 = (_T126 + _T127)
    parm _T128
    _T129 =  call _Alloc
    *(_T129 + 0) = _T122
    _T130 = 0
    _T129 = (_T129 + _T128)
_L40:
    _T128 = (_T128 - _T126)
    if (_T128 == 0) branch _L41
    _T129 = (_T129 - _T126)
    *(_T129 + 0) = _T130
    branch _L40
_L41:
    *(_T10 + 4) = _T129
_L42:
    _T131 = 10
    _T132 = (_T118 < _T131)
    if (_T132 == 0) branch _L43
    _T133 = *(_T10 + 4)
    _T134 = *(_T133 - 4)
    _T135 = (_T118 < _T134)
    if (_T135 == 0) branch _L44
    _T136 = 0
    _T137 = (_T118 < _T136)
    if (_T137 == 0) branch _L45
_L44:
    _T138 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T138
    call _PrintString
    call _Halt
_L45:
    _T139 = 4
    _T140 = (_T118 * _T139)
    _T141 = (_T133 + _T140)
    _T142 = *(_T141 + 0)
    _T143 = 10
    _T144 = 0
    _T145 = (_T143 < _T144)
    if (_T145 == 0) branch _L46
    _T146 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T146
    call _PrintString
    call _Halt
_L46:
    _T147 = 4
    _T148 = (_T147 * _T143)
    _T149 = (_T147 + _T148)
    parm _T149
    _T150 =  call _Alloc
    *(_T150 + 0) = _T143
    _T151 = 0
    _T150 = (_T150 + _T149)
_L47:
    _T149 = (_T149 - _T147)
    if (_T149 == 0) branch _L48
    _T150 = (_T150 - _T147)
    *(_T150 + 0) = _T151
    branch _L47
_L48:
    _T152 = 4
    _T153 = (_T118 * _T152)
    _T154 = (_T133 + _T153)
    *(_T154 + 0) = _T150
    _T155 = 1
    _T156 = (_T118 + _T155)
    _T118 = _T156
    branch _L42
_L43:
    _T157 = 0
    _T118 = _T157
_L49:
    _T158 = 10
    _T159 = (_T118 < _T158)
    if (_T159 == 0) branch _L50
    _T160 = 0
    _T119 = _T160
_L51:
    _T161 = 10
    _T162 = (_T119 < _T161)
    if (_T162 == 0) branch _L52
    _T163 = *(_T10 + 4)
    _T164 = *(_T163 - 4)
    _T165 = (_T118 < _T164)
    if (_T165 == 0) branch _L53
    _T166 = 0
    _T167 = (_T118 < _T166)
    if (_T167 == 0) branch _L54
_L53:
    _T168 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T168
    call _PrintString
    call _Halt
_L54:
    _T169 = 4
    _T170 = (_T118 * _T169)
    _T171 = (_T163 + _T170)
    _T172 = *(_T171 + 0)
    _T173 = *(_T172 - 4)
    _T174 = (_T119 < _T173)
    if (_T174 == 0) branch _L55
    _T175 = 0
    _T176 = (_T119 < _T175)
    if (_T176 == 0) branch _L56
_L55:
    _T177 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T177
    call _PrintString
    call _Halt
_L56:
    _T178 = 4
    _T179 = (_T119 * _T178)
    _T180 = (_T172 + _T179)
    _T181 = *(_T180 + 0)
    _T182 = 0
    _T183 = 4
    _T184 = (_T119 * _T183)
    _T185 = (_T172 + _T184)
    *(_T185 + 0) = _T182
    _T186 = 1
    _T187 = (_T119 + _T186)
    _T119 = _T187
    branch _L51
_L52:
    _T188 = 1
    _T189 = (_T118 + _T188)
    _T118 = _T189
    branch _L49
_L50:
}

FUNCTION(_DenseMatrix.Set) {
memo '_T11:4 _T12:8 _T13:12 _T14:16'
_DenseMatrix.Set:
    _T190 = *(_T11 + 4)
    _T191 = *(_T190 - 4)
    _T192 = (_T12 < _T191)
    if (_T192 == 0) branch _L57
    _T193 = 0
    _T194 = (_T12 < _T193)
    if (_T194 == 0) branch _L58
_L57:
    _T195 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T195
    call _PrintString
    call _Halt
_L58:
    _T196 = 4
    _T197 = (_T12 * _T196)
    _T198 = (_T190 + _T197)
    _T199 = *(_T198 + 0)
    _T200 = *(_T199 - 4)
    _T201 = (_T13 < _T200)
    if (_T201 == 0) branch _L59
    _T202 = 0
    _T203 = (_T13 < _T202)
    if (_T203 == 0) branch _L60
_L59:
    _T204 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T204
    call _PrintString
    call _Halt
_L60:
    _T205 = 4
    _T206 = (_T13 * _T205)
    _T207 = (_T199 + _T206)
    _T208 = *(_T207 + 0)
    _T209 = 4
    _T210 = (_T13 * _T209)
    _T211 = (_T199 + _T210)
    *(_T211 + 0) = _T14
}

FUNCTION(_DenseMatrix.Get) {
memo '_T15:4 _T16:8 _T17:12'
_DenseMatrix.Get:
    _T212 = *(_T15 + 4)
    _T213 = *(_T212 - 4)
    _T214 = (_T16 < _T213)
    if (_T214 == 0) branch _L61
    _T215 = 0
    _T216 = (_T16 < _T215)
    if (_T216 == 0) branch _L62
_L61:
    _T217 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T217
    call _PrintString
    call _Halt
_L62:
    _T218 = 4
    _T219 = (_T16 * _T218)
    _T220 = (_T212 + _T219)
    _T221 = *(_T220 + 0)
    _T222 = *(_T221 - 4)
    _T223 = (_T17 < _T222)
    if (_T223 == 0) branch _L63
    _T224 = 0
    _T225 = (_T17 < _T224)
    if (_T225 == 0) branch _L64
_L63:
    _T226 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T226
    call _PrintString
    call _Halt
_L64:
    _T227 = 4
    _T228 = (_T17 * _T227)
    _T229 = (_T221 + _T228)
    _T230 = *(_T229 + 0)
    return _T230
}

FUNCTION(_SparseItem.Init) {
memo '_T18:4 _T19:8 _T20:12 _T21:16'
_SparseItem.Init:
    _T231 = *(_T18 + 4)
    *(_T18 + 4) = _T19
    _T232 = *(_T18 + 8)
    *(_T18 + 8) = _T20
    _T233 = *(_T18 + 12)
    *(_T18 + 12) = _T21
}

FUNCTION(_SparseItem.GetNext) {
memo '_T22:4'
_SparseItem.GetNext:
    _T234 = *(_T22 + 12)
    return _T234
}

FUNCTION(_SparseItem.GetY) {
memo '_T23:4'
_SparseItem.GetY:
    _T235 = *(_T23 + 8)
    return _T235
}

FUNCTION(_SparseItem.GetData) {
memo '_T24:4'
_SparseItem.GetData:
    _T236 = *(_T24 + 4)
    return _T236
}

FUNCTION(_SparseItem.SetData) {
memo '_T25:4 _T26:8'
_SparseItem.SetData:
    _T237 = *(_T25 + 4)
    *(_T25 + 4) = _T26
}

FUNCTION(_SparseMatrix.Init) {
memo '_T27:4'
_SparseMatrix.Init:
    _T239 = 0
    _T238 = _T239
    _T240 = *(_T27 + 4)
    _T241 = 10
    _T242 = 0
    _T243 = (_T241 < _T242)
    if (_T243 == 0) branch _L65
    _T244 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T244
    call _PrintString
    call _Halt
_L65:
    _T245 = 4
    _T246 = (_T245 * _T241)
    _T247 = (_T245 + _T246)
    parm _T247
    _T248 =  call _Alloc
    *(_T248 + 0) = _T241
    _T249 = 0
    _T248 = (_T248 + _T247)
_L66:
    _T247 = (_T247 - _T245)
    if (_T247 == 0) branch _L67
    _T248 = (_T248 - _T245)
    *(_T248 + 0) = _T249
    branch _L66
_L67:
    *(_T27 + 4) = _T248
_L68:
    _T250 = 10
    _T251 = (_T238 < _T250)
    if (_T251 == 0) branch _L69
    _T252 = *(_T27 + 4)
    _T253 = *(_T252 - 4)
    _T254 = (_T238 < _T253)
    if (_T254 == 0) branch _L70
    _T255 = 0
    _T256 = (_T238 < _T255)
    if (_T256 == 0) branch _L71
_L70:
    _T257 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T257
    call _PrintString
    call _Halt
_L71:
    _T258 = 4
    _T259 = (_T238 * _T258)
    _T260 = (_T252 + _T259)
    _T261 = *(_T260 + 0)
    _T262 = 0
    _T263 = 4
    _T264 = (_T238 * _T263)
    _T265 = (_T252 + _T264)
    *(_T265 + 0) = _T262
    _T266 = 1
    _T267 = (_T238 + _T266)
    _T238 = _T267
    branch _L68
_L69:
}

FUNCTION(_SparseMatrix.Find) {
memo '_T28:4 _T29:8 _T30:12'
_SparseMatrix.Find:
    _T269 = *(_T28 + 4)
    _T270 = *(_T269 - 4)
    _T271 = (_T29 < _T270)
    if (_T271 == 0) branch _L72
    _T272 = 0
    _T273 = (_T29 < _T272)
    if (_T273 == 0) branch _L73
_L72:
    _T274 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T274
    call _PrintString
    call _Halt
_L73:
    _T275 = 4
    _T276 = (_T29 * _T275)
    _T277 = (_T269 + _T276)
    _T278 = *(_T277 + 0)
    _T268 = _T278
_L74:
    _T279 = 0
    _T280 = (_T268 != _T279)
    if (_T280 == 0) branch _L75
    parm _T268
    _T281 = *(_T268 + 0)
    _T282 = *(_T281 + 16)
    _T283 =  icall _T282
    _T284 = (_T283 == _T30)
    if (_T284 == 0) branch _L76
    return _T268
_L76:
    parm _T268
    _T285 = *(_T268 + 0)
    _T286 = *(_T285 + 12)
    _T287 =  icall _T286
    _T268 = _T287
    branch _L74
_L75:
    _T288 = 0
    return _T288
}

FUNCTION(_SparseMatrix.Set) {
memo '_T31:4 _T32:8 _T33:12 _T34:16'
_SparseMatrix.Set:
    parm _T31
    parm _T32
    parm _T33
    _T290 = *(_T31 + 0)
    _T291 = *(_T290 + 28)
    _T292 =  icall _T291
    _T289 = _T292
    _T293 = 0
    _T294 = (_T289 != _T293)
    if (_T294 == 0) branch _L77
    parm _T289
    parm _T34
    _T295 = *(_T289 + 0)
    _T296 = *(_T295 + 24)
    icall _T296
    branch _L78
_L77:
    _T297 =  call _SparseItem_New
    _T289 = _T297
    _T298 = *(_T31 + 4)
    _T299 = *(_T298 - 4)
    _T300 = (_T32 < _T299)
    if (_T300 == 0) branch _L79
    _T301 = 0
    _T302 = (_T32 < _T301)
    if (_T302 == 0) branch _L80
_L79:
    _T303 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T303
    call _PrintString
    call _Halt
_L80:
    _T304 = 4
    _T305 = (_T32 * _T304)
    _T306 = (_T298 + _T305)
    _T307 = *(_T306 + 0)
    parm _T289
    parm _T34
    parm _T33
    parm _T307
    _T308 = *(_T289 + 0)
    _T309 = *(_T308 + 8)
    icall _T309
    _T310 = *(_T31 + 4)
    _T311 = *(_T310 - 4)
    _T312 = (_T32 < _T311)
    if (_T312 == 0) branch _L81
    _T313 = 0
    _T314 = (_T32 < _T313)
    if (_T314 == 0) branch _L82
_L81:
    _T315 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T315
    call _PrintString
    call _Halt
_L82:
    _T316 = 4
    _T317 = (_T32 * _T316)
    _T318 = (_T310 + _T317)
    _T319 = *(_T318 + 0)
    _T320 = 4
    _T321 = (_T32 * _T320)
    _T322 = (_T310 + _T321)
    *(_T322 + 0) = _T289
_L78:
}

FUNCTION(_SparseMatrix.Get) {
memo '_T35:4 _T36:8 _T37:12'
_SparseMatrix.Get:
    parm _T35
    parm _T36
    parm _T37
    _T324 = *(_T35 + 0)
    _T325 = *(_T324 + 28)
    _T326 =  icall _T325
    _T323 = _T326
    _T327 = 0
    _T328 = (_T323 != _T327)
    if (_T328 == 0) branch _L83
    parm _T323
    _T329 = *(_T323 + 0)
    _T330 = *(_T329 + 20)
    _T331 =  icall _T330
    return _T331
    branch _L84
_L83:
    _T332 = 0
    return _T332
_L84:
}

FUNCTION(main) {
memo ''
main:
    _T334 = "Dense Rep \n"
    parm _T334
    call _PrintString
    _T335 =  call _DenseMatrix_New
    _T333 = _T335
    parm _T333
    _T336 = *(_T333 + 0)
    _T337 = *(_T336 + 8)
    icall _T337
    parm _T333
    _T338 = *(_T333 + 0)
    _T339 = *(_T338 + 24)
    icall _T339
    parm _T333
    _T340 = *(_T333 + 0)
    _T341 = *(_T340 + 20)
    icall _T341
    _T342 = "Sparse Rep \n"
    parm _T342
    call _PrintString
    _T343 =  call _SparseMatrix_New
    _T333 = _T343
    parm _T333
    _T344 = *(_T333 + 0)
    _T345 = *(_T344 + 8)
    icall _T345
    parm _T333
    _T346 = *(_T333 + 0)
    _T347 = *(_T346 + 24)
    icall _T347
    parm _T333
    _T348 = *(_T333 + 0)
    _T349 = *(_T348 + 20)
    icall _T349
}

