          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Matrix:                                # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Matrix.Init            
          .word _Matrix.Set             
          .word _Matrix.Get             
          .word _Matrix.PrintMatrix     
          .word _Matrix.SeedMatrix      

          .data                         
          .align 2                      
_DenseMatrix:                           # virtual table
          .word _Matrix                 # parent
          .word _STRING1                # class name
          .word _DenseMatrix.Init       
          .word _DenseMatrix.Set        
          .word _DenseMatrix.Get        
          .word _Matrix.PrintMatrix     
          .word _Matrix.SeedMatrix      

          .data                         
          .align 2                      
_SparseItem:                            # virtual table
          .word 0                       # parent
          .word _STRING2                # class name
          .word _SparseItem.Init        
          .word _SparseItem.GetNext     
          .word _SparseItem.GetY        
          .word _SparseItem.GetData     
          .word _SparseItem.SetData     

          .data                         
          .align 2                      
_SparseMatrix:                          # virtual table
          .word _Matrix                 # parent
          .word _STRING3                # class name
          .word _SparseMatrix.Init      
          .word _SparseMatrix.Set       
          .word _SparseMatrix.Get       
          .word _Matrix.PrintMatrix     
          .word _Matrix.SeedMatrix      
          .word _SparseMatrix.Find      

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING4                # class name



          .text                         
_Matrix_New:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L85:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          la    $t0, _Matrix            
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_DenseMatrix_New:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L86:                                   
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          la    $t0, _DenseMatrix       
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseItem_New:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L87:                                   
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          sw    $t0, 12($t1)            
          la    $t0, _SparseItem        
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseMatrix_New:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L88:                                   
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          la    $t0, _SparseMatrix      
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
_L89:                                   
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

_Matrix.Init:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L90:                                   
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Matrix.Set:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L91:                                   
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Matrix.Get:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L92:                                   
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Matrix.PrintMatrix:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L93:                                   
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L94:                                   
          lw    $t0, -8($fp)            
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L99               
_L95:                                   
          li    $t0, 0                  
          sw    $t0, -12($fp)           
_L96:                                   
          lw    $t0, -12($fp)           
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L98               
_L97:                                   
          lw    $t1, -12($fp)           
          lw    $t0, -8($fp)            
          lw    $t2, 4($fp)             
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          lw    $t3, 0($t2)             
          lw    $t3, 16($t3)            
          sw    $t2, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t3                     
          move  $t3, $v0                
          lw    $t2, 4($fp)             
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          sw    $t3, 4($sp)             
          sw    $t2, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jal   _PrintInt               
          lw    $t2, 4($fp)             
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          la    $t3, _STRING5           
          sw    $t3, 4($sp)             
          sw    $t2, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jal   _PrintString            
          lw    $t2, 4($fp)             
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          li    $t3, 1                  
          add   $t1, $t1, $t3           
          sw    $t2, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          b     _L96                    
_L98:                                   
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          la    $t1, _STRING6           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
          b     _L94                    
_L99:                                   
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Matrix.SeedMatrix:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -36           
_L100:                                  
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L101:                                  
          lw    $t0, -8($fp)            
          li    $t1, 5                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L106              
_L102:                                  
          li    $t0, 0                  
          sw    $t0, -12($fp)           
_L103:                                  
          lw    $t0, -12($fp)           
          li    $t1, 5                  
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L105              
_L104:                                  
          lw    $t1, -12($fp)           
          lw    $t0, -8($fp)            
          lw    $t2, 4($fp)             
          add   $t3, $t0, $t1           
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t3, 16($sp)            
          lw    $t3, 0($t2)             
          lw    $t3, 12($t3)            
          sw    $t2, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t3                     
          lw    $t2, 4($fp)             
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          li    $t3, 1                  
          add   $t1, $t1, $t3           
          sw    $t2, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          b     _L103                   
