VTABLE(_rndModule) {
    <empty>
    rndModule
    _rndModule.Init;
    _rndModule.Random;
    _rndModule.RndInt;
}

VTABLE(_Deck) {
    <empty>
    Deck
    _Deck.Init;
    _Deck.Shuffle;
    _Deck.GetCard;
}

VTABLE(_BJDeck) {
    <empty>
    BJDeck
    _BJDeck.Init;
    _BJDeck.DealCard;
    _BJDeck.Shuffle;
    _BJDeck.NumCardsRemaining;
}

VTABLE(_Player) {
    <empty>
    Player
    _Player.Init;
    _Player.Hit;
    _Player.DoubleDown;
    _Player.TakeTurn;
    _Player.HasMoney;
    _Player.PrintMoney;
    _Player.PlaceBet;
    _Player.GetTotal;
    _Player.Resolve;
    _Player.GetYesOrNo;
}

VTABLE(_Dealer) {
    _Player
    Dealer
    _Dealer.Init;
    _Player.Hit;
    _Player.DoubleDown;
    _Dealer.TakeTurn;
    _Player.HasMoney;
    _Player.PrintMoney;
    _Player.PlaceBet;
    _Player.GetTotal;
    _Player.Resolve;
    _Player.GetYesOrNo;
}

VTABLE(_House) {
    <empty>
    House
    _House.SetupGame;
    _House.SetupPlayers;
    _House.TakeAllBets;
    _House.TakeAllTurns;
    _House.ResolveAllPlayers;
    _House.PrintAllMoney;
    _House.PlayOneGame;
}

VTABLE(_Main) {
    <empty>
    Main
}

FUNCTION(_rndModule_New) {
memo ''
_rndModule_New:
    _T42 = 8
    parm _T42
    _T43 =  call _Alloc
    _T44 = 0
    *(_T43 + 4) = _T44
    _T45 = VTBL <_rndModule>
    *(_T43 + 0) = _T45
    return _T43
}

FUNCTION(_Deck_New) {
memo ''
_Deck_New:
    _T46 = 16
    parm _T46
    _T47 =  call _Alloc
    _T48 = 0
    *(_T47 + 4) = _T48
    *(_T47 + 8) = _T48
    *(_T47 + 12) = _T48
    _T49 = VTBL <_Deck>
    *(_T47 + 0) = _T49
    return _T47
}

FUNCTION(_BJDeck_New) {
memo ''
_BJDeck_New:
    _T50 = 16
    parm _T50
    _T51 =  call _Alloc
    _T52 = 0
    *(_T51 + 4) = _T52
    *(_T51 + 8) = _T52
    *(_T51 + 12) = _T52
    _T53 = VTBL <_BJDeck>
    *(_T51 + 0) = _T53
    return _T51
}

FUNCTION(_Player_New) {
memo ''
_Player_New:
    _T54 = 28
    parm _T54
    _T55 =  call _Alloc
    _T56 = 0
    _T57 = 4
    _T58 = (_T55 + _T54)
_L43:
    _T59 = (_T58 - _T57)
    _T58 = _T59
    _T60 = (_T54 - _T57)
    _T54 = _T60
    if (_T54 == 0) branch _L44
    *(_T58 + 0) = _T56
    branch _L43
_L44:
    _T61 = VTBL <_Player>
    *(_T58 + 0) = _T61
    return _T58
}

FUNCTION(_Dealer_New) {
memo ''
_Dealer_New:
    _T62 = 28
    parm _T62
    _T63 =  call _Alloc
    _T64 = 0
    _T65 = 4
    _T66 = (_T63 + _T62)
_L46:
    _T67 = (_T66 - _T65)
    _T66 = _T67
    _T68 = (_T62 - _T65)
    _T62 = _T68
    if (_T62 == 0) branch _L47
    *(_T66 + 0) = _T64
    branch _L46
_L47:
    _T69 = VTBL <_Dealer>
    *(_T66 + 0) = _T69
    return _T66
}

FUNCTION(_House_New) {
memo ''
_House_New:
    _T70 = 16
    parm _T70
    _T71 =  call _Alloc
    _T72 = 0
    *(_T71 + 4) = _T72
    *(_T71 + 8) = _T72
    *(_T71 + 12) = _T72
    _T73 = VTBL <_House>
    *(_T71 + 0) = _T73
    return _T71
}

FUNCTION(_Main_New) {
memo ''
_Main_New:
    _T74 = 4
    parm _T74
    _T75 =  call _Alloc
    _T76 = VTBL <_Main>
    *(_T75 + 0) = _T76
    return _T75
}

FUNCTION(_rndModule.Init) {
memo '_T0:4 _T1:8'
_rndModule.Init:
    _T77 = *(_T0 + 4)
    *(_T0 + 4) = _T1
}

FUNCTION(_rndModule.Random) {
memo '_T2:4'
_rndModule.Random:
    _T78 = *(_T2 + 4)
    _T79 = 15625
    _T80 = *(_T2 + 4)
    _T81 = 10000
    _T82 = 0
    _T83 = (_T81 == _T82)
    if (_T83 == 0) branch _L50
    _T84 = "Decaf runtime error: Division by zero error.\n"
    parm _T84
    call _PrintString
    call _Halt
_L50:
    _T85 = (_T80 % _T81)
    _T86 = (_T79 * _T85)
    _T87 = 22221
    _T88 = (_T86 + _T87)
    _T89 = 65536
    _T90 = 0
    _T91 = (_T89 == _T90)
    if (_T91 == 0) branch _L51
    _T92 = "Decaf runtime error: Division by zero error.\n"
    parm _T92
    call _PrintString
    call _Halt
_L51:
    _T93 = (_T88 % _T89)
    *(_T2 + 4) = _T93
    _T94 = *(_T2 + 4)
    return _T94
}

