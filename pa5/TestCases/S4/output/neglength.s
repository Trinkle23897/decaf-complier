          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Main.create            



          .text                         
_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L14:                                   
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          la    $t0, _Main              
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L15:                                   
          jal   _Main_New               
          move  $t1, $v0                
          li    $t0, 1                  
          neg   $t0, $t0                
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          jalr  $t0                     
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main.create:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L16:                                   
          lw    $t1, 8($fp)             
          lw    $t2, 4($fp)             
          lw    $t0, 4($t2)             
          li    $t0, 0                  
          slt   $t0, $t1, $t0           
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t0, _L18               
_L17:                                   
          la    $t0, _STRING1           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L18:                                   
          lw    $t1, 8($fp)             
          li    $t0, 4                  
          mul   $t2, $t0, $t1           
          add   $t4, $t0, $t2           
          sw    $t4, 4($sp)             
          sw    $t1, 8($fp)             
          sw    $t4, -8($fp)            
          sw    $t0, -12($fp)           
          jal   _Alloc                  
          move  $t3, $v0                
          lw    $t1, 8($fp)             
          lw    $t4, -8($fp)            
          lw    $t0, -12($fp)           
          sw    $t1, 0($t3)             
          li    $t2, 0                  
          add   $t3, $t3, $t4           
          sw    $t1, 8($fp)             
          sw    $t4, -8($fp)            
          sw    $t3, -16($fp)           
          sw    $t2, -20($fp)           
          sw    $t0, -12($fp)           
_L19:                                   
          lw    $t1, -8($fp)            
          lw    $t0, -12($fp)           
          sub   $t1, $t1, $t0           
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
          beqz  $t1, _L21               
_L20:                                   
          lw    $t1, -20($fp)           
          lw    $t2, -16($fp)           
          lw    $t0, -12($fp)           
          sub   $t2, $t2, $t0           
          sw    $t1, 0($t2)             
          sw    $t2, -16($fp)           
          sw    $t1, -20($fp)           
          sw    $t0, -12($fp)           
          b     _L19                    
_L21:                                   
          lw    $t0, -16($fp)           
          lw    $t1, 4($fp)             
          sw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING1:
          .asciiz "Decaf runtime error: Cannot create negative-sized array\n"
_STRING0:
          .asciiz "Main"                
