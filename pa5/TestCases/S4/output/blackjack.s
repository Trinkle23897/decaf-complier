          .text                         
          .globl main                   

          .data                         
          .align 2                      
_rndModule:                             # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _rndModule.Init         
          .word _rndModule.Random       
          .word _rndModule.RndInt       

          .data                         
          .align 2                      
_Deck:                                  # virtual table
          .word 0                       # parent
          .word _STRING1                # class name
          .word _Deck.Init              
          .word _Deck.Shuffle           
          .word _Deck.GetCard           

          .data                         
          .align 2                      
_BJDeck:                                # virtual table
          .word 0                       # parent
          .word _STRING2                # class name
          .word _BJDeck.Init            
          .word _BJDeck.DealCard        
          .word _BJDeck.Shuffle         
          .word _BJDeck.NumCardsRemaining

          .data                         
          .align 2                      
_Player:                                # virtual table
          .word 0                       # parent
          .word _STRING3                # class name
          .word _Player.Init            
          .word _Player.Hit             
          .word _Player.DoubleDown      
          .word _Player.TakeTurn        
          .word _Player.HasMoney        
          .word _Player.PrintMoney      
          .word _Player.PlaceBet        
          .word _Player.GetTotal        
          .word _Player.Resolve         
          .word _Player.GetYesOrNo      

          .data                         
          .align 2                      
_Dealer:                                # virtual table
          .word _Player                 # parent
          .word _STRING4                # class name
          .word _Dealer.Init            
          .word _Player.Hit             
          .word _Player.DoubleDown      
          .word _Dealer.TakeTurn        
          .word _Player.HasMoney        
          .word _Player.PrintMoney      
          .word _Player.PlaceBet        
          .word _Player.GetTotal        
          .word _Player.Resolve         
          .word _Player.GetYesOrNo      

          .data                         
          .align 2                      
_House:                                 # virtual table
          .word 0                       # parent
          .word _STRING5                # class name
          .word _House.SetupGame        
          .word _House.SetupPlayers     
          .word _House.TakeAllBets      
          .word _House.TakeAllTurns     
          .word _House.ResolveAllPlayers
          .word _House.PrintAllMoney    
          .word _House.PlayOneGame      

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING6                # class name



          .text                         
_rndModule_New:                         # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L167:                                  
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          la    $t0, _rndModule         
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Deck_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L168:                                  
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          sw    $t1, 8($t0)             
          sw    $t1, 12($t0)            
          la    $t1, _Deck              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_BJDeck_New:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L169:                                  
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          sw    $t0, 12($t1)            
          la    $t0, _BJDeck            
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player_New:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L170:                                  
          li    $t3, 28                 
          sw    $t3, 4($sp)             
          sw    $t3, -8($fp)            
          jal   _Alloc                  
          move  $t0, $v0                
          lw    $t3, -8($fp)            
          li    $t2, 0                  
          li    $t1, 4                  
          add   $t0, $t0, $t3           
          sw    $t3, -8($fp)            
          sw    $t2, -12($fp)           
          sw    $t1, -16($fp)           
          sw    $t0, -20($fp)           
_L171:                                  
          lw    $t0, -20($fp)           
          lw    $t1, -16($fp)           
          lw    $t2, -8($fp)            
          sub   $t0, $t0, $t1           
          sub   $t2, $t2, $t1           
          sw    $t2, -8($fp)            
          sw    $t1, -16($fp)           
          sw    $t0, -20($fp)           
          beqz  $t2, _L173              
_L172:                                  
          lw    $t0, -20($fp)           
          lw    $t1, -12($fp)           
          sw    $t1, 0($t0)             
          sw    $t1, -12($fp)           
          sw    $t0, -20($fp)           
          b     _L171                   
_L173:                                  
          lw    $t0, -20($fp)           
          la    $t1, _Player            
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Dealer_New:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L174:                                  
          li    $t1, 28                 
          sw    $t1, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _Alloc                  
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          li    $t3, 0                  
          li    $t2, 4                  
          add   $t0, $t0, $t1           
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t0, -20($fp)           
          sw    $t1, -8($fp)            
_L175:                                  
          lw    $t0, -20($fp)           
          lw    $t2, -16($fp)           
          lw    $t1, -8($fp)            
          sub   $t0, $t0, $t2           
          sub   $t1, $t1, $t2           
          sw    $t2, -16($fp)           
          sw    $t0, -20($fp)           
          sw    $t1, -8($fp)            
          beqz  $t1, _L177              
_L176:                                  
          lw    $t0, -20($fp)           
          lw    $t1, -12($fp)           
          sw    $t1, 0($t0)             
          sw    $t1, -12($fp)           
          sw    $t0, -20($fp)           
          b     _L175                   