FUNCTION(_rndModule.RndInt) {
memo '_T3:4 _T4:8'
_rndModule.RndInt:
    parm _T3
    _T95 = *(_T3 + 0)
    _T96 = *(_T95 + 12)
    _T97 =  call _T96
    _T98 = 0
    _T99 = (_T4 == _T98)
    if (_T99 == 0) branch _L52
    _T100 = "Decaf runtime error: Division by zero error.\n"
    parm _T100
    call _PrintString
    call _Halt
_L52:
    _T101 = (_T97 % _T4)
    return _T101
}

FUNCTION(_Deck.Init) {
memo '_T5:4 _T6:8'
_Deck.Init:
    _T102 = *(_T5 + 8)
    _T103 = 52
    _T104 = 0
    _T105 = (_T103 < _T104)
    if (_T105 == 0) branch _L53
    _T106 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T106
    call _PrintString
    call _Halt
_L53:
    _T107 = 4
    _T108 = (_T107 * _T103)
    _T109 = (_T107 + _T108)
    parm _T109
    _T110 =  call _Alloc
    *(_T110 + 0) = _T103
    _T111 = 0
    _T110 = (_T110 + _T109)
_L54:
    _T109 = (_T109 - _T107)
    if (_T109 == 0) branch _L55
    _T110 = (_T110 - _T107)
    *(_T110 + 0) = _T111
    branch _L54
_L55:
    *(_T5 + 8) = _T110
    _T112 = *(_T5 + 12)
    *(_T5 + 12) = _T6
}

FUNCTION(_Deck.Shuffle) {
memo '_T7:4'
_Deck.Shuffle:
    _T113 = *(_T7 + 4)
    _T114 = 1
    *(_T7 + 4) = _T114
    branch _L56
_L57:
    _T115 = *(_T7 + 4)
    _T116 = *(_T7 + 4)
    _T117 = 1
    _T118 = (_T116 + _T117)
    *(_T7 + 4) = _T118
_L56:
    _T119 = *(_T7 + 4)
    _T120 = 52
    _T121 = (_T119 <= _T120)
    if (_T121 == 0) branch _L58
    _T122 = *(_T7 + 8)
    _T123 = *(_T7 + 4)
    _T124 = 1
    _T125 = (_T123 - _T124)
    _T126 = *(_T122 - 4)
    _T127 = (_T125 < _T126)
    if (_T127 == 0) branch _L59
    _T128 = 0
    _T129 = (_T125 < _T128)
    if (_T129 == 0) branch _L60
_L59:
    _T130 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T130
    call _PrintString
    call _Halt
_L60:
    _T131 = 4
    _T132 = (_T125 * _T131)
    _T133 = (_T122 + _T132)
    _T134 = *(_T133 + 0)
    _T135 = *(_T7 + 4)
    _T136 = 13
    _T137 = 0
    _T138 = (_T136 == _T137)
    if (_T138 == 0) branch _L61
    _T139 = "Decaf runtime error: Division by zero error.\n"
    parm _T139
    call _PrintString
    call _Halt
_L61:
    _T140 = (_T135 % _T136)
    _T141 = 4
    _T142 = (_T125 * _T141)
    _T143 = (_T122 + _T142)
    *(_T143 + 0) = _T140
    branch _L57
_L58:
    _T144 = *(_T7 + 4)
    _T145 = *(_T7 + 4)
    _T146 = 1
    _T147 = (_T145 - _T146)
    *(_T7 + 4) = _T147
_L62:
    _T148 = *(_T7 + 4)
    _T149 = 0
    _T150 = (_T148 > _T149)
    if (_T150 == 0) branch _L63
    _T153 = *(_T7 + 12)
    _T154 = *(_T7 + 4)
    parm _T153
    parm _T154
    _T155 = *(_T153 + 0)
    _T156 = *(_T155 + 16)
    _T157 =  call _T156
    _T151 = _T157
    _T158 = *(_T7 + 4)
    _T159 = *(_T7 + 4)
    _T160 = 1
    _T161 = (_T159 - _T160)
    *(_T7 + 4) = _T161
    _T162 = *(_T7 + 8)
    _T163 = *(_T7 + 4)
    _T164 = *(_T162 - 4)
    _T165 = (_T163 < _T164)
    if (_T165 == 0) branch _L64
    _T166 = 0
    _T167 = (_T163 < _T166)
    if (_T167 == 0) branch _L65
_L64:
    _T168 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T168
    call _PrintString
    call _Halt
_L65:
    _T169 = 4
    _T170 = (_T163 * _T169)
    _T171 = (_T162 + _T170)
    _T172 = *(_T171 + 0)
    _T152 = _T172
    _T173 = *(_T7 + 8)
    _T174 = *(_T7 + 4)
    _T175 = *(_T173 - 4)
    _T176 = (_T174 < _T175)
    if (_T176 == 0) branch _L66
    _T177 = 0
    _T178 = (_T174 < _T177)
    if (_T178 == 0) branch _L67
_L66:
    _T179 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T179
    call _PrintString
    call _Halt
_L67:
    _T180 = 4
    _T181 = (_T174 * _T180)
    _T182 = (_T173 + _T181)
    _T183 = *(_T182 + 0)
    _T184 = *(_T7 + 8)
    _T185 = *(_T184 - 4)
    _T186 = (_T151 < _T185)
    if (_T186 == 0) branch _L68
    _T187 = 0
    _T188 = (_T151 < _T187)
    if (_T188 == 0) branch _L69
_L68:
    _T189 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T189
    call _PrintString
    call _Halt
_L69:
    _T190 = 4
    _T191 = (_T151 * _T190)
    _T192 = (_T184 + _T191)
    _T193 = *(_T192 + 0)
    _T194 = 4
    _T195 = (_T174 * _T194)
    _T196 = (_T173 + _T195)
    *(_T196 + 0) = _T193
    _T197 = *(_T7 + 8)
    _T198 = *(_T197 - 4)
    _T199 = (_T151 < _T198)
    if (_T199 == 0) branch _L70
    _T200 = 0
    _T201 = (_T151 < _T200)
    if (_T201 == 0) branch _L71
_L70:
    _T202 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T202
    call _PrintString
    call _Halt
_L71:
    _T203 = 4
    _T204 = (_T151 * _T203)
    _T205 = (_T197 + _T204)
    _T206 = *(_T205 + 0)
    _T207 = 4
    _T208 = (_T151 * _T207)
    _T209 = (_T197 + _T208)
    *(_T209 + 0) = _T152
    branch _L62
_L63:
}

