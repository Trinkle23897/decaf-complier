          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Computer:                              # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Computer.Crash         

          .data                         
          .align 2                      
_Mac:                                   # virtual table
          .word _Computer               # parent
          .word _STRING1                # class name
          .word _Mac.Crash              

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING2                # class name



          .text                         
_Computer_New:                          # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L17:                                   
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          la    $t0, _Computer          
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Mac_New:                               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L18:                                   
          li    $t0, 12                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          la    $t0, _Mac               
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
_L19:                                   
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

_Computer.Crash:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L20:                                   
          li    $t0, 0                  
          sw    $t0, -8($fp)            
_L22:                                   
          lw    $t0, -8($fp)            
          lw    $t2, 8($fp)             
          slt   $t1, $t0, $t2           
          sw    $t2, 8($fp)             
          sw    $t0, -8($fp)            
          beqz  $t1, _L24               
_L23:                                   
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          jal   _PrintString            
_L21:                                   
          lw    $t0, -8($fp)            
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -8($fp)            
          b     _L22                    
_L24:                                   
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Mac.Crash:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L25:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L26:                                   
          jal   _Mac_New                
          move  $t0, $v0                
          move  $t1, $t0                
          li    $t0, 2                  
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 8($t0)             
          jalr  $t0                     
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING3:
          .asciiz "sad\n"               
_STRING4:
          .asciiz "ack!"                
_STRING0:
          .asciiz "Computer"            
_STRING2:
          .asciiz "Main"                
_STRING1:
          .asciiz "Mac"                 
