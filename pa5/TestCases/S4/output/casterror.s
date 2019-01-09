          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name

          .data                         
          .align 2                      
_A:                                     # virtual table
          .word _Main                   # parent
          .word _STRING1                # class name



          .text                         
_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L13:                                   
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

_A_New:                                 # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L14:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          la    $t0, _A                 
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
          addiu $sp, $sp, -28           
_L15:                                   
          jal   _Main_New               
          move  $t0, $v0                
          move  $t2, $t0                
          la    $t1, _A                 
          lw    $t0, 0($t2)             
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
_L16:                                   
          lw    $t0, -16($fp)           
          lw    $t1, -12($fp)           
          seq   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          sw    $t0, -16($fp)           
          bne   $t2, $zero, _L19        
_L17:                                   
          lw    $t0, -16($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -16($fp)           
          bne   $t0, $zero, _L16        
_L18:                                   
          lw    $t1, -8($fp)            
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          lw    $t0, 0($t1)             
          lw    $t0, 4($t0)             
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          la    $t0, _A                 
          lw    $t0, 4($t0)             
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, -8($fp)            
          jal   _Halt                   
          lw    $t1, -8($fp)            
          sw    $t1, -8($fp)            
_L19:                                   
          lw    $t0, -8($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING1:
          .asciiz "A"                   
_STRING2:
          .asciiz "Decaf runtime error: "
_STRING4:
          .asciiz "\n"                  
_STRING0:
          .asciiz "Main"                
_STRING3:
          .asciiz " cannot be cast to " 
