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
          move  $t0, $v0                
          la    $t1, _Matrix            
          sw    $t1, 0($t0)             
          move  $v0, $t0                
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
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          la    $t1, _DenseMatrix       
          sw    $t1, 0($t0)             
          move  $v0, $t0                
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
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          sw    $t1, 8($t0)             
          sw    $t1, 12($t0)            
          la    $t1, _SparseItem        
          sw    $t1, 0($t0)             
          move  $v0, $t0                
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
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          la    $t1, _SparseMatrix      
          sw    $t1, 0($t0)             
          move  $v0, $t0                
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
          move  $t0, $v0                
          la    $t1, _Main              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
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
          move  $t1, $t0                
          sw    $t1, -8($fp)            
_L94:                                   
          li    $t0, 10                 
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L99               
_L95:                                   
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -12($fp)           
_L96:                                   
          li    $t0, 10                 
          lw    $t1, -12($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L98               
_L97:                                   
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          lw    $t1, -8($fp)            
          sw    $t1, 8($sp)             
          lw    $t2, -12($fp)           
          sw    $t2, 12($sp)            
          lw    $t3, 0($t0)             
          lw    $t4, 16($t3)            
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          jalr  $t4                     
          move  $t3, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          lw    $t2, -12($fp)           
          sw    $t3, 4($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          jal   _PrintInt               
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          lw    $t2, -12($fp)           
          la    $t3, _STRING5           
          sw    $t3, 4($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          lw    $t2, -12($fp)           
          li    $t3, 1                  
          add   $t4, $t2, $t3           
          move  $t2, $t4                
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          b     _L96                    
_L98:                                   
          li    $t0, 1                  
          lw    $t1, -8($fp)            
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          la    $t0, _STRING6           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, -8($fp)            
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
          move  $t1, $t0                
          sw    $t1, -8($fp)            
_L101:                                  
          li    $t0, 5                  
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L106              
_L102:                                  
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -12($fp)           
_L103:                                  
          li    $t0, 5                  
          lw    $t1, -12($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L105              
_L104:                                  
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          add   $t2, $t0, $t1           
          lw    $t3, 4($fp)             
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t2, 0($t3)             
          lw    $t4, 12($t2)            
          sw    $t3, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t4                     
          lw    $t3, 4($fp)             
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          li    $t2, 1                  
          add   $t4, $t1, $t2           
          move  $t1, $t4                
          sw    $t3, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          b     _L103                   
_L105:                                  
          li    $t0, 1                  
          lw    $t1, -8($fp)            
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -8($fp)            
          b     _L101                   
_L106:                                  
          li    $t0, 2                  
          li    $t1, 3                  
          li    $t2, 4                  
          lw    $t3, 4($fp)             
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t1, 12($t0)            
          sw    $t3, 4($fp)             
          jalr  $t1                     
          lw    $t3, 4($fp)             
          li    $t0, 4                  
          li    $t1, 6                  
          li    $t2, 2                  
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t1, 12($t0)            
          sw    $t3, 4($fp)             
          jalr  $t1                     
          lw    $t3, 4($fp)             
          li    $t0, 2                  
          li    $t1, 3                  
          li    $t2, 5                  
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t1, 12($t0)            
          sw    $t3, 4($fp)             
          jalr  $t1                     
          lw    $t3, 4($fp)             
          li    $t0, 0                  
          li    $t1, 0                  
          li    $t2, 1                  
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t1, 12($t0)            
          sw    $t3, 4($fp)             
          jalr  $t1                     
          lw    $t3, 4($fp)             
          li    $t0, 1                  
          li    $t1, 6                  
          li    $t2, 3                  
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t1, 12($t0)            
          sw    $t3, 4($fp)             
          jalr  $t1                     
          lw    $t3, 4($fp)             
          li    $t0, 7                  
          li    $t1, 7                  
          li    $t2, 7                  
          sw    $t3, 4($sp)             
          sw    $t0, 8($sp)             
          sw    $t1, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t1, 12($t0)            
          sw    $t3, 4($fp)             
          jalr  $t1                     
          lw    $t3, 4($fp)             
          sw    $t3, 4($fp)             
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
          li    $t0, 0                  
          move  $t1, $t0                
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          li    $t2, 10                 
          li    $t3, 0                  
          slt   $t4, $t2, $t3           
          sw    $t1, -8($fp)            
          sw    $t0, 4($fp)             
          sw    $t2, -12($fp)           
          beqz  $t4, _L109              
_L108:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L109:                                  
          li    $t0, 4                  
          lw    $t1, -12($fp)           
          mul   $t2, $t0, $t1           
          add   $t3, $t0, $t2           
          sw    $t3, 4($sp)             
          sw    $t3, -16($fp)           
          sw    $t1, -12($fp)           
          sw    $t0, -20($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t3, -16($fp)           
          lw    $t1, -12($fp)           
          lw    $t0, -20($fp)           
          sw    $t1, 0($t2)             
          li    $t1, 0                  
          add   $t2, $t2, $t3           
          sw    $t3, -16($fp)           
          sw    $t2, -24($fp)           
          sw    $t1, -28($fp)           
          sw    $t0, -20($fp)           
_L110:                                  
          lw    $t0, -16($fp)           
          lw    $t1, -20($fp)           
          sub   $t0, $t0, $t1           
          sw    $t0, -16($fp)           
          sw    $t1, -20($fp)           
          beqz  $t0, _L112              
_L111:                                  
          lw    $t0, -24($fp)           
          lw    $t1, -20($fp)           
          sub   $t0, $t0, $t1           
          lw    $t2, -28($fp)           
          sw    $t2, 0($t0)             
          sw    $t0, -24($fp)           
          sw    $t2, -28($fp)           
          sw    $t1, -20($fp)           
          b     _L110                   
_L112:                                  
          lw    $t0, 4($fp)             
          lw    $t1, -24($fp)           
          sw    $t1, 4($t0)             
          sw    $t0, 4($fp)             
_L113:                                  
          li    $t0, 10                 
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L123              
_L114:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t2, -4($t1)            
          lw    $t3, -8($fp)            
          slt   $t4, $t3, $t2           
          sw    $t1, -32($fp)           
          sw    $t3, -8($fp)            
          sw    $t0, 4($fp)             
          beqz  $t4, _L116              
_L115:                                  
          li    $t0, 0                  
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L117              
_L116:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L117:                                  
          li    $t0, 4                  
          lw    $t1, -8($fp)            
          mul   $t2, $t1, $t0           
          lw    $t0, -32($fp)           
          add   $t3, $t0, $t2           
          lw    $t2, 0($t3)             
          li    $t2, 10                 
          li    $t3, 0                  
          slt   $t4, $t2, $t3           
          sw    $t0, -32($fp)           
          sw    $t1, -8($fp)            
          sw    $t2, -36($fp)           
          beqz  $t4, _L119              
_L118:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L119:                                  
          li    $t0, 4                  
          lw    $t1, -36($fp)           
          mul   $t2, $t0, $t1           
          add   $t3, $t0, $t2           
          sw    $t3, 4($sp)             
          sw    $t0, -40($fp)           
          sw    $t3, -44($fp)           
          sw    $t1, -36($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t0, -40($fp)           
          lw    $t3, -44($fp)           
          lw    $t1, -36($fp)           
          sw    $t1, 0($t2)             
          li    $t1, 0                  
          add   $t2, $t2, $t3           
          sw    $t0, -40($fp)           
          sw    $t3, -44($fp)           
          sw    $t2, -48($fp)           
          sw    $t1, -52($fp)           
_L120:                                  
          lw    $t0, -44($fp)           
          lw    $t1, -40($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -40($fp)           
          sw    $t0, -44($fp)           
          beqz  $t0, _L122              
_L121:                                  
          lw    $t0, -48($fp)           
          lw    $t1, -40($fp)           
          sub   $t0, $t0, $t1           
          lw    $t2, -52($fp)           
          sw    $t2, 0($t0)             
          sw    $t1, -40($fp)           
          sw    $t0, -48($fp)           
          sw    $t2, -52($fp)           
          b     _L120                   
_L122:                                  
          li    $t0, 4                  
          lw    $t1, -8($fp)            
          mul   $t2, $t1, $t0           
          lw    $t0, -32($fp)           
          add   $t3, $t0, $t2           
          lw    $t0, -48($fp)           
          sw    $t0, 0($t3)             
          li    $t0, 1                  
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -8($fp)            
          b     _L113                   
_L123:                                  
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -8($fp)            
_L124:                                  
          li    $t0, 10                 
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L135              
_L125:                                  
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -56($fp)           
_L126:                                  
          li    $t0, 10                 
          lw    $t1, -56($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -56($fp)           
          beqz  $t2, _L134              
_L127:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t2, -4($t1)            
          lw    $t3, -8($fp)            
          slt   $t4, $t3, $t2           
          sw    $t1, -60($fp)           
          sw    $t3, -8($fp)            
          sw    $t0, 4($fp)             
          beqz  $t4, _L129              
_L128:                                  
          li    $t0, 0                  
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L130              
_L129:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L130:                                  
          li    $t0, 4                  
          lw    $t1, -8($fp)            
          mul   $t2, $t1, $t0           
          lw    $t0, -60($fp)           
          add   $t3, $t0, $t2           
          lw    $t0, 0($t3)             
          lw    $t2, -4($t0)            
          lw    $t3, -56($fp)           
          slt   $t4, $t3, $t2           
          sw    $t1, -8($fp)            
          sw    $t3, -56($fp)           
          sw    $t0, -64($fp)           
          beqz  $t4, _L132              
_L131:                                  
          li    $t0, 0                  
          lw    $t1, -56($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -56($fp)           
          beqz  $t2, _L133              
_L132:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L133:                                  
          li    $t0, 4                  
          lw    $t1, -56($fp)           
          mul   $t2, $t1, $t0           
          lw    $t0, -64($fp)           
          add   $t3, $t0, $t2           
          lw    $t2, 0($t3)             
          li    $t2, 0                  
          li    $t3, 4                  
          mul   $t4, $t1, $t3           
          add   $t3, $t0, $t4           
          sw    $t2, 0($t3)             
          li    $t0, 1                  
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -56($fp)           
          b     _L126                   
_L134:                                  
          li    $t0, 1                  
          lw    $t1, -8($fp)            
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -8($fp)            
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t2, -4($t1)            
          lw    $t3, 8($fp)             
          slt   $t4, $t3, $t2           
          sw    $t0, 4($fp)             
          sw    $t3, 8($fp)             
          sw    $t1, -8($fp)            
          beqz  $t4, _L138              
_L137:                                  
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t2, _L139              
_L138:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L139:                                  
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t1, $t0           
          lw    $t0, -8($fp)            
          add   $t3, $t0, $t2           
          lw    $t0, 0($t3)             
          lw    $t2, -4($t0)            
          lw    $t3, 12($fp)            
          slt   $t4, $t3, $t2           
          sw    $t0, -12($fp)           
          sw    $t1, 8($fp)             
          sw    $t3, 12($fp)            
          beqz  $t4, _L141              
_L140:                                  
          li    $t0, 0                  
          lw    $t1, 12($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, 12($fp)            
          beqz  $t2, _L142              
_L141:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L142:                                  
          li    $t0, 4                  
          lw    $t1, 12($fp)            
          mul   $t2, $t1, $t0           
          lw    $t0, -12($fp)           
          add   $t3, $t0, $t2           
          lw    $t2, 0($t3)             
          li    $t2, 4                  
          mul   $t3, $t1, $t2           
          add   $t2, $t0, $t3           
          lw    $t0, 16($fp)            
          sw    $t0, 0($t2)             
          sw    $t1, 12($fp)            
          sw    $t0, 16($fp)            
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t0, -4($t1)            
          lw    $t2, 8($fp)             
          slt   $t3, $t2, $t0           
          sw    $t2, 8($fp)             
          sw    $t1, -8($fp)            
          beqz  $t3, _L145              
_L144:                                  
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t2, _L146              
_L145:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L146:                                  
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t1, $t0           
          lw    $t0, -8($fp)            
          add   $t1, $t0, $t2           
          lw    $t0, 0($t1)             
          lw    $t1, -4($t0)            
          lw    $t2, 12($fp)            
          slt   $t3, $t2, $t1           
          sw    $t2, 12($fp)            
          sw    $t0, -12($fp)           
          beqz  $t3, _L148              
_L147:                                  
          li    $t0, 0                  
          lw    $t1, 12($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, 12($fp)            
          beqz  $t2, _L149              
_L148:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L149:                                  
          li    $t0, 4                  
          lw    $t1, 12($fp)            
          mul   $t2, $t1, $t0           
          lw    $t0, -12($fp)           
          add   $t1, $t0, $t2           
          lw    $t0, 0($t1)             
          move  $v0, $t0                
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t1, 8($fp)             
          sw    $t1, 4($t0)             
          lw    $t2, 8($t0)             
          lw    $t2, 12($fp)            
          sw    $t2, 8($t0)             
          lw    $t3, 12($t0)            
          lw    $t3, 16($fp)            
          sw    $t3, 12($t0)            
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t3, 16($fp)            
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
          lw    $t0, 4($fp)             
          lw    $t1, 12($t0)            
          move  $v0, $t1                
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
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          move  $v0, $t1                
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          move  $v0, $t1                
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t1, 8($fp)             
          sw    $t1, 4($t0)             
          sw    $t0, 4($fp)             
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
          li    $t0, 0                  
          move  $t1, $t0                
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          li    $t2, 10                 
          li    $t3, 0                  
          slt   $t4, $t2, $t3           
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t4, _L157              
_L156:                                  
          la    $t0, _STRING7           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L157:                                  
          li    $t0, 4                  
          lw    $t1, -12($fp)           
          mul   $t2, $t0, $t1           
          add   $t3, $t0, $t2           
          sw    $t3, 4($sp)             
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          sw    $t3, -20($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t1, -12($fp)           
          lw    $t0, -16($fp)           
          lw    $t3, -20($fp)           
          sw    $t1, 0($t2)             
          li    $t1, 0                  
          add   $t2, $t2, $t3           
          sw    $t0, -16($fp)           
          sw    $t3, -20($fp)           
          sw    $t2, -24($fp)           
          sw    $t1, -28($fp)           
_L158:                                  
          lw    $t0, -20($fp)           
          lw    $t1, -16($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -16($fp)           
          sw    $t0, -20($fp)           
          beqz  $t0, _L160              
_L159:                                  
          lw    $t0, -24($fp)           
          lw    $t1, -16($fp)           
          sub   $t0, $t0, $t1           
          lw    $t2, -28($fp)           
          sw    $t2, 0($t0)             
          sw    $t1, -16($fp)           
          sw    $t0, -24($fp)           
          sw    $t2, -28($fp)           
          b     _L158                   
_L160:                                  
          lw    $t0, 4($fp)             
          lw    $t1, -24($fp)           
          sw    $t1, 4($t0)             
          sw    $t0, 4($fp)             
_L161:                                  
          li    $t0, 10                 
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L166              
_L162:                                  
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t2, -4($t1)            
          lw    $t3, -8($fp)            
          slt   $t4, $t3, $t2           
          sw    $t0, 4($fp)             
          sw    $t1, -32($fp)           
          sw    $t3, -8($fp)            
          beqz  $t4, _L164              
_L163:                                  
          li    $t0, 0                  
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L165              
_L164:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L165:                                  
          li    $t0, 4                  
          lw    $t1, -8($fp)            
          mul   $t2, $t1, $t0           
          lw    $t0, -32($fp)           
          add   $t3, $t0, $t2           
          lw    $t2, 0($t3)             
          li    $t2, 0                  
          li    $t3, 4                  
          mul   $t4, $t1, $t3           
          add   $t3, $t0, $t4           
          sw    $t2, 0($t3)             
          li    $t0, 1                  
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -8($fp)            
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t0, -4($t1)            
          lw    $t2, 8($fp)             
          slt   $t3, $t2, $t0           
          sw    $t2, 8($fp)             
          sw    $t1, -8($fp)            
          beqz  $t3, _L169              
_L168:                                  
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t2, _L170              
_L169:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L170:                                  
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t1, $t0           
          lw    $t0, -8($fp)            
          add   $t1, $t0, $t2           
          lw    $t0, 0($t1)             
          move  $t1, $t0                
          sw    $t1, -12($fp)           
_L171:                                  
          li    $t0, 0                  
          lw    $t1, -12($fp)           
          sne   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L175              
_L172:                                  
          lw    $t0, -12($fp)           
          sw    $t0, 4($sp)             
          lw    $t1, 0($t0)             
          lw    $t2, 16($t1)            
          sw    $t0, -12($fp)           
          jalr  $t2                     
          move  $t1, $v0                
          lw    $t0, -12($fp)           
          lw    $t2, 12($fp)            
          seq   $t3, $t1, $t2           
          sw    $t0, -12($fp)           
          sw    $t2, 12($fp)            
          beqz  $t3, _L174              
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
          lw    $t1, 0($t0)             
          lw    $t0, 12($t1)            
          jalr  $t0                     
          move  $t1, $v0                
          move  $t0, $t1                
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
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          lw    $t1, 8($fp)             
          sw    $t1, 8($sp)             
          lw    $t2, 12($fp)            
          sw    $t2, 12($sp)            
          lw    $t3, 0($t0)             
          lw    $t4, 28($t3)            
          sw    $t1, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t0, 4($fp)             
          jalr  $t4                     
          move  $t3, $v0                
          lw    $t1, 8($fp)             
          lw    $t2, 12($fp)            
          lw    $t0, 4($fp)             
          move  $t4, $t3                
          li    $t3, 0                  
          sne   $t5, $t4, $t3           
          sw    $t1, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t4, -8($fp)            
          sw    $t0, 4($fp)             
          beqz  $t5, _L178              
_L177:                                  
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t1, 16($fp)            
          sw    $t1, 8($sp)             
          lw    $t2, 0($t0)             
          lw    $t0, 24($t2)            
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
          jal   _SparseItem_New         
          move  $t0, $v0                
          move  $t1, $t0                
          lw    $t0, 4($fp)             
          lw    $t2, 4($t0)             
          lw    $t3, -4($t2)            
          lw    $t4, 8($fp)             
          slt   $t5, $t4, $t3           
          sw    $t4, 8($fp)             
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          beqz  $t5, _L180              
_L179:                                  
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t2, _L181              
_L180:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L181:                                  
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t1, $t0           
          lw    $t0, -12($fp)           
          add   $t3, $t0, $t2           
          lw    $t0, 0($t3)             
          lw    $t2, -8($fp)            
          sw    $t2, 4($sp)             
          lw    $t3, 16($fp)            
          sw    $t3, 8($sp)             
          lw    $t4, 12($fp)            
          sw    $t4, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t2)             
          lw    $t5, 8($t0)             
          sw    $t1, 8($fp)             
          sw    $t4, 12($fp)            
          sw    $t2, -8($fp)            
          sw    $t3, 16($fp)            
          jalr  $t5                     
          lw    $t1, 8($fp)             
          lw    $t4, 12($fp)            
          lw    $t2, -8($fp)            
          lw    $t3, 16($fp)            
          lw    $t0, 4($fp)             
          lw    $t5, 4($t0)             
          lw    $t6, -4($t5)            
          slt   $t7, $t1, $t6           
          sw    $t1, 8($fp)             
          sw    $t4, 12($fp)            
          sw    $t2, -8($fp)            
          sw    $t3, 16($fp)            
          sw    $t5, -16($fp)           
          sw    $t0, 4($fp)             
          beqz  $t7, _L183              
_L182:                                  
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t2, _L184              
_L183:                                  
          la    $t0, _STRING8           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L184:                                  
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t1, $t0           
          lw    $t0, -16($fp)           
          add   $t3, $t0, $t2           
          lw    $t2, 0($t3)             
          li    $t2, 4                  
          mul   $t3, $t1, $t2           
          add   $t2, $t0, $t3           
          lw    $t0, -8($fp)            
          sw    $t0, 0($t2)             
          sw    $t1, 8($fp)             
          b     _L185                   

_SparseMatrix.Get:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -28           
_L186:                                  
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          lw    $t1, 8($fp)             
          sw    $t1, 8($sp)             
          lw    $t1, 12($fp)            
          sw    $t1, 12($sp)            
          lw    $t1, 0($t0)             
          lw    $t0, 28($t1)            
          jalr  $t0                     
          move  $t1, $v0                
          move  $t0, $t1                
          li    $t1, 0                  
          sne   $t2, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t2, _L188              
_L187:                                  
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t1, 0($t0)             
          lw    $t0, 20($t1)            
          jalr  $t0                     
          move  $t1, $v0                
          move  $v0, $t1                
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
          lw    $t2, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t2                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t2, 24($t0)            
          sw    $t1, -8($fp)            
          jalr  $t2                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t1, 20($t0)            
          jalr  $t1                     
          la    $t0, _STRING10          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _SparseMatrix_New       
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t2, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t2                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t2, 24($t0)            
          sw    $t1, -8($fp)            
          jalr  $t2                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t1, 20($t0)            
          jalr  $t1                     
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
