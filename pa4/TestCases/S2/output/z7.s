          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Father:                                # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Father.method          

          .data                         
          .align 2                      
_Child:                                 # virtual table
          .word _Father                 # parent
          .word _STRING1                # class name
          .word _Father.method          
          .word _Child.start            

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING2                # class name



          .text                         
_Father_New:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L15:                                   
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          la    $t1, _Father            
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Child_New:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L16:                                   
          li    $t0, 8                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          la    $t1, _Child             
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L17:                                   
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

_Father.method:                         # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L18:                                   
          li    $t0, 0                  
          lw    $t1, 8($fp)             
          sgt   $t2, $t1, $t0           
          li    $t0, 10                 
          slt   $t3, $t1, $t0           
          and   $t0, $t2, $t3           
          sw    $t1, 8($fp)             
          beqz  $t0, _L20               
_L19:                                   
          li    $t0, 3                  
          lw    $t1, 8($fp)             
          sub   $t2, $t1, $t0           
          move  $t1, $t2                
          lw    $t0, 4($fp)             
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t1, 0($t0)             
          lw    $t0, 8($t1)             
          jalr  $t0                     
          move  $t1, $v0                
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L20:                                   
          lw    $t0, 8($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Child.start:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L21:                                   
          lw    $t0, 4($fp)             
          move  $t2, $t0                
          lw    $t2, 4($t2)             
          li    $t2, 5                  
          sw    $t2, 4($t2)             
          li    $t1, 0                  
          move  $t2, $t1                
          lw    $t1, 4($t0)             
          sw    $t1, 4($sp)             
          sw    $t0, 4($fp)             
          jal   _PrintInt               
          lw    $t0, 4($fp)             
          sw    $t0, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L22:                                   
          jal   _Child_New              
          move  $t0, $v0                
          move  $t1, $t0                
          li    $t0, 5                  
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t2, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t2                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t1, 12($t0)            
          jalr  $t1                     
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING3:
          .asciiz "\n"                  
_STRING0:
          .asciiz "Father"              
_STRING1:
          .asciiz "Child"               
_STRING2:
          .asciiz "Main"                