FUNCTION(_Deck.GetCard) {
memo '_T8:4'
_Deck.GetCard:
    _T211 = *(_T8 + 4)
    _T212 = 52
    _T213 = (_T211 >= _T212)
    if (_T213 == 0) branch _L72
    _T214 = 0
    return _T214
_L72:
    _T215 = *(_T8 + 8)
    _T216 = *(_T8 + 4)
    _T217 = *(_T215 - 4)
    _T218 = (_T216 < _T217)
    if (_T218 == 0) branch _L73
    _T219 = 0
    _T220 = (_T216 < _T219)
    if (_T220 == 0) branch _L74
_L73:
    _T221 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T221
    call _PrintString
    call _Halt
_L74:
    _T222 = 4
    _T223 = (_T216 * _T222)
    _T224 = (_T215 + _T223)
    _T225 = *(_T224 + 0)
    _T210 = _T225
    _T226 = *(_T8 + 4)
    _T227 = *(_T8 + 4)
    _T228 = 1
    _T229 = (_T227 + _T228)
    *(_T8 + 4) = _T229
    return _T210
}

FUNCTION(_BJDeck.Init) {
memo '_T9:4 _T10:8'
_BJDeck.Init:
    _T231 = *(_T9 + 4)
    _T232 = 8
    _T233 = 0
    _T234 = (_T232 < _T233)
    if (_T234 == 0) branch _L75
    _T235 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T235
    call _PrintString
    call _Halt
_L75:
    _T236 = 4
    _T237 = (_T236 * _T232)
    _T238 = (_T236 + _T237)
    parm _T238
    _T239 =  call _Alloc
    *(_T239 + 0) = _T232
    _T240 = 0
    _T239 = (_T239 + _T238)
_L76:
    _T238 = (_T238 - _T236)
    if (_T238 == 0) branch _L77
    _T239 = (_T239 - _T236)
    *(_T239 + 0) = _T240
    branch _L76
_L77:
    *(_T9 + 4) = _T239
    _T241 = 0
    _T230 = _T241
    branch _L78
_L79:
    _T242 = 1
    _T243 = (_T230 + _T242)
    _T230 = _T243
_L78:
    _T244 = 8
    _T245 = (_T230 < _T244)
    if (_T245 == 0) branch _L80
    _T246 = *(_T9 + 4)
    _T247 = *(_T246 - 4)
    _T248 = (_T230 < _T247)
    if (_T248 == 0) branch _L81
    _T249 = 0
    _T250 = (_T230 < _T249)
    if (_T250 == 0) branch _L82
_L81:
    _T251 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T251
    call _PrintString
    call _Halt
_L82:
    _T252 = 4
    _T253 = (_T230 * _T252)
    _T254 = (_T246 + _T253)
    _T255 = *(_T254 + 0)
    _T256 =  call _Deck_New
    _T257 = 4
    _T258 = (_T230 * _T257)
    _T259 = (_T246 + _T258)
    *(_T259 + 0) = _T256
    _T260 = *(_T9 + 4)
    _T261 = *(_T260 - 4)
    _T262 = (_T230 < _T261)
    if (_T262 == 0) branch _L83
    _T263 = 0
    _T264 = (_T230 < _T263)
    if (_T264 == 0) branch _L84
_L83:
    _T265 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T265
    call _PrintString
    call _Halt
_L84:
    _T266 = 4
    _T267 = (_T230 * _T266)
    _T268 = (_T260 + _T267)
    _T269 = *(_T268 + 0)
    parm _T269
    parm _T10
    _T270 = *(_T269 + 0)
    _T271 = *(_T270 + 8)
    call _T271
    branch _L79
_L80:
    _T272 = *(_T9 + 12)
    *(_T9 + 12) = _T10
}

FUNCTION(_BJDeck.DealCard) {
memo '_T11:4'
_BJDeck.DealCard:
    _T274 = 0
    _T273 = _T274
    _T275 = *(_T11 + 8)
    _T276 = 8
    _T277 = 52
    _T278 = (_T276 * _T277)
    _T279 = (_T275 >= _T278)
    if (_T279 == 0) branch _L85
    _T280 = 11
    return _T280
_L85:
_L86:
    _T281 = 0
    _T282 = (_T273 == _T281)
    if (_T282 == 0) branch _L87
    _T284 = *(_T11 + 12)
    _T285 = 8
    parm _T284
    parm _T285
    _T286 = *(_T284 + 0)
    _T287 = *(_T286 + 16)
    _T288 =  call _T287
    _T283 = _T288
    _T289 = *(_T11 + 4)
    _T290 = *(_T289 - 4)
    _T291 = (_T283 < _T290)
    if (_T291 == 0) branch _L88
    _T292 = 0
    _T293 = (_T283 < _T292)
    if (_T293 == 0) branch _L89
_L88:
    _T294 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T294
    call _PrintString
    call _Halt
_L89:
    _T295 = 4
    _T296 = (_T283 * _T295)
    _T297 = (_T289 + _T296)
    _T298 = *(_T297 + 0)
    parm _T298
    _T299 = *(_T298 + 0)
    _T300 = *(_T299 + 16)
    _T301 =  call _T300
    _T273 = _T301
    branch _L86
_L87:
    _T302 = 10
    _T303 = (_T273 > _T302)
    if (_T303 == 0) branch _L90
    _T304 = 10
    _T273 = _T304
    branch _L91
_L90:
    _T305 = 1
    _T306 = (_T273 == _T305)
    if (_T306 == 0) branch _L92
    _T307 = 11
    _T273 = _T307
_L92:
_L91:
    _T308 = *(_T11 + 8)
    _T309 = *(_T11 + 8)
    _T310 = 1
    _T311 = (_T309 + _T310)
    *(_T11 + 8) = _T311
    return _T273
}

