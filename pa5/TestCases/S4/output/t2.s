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
          move  $t1, $v0                
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
          addiu $sp, $sp, -24           
_L12:                                   
          li    $t0, 1                  
          move  $t1, $t0                
          la    $t0, _STRING1           
          li    $t0, 3                  
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          beqz  $t1, _L14               
_L13:                                   
          lw    $t0, -8($fp)            
          li    $t1, 5                  
          mul   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
_L14:                                   
          lw    $t1, -12($fp)           
          lw    $t0, -8($fp)            
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintBool              
          lw    $t0, -8($fp)            
          la    $t1, _STRING2           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
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