_L105:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L101                   
_L106:                                  
          lw    $t2, 4($fp)             
          li    $t3, 2                  
          li    $t1, 3                  
          li    $t0, 4                  
          sw    $t2, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          li    $t3, 4                  
          li    $t1, 6                  
          li    $t0, 2                  
          sw    $t2, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          li    $t3, 2                  
          li    $t1, 3                  
          li    $t0, 5                  
          sw    $t2, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          li    $t3, 0                  
          li    $t1, 0                  
          li    $t0, 1                  
          sw    $t2, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          li    $t3, 1                  
          li    $t1, 6                  
          li    $t0, 3                  
          sw    $t2, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          li    $t3, 7                  
          li    $t1, 7                  
          li    $t0, 7                  
          sw    $t2, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          sw    $t2, 4($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          sw    $t2, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_DenseMatrix.Init:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -76           
_L107:                                  
          lw    $t2, 4($fp)             
          li    $t0, 0                  
          move  $t3, $t0                
          lw    $t0, 4($t2)             
          li    $t1, 10                 
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t3, -8($fp)            
          sw    $t2, 4($fp)             
          sw    $t1, -12($fp)           
          beqz  $t0, _L109              
_L108:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L109:                                  
          lw    $t1, -12($fp)           
          li    $t2, 4                  
          mul   $t0, $t2, $t1           
          add   $t3, $t2, $t0           
          sw    $t3, 4($sp)             
          sw    $t3, -16($fp)           
          sw    $t1, -12($fp)           
          sw    $t2, -20($fp)           
          jal   _Alloc                  
          move  $t0, $v0                
          lw    $t3, -16($fp)           
          lw    $t1, -12($fp)           
          lw    $t2, -20($fp)           
          sw    $t1, 0($t0)             
          li    $t1, 0                  
          add   $t0, $t0, $t3           
          sw    $t3, -16($fp)           
          sw    $t0, -24($fp)           
          sw    $t1, -28($fp)           
          sw    $t2, -20($fp)           
_L110:                                  
          lw    $t1, -16($fp)           
          lw    $t0, -20($fp)           
          sub   $t1, $t1, $t0           
          sw    $t1, -16($fp)           
          sw    $t0, -20($fp)           
          beqz  $t1, _L112              
_L111:                                  
          lw    $t1, -28($fp)           
          lw    $t0, -24($fp)           
          lw    $t2, -20($fp)           
          sub   $t0, $t0, $t2           
          sw    $t1, 0($t0)             
          sw    $t0, -24($fp)           
          sw    $t1, -28($fp)           
          sw    $t2, -20($fp)           
          b     _L110                   
_L112:                                  
          lw    $t0, -24($fp)           
          lw    $t1, 4($fp)             
          sw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
_L113:                                  
          lw    $t0, -8($fp)            
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L123              
_L114:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -32($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, 4($fp)             
          beqz  $t2, _L116              
_L115:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L117              
_L116:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L117:                                  
          lw    $t2, -32($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t1, 0($t1)             
          li    $t1, 10                 
          li    $t3, 0                  
          slt   $t3, $t1, $t3           
          sw    $t2, -32($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, -36($fp)           
          beqz  $t3, _L119              
_L118:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L119:                                  
          lw    $t0, -36($fp)           
          li    $t3, 4                  
          mul   $t1, $t3, $t0           
          add   $t2, $t3, $t1           
          sw    $t2, 4($sp)             
          sw    $t3, -40($fp)           
          sw    $t2, -44($fp)           
          sw    $t0, -36($fp)           
          jal   _Alloc                  
          move  $t1, $v0                
          lw    $t3, -40($fp)           
          lw    $t2, -44($fp)           
          lw    $t0, -36($fp)           
          sw    $t0, 0($t1)             
          li    $t0, 0                  
          add   $t1, $t1, $t2           
          sw    $t3, -40($fp)           
          sw    $t2, -44($fp)           
          sw    $t1, -48($fp)           
          sw    $t0, -52($fp)           
_L120:                                  
          lw    $t0, -44($fp)           
          lw    $t1, -40($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -40($fp)           
          sw    $t0, -44($fp)           
          beqz  $t0, _L122              
_L121:                                  
          lw    $t0, -52($fp)           
          lw    $t2, -48($fp)           
          lw    $t1, -40($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -40($fp)           
          sw    $t2, -48($fp)           
          sw    $t0, -52($fp)           
          b     _L120                   
_L122:                                  
          lw    $t3, -48($fp)           
          lw    $t2, -32($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          sw    $t3, 0($t1)             
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L113                   
_L123:                                  
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L124:                                  
          lw    $t0, -8($fp)            
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L135              
_L125:                                  
          li    $t0, 0                  
          sw    $t0, -56($fp)           
_L126:                                  
          lw    $t0, -56($fp)           
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -56($fp)           
          beqz  $t1, _L134              
_L127:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          lw    $t3, 4($t1)             
          lw    $t2, -4($t3)            
          slt   $t2, $t0, $t2           
          sw    $t3, -60($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, 4($fp)             
          beqz  $t2, _L129              
_L128:                                  
          lw    $t0, -8($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L130              
_L129:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L130:                                  
          lw    $t2, -60($fp)           
          lw    $t4, -56($fp)           
          lw    $t0, -8($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t2, $t1           
          lw    $t2, 0($t1)             
          lw    $t1, -4($t2)            
          slt   $t1, $t4, $t1           
          sw    $t0, -8($fp)            
          sw    $t4, -56($fp)           
          sw    $t2, -64($fp)           
          beqz  $t1, _L132              
_L131:                                  
          lw    $t1, -56($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -56($fp)           
          beqz  $t0, _L133              
_L132:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L133:                                  
          lw    $t0, -64($fp)           
          lw    $t1, -56($fp)           
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t0, $t2           
          lw    $t2, 0($t2)             
          li    $t3, 0                  
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t0, $t0, $t2           
          sw    $t3, 0($t0)             
          li    $t0, 1                  
          add   $t0, $t1, $t0           
          move  $t1, $t0                
          sw    $t1, -56($fp)           
          b     _L126                   
_L134:                                  
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L124                   
_L135:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_DenseMatrix.Set:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L136:                                  
          lw    $t2, 8($fp)             
          lw    $t3, 4($fp)             
          lw    $t1, 4($t3)             
          lw    $t0, -4($t1)            
          slt   $t0, $t2, $t0           
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t1, -8($fp)            
          beqz  $t0, _L138              
_L137:                                  
          lw    $t0, 8($fp)             
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, 8($fp)             
          beqz  $t1, _L139              
_L138:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L139:                                  
          lw    $t1, -8($fp)            
          lw    $t2, 12($fp)            
          lw    $t0, 8($fp)             
          li    $t3, 4                  
          mul   $t3, $t0, $t3           
          add   $t1, $t1, $t3           
          lw    $t3, 0($t1)             
          lw    $t1, -4($t3)            
          slt   $t1, $t2, $t1           
          sw    $t3, -12($fp)           
          sw    $t0, 8($fp)             
          sw    $t2, 12($fp)            
          beqz  $t1, _L141              
_L140:                                  
          lw    $t0, 12($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, 12($fp)            
          beqz  $t1, _L142              
_L141:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L142:                                  
          lw    $t3, -12($fp)           
          lw    $t2, 16($fp)            
          lw    $t0, 12($fp)            
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t3, $t1           
          lw    $t1, 0($t1)             
          li    $t1, 4                  
          mul   $t1, $t0, $t1           
          add   $t1, $t3, $t1           
          sw    $t2, 0($t1)             
          sw    $t0, 12($fp)            
          sw    $t2, 16($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_DenseMatrix.Get:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L143:                                  
          lw    $t3, 8($fp)             
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          lw    $t1, -4($t2)            
          slt   $t1, $t3, $t1           
          sw    $t3, 8($fp)             
          sw    $t2, -8($fp)            
          sw    $t0, 4($fp)             
          beqz  $t1, _L145              
_L144:                                  
          lw    $t1, 8($fp)             
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t0, _L146              
_L145:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L146:                                  
          lw    $t2, -8($fp)            
          lw    $t3, 12($fp)            
          lw    $t1, 8($fp)             
          li    $t0, 4                  
          mul   $t0, $t1, $t0           
          add   $t0, $t2, $t0           
          lw    $t2, 0($t0)             
          lw    $t0, -4($t2)            
          slt   $t0, $t3, $t0           
          sw    $t1, 8($fp)             
          sw    $t3, 12($fp)            
          sw    $t2, -12($fp)           
          beqz  $t0, _L148              
_L147:                                  
          lw    $t0, 12($fp)            
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, 12($fp)            
          beqz  $t1, _L149              
_L148:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L149:                                  
          lw    $t1, -12($fp)           
          lw    $t0, 12($fp)            
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t1, $t1, $t2           
          lw    $t1, 0($t1)             
          sw    $t0, 12($fp)            
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseItem.Init:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L150:                                  
          lw    $t1, 16($fp)            
          lw    $t2, 12($fp)            
          lw    $t3, 8($fp)             
          lw    $t4, 4($fp)             
          lw    $t0, 4($t4)             
          sw    $t3, 4($t4)             
          lw    $t0, 8($t4)             
          sw    $t2, 8($t4)             
          lw    $t0, 12($t4)            
          sw    $t1, 12($t4)            
          sw    $t4, 4($fp)             
          sw    $t3, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t1, 16($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseItem.GetNext:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L151:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 12($t1)            
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseItem.GetY:                       # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L152:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 8($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseItem.GetData:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L153:                                  
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseItem.SetData:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L154:                                  
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

_SparseMatrix.Init:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -44           
_L155:                                  
          lw    $t1, 4($fp)             
          li    $t0, 0                  
          lw    $t2, 4($t1)             
          li    $t3, 10                 
          li    $t2, 0                  
          slt   $t2, $t3, $t2           
          sw    $t3, -12($fp)           
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L157              
_L156:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L157:                                  
          lw    $t3, -12($fp)           
          li    $t4, 4                  
          mul   $t0, $t4, $t3           
          add   $t2, $t4, $t0           
          sw    $t2, 4($sp)             
          sw    $t3, -12($fp)           
          sw    $t4, -16($fp)           
          sw    $t2, -20($fp)           
          jal   _Alloc                  
          move  $t1, $v0                
          lw    $t3, -12($fp)           
          lw    $t4, -16($fp)           
          lw    $t2, -20($fp)           
          sw    $t3, 0($t1)             
          li    $t0, 0                  
          add   $t1, $t1, $t2           
          sw    $t4, -16($fp)           
          sw    $t2, -20($fp)           
          sw    $t1, -24($fp)           
          sw    $t0, -28($fp)           
_L158:                                  
          lw    $t0, -20($fp)           
          lw    $t1, -16($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -16($fp)           
          sw    $t0, -20($fp)           
          beqz  $t0, _L160              
_L159:                                  
          lw    $t0, -28($fp)           
          lw    $t2, -24($fp)           
          lw    $t1, -16($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -16($fp)           
          sw    $t2, -24($fp)           
          sw    $t0, -28($fp)           
          b     _L158                   
_L160:                                  
          lw    $t1, -24($fp)           
          lw    $t0, 4($fp)             
          sw    $t1, 4($t0)             
          sw    $t0, 4($fp)             
_L161:                                  
          lw    $t0, -8($fp)            
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L166              
_L162:                                  
          lw    $t1, -8($fp)            
          lw    $t0, 4($fp)             
          lw    $t3, 4($t0)             
          lw    $t2, -4($t3)            
          slt   $t2, $t1, $t2           
          sw    $t0, 4($fp)             
          sw    $t3, -32($fp)           
          sw    $t1, -8($fp)            
          beqz  $t2, _L164              
_L163:                                  
          lw    $t1, -8($fp)            
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t0, _L165              
_L164:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L165:                                  
          lw    $t1, -32($fp)           
          lw    $t0, -8($fp)            
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t2, $t1, $t2           
          lw    $t2, 0($t2)             
          li    $t3, 0                  
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t1, $t1, $t2           
          sw    $t3, 0($t1)             
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L161                   
_L166:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseMatrix.Find:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L167:                                  
          lw    $t1, 8($fp)             
          lw    $t3, 4($fp)             
          lw    $t2, 4($t3)             
          lw    $t0, -4($t2)            
          slt   $t0, $t1, $t0           
          sw    $t3, 4($fp)             
          sw    $t1, 8($fp)             
          sw    $t2, -8($fp)            
          beqz  $t0, _L169              
_L168:                                  
          lw    $t0, 8($fp)             
          li    $t1, 0                  
          slt   $t1, $t0, $t1           
          sw    $t0, 8($fp)             
          beqz  $t1, _L170              
_L169:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L170:                                  
          lw    $t1, -8($fp)            
          lw    $t0, 8($fp)             
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t1, $t1, $t2           
          lw    $t1, 0($t1)             
          sw    $t1, -12($fp)           
          sw    $t0, 8($fp)             
_L171:                                  
          lw    $t0, -12($fp)           
          li    $t1, 0                  
          sne   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L175              
_L172:                                  
          lw    $t0, -12($fp)           
          lw    $t1, 12($fp)            
          sw    $t0, 4($sp)             
          lw    $t2, 0($t0)             
          lw    $t2, 16($t2)            
          sw    $t0, -12($fp)           
          sw    $t1, 12($fp)            
          jalr  $t2                     
          move  $t2, $v0                
          lw    $t0, -12($fp)           
          lw    $t1, 12($fp)            
          seq   $t2, $t2, $t1           
          sw    $t0, -12($fp)           
          sw    $t1, 12($fp)            
          beqz  $t2, _L174              
_L173:                                  
          lw    $t0, -12($fp)           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L174:                                  
          lw    $t0, -12($fp)           
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 12($t0)            
          jalr  $t0                     
          move  $t0, $v0                
          sw    $t0, -12($fp)           
          b     _L171                   
_L175:                                  
          li    $t0, 0                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_SparseMatrix.Set:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -40           
_L176:                                  
          lw    $t2, 12($fp)            
          lw    $t3, 8($fp)             
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t2, 12($sp)            
          lw    $t1, 0($t0)             
          lw    $t1, 28($t1)            
          sw    $t3, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t0, 4($fp)             
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t3, 8($fp)             
          lw    $t2, 12($fp)            
          lw    $t0, 4($fp)             
          move  $t4, $t1                
          li    $t1, 0                  
          sne   $t1, $t4, $t1           
          sw    $t3, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t4, -8($fp)            
          sw    $t0, 4($fp)             
          beqz  $t1, _L178              
_L177:                                  
          lw    $t0, -8($fp)            
          lw    $t1, 16($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 24($t0)            
          sw    $t1, 16($fp)            
          jalr  $t0                     
          lw    $t1, 16($fp)            
          sw    $t1, 16($fp)            
_L185:                                  
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L178:                                  
          lw    $t3, 8($fp)             
          lw    $t1, 4($fp)             
          sw    $t3, 8($fp)             
          sw    $t1, 4($fp)             
          jal   _SparseItem_New         
          move  $t0, $v0                
          lw    $t3, 8($fp)             
          lw    $t1, 4($fp)             
          lw    $t4, 4($t1)             
          lw    $t2, -4($t4)            
          slt   $t2, $t3, $t2           
          sw    $t3, 8($fp)             
          sw    $t0, -8($fp)            
          sw    $t4, -12($fp)           
          sw    $t1, 4($fp)             
          beqz  $t2, _L180              
_L179:                                  
          lw    $t1, 8($fp)             
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t0, _L181              
_L180:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L181:                                  
          lw    $t4, -12($fp)           
          lw    $t0, -8($fp)            
          lw    $t1, 16($fp)            
          lw    $t2, 12($fp)            
          lw    $t1, 8($fp)             
          lw    $t3, 4($fp)             
          li    $t5, 4                  
          mul   $t5, $t1, $t5           
          add   $t4, $t4, $t5           
          lw    $t4, 0($t4)             
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          sw    $t2, 12($sp)            
          sw    $t4, 16($sp)            
          lw    $t4, 0($t0)             
          lw    $t4, 8($t4)             
          sw    $t2, 12($fp)            
          sw    $t0, -8($fp)            
          sw    $t1, 16($fp)            
          sw    $t3, 4($fp)             
          jalr  $t4                     
          lw    $t2, 12($fp)            
          lw    $t0, -8($fp)            
          lw    $t1, 16($fp)            
          lw    $t3, 4($fp)             
          lw    $t5, 4($t3)             
          lw    $t4, -4($t5)            
          slt   $t4, $t1, $t4           
          sw    $t1, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t0, -8($fp)            
          sw    $t5, -16($fp)           
          sw    $t3, 4($fp)             
          beqz  $t4, _L183              
_L182:                                  
          lw    $t1, 8($fp)             
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t0, _L184              
_L183:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L184:                                  
          lw    $t3, -16($fp)           
          lw    $t0, -8($fp)            
          lw    $t1, 8($fp)             
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t3, $t2           
          lw    $t2, 0($t2)             
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t3, $t2           
          sw    $t0, 0($t2)             
          sw    $t1, 8($fp)             
          b     _L185                   

_SparseMatrix.Get:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -28           
_L186:                                  
          lw    $t1, 12($fp)            
          lw    $t2, 8($fp)             
          lw    $t3, 4($fp)             
          sw    $t3, 4($sp)             
          sw    $t2, 8($sp)             
          sw    $t1, 12($sp)            
          lw    $t0, 0($t3)             
          lw    $t0, 28($t0)            
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t1, 12($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t3, 4($fp)             
          lw    $t2, 8($fp)             
          lw    $t1, 12($fp)            
          move  $t4, $t0                
          li    $t0, 0                  
          sne   $t0, $t4, $t0           
          sw    $t3, 4($fp)             
          sw    $t4, -8($fp)            
          sw    $t2, 8($fp)             
          sw    $t1, 12($fp)            
          beqz  $t0, _L188              
_L187:                                  
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 20($t0)            
          jalr  $t0                     
          move  $t0, $v0                
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L188:                                  
          li    $t0, 0                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L190:                                  
          la    $t0, _STRING9           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _DenseMatrix_New        
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 24($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 20($t0)            
          jalr  $t0                     
          la    $t0, _STRING10          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _SparseMatrix_New       
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 24($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 20($t0)            
          jalr  $t0                     
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING3:
          .asciiz "SparseMatrix"        
_STRING0:
          .asciiz "Matrix"              
_STRING7:
          .asciiz "Decaf runtime error: Cannot create negative-sized array\n"
_STRING5:
          .asciiz "\t"                  
_STRING10:
          .asciiz "Sparse Rep \n"       
_STRING6:
          .asciiz "\n"                  
_STRING2:
          .asciiz "SparseItem"          
_STRING4:
          .asciiz "Main"                
_STRING9:
          .asciiz "Dense Rep \n"        
_STRING1:
          .asciiz "DenseMatrix"         
_STRING8:
          .asciiz "Decaf runtime error: Array subscript out of bounds\n"