FUNCTION(_BJDeck.Shuffle) {
memo '_T12:4'
_BJDeck.Shuffle:
    _T313 = "Shuffling..."
    parm _T313
    call _PrintString
    _T314 = 0
    _T312 = _T314
    branch _L93
_L94:
    _T315 = 1
    _T316 = (_T312 + _T315)
    _T312 = _T316
_L93:
    _T317 = 8
    _T318 = (_T312 < _T317)
    if (_T318 == 0) branch _L95
    _T319 = *(_T12 + 4)
    _T320 = *(_T319 - 4)
    _T321 = (_T312 < _T320)
    if (_T321 == 0) branch _L96
    _T322 = 0
    _T323 = (_T312 < _T322)
    if (_T323 == 0) branch _L97
_L96:
    _T324 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T324
    call _PrintString
    call _Halt
_L97:
    _T325 = 4
    _T326 = (_T312 * _T325)
    _T327 = (_T319 + _T326)
    _T328 = *(_T327 + 0)
    parm _T328
    _T329 = *(_T328 + 0)
    _T330 = *(_T329 + 12)
    call _T330
    branch _L94
_L95:
    _T331 = *(_T12 + 8)
    _T332 = 0
    *(_T12 + 8) = _T332
    _T333 = "done.\n"
    parm _T333
    call _PrintString
}

FUNCTION(_BJDeck.NumCardsRemaining) {
memo '_T13:4'
_BJDeck.NumCardsRemaining:
    _T334 = 8
    _T335 = 52
    _T336 = (_T334 * _T335)
    _T337 = *(_T13 + 8)
    _T338 = (_T336 - _T337)
    return _T338
}

FUNCTION(_Player.Init) {
memo '_T14:4 _T15:8'
_Player.Init:
    _T339 = *(_T14 + 20)
    _T340 = 1000
    *(_T14 + 20) = _T340
    _T341 = "What is the name of player #"
    parm _T341
    call _PrintString
    parm _T15
    call _PrintInt
    _T342 = "? "
    parm _T342
    call _PrintString
    _T343 = *(_T14 + 24)
    _T344 =  call _ReadLine
    *(_T14 + 24) = _T344
}

FUNCTION(_Player.Hit) {
memo '_T16:4 _T17:8'
_Player.Hit:
    parm _T17
    _T346 = *(_T17 + 0)
    _T347 = *(_T346 + 12)
    _T348 =  call _T347
    _T345 = _T348
    _T349 = *(_T16 + 24)
    parm _T349
    call _PrintString
    _T350 = " was dealt a "
    parm _T350
    call _PrintString
    parm _T345
    call _PrintInt
    _T351 = ".\n"
    parm _T351
    call _PrintString
    _T352 = *(_T16 + 4)
    _T353 = *(_T16 + 4)
    _T354 = (_T353 + _T345)
    *(_T16 + 4) = _T354
    _T355 = *(_T16 + 12)
    _T356 = *(_T16 + 12)
    _T357 = 1
    _T358 = (_T356 + _T357)
    *(_T16 + 12) = _T358
    _T359 = 11
    _T360 = (_T345 == _T359)
    if (_T360 == 0) branch _L98
    _T361 = *(_T16 + 8)
    _T362 = *(_T16 + 8)
    _T363 = 1
    _T364 = (_T362 + _T363)
    *(_T16 + 8) = _T364
_L98:
_L99:
    _T365 = *(_T16 + 4)
    _T366 = 21
    _T367 = (_T365 > _T366)
    _T368 = *(_T16 + 8)
    _T369 = 0
    _T370 = (_T368 > _T369)
    _T371 = (_T367 && _T370)
    if (_T371 == 0) branch _L100
    _T372 = *(_T16 + 4)
    _T373 = *(_T16 + 4)
    _T374 = 10
    _T375 = (_T373 - _T374)
    *(_T16 + 4) = _T375
    _T376 = *(_T16 + 8)
    _T377 = *(_T16 + 8)
    _T378 = 1
    _T379 = (_T377 - _T378)
    *(_T16 + 8) = _T379
    branch _L99
_L100:
}

FUNCTION(_Player.DoubleDown) {
memo '_T18:4 _T19:8'
_Player.DoubleDown:
    _T381 = *(_T18 + 4)
    _T382 = 10
    _T383 = (_T381 != _T382)
    _T384 = *(_T18 + 4)
    _T385 = 11
    _T386 = (_T384 != _T385)
    _T387 = (_T383 && _T386)
    if (_T387 == 0) branch _L101
    _T388 = 0
    return _T388
_L101:
    _T389 = "Would you like to double down?"
    parm _T18
    parm _T389
    _T390 = *(_T18 + 0)
    _T391 = *(_T390 + 44)
    _T392 =  call _T391
    if (_T392 == 0) branch _L102
    _T393 = *(_T18 + 16)
    _T394 = *(_T18 + 16)
    _T395 = 2
    _T396 = (_T394 * _T395)
    *(_T18 + 16) = _T396
    parm _T18
    parm _T19
    _T397 = *(_T18 + 0)
    _T398 = *(_T397 + 12)
    call _T398
    _T399 = *(_T18 + 24)
    parm _T399
    call _PrintString
    _T400 = ", your total is "
    parm _T400
    call _PrintString
    _T401 = *(_T18 + 4)
    parm _T401
    call _PrintInt
    _T402 = ".\n"
    parm _T402
    call _PrintString
    _T403 = 1
    return _T403
    branch _L103
_L102:
    _T404 = 0
    return _T404
_L103:
}

