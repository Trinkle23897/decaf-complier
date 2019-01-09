          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Cow:                                   # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Cow.Init               
          .word _Cow.Moo                

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING1                # class name



          .text                         
_Cow_New:                               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L13:                                   
          li    $t0, 12                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          la    $t0, _Cow               
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
_L14:                                   
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

_Cow.Init:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L15:                                   
          lw    $t1, 12($fp)            
          lw    $t2, 8($fp)             
          lw    $t3, 4($fp)             
          lw    $t0, 8($t3)             
          sw    $t2, 8($t3)             
          lw    $t0, 4($t3)             
          sw    $t1, 4($t3)             
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t1, 12($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Cow.Moo:                               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L16:                                   
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          lw    $t0, 8($t1)             
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintInt               
          lw    $t1, 4($fp)             
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          sw    $t1, 4($fp)             
          jal   _PrintString            
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -28           
_L17:                                   
          jal   _Cow_New                
          move  $t0, $v0                
          move  $t2, $t0                
          li    $t1, 100                
          li    $t0, 122                
          sw    $t2, 4($sp)             
          sw    $t1, 8($sp)             
          sw    $t0, 12($sp)            
          lw    $t0, 0($t2)             
          lw    $t0, 8($t0)             
          sw    $t2, -8($fp)            
          jalr  $t0                     
          lw    $t2, -8($fp)            
          sw    $t2, 4($sp)             
          lw    $t0, 0($t2)             
          lw    $t0, 12($t0)            
          jalr  $t0                     
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING2:
          .asciiz " "                   
_STRING0:
          .asciiz "Cow"                 
_STRING3:
          .asciiz "\n"                  
_STRING1:
          .asciiz "Main"                
