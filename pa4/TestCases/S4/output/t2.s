          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name



          .text                         
_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L11:                                   
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

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L12:                                   
          li    $t0, 1                  
          move  $t1, $t0                
          la    $t0, _STRING1           
          move  $t2, $t0                
          li    $t0, 3                  
          move  $t2, $t0                
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
          beqz  $t1, _L14               
_L13:                                   
          li    $t0, 5                  
          lw    $t1, -8($fp)            
          mul   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -8($fp)            
_L14:                                   
          lw    $t0, -12($fp)           
          sw    $t0, 4($sp)             
          jal   _PrintBool              
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING2:
          .asciiz " "                   
_STRING1:
          .asciiz "wow!"                
_STRING0:
          .asciiz "Main"                