FUNCTION(_Player.TakeTurn) {
memo '_T20:4 _T21:8'
_Player.TakeTurn:
    _T406 = "\n"
    parm _T406
    call _PrintString
    _T407 = *(_T20 + 24)
    parm _T407
    call _PrintString
    _T408 = "'s turn.\n"
    parm _T408
    call _PrintString
    _T409 = *(_T20 + 4)
    _T410 = 0
    *(_T20 + 4) = _T410
    _T411 = *(_T20 + 8)
    _T412 = 0
    *(_T20 + 8) = _T412
    _T413 = *(_T20 + 12)
    _T414 = 0
    *(_T20 + 12) = _T414
    parm _T20
    parm _T21
    _T415 = *(_T20 + 0)
    _T416 = *(_T415 + 12)
    call _T416
    parm _T20
    parm _T21
    _T417 = *(_T20 + 0)
    _T418 = *(_T417 + 12)
    call _T418
    parm _T20
    parm _T21
    _T419 = *(_T20 + 0)
    _T420 = *(_T419 + 16)
    _T421 =  call _T420
    _T422 = ! _T421
    if (_T422 == 0) branch _L104
    _T423 = 1
    _T405 = _T423
_L105:
    _T424 = *(_T20 + 4)
    _T425 = 21
    _T426 = (_T424 <= _T425)
    _T427 = (_T426 && _T405)
    if (_T427 == 0) branch _L106
    _T428 = *(_T20 + 24)
    parm _T428
    call _PrintString
    _T429 = ", your total is "
    parm _T429
    call _PrintString
    _T430 = *(_T20 + 4)
    parm _T430
    call _PrintInt
    _T431 = ".\n"
    parm _T431
    call _PrintString
    _T432 = "Would you like a hit?"
    parm _T20
    parm _T432
    _T433 = *(_T20 + 0)
    _T434 = *(_T433 + 44)
    _T435 =  call _T434
    _T405 = _T435
    if (_T405 == 0) branch _L107
    parm _T20
    parm _T21
    _T436 = *(_T20 + 0)
    _T437 = *(_T436 + 12)
    call _T437
_L107:
    branch _L105
_L106:
_L104:
    _T438 = *(_T20 + 4)
    _T439 = 21
    _T440 = (_T438 > _T439)
    if (_T440 == 0) branch _L108
    _T441 = *(_T20 + 24)
    parm _T441
    call _PrintString
    _T442 = " busts with the big "
    parm _T442
    call _PrintString
    _T443 = *(_T20 + 4)
    parm _T443
    call _PrintInt
    _T444 = "!\n"
    parm _T444
    call _PrintString
    branch _L109
_L108:
    _T445 = *(_T20 + 24)
    parm _T445
    call _PrintString
    _T446 = " stays at "
    parm _T446
    call _PrintString
    _T447 = *(_T20 + 4)
    parm _T447
    call _PrintInt
    _T448 = ".\n"
    parm _T448
    call _PrintString
_L109:
}

FUNCTION(_Player.HasMoney) {
memo '_T22:4'
_Player.HasMoney:
    _T449 = *(_T22 + 20)
    _T450 = 0
    _T451 = (_T449 > _T450)
    return _T451
}

FUNCTION(_Player.PrintMoney) {
memo '_T23:4'
_Player.PrintMoney:
    _T452 = *(_T23 + 24)
    parm _T452
    call _PrintString
    _T453 = ", you have $"
    parm _T453
    call _PrintString
    _T454 = *(_T23 + 20)
    parm _T454
    call _PrintInt
    _T455 = ".\n"
    parm _T455
    call _PrintString
}

FUNCTION(_Player.PlaceBet) {
memo '_T24:4'
_Player.PlaceBet:
    _T456 = *(_T24 + 16)
    _T457 = 0
    *(_T24 + 16) = _T457
    parm _T24
    _T458 = *(_T24 + 0)
    _T459 = *(_T458 + 28)
    call _T459
_L110:
    _T460 = *(_T24 + 16)
    _T461 = 0
    _T462 = (_T460 <= _T461)
    _T463 = *(_T24 + 16)
    _T464 = *(_T24 + 20)
    _T465 = (_T463 > _T464)
    _T466 = (_T462 || _T465)
    if (_T466 == 0) branch _L111
    _T467 = "How much would you like to bet? "
    parm _T467
    call _PrintString
    _T468 = *(_T24 + 16)
    _T469 =  call _ReadInteger
    *(_T24 + 16) = _T469
    branch _L110
_L111:
}

FUNCTION(_Player.GetTotal) {
memo '_T25:4'
_Player.GetTotal:
    _T470 = *(_T25 + 4)
    return _T470
}

FUNCTION(_Player.Resolve) {
memo '_T26:4 _T27:8'
_Player.Resolve:
    _T473 = 0
    _T471 = _T473
    _T474 = 0
    _T472 = _T474
    _T475 = *(_T26 + 4)
    _T476 = 21
    _T477 = (_T475 == _T476)
    _T478 = *(_T26 + 12)
    _T479 = 2
    _T480 = (_T478 == _T479)
    _T481 = (_T477 && _T480)
    if (_T481 == 0) branch _L112
    _T482 = 2
    _T471 = _T482
    branch _L113
_L112:
    _T483 = *(_T26 + 4)
    _T484 = 21
    _T485 = (_T483 > _T484)
    if (_T485 == 0) branch _L114
    _T486 = 1
    _T472 = _T486
    branch _L115
_L114:
    _T487 = 21
    _T488 = (_T27 > _T487)
    if (_T488 == 0) branch _L116
    _T489 = 1
    _T471 = _T489
    branch _L117
_L116:
    _T490 = *(_T26 + 4)
    _T491 = (_T490 > _T27)
    if (_T491 == 0) branch _L118
    _T492 = 1
    _T471 = _T492
    branch _L119
_L118:
    _T493 = *(_T26 + 4)
    _T494 = (_T27 > _T493)
    if (_T494 == 0) branch _L120
    _T495 = 1
    _T472 = _T495
_L120:
_L119:
_L117:
_L115:
_L113:
    _T496 = 1
    _T497 = (_T471 >= _T496)
    if (_T497 == 0) branch _L121
    _T498 = *(_T26 + 24)
    parm _T498
    call _PrintString
    _T499 = ", you won $"
    parm _T499
    call _PrintString
    _T500 = *(_T26 + 16)
    parm _T500
    call _PrintInt
    _T501 = ".\n"
    parm _T501
    call _PrintString
    branch _L122
_L121:
    _T502 = 1
    _T503 = (_T472 >= _T502)
    if (_T503 == 0) branch _L123
    _T504 = *(_T26 + 24)
    parm _T504
    call _PrintString
    _T505 = ", you lost $"
    parm _T505
    call _PrintString
    _T506 = *(_T26 + 16)
    parm _T506
    call _PrintInt
    _T507 = ".\n"
    parm _T507
    call _PrintString
    branch _L124
_L123:
    _T508 = *(_T26 + 24)
    parm _T508
    call _PrintString
    _T509 = ", you push!\n"
    parm _T509
    call _PrintString
_L124:
_L122:
    _T510 = *(_T26 + 16)
    _T511 = (_T471 * _T510)
    _T471 = _T511
    _T512 = *(_T26 + 16)
    _T513 = (_T472 * _T512)
    _T472 = _T513
    _T514 = *(_T26 + 20)
    _T515 = *(_T26 + 20)
    _T516 = (_T515 + _T471)
    _T517 = (_T516 - _T472)
    *(_T26 + 20) = _T517
}

