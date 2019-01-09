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
_L16:                                   
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

_Main.compareString:                    # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L17:                                   
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          lw    $t1, 8($fp)             
          sw    $t1, 8($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _StringEqual            
          move  $t2, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t2, _L19               
_L18:                                   
          la    $t0, _STRING1           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L19:                                   
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          lw    $t0, 8($fp)             
          sw    $t0, 8($sp)             
          jal   _StringEqual            
          move  $t0, $v0                
          not   $t1, $t0                
          beqz  $t1, _L21               
_L20:                                   
          la    $t0, _STRING2           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L21:                                   
          la    $t0, _STRING3           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main.printCompareString:               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L23:                                   
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          la    $t1, _STRING5           
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          la    $t2, _STRING6           
          sw    $t2, 4($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _Main.compareString     
          move  $t2, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t2, 4($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          la    $t2, _STRING7           
          sw    $t2, 4($sp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _PrintString            
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L24:                                   
          la    $t0, _STRING8           
          la    $t1, _STRING9           
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          jal   _Main.printCompareString
          la    $t0, _STRING10          
          la    $t1, _STRING11          
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          jal   _Main.printCompareString
          la    $t0, _STRING12          
          la    $t1, _STRING12          
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          jal   _Main.printCompareString
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING4:
          .asciiz "\""                  
_STRING5:
          .asciiz "\" and \""           
_STRING6:
          .asciiz "\": "                
_STRING7:
          .asciiz "\n"                  
_STRING3:
          .asciiz "The impossible happens!"
_STRING2:
          .asciiz "Unequal"             
_STRING12:
          .asciiz "Hello"               
_STRING1:
          .asciiz "Equal"               
_STRING8:
          .asciiz "Jobs"                
_STRING11:
          .asciiz "CASE SENSITIVE"      
_STRING10:
          .asciiz "case sensitive"      
_STRING0:
          .asciiz "Main"                
_STRING9:
          .asciiz "Gates"               
