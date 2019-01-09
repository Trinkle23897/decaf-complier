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
_L10:                                   
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
          addiu $sp, $sp, -16           
_L11:                                   
          li    $t0, 3                  
          move  $s4, $t0                
          move  $t0, $s4                
          move  $s3, $t0                
          move  $s2, $s3                
          move  $s1, $s2                
          move  $s0, $s1                
          move  $t9, $s0                
          move  $t8, $t9                
          move  $t7, $t8                
          move  $t6, $t7                
          move  $t5, $t6                
          move  $t4, $t5                
          move  $t3, $t4                
          move  $t2, $t3                
          move  $t1, $t2                
          add   $t0, $s4, $t0           
          add   $t0, $t0, $s3           
          add   $t0, $t0, $s2           
          add   $t0, $t0, $s1           
          add   $t0, $t0, $s0           
          add   $t0, $t0, $t9           
          add   $t0, $t0, $t8           
          add   $t0, $t0, $t7           
          add   $t0, $t0, $t6           
          add   $t0, $t0, $t5           
          add   $t0, $t0, $t4           
          add   $t0, $t0, $t3           
          add   $t0, $t0, $t2           
          add   $t0, $t0, $t1           
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING0:
          .asciiz "Main"                