FUNCTION(_Player.GetYesOrNo) {
memo '_T28:4 _T29:8'
_Player.GetYesOrNo:
    parm _T29
    call _PrintString
    _T518 = " (0=No/1=Yes) "
    parm _T518
    call _PrintString
    _T519 =  call _ReadInteger
    _T520 = 0
    _T521 = (_T519 != _T520)
    return _T521
}

FUNCTION(_Dealer.Init) {
memo '_T30:4 _T31:8'
_Dealer.Init:
    _T523 = *(_T30 + 4)
    _T524 = 0
    *(_T30 + 4) = _T524
    _T525 = *(_T30 + 8)
    _T526 = 0
    *(_T30 + 8) = _T526
    _T527 = *(_T30 + 12)
    _T528 = 0
    *(_T30 + 12) = _T528
    _T529 = "Dealer"
    _T522 = _T529
    _T530 = *(_T30 + 24)
    *(_T30 + 24) = _T522
}

FUNCTION(_Dealer.TakeTurn) {
memo '_T32:4 _T33:8'
_Dealer.TakeTurn:
    _T531 = "\n"
    parm _T531
    call _PrintString
    _T532 = *(_T32 + 24)
    parm _T532
    call _PrintString
    _T533 = "'s turn.\n"
    parm _T533
    call _PrintString
_L125:
    _T534 = *(_T32 + 4)
    _T535 = 16
    _T536 = (_T534 <= _T535)
    if (_T536 == 0) branch _L126
    parm _T32
    parm _T33
    _T537 = *(_T32 + 0)
    _T538 = *(_T537 + 12)
    call _T538
    branch _L125
_L126:
    _T539 = *(_T32 + 4)
    _T540 = 21
    _T541 = (_T539 > _T540)
    if (_T541 == 0) branch _L127
    _T542 = *(_T32 + 24)
    parm _T542
    call _PrintString
    _T543 = " busts with the big "
    parm _T543
    call _PrintString
    _T544 = *(_T32 + 4)
    parm _T544
    call _PrintInt
    _T545 = "!\n"
    parm _T545
    call _PrintString
    branch _L128
_L127:
    _T546 = *(_T32 + 24)
    parm _T546
    call _PrintString
    _T547 = " stays at "
    parm _T547
    call _PrintString
    _T548 = *(_T32 + 4)
    parm _T548
    call _PrintInt
    _T549 = ".\n"
    parm _T549
    call _PrintString
_L128:
}

FUNCTION(_House.SetupGame) {
memo '_T34:4'
_House.SetupGame:
    _T550 = "\nWelcome to CS143 BlackJack!\n"
    parm _T550
    call _PrintString
    _T551 = "---------------------------\n"
    parm _T551
    call _PrintString
    _T553 =  call _rndModule_New
    _T552 = _T553
    _T554 = "Please enter a random number seed: "
    parm _T554
    call _PrintString
    _T555 =  call _ReadInteger
    parm _T552
    parm _T555
    _T556 = *(_T552 + 0)
    _T557 = *(_T556 + 8)
    call _T557
    _T558 = *(_T34 + 12)
    _T559 =  call _BJDeck_New
    *(_T34 + 12) = _T559
    _T560 = *(_T34 + 8)
    _T561 =  call _Dealer_New
    *(_T34 + 8) = _T561
    _T562 = *(_T34 + 12)
    parm _T562
    parm _T552
    _T563 = *(_T562 + 0)
    _T564 = *(_T563 + 8)
    call _T564
    _T565 = *(_T34 + 12)
    parm _T565
    _T566 = *(_T565 + 0)
    _T567 = *(_T566 + 16)
    call _T567
}

