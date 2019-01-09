          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name

          .data                         
          .align 2                      
_Hoo:                                   # virtual table
          .word 0                       # parent
          .word _STRING1                # class name
          .word _Hoo.printNumbers       

          .data                         
          .align 2                      
_Goo:                                   # virtual table
          .word _Hoo                    # parent
          .word _STRING2                # class name
          .word _Goo.printNumbers       



          .text                         
_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L21:                                   
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

_Hoo_New:                               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L22:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Hoo               
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Goo_New:                               # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L23:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Goo               
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
          addiu $sp, $sp, -48           
_L24:                                   
          jal   _Main_New               
          move  $t0, $v0                
          move  $t1, $t0                
          lw    $t0, 4($t1)             
          li    $t0, 4                  
          sw    $t0, 4($t1)             
          sw    $t1, -8($fp)            
          jal   _Goo_New                
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          move  $t2, $t0                
          lw    $t0, 4($t1)             
          sw    $t2, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t0, 0($t2)             
          lw    $t3, 8($t0)             
          sw    $t2, -12($fp)           
          sw    $t1, -8($fp)            
          jalr  $t3                     
          move  $t0, $v0                
          lw    $t2, -12($fp)           
          lw    $t1, -8($fp)            
          la    $t0, _Goo               
          lw    $t3, 0($t2)             
          sw    $t0, -16($fp)           
          sw    $t3, -20($fp)           
          sw    $t2, -12($fp)           
          sw    $t1, -8($fp)            
_L25:                                   
          lw    $t0, -16($fp)           
          lw    $t1, -20($fp)           
          seq   $t2, $t0, $t1           
          sw    $t2, -24($fp)           
          sw    $t0, -16($fp)           
          sw    $t1, -20($fp)           
          bne   $t2, $zero, _L28        
_L26:                                   
          lw    $t0, -20($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -20($fp)           
          bne   $t0, $zero, _L25        
_L27:                                   
          li    $t0, 0                  
          sw    $t0, -24($fp)           
_L28:                                   
          lw    $t0, -24($fp)           
          sw    $t0, 4($sp)             
          jal   _PrintBool              
          la    $t0, _Goo               
          lw    $t1, -12($fp)           
          lw    $t2, 0($t1)             
          sw    $t0, -28($fp)           
          sw    $t1, -12($fp)           
          sw    $t2, -32($fp)           
_L29:                                   
          lw    $t0, -28($fp)           
          lw    $t1, -32($fp)           
          seq   $t2, $t0, $t1           
          sw    $t0, -28($fp)           
          sw    $t1, -32($fp)           
          bne   $t2, $zero, _L32        
_L30:                                   
          lw    $t0, -32($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -32($fp)           
          bne   $t0, $zero, _L29        
_L31:                                   
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          lw    $t0, -12($fp)           
          lw    $t1, 0($t0)             
          lw    $t2, 4($t1)             
          sw    $t2, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          la    $t1, _STRING4           
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          la    $t1, _Goo               
          lw    $t2, 4($t1)             
          sw    $t2, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          la    $t1, _STRING5           
          sw    $t1, 4($sp)             
          sw    $t0, -12($fp)           
          jal   _PrintString            
          lw    $t0, -12($fp)           
          sw    $t0, -12($fp)           
          jal   _Halt                   
          lw    $t0, -12($fp)           
          sw    $t0, -12($fp)           
_L32:                                   
          lw    $t0, -12($fp)           
          move  $t1, $t0                
          lw    $t0, -8($fp)            
          lw    $t2, 4($t0)             
          sw    $t1, 4($sp)             
          sw    $t2, 8($sp)             
          lw    $t0, 0($t1)             
          lw    $t1, 8($t0)             
          jalr  $t1                     
          move  $t0, $v0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Hoo.printNumbers:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L33:                                   
          li    $t0, 10                 
          lw    $t1, 8($fp)             
          slt   $t2, $t0, $t1           
          sw    $t1, 8($fp)             
          beqz  $t2, _L35               
_L34:                                   
          li    $t0, 10                 
          move  $t1, $t0                
          sw    $t1, 8($fp)             
_L35:                                   
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -8($fp)            
_L36:                                   
          lw    $t0, -8($fp)            
          lw    $t1, 8($fp)             
          slt   $t2, $t0, $t1           
          sw    $t1, 8($fp)             
          sw    $t0, -8($fp)            
          beqz  $t2, _L38               
_L37:                                   
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintInt               
          lw    $t0, -8($fp)            
          li    $t1, 2                  
          mul   $t2, $t0, $t1           
          move  $t0, $t2                
          sw    $t0, -8($fp)            
          b     _L36                    
_L38:                                   
          la    $t0, _STRING5           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          lw    $t0, -8($fp)            
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Goo.printNumbers:                      # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L39:                                   
          lw    $t0, 8($fp)             
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          li    $t0, 1                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING3:
          .asciiz "Decaf runtime error: "
_STRING2:
          .asciiz "Goo"                 
_STRING1:
          .asciiz "Hoo"                 
_STRING5:
          .asciiz "\n"                  
_STRING0:
          .asciiz "Main"                
_STRING4:
          .asciiz " cannot be cast to " 
