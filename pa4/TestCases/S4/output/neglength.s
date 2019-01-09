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
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          la    $t1, _Main              
          sw    $t1, 0($t0)             
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
_L15:                                   
          jal   _Main_New               
          move  $t0, $v0                
          li    $t1, 1                  
          neg   $t2, $t1                
          sw    $t0, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t1, 0($t0)             
          lw    $t0, 8($t1)             
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
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          li    $t1, 0                  
          lw    $t2, 8($fp)             
          slt   $t3, $t2, $t1           
          sw    $t0, 4($fp)             
          sw    $t2, 8($fp)             
          beqz  $t3, _L18               
_L17:                                   
          la    $t0, _STRING1           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          jal   _Halt                   
_L18:                                   
          li    $t0, 4                  
          lw    $t1, 8($fp)             
          mul   $t2, $t0, $t1           
          add   $t3, $t0, $t2           
          sw    $t3, 4($sp)             
          sw    $t1, 8($fp)             
          sw    $t3, -8($fp)            
          sw    $t0, -12($fp)           
          jal   _Alloc                  
          move  $t2, $v0                
          lw    $t1, 8($fp)             
          lw    $t3, -8($fp)            
          lw    $t0, -12($fp)           
          sw    $t1, 0($t2)             
          li    $t4, 0                  
          add   $t2, $t2, $t3           
          sw    $t1, 8($fp)             
          sw    $t3, -8($fp)            
          sw    $t2, -16($fp)           
          sw    $t4, -20($fp)           
          sw    $t0, -12($fp)           
_L19:                                   
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          beqz  $t0, _L21               
_L20:                                   
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          sub   $t0, $t0, $t1           
          lw    $t2, -20($fp)           
          sw    $t2, 0($t0)             
          sw    $t0, -16($fp)           
          sw    $t2, -20($fp)           
          sw    $t1, -12($fp)           
          b     _L19                    
_L21:                                   
          lw    $t0, 4($fp)             
          lw    $t1, -16($fp)           
          sw    $t1, 4($t0)             
          sw    $t0, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING1:
          .asciiz "Decaf runtime error: Cannot create negative-sized array\n"
_STRING0:
          .asciiz "Main"                