FUNCTION(_House.SetupPlayers) {
memo '_T35:4'
_House.SetupPlayers:
    _T570 = "How many players do we have today? "
    parm _T570
    call _PrintString
    _T571 =  call _ReadInteger
    _T569 = _T571
    _T572 = *(_T35 + 4)
    _T573 = 0
    _T574 = (_T569 < _T573)
    if (_T574 == 0) branch _L129
    _T575 = "Decaf runtime error: Cannot create negative-sized array\n"
    parm _T575
    call _PrintString
    call _Halt
_L129:
    _T576 = 4
    _T577 = (_T576 * _T569)
    _T578 = (_T576 + _T577)
    parm _T578
    _T579 =  call _Alloc
    *(_T579 + 0) = _T569
    _T580 = 0
    _T579 = (_T579 + _T578)
_L130:
    _T578 = (_T578 - _T576)
    if (_T578 == 0) branch _L131
    _T579 = (_T579 - _T576)
    *(_T579 + 0) = _T580
    branch _L130
_L131:
    *(_T35 + 4) = _T579
    _T581 = 0
    _T568 = _T581
    branch _L132
_L133:
    _T582 = 1
    _T583 = (_T568 + _T582)
    _T568 = _T583
_L132:
    _T584 = *(_T35 + 4)
    _T585 = *(_T584 - 4)
    _T586 = (_T568 < _T585)
    if (_T586 == 0) branch _L134
    _T587 = *(_T35 + 4)
    _T588 = *(_T587 - 4)
    _T589 = (_T568 < _T588)
    if (_T589 == 0) branch _L135
    _T590 = 0
    _T591 = (_T568 < _T590)
    if (_T591 == 0) branch _L136
_L135:
    _T592 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T592
    call _PrintString
    call _Halt
_L136:
    _T593 = 4
    _T594 = (_T568 * _T593)
    _T595 = (_T587 + _T594)
    _T596 = *(_T595 + 0)
    _T597 =  call _Player_New
    _T598 = 4
    _T599 = (_T568 * _T598)
    _T600 = (_T587 + _T599)
    *(_T600 + 0) = _T597
    _T601 = *(_T35 + 4)
    _T602 = *(_T601 - 4)
    _T603 = (_T568 < _T602)
    if (_T603 == 0) branch _L137
    _T604 = 0
    _T605 = (_T568 < _T604)
    if (_T605 == 0) branch _L138
_L137:
    _T606 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T606
    call _PrintString
    call _Halt
_L138:
    _T607 = 4
    _T608 = (_T568 * _T607)
    _T609 = (_T601 + _T608)
    _T610 = *(_T609 + 0)
    _T611 = 1
    _T612 = (_T568 + _T611)
    parm _T610
    parm _T612
    _T613 = *(_T610 + 0)
    _T614 = *(_T613 + 8)
    call _T614
    branch _L133
_L134:
}

FUNCTION(_House.TakeAllBets) {
memo '_T36:4'
_House.TakeAllBets:
    _T616 = "\nFirst, let's take bets.\n"
    parm _T616
    call _PrintString
    _T617 = 0
    _T615 = _T617
    branch _L139
_L140:
    _T618 = 1
    _T619 = (_T615 + _T618)
    _T615 = _T619
_L139:
    _T620 = *(_T36 + 4)
    _T621 = *(_T620 - 4)
    _T622 = (_T615 < _T621)
    if (_T622 == 0) branch _L141
    _T623 = *(_T36 + 4)
    _T624 = *(_T623 - 4)
    _T625 = (_T615 < _T624)
    if (_T625 == 0) branch _L142
    _T626 = 0
    _T627 = (_T615 < _T626)
    if (_T627 == 0) branch _L143
_L142:
    _T628 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T628
    call _PrintString
    call _Halt
_L143:
    _T629 = 4
    _T630 = (_T615 * _T629)
    _T631 = (_T623 + _T630)
    _T632 = *(_T631 + 0)
    parm _T632
    _T633 = *(_T632 + 0)
    _T634 = *(_T633 + 24)
    _T635 =  call _T634
    if (_T635 == 0) branch _L144
    _T636 = *(_T36 + 4)
    _T637 = *(_T636 - 4)
    _T638 = (_T615 < _T637)
    if (_T638 == 0) branch _L145
    _T639 = 0
    _T640 = (_T615 < _T639)
    if (_T640 == 0) branch _L146
_L145:
    _T641 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T641
    call _PrintString
    call _Halt
_L146:
    _T642 = 4
    _T643 = (_T615 * _T642)
    _T644 = (_T636 + _T643)
    _T645 = *(_T644 + 0)
    parm _T645
    _T646 = *(_T645 + 0)
    _T647 = *(_T646 + 32)
    call _T647
_L144:
    branch _L140
_L141:
}

FUNCTION(_House.TakeAllTurns) {
memo '_T37:4'
_House.TakeAllTurns:
    _T649 = 0
    _T648 = _T649
    branch _L147
_L148:
    _T650 = 1
    _T651 = (_T648 + _T650)
    _T648 = _T651
_L147:
    _T652 = *(_T37 + 4)
    _T653 = *(_T652 - 4)
    _T654 = (_T648 < _T653)
    if (_T654 == 0) branch _L149
    _T655 = *(_T37 + 4)
    _T656 = *(_T655 - 4)
    _T657 = (_T648 < _T656)
    if (_T657 == 0) branch _L150
    _T658 = 0
    _T659 = (_T648 < _T658)
    if (_T659 == 0) branch _L151
_L150:
    _T660 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T660
    call _PrintString
    call _Halt
_L151:
    _T661 = 4
    _T662 = (_T648 * _T661)
    _T663 = (_T655 + _T662)
    _T664 = *(_T663 + 0)
    parm _T664
    _T665 = *(_T664 + 0)
    _T666 = *(_T665 + 24)
    _T667 =  call _T666
    if (_T667 == 0) branch _L152
    _T668 = *(_T37 + 4)
    _T669 = *(_T668 - 4)
    _T670 = (_T648 < _T669)
    if (_T670 == 0) branch _L153
    _T671 = 0
    _T672 = (_T648 < _T671)
    if (_T672 == 0) branch _L154
_L153:
    _T673 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T673
    call _PrintString
    call _Halt
_L154:
    _T674 = 4
    _T675 = (_T648 * _T674)
    _T676 = (_T668 + _T675)
    _T677 = *(_T676 + 0)
    _T678 = *(_T37 + 12)
    parm _T677
    parm _T678
    _T679 = *(_T677 + 0)
    _T680 = *(_T679 + 20)
    call _T680
_L152:
    branch _L148
_L149:
}

