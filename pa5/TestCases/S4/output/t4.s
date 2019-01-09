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
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          la    $t0, _Main              
          sw    $t0, 0($t1)             
          move  $v0, $t1                
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
          lw    $t2, 4($fp)             
          lw    $t0, 8($t2)             
          li    $t1, 1                  
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          beqz  $t0, _L30               
_L29:                                   
          la    $t0, _STRING1           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L30:                                   
          lw    $t1, -8($fp)            
          li    $t3, 4                  
          mul   $t0, $t3, $t1           
          add   $t2, $t3, $t0           
          sw    $t2, 4($sp)             
          sw    $t1, -8($fp)            
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          jal   _Alloc                  
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          lw    $t3, -12($fp)           
          lw    $t2, -16($fp)           
          sw    $t1, 0($t0)             
          li    $t1, 0                  
          add   $t0, $t0, $t2           
          sw    $t1, -24($fp)           
          sw    $t3, -12($fp)           
          sw    $t2, -16($fp)           
          sw    $t0, -20($fp)           
_L31:                                   
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          beqz  $t0, _L33               
_L32:                                   
          lw    $t1, -24($fp)           
          lw    $t0, -20($fp)           
          lw    $t2, -12($fp)           
          sub   $t0, $t0, $t2           
          sw    $t1, 0($t0)             
          sw    $t1, -24($fp)           
          sw    $t2, -12($fp)           
          sw    $t0, -20($fp)           
          b     _L31                    
_L33:                                   
          lw    $t0, -20($fp)           
          lw    $t1, 8($fp)             
          lw    $t2, 4($fp)             
          sw    $t0, 8($t2)             
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t0, _L35               
_L34:                                   
          la    $t0, _STRING1           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L35:                                   
          lw    $t1, 8($fp)             
          li    $t4, 4                  
          mul   $t0, $t4, $t1           
          add   $t3, $t4, $t0           
          sw    $t3, 4($sp)             
          sw    $t1, 8($fp)             
          sw    $t4, -28($fp)           
          sw    $t3, -32($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t1, 8($fp)             
          lw    $t4, -28($fp)           
          lw    $t3, -32($fp)           
          sw    $t1, 0($t2)             
          li    $t0, 0                  
          add   $t2, $t2, $t3           
          sw    $t1, 8($fp)             
          sw    $t4, -28($fp)           
          sw    $t3, -32($fp)           
          sw    $t2, -36($fp)           
          sw    $t0, -40($fp)           
_L36:                                   
          lw    $t0, -32($fp)           
          lw    $t1, -28($fp)           
          sub   $t0, $t0, $t1           
          sw    $t1, -28($fp)           
          sw    $t0, -32($fp)           
          beqz  $t0, _L38               
_L37:                                   
          lw    $t0, -40($fp)           
          lw    $t2, -36($fp)           
          lw    $t1, -28($fp)           
          sub   $t2, $t2, $t1           
          sw    $t0, 0($t2)             
          sw    $t1, -28($fp)           
          sw    $t2, -36($fp)           
          sw    $t0, -40($fp)           
          b     _L36                    
_L38:                                   
          lw    $t2, -36($fp)           
          move  $v0, $t2                
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
          sw    $t0, -8($fp)            
_L40:                                   
          lw    $t0, -8($fp)            
          li    $t1, 5                  
          slt   $t1, $t0, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L44               
_L41:                                   
          lw    $t0, -8($fp)            
          li    $t1, 2                  
          rem   $t2, $t0, $t1           
          li    $t1, 0                  
          seq   $t1, $t2, $t1           
          sw    $t0, -8($fp)            
          beqz  $t1, _L43               
_L42:                                   
          lw    $t0, -8($fp)            
          lw    $t1, 4($fp)             
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          sw    $t1, 4($fp)             
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          sw    $t0, -12($fp)           
_L44:                                   
          lw    $t0, -12($fp)           
          li    $t2, 0                  
          lw    $t1, -4($t0)            
          slt   $t1, $t2, $t1           
          sw    $t2, -16($fp)           
          sw    $t0, -12($fp)           
          beqz  $t1, _L46               
_L45:                                   
          lw    $t1, -16($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -16($fp)           
          beqz  $t0, _L47               
_L46:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L47:                                   
          lw    $t1, -16($fp)           
          lw    $t0, -12($fp)           
          li    $t2, 4                  
          mul   $t2, $t1, $t2           
          add   $t2, $t0, $t2           
          lw    $t2, 0($t2)             
          li    $t3, 0                  
          li    $t2, 4                  
          mul   $t1, $t1, $t2           
          add   $t1, $t0, $t1           
          sw    $t3, 0($t1)             
          li    $t2, 0                  
          lw    $t1, -4($t0)            
          slt   $t1, $t2, $t1           
          sw    $t2, -20($fp)           
          sw    $t0, -12($fp)           
          beqz  $t1, _L49               
_L48:                                   
          lw    $t1, -20($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -20($fp)           
          beqz  $t0, _L50               
_L49:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L50:                                   
          lw    $t1, -20($fp)           
          lw    $t0, -12($fp)           
          li    $t2, 4                  
          mul   $t1, $t1, $t2           
          add   $t1, $t0, $t1           
          lw    $t2, 0($t1)             
          lw    $t1, -4($t0)            
          slt   $t1, $t2, $t1           
          sw    $t2, -24($fp)           
          sw    $t0, -12($fp)           
          beqz  $t1, _L52               
_L51:                                   
          lw    $t1, -24($fp)           
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t1, -24($fp)           
          beqz  $t0, _L53               
_L52:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L53:                                   
          lw    $t1, -24($fp)           
          lw    $t0, -12($fp)           
          li    $t2, 4                  
          mul   $t1, $t1, $t2           
          add   $t1, $t0, $t1           
          lw    $t1, 0($t1)             
          sw    $t1, 4($sp)             
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
          lw    $t0, -8($fp)            
          la    $t1, _STRING2           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
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
          add   $t0, $t0, $t1           
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
          lw    $t0, 0($t0)             
          lw    $t0, 12($t0)            
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
