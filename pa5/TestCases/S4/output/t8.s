          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Animal:                                # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _Animal.InitAnimal      
          .word _Animal.GetHeight       
          .word _Animal.GetMom          

          .data                         
          .align 2                      
_Cow:                                   # virtual table
          .word _Animal                 # parent
          .word _STRING1                # class name
          .word _Animal.InitAnimal      
          .word _Animal.GetHeight       
          .word _Animal.GetMom          
          .word _Cow.InitCow            
          .word _Cow.IsSpottedCow       

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING2                # class name



          .text                         
_Animal_New:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L17:                                   
          li    $t0, 12                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          la    $t0, _Animal            
          sw    $t0, 0($t1)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Cow_New:                               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L18:                                   
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          sw    $t1, 8($t0)             
          sw    $t1, 12($t0)            
          la    $t1, _Cow               
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

_Animal.InitAnimal:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L20:                                   
          lw    $t1, 12($fp)            
          lw    $t2, 8($fp)             
          lw    $t3, 4($fp)             
          lw    $t0, 4($t3)             
          sw    $t2, 4($t3)             
          lw    $t0, 8($t3)             
          sw    $t1, 8($t3)             
          sw    $t3, 4($fp)             
          sw    $t2, 8($fp)             
          sw    $t1, 12($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Animal.GetHeight:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L21:                                   
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Animal.GetMom:                         # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L22:                                   
          lw    $t1, 4($fp)             
          lw    $t0, 8($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Cow.InitCow:                           # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -24           
_L23:                                   
          lw    $t1, 16($fp)            
          lw    $t2, 12($fp)            
          lw    $t3, 8($fp)             
          lw    $t4, 4($fp)             
          lw    $t0, 12($t4)            
          sw    $t1, 12($t4)            
          sw    $t4, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t2, 12($sp)            
          lw    $t0, 0($t4)             
          lw    $t0, 8($t0)             
          sw    $t4, 4($fp)             
          sw    $t3, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t1, 16($fp)            
          jalr  $t0                     
          lw    $t4, 4($fp)             
          lw    $t3, 8($fp)             
          lw    $t2, 12($fp)            
          lw    $t1, 16($fp)            
          sw    $t4, 4($fp)             
          sw    $t3, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t1, 16($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Cow.IsSpottedCow:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L24:                                   
          lw    $t1, 4($fp)             
          lw    $t0, 12($t1)            
          sw    $t1, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -36           
_L25:                                   
          jal   _Cow_New                
          move  $t0, $v0                
          move  $t1, $t0                
          li    $t3, 5                  
          li    $t2, 0                  
          li    $t0, 1                  
          sw    $t1, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t2, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t1)             
          lw    $t0, 20($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          move  $t0, $t1                
          sw    $t0, 4($sp)             
          lw    $t2, 0($t0)             
          lw    $t2, 16($t2)            
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
          jalr  $t2                     
          move  $t2, $v0                
          lw    $t1, -8($fp)            
          lw    $t0, -12($fp)           
          la    $t2, _STRING3           
          sw    $t2, 4($sp)             
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t1, -8($fp)            
          lw    $t0, -12($fp)           
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 24($t1)            
          sw    $t0, -12($fp)           
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t0, -12($fp)           
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintBool              
          lw    $t0, -12($fp)           
          la    $t1, _STRING4           
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 12($t0)            
          jalr  $t0                     
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING4:
          .asciiz "    height: "        
_STRING0:
          .asciiz "Animal"              
_STRING3:
          .asciiz "spots: "             
_STRING1:
          .asciiz "Cow"                 
_STRING2:
          .asciiz "Main"                