FUNCTION(_House.ResolveAllPlayers) {
memo '_T38:4'
_House.ResolveAllPlayers:
    _T682 = "\nTime to resolve bets.\n"
    parm _T682
    call _PrintString
    _T683 = 0
    _T681 = _T683
    branch _L155
_L156:
    _T684 = 1
    _T685 = (_T681 + _T684)
    _T681 = _T685
_L155:
    _T686 = *(_T38 + 4)
    _T687 = *(_T686 - 4)
    _T688 = (_T681 < _T687)
    if (_T688 == 0) branch _L157
    _T689 = *(_T38 + 4)
    _T690 = *(_T689 - 4)
    _T691 = (_T681 < _T690)
    if (_T691 == 0) branch _L158
    _T692 = 0
    _T693 = (_T681 < _T692)
    if (_T693 == 0) branch _L159
_L158:
    _T694 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T694
    call _PrintString
    call _Halt
_L159:
    _T695 = 4
    _T696 = (_T681 * _T695)
    _T697 = (_T689 + _T696)
    _T698 = *(_T697 + 0)
    parm _T698
    _T699 = *(_T698 + 0)
    _T700 = *(_T699 + 24)
    _T701 =  call _T700
    if (_T701 == 0) branch _L160
    _T702 = *(_T38 + 4)
    _T703 = *(_T702 - 4)
    _T704 = (_T681 < _T703)
    if (_T704 == 0) branch _L161
    _T705 = 0
    _T706 = (_T681 < _T705)
    if (_T706 == 0) branch _L162
_L161:
    _T707 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T707
    call _PrintString
    call _Halt
_L162:
    _T708 = 4
    _T709 = (_T681 * _T708)
    _T710 = (_T702 + _T709)
    _T711 = *(_T710 + 0)
    _T712 = *(_T38 + 8)
    parm _T712
    _T713 = *(_T712 + 0)
    _T714 = *(_T713 + 36)
    _T715 =  call _T714
    parm _T711
    parm _T715
    _T716 = *(_T711 + 0)
    _T717 = *(_T716 + 40)
    call _T717
_L160:
    branch _L156
_L157:
}

FUNCTION(_House.PrintAllMoney) {
memo '_T39:4'
_House.PrintAllMoney:
    _T719 = 0
    _T718 = _T719
    branch _L163
_L164:
    _T720 = 1
    _T721 = (_T718 + _T720)
    _T718 = _T721
_L163:
    _T722 = *(_T39 + 4)
    _T723 = *(_T722 - 4)
    _T724 = (_T718 < _T723)
    if (_T724 == 0) branch _L165
    _T725 = *(_T39 + 4)
    _T726 = *(_T725 - 4)
    _T727 = (_T718 < _T726)
    if (_T727 == 0) branch _L166
    _T728 = 0
    _T729 = (_T718 < _T728)
    if (_T729 == 0) branch _L167
_L166:
    _T730 = "Decaf runtime error: Array subscript out of bounds\n"
    parm _T730
    call _PrintString
    call _Halt
_L167:
    _T731 = 4
    _T732 = (_T718 * _T731)
    _T733 = (_T725 + _T732)
    _T734 = *(_T733 + 0)
    parm _T734
    _T735 = *(_T734 + 0)
    _T736 = *(_T735 + 28)
    call _T736
    branch _L164
_L165:
}

FUNCTION(_House.PlayOneGame) {
memo '_T40:4'
_House.PlayOneGame:
    _T737 = *(_T40 + 12)
    parm _T737
    _T738 = *(_T737 + 0)
    _T739 = *(_T738 + 20)
    _T740 =  call _T739
    _T741 = 26
    _T742 = (_T740 < _T741)
    if (_T742 == 0) branch _L168
    _T743 = *(_T40 + 12)
    parm _T743
    _T744 = *(_T743 + 0)
    _T745 = *(_T744 + 16)
    call _T745
_L168:
    parm _T40
    _T746 = *(_T40 + 0)
    _T747 = *(_T746 + 16)
    call _T747
    _T748 = "\nDealer starts. "
    parm _T748
    call _PrintString
    _T749 = *(_T40 + 8)
    _T750 = 0
    parm _T749
    parm _T750
    _T751 = *(_T749 + 0)
    _T752 = *(_T751 + 8)
    call _T752
    _T753 = *(_T40 + 8)
    _T754 = *(_T40 + 12)
    parm _T753
    parm _T754
    _T755 = *(_T753 + 0)
    _T756 = *(_T755 + 12)
    call _T756
    parm _T40
    _T757 = *(_T40 + 0)
    _T758 = *(_T757 + 20)
    call _T758
    _T759 = *(_T40 + 8)
    _T760 = *(_T40 + 12)
    parm _T759
    parm _T760
    _T761 = *(_T759 + 0)
    _T762 = *(_T761 + 20)
    call _T762
    parm _T40
    _T763 = *(_T40 + 0)
    _T764 = *(_T763 + 24)
    call _T764
}

FUNCTION(main) {
memo ''
main:
    _T766 = 1
    _T765 = _T766
    _T768 =  call _House_New
    _T767 = _T768
    parm _T767
    _T769 = *(_T767 + 0)
    _T770 = *(_T769 + 8)
    call _T770
    parm _T767
    _T771 = *(_T767 + 0)
    _T772 = *(_T771 + 12)
    call _T772
_L169:
    if (_T765 == 0) branch _L170
    parm _T767
    _T773 = *(_T767 + 0)
    _T774 = *(_T773 + 32)
    call _T774
    _T775 = "\nDo you want to play another hand?"
    parm _T775
    _T776 =  call _Main.GetYesOrNo
    _T765 = _T776
    branch _L169
_L170:
    parm _T767
    _T777 = *(_T767 + 0)
    _T778 = *(_T777 + 28)
    call _T778
    _T779 = "Thank you for playing...come again soon.\n"
    parm _T779
    call _PrintString
    _T780 = "\nCS143 BlackJack Copyright (c) 1999 by Peter Mork.\n"
    parm _T780
    call _PrintString
    _T781 = "(2001 mods by jdz)\n"
    parm _T781
    call _PrintString
}

FUNCTION(_Main.GetYesOrNo) {
memo '_T41:4'
_Main.GetYesOrNo:
    parm _T41
    call _PrintString
    _T782 = " (0=No/1=Yes) "
    parm _T782
    call _PrintString
    _T783 =  call _ReadInteger
    _T784 = 0
    _T785 = (_T783 != _T784)
    return _T785
}

