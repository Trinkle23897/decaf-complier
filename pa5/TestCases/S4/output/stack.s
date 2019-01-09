          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Stack:                                 # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Stack.Init             
          .word _Stack.Push             
          .word _Stack.Pop              
          .word _Stack.NumElems         

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING1                # class name



          .text                         
_Stack_New:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L23:                                   
          li    $t0, 12                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          la    $t0, _Stack             
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
_L24:                                   
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

_Stack.Init:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -40           
_L25:                                   
          lw    $t2, 4($fp)             
          lw    $t0, 8($t2)             
          li    $t1, 100                
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t0, _L27               
_L26:                                   
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L27:                                   
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
_L28:                                   
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          beqz  $t0, _L30               
_L29:                                   
          lw    $t0, -24($fp)           
          lw    $t2, -20($fp)           
          lw    $t1, -12($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -12($fp)           
          sw    $t2, -20($fp)           
          sw    $t0, -24($fp)           
          b     _L28                    
_L30:                                   
          lw    $t0, -20($fp)           
          lw    $t1, 4($fp)             
          sw    $t0, 8($t1)             
          lw    $t0, 4($t1)             
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          li    $t0, 3                  
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Stack.Push:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L31:                                   
          lw    $t3, 4($fp)             
          lw    $t2, 8($t3)             
          lw    $t1, 4($t3)             
          lw    $t0, -4($t2)            
          slt   $t0, $t1, $t0           
          sw    $t3, 4($fp)             
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
          beqz  $t0, _L33               
_L32:                                   
          lw    $t1, -12($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t0, _L34               
_L33:                                   
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L34:                                   
          lw    $t0, -12($fp)           
          lw    $t1, -8($fp)            
          lw    $t4, 8($fp)             
          lw    $t3, 4($fp)             
          li    $t2, 4                  
          mul   $t2, $t0, $t2           
          add   $t2, $t1, $t2           
          lw    $t2, 0($t2)             
          li    $t2, 4                  
          mul   $t0, $t0, $t2           
          add   $t0, $t1, $t0           
          sw    $t4, 0($t0)             
          lw    $t0, 4($t3)             
          lw    $t1, 4($t3)             
          li    $t0, 1                  
          add   $t0, $t1, $t0           
          sw    $t0, 4($t3)             
          sw    $t3, 4($fp)             
          sw    $t4, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Stack.Pop:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L35:                                   
          lw    $t2, 4($fp)             
          lw    $t1, 8($t2)             
          lw    $t0, 4($t2)             
          li    $t3, 1                  
          sub   $t3, $t0, $t3           
          lw    $t0, -4($t1)            
          slt   $t0, $t3, $t0           
          sw    $t3, -12($fp)           
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t0, _L37               
_L36:                                   
          lw    $t1, -12($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t0, _L38               
_L37:                                   
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L38:                                   
          lw    $t1, -12($fp)           
          lw    $t0, -8($fp)            
          lw    $t2, 4($fp)             
          li    $t3, 4                  
          mul   $t1, $t1, $t3           
          add   $t0, $t0, $t1           
          lw    $t0, 0($t0)             
          move  $t1, $t0                
          lw    $t0, 4($t2)             
          lw    $t3, 4($t2)             
          li    $t0, 1                  
          sub   $t0, $t3, $t0           
          sw    $t0, 4($t2)             
          sw    $t2, 4($fp)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Stack.NumElems:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L39:                                   
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Stack.main:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L40:                                   
          jal   _Stack_New              
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          li    $t0, 3                  
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          li    $t0, 7                  
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          li    $t0, 4                  
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 12($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 20($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 16($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 16($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 16($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 20($t0)            
          jalr  $t0                     
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L41:                                   
          jal   _Stack.main             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING4:
          .asciiz " "                   
_STRING2:
          .asciiz "Decaf runtime error: Cannot create negative-sized array\n"
_STRING1:
          .asciiz "Main"                
_STRING0:
          .asciiz "Stack"               
_STRING3:
          .asciiz "Decaf runtime error: Array subscript out of bounds\n"
