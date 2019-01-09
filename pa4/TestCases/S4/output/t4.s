          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Main.tester            
          .word _Main.start             



          .text                         
_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L27:                                   
          li    $t0, 12                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          sw    $t1, 8($t0)             
          la    $t1, _Main              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main.tester:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -52           
_L28:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          li    $t1, 1                  
          li    $t2, 0                  
          slt   $t3, $t1, $t2           
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t3, _L30               
_L29:                                   
          la    $t0, _STRING1           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L30:                                   
          li    $t0, 4                  
          lw    $t1, -8($fp)            
          mul   $t2, $t0, $t1           
          add   $t3, $t0, $t2           
          sw    $t3, 4($sp)             
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
          sw    $t3, -16($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t1, -8($fp)            
          lw    $t0, -12($fp)           
          lw    $t3, -16($fp)           
          sw    $t1, 0($t2)             
          li    $t1, 0                  
          add   $t2, $t2, $t3           
          sw    $t1, -24($fp)           
          sw    $t0, -12($fp)           
          sw    $t3, -16($fp)           
          sw    $t2, -20($fp)           
_L31:                                   
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          beqz  $t0, _L33               
_L32:                                   
          lw    $t0, -20($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          lw    $t2, -24($fp)           
          sw    $t2, 0($t0)             
          sw    $t2, -24($fp)           
          sw    $t1, -12($fp)           
          sw    $t0, -20($fp)           
          b     _L31                    
_L33:                                   
          lw    $t0, 4($fp)             
          lw    $t1, -20($fp)           
          sw    $t1, 8($t0)             
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 8($fp)             
          beqz  $t2, _L35               
_L34:                                   
          la    $t0, _STRING1           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L35:                                   
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t0, $t1           
          add   $t3, $t0, $t2           
          sw    $t3, 4($sp)             
          sw    $t1, 8($fp)             
          sw    $t0, -28($fp)           
          sw    $t3, -32($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t1, 8($fp)             
          lw    $t0, -28($fp)           
          lw    $t3, -32($fp)           
          sw    $t1, 0($t2)             
          li    $t1, 0                  
          add   $t2, $t2, $t3           
          sw    $t0, -28($fp)           
          sw    $t3, -32($fp)           
          sw    $t2, -36($fp)           
          sw    $t1, -40($fp)           
_L36:                                   
          lw    $t0, -32($fp)           
          lw    $t1, -28($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -28($fp)           
          sw    $t0, -32($fp)           
          beqz  $t0, _L38               
_L37:                                   
          lw    $t0, -36($fp)           
          lw    $t1, -28($fp)           
          sub   $t0, $t0, $t1           
          lw    $t2, -40($fp)           
          sw    $t2, 0($t0)             
          sw    $t1, -28($fp)           
          sw    $t0, -36($fp)           
          sw    $t2, -40($fp)           
          b     _L36                    
_L38:                                   
          lw    $t0, -36($fp)           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main.start:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -40           
_L39:                                   
          li    $t0, 1                  
          move  $t1, $t0                
          sw    $t1, -8($fp)            
_L40:                                   
          li    $t0, 5                  
          lw    $t1, -8($fp)            
          slt   $t2, $t1, $t0           
          sw    $t1, -8($fp)            
          beqz  $t2, _L44               
_L41:                                   
          li    $t0, 2                  
          lw    $t1, -8($fp)            
          rem   $t2, $t1, $t0           
          li    $t0, 0                  
          seq   $t3, $t2, $t0           
          sw    $t1, -8($fp)            
          beqz  $t3, _L43               
_L42:                                   
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          lw    $t1, -8($fp)            
          sw    $t1, 8($sp)             
          lw    $t1, 0($t0)             
          lw    $t2, 8($t1)             
          sw    $t0, 4($fp)             
          jalr  $t2                     
          move  $t1, $v0                
          lw    $t0, 4($fp)             
          move  $t2, $t1                
          sw    $t0, 4($fp)             
          sw    $t2, -12($fp)           
_L44:                                   
          li    $t0, 0                  
          lw    $t1, -12($fp)           
          lw    $t2, -4($t1)            
          slt   $t3, $t0, $t2           
          sw    $t0, -16($fp)           
          sw    $t1, -12($fp)           
          beqz  $t3, _L46               
_L45:                                   
          li    $t0, 0                  
          lw    $t1, -16($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -16($fp)           
          beqz  $t2, _L47               
_L46:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L47:                                   
          li    $t0, 4                  
          lw    $t1, -16($fp)           
          mul   $t2, $t1, $t0           
          lw    $t0, -12($fp)           
          add   $t3, $t0, $t2           
          lw    $t2, 0($t3)             
          li    $t2, 0                  
          li    $t3, 4                  
          mul   $t4, $t1, $t3           
          add   $t1, $t0, $t4           
          sw    $t2, 0($t1)             
          li    $t1, 0                  
          lw    $t2, -4($t0)            
          slt   $t3, $t1, $t2           
          sw    $t1, -20($fp)           
          sw    $t0, -12($fp)           
          beqz  $t3, _L49               
_L48:                                   
          li    $t0, 0                  
          lw    $t1, -20($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -20($fp)           
          beqz  $t2, _L50               
_L49:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L50:                                   
          li    $t0, 4                  
          lw    $t1, -20($fp)           
          mul   $t2, $t1, $t0           
          lw    $t0, -12($fp)           
          add   $t1, $t0, $t2           
          lw    $t2, 0($t1)             
          lw    $t1, -4($t0)            
          slt   $t3, $t2, $t1           
          sw    $t2, -24($fp)           
          sw    $t0, -12($fp)           
          beqz  $t3, _L52               
_L51:                                   
          li    $t0, 0                  
          lw    $t1, -24($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -24($fp)           
          beqz  $t2, _L53               
_L52:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L53:                                   
          li    $t0, 4                  
          lw    $t1, -24($fp)           
          mul   $t2, $t1, $t0           
          lw    $t0, -12($fp)           
          add   $t1, $t0, $t2           
          lw    $t2, 0($t1)             
          sw    $t2, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintInt               
          lw    $t0, -12($fp)           
          la    $t1, _STRING3           
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          lw    $t1, -4($t0)            
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintInt               
          lw    $t0, -12($fp)           
          la    $t1, _STRING3           
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          sw    $t0, -12($fp)           
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L43:                                   
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintInt               
          lw    $t0, -8($fp)            
          la    $t1, _STRING3           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t2, $t0, $t1           
          move  $t0, $t2                
          sw    $t0, -8($fp)            
          b     _L40                    

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L54:                                   
          jal   _Main_New               
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          lw    $t1, 0($t0)             
          lw    $t0, 12($t1)            
          jalr  $t0                     
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING1:
          .asciiz "Decaf runtime error: Cannot create negative-sized array\n"
_STRING3:
          .asciiz "\n"                  
_STRING0:
          .asciiz "Main"                
_STRING2:
          .asciiz "Loop "               
_STRING4:
          .asciiz "Decaf runtime error: Array subscript out of bounds\n"