_L177:                                  
          lw    $t0, -20($fp)           
          la    $t1, _Dealer            
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House_New:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L178:                                  
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          sw    $t0, 12($t1)            
          la    $t0, _House             
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L179:                                  
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          la    $t0, _Main              
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_rndModule.Init:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L180:                                  
          lw    $t1, 8($fp)             
          lw    $t2, 4($fp)             
          lw    $t0, 4($t2)             
          sw    $t1, 4($t2)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_rndModule.Random:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L181:                                  
          lw    $t2, 4($fp)             
          lw    $t0, 4($t2)             
          li    $t0, 15625              
          lw    $t3, 4($t2)             
          li    $t1, 10000              
          rem   $t1, $t3, $t1           
          mul   $t1, $t0, $t1           
          li    $t0, 22221              
          add   $t1, $t1, $t0           
          lui   $t0, 1                  
          rem   $t0, $t1, $t0           
          sw    $t0, 4($t2)             
          lw    $t0, 4($t2)             
          sw    $t2, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_rndModule.RndInt:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L182:                                  
          lw    $t1, 8($fp)             
          lw    $t2, 4($fp)             
          sw    $t2, 4($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          rem   $t0, $t0, $t1           
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Deck.Init:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -36           
_L183:                                  
          lw    $t2, 4($fp)             
          lw    $t0, 8($t2)             
          li    $t1, 52                 
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t0, _L185              
_L184:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L185:                                  
          lw    $t0, -8($fp)            
          li    $t3, 4                  
          mul   $t1, $t3, $t0           
          add   $t2, $t3, $t1           
          sw    $t2, 4($sp)             
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t0, -8($fp)            
          jal   _Alloc                  
          move  $t1, $v0                
          lw    $t3, -12($fp)           
          lw    $t2, -16($fp)           
          lw    $t0, -8($fp)            
          sw    $t0, 0($t1)             
          li    $t0, 0                  
          add   $t1, $t1, $t2           
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t1, -20($fp)           
          sw    $t0, -24($fp)           
_L186:                                  
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          beqz  $t0, _L188              
_L187:                                  
          lw    $t0, -24($fp)           
          lw    $t2, -20($fp)           
          lw    $t1, -12($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -12($fp)           
          sw    $t2, -20($fp)           
          sw    $t0, -24($fp)           
          b     _L186                   
_L188:                                  
          lw    $t0, -20($fp)           
          lw    $t1, 8($fp)             
          lw    $t3, 4($fp)             
          sw    $t0, 8($t3)             
          lw    $t0, 12($t3)            
          sw    $t1, 12($t3)            
          sw    $t3, 4($fp)             
          sw    $t1, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Deck.Shuffle:                          # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -60           
_L189:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          li    $t0, 1                  
          sw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
_L191:                                  
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          li    $t0, 52                 
          sle   $t0, $t2, $t0           
          sw    $t1, 4($fp)             
          beqz  $t0, _L196              
_L192:                                  
          lw    $t0, 4($fp)             
          lw    $t3, 8($t0)             
          lw    $t2, 4($t0)             
          li    $t1, 1                  
          sub   $t2, $t2, $t1           
          lw    $t1, -4($t3)            
          slt   $t1, $t2, $t1           
          sw    $t3, -8($fp)            
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          beqz  $t1, _L194              
_L193:                                  
          lw    $t1, -12($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t0, _L195              
_L194:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L195:                                  
          lw    $t1, -12($fp)           
          lw    $t3, -8($fp)            
          lw    $t0, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t3, $t2           
          lw    $t2, 0($t2)             
          lw    $t4, 4($t0)             
          li    $t2, 13                 
          rem   $t4, $t4, $t2           
          li    $t2, 4                  
          mul   $t1, $t1, $t2           
          add   $t1, $t3, $t1           
          sw    $t4, 0($t1)             
          sw    $t0, 4($fp)             
_L190:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          lw    $t2, 4($t1)             
          li    $t0, 1                  
          add   $t0, $t2, $t0           
          sw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          b     _L191                   
_L196:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t2, 4($t0)             
          li    $t1, 1                  
          sub   $t1, $t2, $t1           
          sw    $t1, 4($t0)             
          sw    $t0, 4($fp)             
_L197:                                  
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          li    $t1, 0                  
          sgt   $t1, $t2, $t1           
          sw    $t0, 4($fp)             
          beqz  $t1, _L211              
_L198:                                  
          lw    $t0, 4($fp)             
          lw    $t2, 12($t0)            
          lw    $t1, 4($t0)             
          sw    $t2, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t1, 0($t2)             
          lw    $t1, 16($t1)            
          sw    $t0, 4($fp)             
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t0, 4($fp)             
          move  $t4, $t1                
          lw    $t1, 4($t0)             
          lw    $t2, 4($t0)             
          li    $t1, 1                  
          sub   $t1, $t2, $t1           
          sw    $t1, 4($t0)             
          lw    $t3, 8($t0)             
          lw    $t2, 4($t0)             
          lw    $t1, -4($t3)            
          slt   $t1, $t2, $t1           
          sw    $t3, -20($fp)           
          sw    $t0, 4($fp)             
          sw    $t2, -24($fp)           
          sw    $t4, -16($fp)           
          beqz  $t1, _L200              
_L199:                                  
          lw    $t1, -24($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -24($fp)           
          beqz  $t0, _L201              
_L200:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L201:                                  
          lw    $t1, -24($fp)           
          lw    $t3, -20($fp)           
          lw    $t0, 4($fp)             
          li    $t2, 4                  
          mul   $t1, $t1, $t2           
          add   $t1, $t3, $t1           
          lw    $t1, 0($t1)             
          lw    $t4, 8($t0)             
          lw    $t3, 4($t0)             
          lw    $t2, -4($t4)            
          slt   $t2, $t3, $t2           
          sw    $t4, -32($fp)           
          sw    $t3, -36($fp)           
          sw    $t0, 4($fp)             
          sw    $t1, -28($fp)           
          beqz  $t2, _L203              
_L202:                                  
          lw    $t1, -36($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -36($fp)           
          beqz  $t0, _L204              
_L203:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L204:                                  
          lw    $t1, -36($fp)           
          lw    $t4, -32($fp)           
          lw    $t5, -16($fp)           
          lw    $t0, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t4, $t2           
          lw    $t2, 0($t2)             
          lw    $t3, 8($t0)             
          lw    $t2, -4($t3)            
          slt   $t2, $t5, $t2           
          sw    $t4, -32($fp)           
          sw    $t1, -36($fp)           
          sw    $t0, 4($fp)             
          sw    $t5, -16($fp)           
          sw    $t3, -40($fp)           
          beqz  $t2, _L206              
_L205:                                  
          lw    $t1, -16($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -16($fp)           
          beqz  $t0, _L207              
_L206:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L207:                                  
          lw    $t3, -40($fp)           
          lw    $t1, -36($fp)           
          lw    $t4, -32($fp)           
          lw    $t5, -16($fp)           
          lw    $t0, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t5, $t2           
          add   $t2, $t3, $t2           
          lw    $t3, 0($t2)             
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t4, $t2           
          sw    $t3, 0($t2)             
          lw    $t3, 8($t0)             
          lw    $t2, -4($t3)            
          slt   $t2, $t5, $t2           
          sw    $t0, 4($fp)             
          sw    $t3, -44($fp)           
          sw    $t5, -16($fp)           
          beqz  $t2, _L209              
_L208:                                  
          lw    $t1, -16($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -16($fp)           
          beqz  $t0, _L210              
_L209:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L210:                                  
          lw    $t3, -44($fp)           
          lw    $t2, -28($fp)           
          lw    $t1, -16($fp)           
          li    $t0, 4                  
          mul   $t0, $t1, $t0           
          add   $t0, $t3, $t0           
          lw    $t0, 0($t0)             
          li    $t0, 4                  
          mul   $t0, $t1, $t0           
          add   $t0, $t3, $t0           
          sw    $t2, 0($t0)             
          b     _L197                   
_L211:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Deck.GetCard:                          # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L212:                                  
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          li    $t0, 52                 
          sge   $t0, $t2, $t0           
          sw    $t1, 4($fp)             
          beqz  $t0, _L214              
_L213:                                  
          li    $t0, 0                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L214:                                  
          lw    $t1, 4($fp)             
          lw    $t3, 8($t1)             
          lw    $t2, 4($t1)             
          lw    $t0, -4($t3)            
          slt   $t0, $t2, $t0           
          sw    $t1, 4($fp)             
          sw    $t3, -8($fp)            
          sw    $t2, -12($fp)           
          beqz  $t0, _L216              
_L215:                                  
          lw    $t1, -12($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t0, _L217              
_L216:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L217:                                  
          lw    $t0, -12($fp)           
          lw    $t2, -8($fp)            
          lw    $t1, 4($fp)             
          li    $t3, 4                  
          mul   $t0, $t0, $t3           
          add   $t0, $t2, $t0           
          lw    $t0, 0($t0)             
          move  $t3, $t0                
          lw    $t0, 4($t1)             
          lw    $t2, 4($t1)             
          li    $t0, 1                  
          add   $t0, $t2, $t0           
          sw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t3                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_BJDeck.Init:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -52           
_L218:                                  
          lw    $t2, 4($fp)             
          lw    $t0, 4($t2)             
          li    $t1, 8                  
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t0, _L220              
_L219:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L220:                                  
          lw    $t0, -8($fp)            
          li    $t3, 4                  
          mul   $t1, $t3, $t0           
          add   $t2, $t3, $t1           
          sw    $t2, 4($sp)             
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t0, -8($fp)            
          jal   _Alloc                  
          move  $t1, $v0                
          lw    $t3, -12($fp)           
          lw    $t2, -16($fp)           
          lw    $t0, -8($fp)            
          sw    $t0, 0($t1)             
          li    $t0, 0                  
          add   $t1, $t1, $t2           
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t1, -20($fp)           
          sw    $t0, -24($fp)           
_L221:                                  
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          beqz  $t0, _L223              
_L222:                                  
          lw    $t0, -24($fp)           
          lw    $t2, -20($fp)           
          lw    $t1, -12($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -12($fp)           
          sw    $t2, -20($fp)           
          sw    $t0, -24($fp)           
          b     _L221                   
_L223:                                  
          lw    $t0, -20($fp)           
          lw    $t1, 4($fp)             
          sw    $t0, 4($t1)             
          li    $t0, 0                  
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
_L225:                                  
          lw    $t0, -28($fp)           
          li    $t1, 8                  
          slt   $t1, $t0, $t1           
          sw    $t0, -28($fp)           
          beqz  $t1, _L233              
_L226:                                  
          lw    $t0, -28($fp)           
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          sw    $t3, -32($fp)           
          beqz  $t2, _L228              
_L227:                                  
          lw    $t0, -28($fp)           
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -28($fp)           
          beqz  $t1, _L229              
_L228:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L229:                                  
          lw    $t3, -32($fp)           
          lw    $t0, -28($fp)           
          lw    $t1, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t2, $t3, $t2           
          lw    $t2, 0($t2)             
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          sw    $t3, -32($fp)           
          jal   _Deck_New               
          move  $t4, $v0                
          lw    $t1, 4($fp)             
          lw    $t0, -28($fp)           
          lw    $t3, -32($fp)           
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t2, $t3, $t2           
          sw    $t4, 0($t2)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -36($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          beqz  $t2, _L231              
_L230:                                  
          lw    $t0, -28($fp)           
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -28($fp)           
          beqz  $t1, _L232              
_L231:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L232:                                  
          lw    $t3, -36($fp)           
          lw    $t0, -28($fp)           
          lw    $t2, 8($fp)             
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t3, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 8($t1)             
          sw    $t2, 8($fp)             
          sw    $t0, -28($fp)           
          jalr  $t1                     
          lw    $t2, 8($fp)             
          lw    $t0, -28($fp)           
          sw    $t2, 8($fp)             
          sw    $t0, -28($fp)           
_L224:                                  
          lw    $t0, -28($fp)           
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -28($fp)           
          b     _L225                   
_L233:                                  
          lw    $t0, 8($fp)             
          lw    $t1, 4($fp)             
          lw    $t2, 12($t1)            
          sw    $t0, 12($t1)            
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_BJDeck.DealCard:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L234:                                  
          lw    $t1, 4($fp)             
          li    $t0, 0                  
          move  $t4, $t0                
          lw    $t3, 8($t1)             
          li    $t2, 8                  
          li    $t0, 52                 
          mul   $t0, $t2, $t0           
          sge   $t0, $t3, $t0           
          sw    $t4, -8($fp)            
          sw    $t1, 4($fp)             
          beqz  $t0, _L236              
_L235:                                  
          li    $t0, 11                 
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L236:                                  
          lw    $t1, -8($fp)            
          li    $t0, 0                  
          seq   $t0, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t0, _L241              
_L237:                                  
          lw    $t1, 4($fp)             
          lw    $t2, 12($t1)            
          li    $t0, 8                  
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 16($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -16($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -12($fp)           
          beqz  $t2, _L239              
_L238:                                  
          lw    $t0, -12($fp)           
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L240              
_L239:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L240:                                  
          lw    $t2, -16($fp)           
          lw    $t0, -12($fp)           
          li    $t1, 4                  
          mul   $t0, $t0, $t1           
          add   $t0, $t2, $t0           
          lw    $t0, 0($t0)             
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 16($t0)            
          jalr  $t0                     
          move  $t0, $v0                
          sw    $t0, -8($fp)            
          b     _L236                   
_L241:                                  
          lw    $t0, -8($fp)            
          li    $t1, 10                 
          sgt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L243              
_L242:                                  
          li    $t0, 10                 
          sw    $t0, -8($fp)            
_L245:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t0, 8($t1)             
          lw    $t2, 8($t1)             
          li    $t0, 1                  
          add   $t0, $t2, $t0           
          sw    $t0, 8($t1)             
          lw    $t0, -8($fp)            
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L243:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          seq   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L245              
_L244:                                  
          li    $t0, 11                 
          sw    $t0, -8($fp)            
          b     _L245                   

_BJDeck.Shuffle:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L246:                                  
          la    $t0, _STRING9           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L248:                                  
          lw    $t0, -8($fp)            
          li    $t1, 8                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L253              
_L249:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -12($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L251              
_L250:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L252              
_L251:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L252:                                  
          lw    $t2, -12($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 12($t1)            
          sw    $t0, -8($fp)            
          jalr  $t1                     
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
_L247:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L248                   
_L253:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 8($t1)             
          li    $t0, 0                  
          sw    $t0, 8($t1)             
          la    $t0, _STRING10          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_BJDeck.NumCardsRemaining:              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L254:                                  
          lw    $t0, 4($fp)             
          li    $t2, 8                  
          li    $t1, 52                 
          mul   $t2, $t2, $t1           
          lw    $t1, 8($t0)             
          sub   $t1, $t2, $t1           
          sw    $t0, 4($fp)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.Init:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L255:                                  
          lw    $t0, 8($fp)             
          lw    $t1, 4($fp)             
          lw    $t2, 20($t1)            
          li    $t2, 1000               
          sw    $t2, 20($t1)            
          la    $t2, _STRING11          
          sw    $t2, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 8($fp)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          lw    $t0, 8($fp)             
          la    $t2, _STRING12          
          sw    $t2, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 8($fp)             
          lw    $t2, 24($t1)            
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
          jal   _ReadLine               
          move  $t2, $v0                
          lw    $t1, 4($fp)             
          lw    $t0, 8($fp)             
          sw    $t2, 24($t1)            
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.Hit:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L256:                                  
          lw    $t2, 8($fp)             
          lw    $t3, 4($fp)             
          sw    $t2, 4($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t3, 4($fp)             
          lw    $t2, 8($fp)             
          move  $t4, $t0                
          lw    $t0, 24($t3)            
          sw    $t0, 4($sp)             
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t4, -8($fp)            
          jal   _PrintString            
          lw    $t3, 4($fp)             
          lw    $t2, 8($fp)             
          lw    $t4, -8($fp)            
          la    $t0, _STRING13          
          sw    $t0, 4($sp)             
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t4, -8($fp)            
          jal   _PrintString            
          lw    $t3, 4($fp)             
          lw    $t2, 8($fp)             
          lw    $t4, -8($fp)            
          sw    $t4, 4($sp)             
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t4, -8($fp)            
          jal   _PrintInt               
          lw    $t3, 4($fp)             
          lw    $t2, 8($fp)             
          lw    $t4, -8($fp)            
          la    $t0, _STRING14          
          sw    $t0, 4($sp)             
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t4, -8($fp)            
          jal   _PrintString            
          lw    $t3, 4($fp)             
          lw    $t2, 8($fp)             
          lw    $t4, -8($fp)            
          lw    $t0, 4($t3)             
          lw    $t0, 4($t3)             
          add   $t0, $t0, $t4           
          sw    $t0, 4($t3)             
          lw    $t0, 12($t3)            
          lw    $t1, 12($t3)            
          li    $t0, 1                  
          add   $t0, $t1, $t0           
          sw    $t0, 12($t3)            
          li    $t0, 11                 
          seq   $t0, $t4, $t0           
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          beqz  $t0, _L258              
_L257:                                  
          lw    $t2, 4($fp)             
          lw    $t0, 8($t2)             
          lw    $t1, 8($t2)             
          li    $t0, 1                  
          add   $t0, $t1, $t0           
          sw    $t0, 8($t2)             
          sw    $t2, 4($fp)             
_L258:                                  
          lw    $t2, 4($fp)             
          lw    $t1, 4($t2)             
          li    $t0, 21                 
          sgt   $t3, $t1, $t0           
          lw    $t1, 8($t2)             
          li    $t0, 0                  
          sgt   $t0, $t1, $t0           
          and   $t0, $t3, $t0           
          sw    $t2, 4($fp)             
          beqz  $t0, _L260              
_L259:                                  
          lw    $t2, 4($fp)             
          lw    $t0, 4($t2)             
          lw    $t1, 4($t2)             
          li    $t0, 10                 
          sub   $t0, $t1, $t0           
          sw    $t0, 4($t2)             
          lw    $t0, 8($t2)             
          lw    $t1, 8($t2)             
          li    $t0, 1                  
          sub   $t0, $t1, $t0           
          sw    $t0, 8($t2)             
          sw    $t2, 4($fp)             
          b     _L258                   
_L260:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.DoubleDown:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L261:                                  
          lw    $t3, 4($fp)             
          lw    $t1, 4($t3)             
          li    $t0, 10                 
          sne   $t2, $t1, $t0           
          lw    $t1, 4($t3)             
          li    $t0, 11                 
          sne   $t0, $t1, $t0           
          and   $t0, $t2, $t0           
          sw    $t3, 4($fp)             
          beqz  $t0, _L263              
_L262:                                  
          li    $t0, 0                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L263:                                  
          lw    $t1, 4($fp)             
          la    $t0, _STRING15          
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 44($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          beqz  $t0, _L265              
_L264:                                  
          lw    $t3, 8($fp)             
          lw    $t1, 4($fp)             
          lw    $t0, 16($t1)            
          lw    $t2, 16($t1)            
          li    $t0, 2                  
          mul   $t0, $t2, $t0           
          sw    $t0, 16($t1)            
          sw    $t1, 4($sp)             
          sw    $t3, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          lw    $t3, 8($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t3, 8($fp)             
          la    $t0, _STRING16          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t3, 8($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          lw    $t3, 8($fp)             
          la    $t0, _STRING14          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t3, 8($fp)             
          li    $t0, 1                  
          sw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L265:                                  
          li    $t0, 0                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.TakeTurn:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L267:                                  
          lw    $t1, 8($fp)             
          lw    $t2, 4($fp)             
          la    $t0, _STRING17          
          sw    $t0, 4($sp)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          lw    $t0, 24($t2)            
          sw    $t0, 4($sp)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          la    $t0, _STRING18          
          sw    $t0, 4($sp)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          lw    $t0, 4($t2)             
          li    $t0, 0                  
          sw    $t0, 4($t2)             
          lw    $t0, 8($t2)             
          li    $t0, 0                  
          sw    $t0, 8($t2)             
          lw    $t0, 12($t2)            
          li    $t0, 0                  
          sw    $t0, 12($t2)            
          sw    $t2, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t2, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t2, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 16($t0)            
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          not   $t0, $t0                
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t0, _L272              
_L268:                                  
          li    $t0, 1                  
          sw    $t0, -8($fp)            
_L269:                                  
          lw    $t0, -8($fp)            
          lw    $t2, 4($fp)             
          lw    $t3, 4($t2)             
          li    $t1, 21                 
          sle   $t1, $t3, $t1           
          and   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          beqz  $t0, _L272              
_L270:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING16          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING14          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING19          
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 44($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t0, _L269              
_L271:                                  
          lw    $t2, 8($fp)             
          lw    $t1, 4($fp)             
          sw    $t1, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, 4($fp)             
          sw    $t2, 8($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          lw    $t2, 8($fp)             
          sw    $t1, 4($fp)             
          sw    $t2, 8($fp)             
          b     _L269                   
_L272:                                  
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          li    $t0, 21                 
          sgt   $t0, $t2, $t0           
          sw    $t1, 4($fp)             
          beqz  $t0, _L274              
_L273:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING20          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING21          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
_L275:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L274:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING22          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING14          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          b     _L275                   

_Player.HasMoney:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L276:                                  
          lw    $t1, 4($fp)             
          lw    $t2, 20($t1)            
          li    $t0, 0                  
          sgt   $t0, $t2, $t0           
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.PrintMoney:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L277:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING23          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 20($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING14          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.PlaceBet:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L278:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 16($t1)            
          li    $t0, 0                  
          sw    $t0, 16($t1)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 28($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
_L279:                                  
          lw    $t0, 4($fp)             
          lw    $t2, 16($t0)            
          li    $t1, 0                  
          sle   $t3, $t2, $t1           
          lw    $t2, 16($t0)            
          lw    $t1, 20($t0)            
          sgt   $t1, $t2, $t1           
          or    $t1, $t3, $t1           
          sw    $t0, 4($fp)             
          beqz  $t1, _L281              
_L280:                                  
          lw    $t0, 4($fp)             
          la    $t1, _STRING24          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 16($t0)            
          sw    $t0, 4($fp)             
          jal   _ReadInteger            
          move  $t1, $v0                
          lw    $t0, 4($fp)             
          sw    $t1, 16($t0)            
          sw    $t0, 4($fp)             
          b     _L279                   
_L281:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.GetTotal:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L282:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Player.Resolve:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L283:                                  
          lw    $t3, 4($fp)             
          li    $t0, 0                  
          move  $t2, $t0                
          li    $t0, 0                  
          move  $t1, $t0                
          lw    $t0, 4($t3)             
          li    $t4, 21                 
          seq   $t5, $t0, $t4           
          lw    $t4, 12($t3)            
          li    $t0, 2                  
          seq   $t0, $t4, $t0           
          and   $t0, $t5, $t0           
          sw    $t3, 4($fp)             
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
          beqz  $t0, _L285              
_L284:                                  
          li    $t0, 2                  
          sw    $t0, -8($fp)            
_L293:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          sge   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L295              
_L294:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 24($t0)            
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          la    $t1, _STRING25          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 16($t0)            
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintInt               
          lw    $t0, 4($fp)             
          la    $t1, _STRING14          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          sw    $t0, 4($fp)             
_L298:                                  
          lw    $t1, -12($fp)           
          lw    $t2, -8($fp)            
          lw    $t0, 4($fp)             
          lw    $t3, 16($t0)            
          mul   $t2, $t2, $t3           
          lw    $t3, 16($t0)            
          mul   $t1, $t1, $t3           
          lw    $t3, 20($t0)            
          lw    $t3, 20($t0)            
          add   $t2, $t3, $t2           
          sub   $t1, $t2, $t1           
          sw    $t1, 20($t0)            
          sw    $t0, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L295:                                  
          lw    $t0, -12($fp)           
          li    $t1, 1                  
          sge   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L297              
_L296:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 24($t0)            
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          la    $t1, _STRING26          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 16($t0)            
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintInt               
          lw    $t0, 4($fp)             
          la    $t1, _STRING14          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          sw    $t0, 4($fp)             
          b     _L298                   
_L297:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 24($t0)            
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          la    $t1, _STRING27          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          sw    $t0, 4($fp)             
          b     _L298                   
_L285:                                  
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          li    $t1, 21                 
          sgt   $t1, $t2, $t1           
          sw    $t0, 4($fp)             
          beqz  $t1, _L287              
_L286:                                  
          li    $t0, 1                  
          sw    $t0, -12($fp)           
          b     _L293                   
_L287:                                  
          lw    $t1, 8($fp)             
          li    $t0, 21                 
          sgt   $t0, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t0, _L289              
_L288:                                  
          li    $t0, 1                  
          sw    $t0, -8($fp)            
          b     _L293                   
_L289:                                  
          lw    $t1, 8($fp)             
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          sgt   $t2, $t2, $t1           
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t2, _L291              
_L290:                                  
          li    $t0, 1                  
          sw    $t0, -8($fp)            
          b     _L293                   
_L291:                                  
          lw    $t1, 8($fp)             
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          sgt   $t2, $t1, $t2           
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t2, _L293              
_L292:                                  
          li    $t0, 1                  
          sw    $t0, -12($fp)           
          b     _L293                   

_Player.GetYesOrNo:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L299:                                  
          lw    $t1, 8($fp)             
          sw    $t1, 4($sp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t1, 8($fp)             
          la    $t0, _STRING28          
          sw    $t0, 4($sp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t1, 8($fp)             
          sw    $t1, 8($fp)             
          jal   _ReadInteger            
          move  $t2, $v0                
          lw    $t1, 8($fp)             
          li    $t0, 0                  
          sne   $t0, $t2, $t0           
          sw    $t1, 8($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Dealer.Init:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L300:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          lw    $t0, 8($t1)             
          li    $t0, 0                  
          sw    $t0, 8($t1)             
          lw    $t0, 12($t1)            
          li    $t0, 0                  
          sw    $t0, 12($t1)            
          la    $t0, _STRING4           
          lw    $t2, 24($t1)            
          sw    $t0, 24($t1)            
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Dealer.TakeTurn:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L301:                                  
          lw    $t1, 4($fp)             
          la    $t0, _STRING17          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING18          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
_L302:                                  
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          li    $t0, 16                 
          sle   $t0, $t2, $t0           
          sw    $t1, 4($fp)             
          beqz  $t0, _L304              
_L303:                                  
          lw    $t2, 8($fp)             
          lw    $t1, 4($fp)             
          sw    $t1, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, 4($fp)             
          sw    $t2, 8($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          lw    $t2, 8($fp)             
          sw    $t1, 4($fp)             
          sw    $t2, 8($fp)             
          b     _L302                   
_L304:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          li    $t2, 21                 
          sgt   $t0, $t0, $t2           
          sw    $t1, 4($fp)             
          beqz  $t0, _L306              
_L305:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING20          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING21          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
_L307:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L306:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 24($t1)            
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          la    $t0, _STRING22          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING14          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          b     _L307                   

_House.SetupGame:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L308:                                  
          lw    $t2, 4($fp)             
          la    $t0, _STRING29          
          sw    $t0, 4($sp)             
          sw    $t2, 4($fp)             
          jal   _PrintString            
          lw    $t2, 4($fp)             
          la    $t0, _STRING30          
          sw    $t0, 4($sp)             
          sw    $t2, 4($fp)             
          jal   _PrintString            
          lw    $t2, 4($fp)             
          sw    $t2, 4($fp)             
          jal   _rndModule_New          
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          move  $t1, $t0                
          la    $t0, _STRING31          
          sw    $t0, 4($sp)             
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t2, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          jal   _ReadInteger            
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t2, 4($fp)             
          lw    $t1, -8($fp)            
          lw    $t0, 12($t2)            
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          jal   _BJDeck_New             
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t0, 12($t2)            
          lw    $t0, 8($t2)             
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          jal   _Dealer_New             
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t0, 8($t2)             
          lw    $t0, 12($t2)            
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 8($t0)             
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          lw    $t0, 12($t2)            
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 16($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          sw    $t2, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House.SetupPlayers:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -52           
_L309:                                  
          lw    $t1, 4($fp)             
          la    $t0, _STRING32          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          jal   _ReadInteger            
          move  $t0, $v0                
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          li    $t2, 0                  
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L311              
_L310:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L311:                                  
          lw    $t0, -8($fp)            
          li    $t3, 4                  
          mul   $t1, $t3, $t0           
          add   $t2, $t3, $t1           
          sw    $t2, 4($sp)             
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t0, -8($fp)            
          jal   _Alloc                  
          move  $t1, $v0                
          lw    $t3, -12($fp)           
          lw    $t2, -16($fp)           
          lw    $t0, -8($fp)            
          sw    $t0, 0($t1)             
          li    $t0, 0                  
          add   $t1, $t1, $t2           
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t1, -20($fp)           
          sw    $t0, -24($fp)           
_L312:                                  
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          beqz  $t0, _L314              
_L313:                                  
          lw    $t0, -24($fp)           
          lw    $t2, -20($fp)           
          lw    $t1, -12($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -12($fp)           
          sw    $t2, -20($fp)           
          sw    $t0, -24($fp)           
          b     _L312                   
_L314:                                  
          lw    $t0, -20($fp)           
          lw    $t1, 4($fp)             
          sw    $t0, 4($t1)             
          li    $t0, 0                  
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
_L316:                                  
          lw    $t0, -28($fp)           
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          lw    $t2, -4($t2)            
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          beqz  $t2, _L324              
_L317:                                  
          lw    $t0, -28($fp)           
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          lw    $t3, -4($t2)            
          slt   $t3, $t0, $t3           
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          sw    $t2, -32($fp)           
          beqz  $t3, _L319              
_L318:                                  
          lw    $t0, -28($fp)           
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -28($fp)           
          beqz  $t1, _L320              
_L319:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L320:                                  
          lw    $t2, -32($fp)           
          lw    $t0, -28($fp)           
          lw    $t1, 4($fp)             
          li    $t3, 4                  
          mul   $t3, $t0, $t3           
          add   $t3, $t2, $t3           
          lw    $t3, 0($t3)             
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          sw    $t2, -32($fp)           
          jal   _Player_New             
          move  $t4, $v0                
          lw    $t1, 4($fp)             
          lw    $t0, -28($fp)           
          lw    $t2, -32($fp)           
          li    $t3, 4                  
          mul   $t3, $t0, $t3           
          add   $t2, $t2, $t3           
          sw    $t4, 0($t2)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -28($fp)           
          sw    $t3, -36($fp)           
          beqz  $t2, _L322              
_L321:                                  
          lw    $t0, -28($fp)           
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -28($fp)           
          beqz  $t1, _L323              
_L322:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L323:                                  
          lw    $t1, -36($fp)           
          lw    $t0, -28($fp)           
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t1, $t1, $t2           
          lw    $t2, 0($t1)             
          li    $t1, 1                  
          add   $t1, $t0, $t1           
          sw    $t2, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t1, 0($t2)             
          lw    $t1, 8($t1)             
          sw    $t0, -28($fp)           
          jalr  $t1                     
          lw    $t0, -28($fp)           
          sw    $t0, -28($fp)           
_L315:                                  
          lw    $t0, -28($fp)           
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -28($fp)           
          b     _L316                   
_L324:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House.TakeAllBets:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -28           
_L325:                                  
          la    $t0, _STRING33          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L327:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          lw    $t2, -4($t2)            
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L336              
_L328:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -12($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L330              
_L329:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L331              
_L330:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L331:                                  
          lw    $t2, -12($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 24($t1)            
          sw    $t0, -8($fp)            
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
          beqz  $t1, _L326              
_L332:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -16($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L334              
_L333:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L335              
_L334:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L335:                                  
          lw    $t2, -16($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 32($t1)            
          sw    $t0, -8($fp)            
          jalr  $t1                     
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
_L326:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L327                   
_L336:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House.TakeAllTurns:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L337:                                  
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L339:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          lw    $t2, -4($t2)            
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L348              
_L340:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -12($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L342              
_L341:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L343              
_L342:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L343:                                  
          lw    $t2, -12($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 24($t1)            
          sw    $t0, -8($fp)            
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
          beqz  $t1, _L338              
_L344:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -16($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L346              
_L345:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L347              
_L346:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L347:                                  
          lw    $t3, -16($fp)           
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t2, $t3, $t2           
          lw    $t3, 0($t2)             
          lw    $t2, 12($t1)            
          sw    $t3, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t2, 0($t3)             
          lw    $t2, 20($t2)            
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          jalr  $t2                     
          lw    $t1, 4($fp)             
          lw    $t0, -8($fp)            
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
_L338:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L339                   
_L348:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House.ResolveAllPlayers:               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -36           
_L349:                                  
          la    $t0, _STRING34          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L351:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t2, 4($t1)             
          lw    $t2, -4($t2)            
          slt   $t2, $t0, $t2           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L360              
_L352:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -12($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L354              
_L353:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L355              
_L354:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L355:                                  
          lw    $t2, -12($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 24($t1)            
          sw    $t0, -8($fp)            
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
          beqz  $t1, _L350              
_L356:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -16($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L358              
_L357:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L359              
_L358:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L359:                                  
          lw    $t3, -16($fp)           
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t2, $t3, $t2           
          lw    $t3, 0($t2)             
          lw    $t2, 8($t1)             
          sw    $t2, 4($sp)             
          lw    $t2, 0($t2)             
          lw    $t2, 36($t2)            
          sw    $t1, 4($fp)             
          sw    $t3, -20($fp)           
          sw    $t0, -8($fp)            
          jalr  $t2                     
          move  $t2, $v0                
          lw    $t1, 4($fp)             
          lw    $t3, -20($fp)           
          lw    $t0, -8($fp)            
          sw    $t3, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t2, 0($t3)             
          lw    $t2, 40($t2)            
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          jalr  $t2                     
          lw    $t1, 4($fp)             
          lw    $t0, -8($fp)            
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
_L350:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L351                   
_L360:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House.PrintAllMoney:                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L361:                                  
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L363:                                  
          lw    $t0, -8($fp)            
          lw    $t2, 4($fp)             
          lw    $t1, 4($t2)             
          lw    $t1, -4($t1)            
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          sw    $t2, 4($fp)             
          beqz  $t1, _L368              
_L364:                                  
          lw    $t0, -8($fp)            
          lw    $t2, 4($fp)             
          lw    $t3, 4($t2)             
          lw    $t1, -4($t3)            
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          sw    $t2, 4($fp)             
          sw    $t3, -12($fp)           
          beqz  $t1, _L366              
_L365:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L367              
_L366:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L367:                                  
          lw    $t2, -12($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 28($t1)            
          sw    $t0, -8($fp)            
          jalr  $t1                     
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
_L362:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L363                   
_L368:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_House.PlayOneGame:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L369:                                  
          lw    $t2, 4($fp)             
          lw    $t0, 12($t2)            
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 20($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          move  $t1, $v0                
          lw    $t2, 4($fp)             
          li    $t0, 26                 
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          beqz  $t0, _L371              
_L370:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 12($t1)            
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 16($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
_L371:                                  
          lw    $t1, 4($fp)             
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 16($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          la    $t0, _STRING35          
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t2, 8($t1)             
          li    $t0, 0                  
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 8($t0)             
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          lw    $t2, 8($t1)             
          lw    $t0, 12($t1)            
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 20($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          lw    $t2, 8($t1)             
          lw    $t0, 12($t1)            
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 20($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 24($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L372:                                  
          li    $t0, 1                  
          move  $t2, $t0                
          sw    $t2, -8($fp)            
          jal   _House_New              
          move  $t0, $v0                
          lw    $t2, -8($fp)            
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t0                     
          lw    $t2, -8($fp)            
          lw    $t1, -12($fp)           
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t0                     
          lw    $t2, -8($fp)            
          lw    $t1, -12($fp)           
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
_L373:                                  
          lw    $t2, -8($fp)            
          beqz  $t2, _L375              
_L374:                                  
          lw    $t1, -12($fp)           
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 32($t0)            
          sw    $t1, -12($fp)           
          jalr  $t0                     
          lw    $t1, -12($fp)           
          la    $t0, _STRING36          
          sw    $t0, 4($sp)             
          sw    $t1, -12($fp)           
          jal   _Main.GetYesOrNo        
          move  $t0, $v0                
          lw    $t1, -12($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          b     _L373                   
_L375:                                  
          lw    $t0, -12($fp)           
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 28($t0)            
          jalr  $t0                     
          la    $t0, _STRING37          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          la    $t0, _STRING38          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          la    $t0, _STRING39          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main.GetYesOrNo:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L376:                                  
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          la    $t1, _STRING28          
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          sw    $t0, 4($fp)             
          jal   _ReadInteger            
          move  $t2, $v0                
          lw    $t0, 4($fp)             
          li    $t1, 0                  
          sne   $t1, $t2, $t1           
          sw    $t0, 4($fp)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING9:
          .asciiz "Shuffling..."        
_STRING12:
          .asciiz "? "                  
_STRING2:
          .asciiz "BJDeck"              
_STRING19:
          .asciiz "Would you like a hit?"
_STRING22:
          .asciiz " stays at "          
_STRING21:
          .asciiz "!\n"                 
_STRING37:
          .asciiz "Thank you for playing...come again soon.\n"
_STRING17:
          .asciiz "\n"                  
_STRING35:
          .asciiz "\nDealer starts. "   
_STRING13:
          .asciiz " was dealt a "       
_STRING27:
          .asciiz ", you push!\n"       
_STRING34:
          .asciiz "\nTime to resolve bets.\n"
_STRING32:
          .asciiz "How many players do we have today? "
_STRING38:
          .asciiz "\nCS143 BlackJack Copyright (c) 1999 by Peter Mork.\n"
_STRING14:
          .asciiz ".\n"                 
_STRING3:
          .asciiz "Player"              
_STRING7:
          .asciiz "Decaf runtime error: Cannot create negative-sized array\n"
_STRING24:
          .asciiz "How much would you like to bet? "
_STRING31:
          .asciiz "Please enter a random number seed: "
_STRING11:
          .asciiz "What is the name of player #"
_STRING1:
          .asciiz "Deck"                
_STRING25:
          .asciiz ", you won $"         
_STRING5:
          .asciiz "House"               
_STRING10:
          .asciiz "done.\n"             
_STRING30:
          .asciiz "---------------------------\n"
_STRING0:
          .asciiz "rndModule"           
_STRING39:
          .asciiz "(2001 mods by jdz)\n"
_STRING15:
          .asciiz "Would you like to double down?"
_STRING26:
          .asciiz ", you lost $"        
_STRING36:
          .asciiz "\nDo you want to play another hand?"
_STRING33:
          .asciiz "\nFirst, let's take bets.\n"
_STRING16:
          .asciiz ", your total is "    
_STRING23:
          .asciiz ", you have $"        
_STRING28:
          .asciiz " (0=No/1=Yes) "      
_STRING6:
          .asciiz "Main"                
_STRING18:
          .asciiz "'s turn.\n"          
_STRING20:
          .asciiz " busts with the big "
_STRING4:
          .asciiz "Dealer"              
_STRING8:
          .asciiz "Decaf runtime error: Array subscript out of bounds\n"
_STRING29:
          .asciiz "\nWelcome to CS143 BlackJack!\n"
