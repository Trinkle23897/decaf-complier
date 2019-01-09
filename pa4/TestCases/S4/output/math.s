          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Math:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING1                # class name



          .text                         
_Math_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L28:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Math              
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
_L29:                                   
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

_Math.abs:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L30:                                   
          li    $t0, 0                  
          lw    $t1, 4($fp)             
          sge   $t2, $t1, $t0           
          sw    $t1, 4($fp)             
          beqz  $t2, _L32               
_L31:                                   
          lw    $t0, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L32:                                   
          lw    $t0, 4($fp)             
          neg   $t1, $t0                
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Math.pow:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L34:                                   
          li    $t0, 1                  
          move  $t1, $t0                
          li    $t0, 0                  
          move  $t2, $t0                
          sw    $t2, -8($fp)            
          sw    $t1, -12($fp)           
_L36:                                   
          lw    $t0, -8($fp)            
          lw    $t1, 8($fp)             
          slt   $t2, $t0, $t1           
          sw    $t0, -8($fp)            
          sw    $t1, 8($fp)             
          beqz  $t2, _L38               
_L37:                                   
          lw    $t0, -12($fp)           
          lw    $t1, 4($fp)             
          mul   $t2, $t0, $t1           
          move  $t0, $t2                
          sw    $t1, 4($fp)             
          sw    $t0, -12($fp)           
_L35:                                   
          li    $t0, 1                  
          lw    $t1, -8($fp)            
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -8($fp)            
          b     _L36                    
_L38:                                   
          lw    $t0, -12($fp)           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Math.log:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L39:                                   
          li    $t0, 1                  
          lw    $t1, 4($fp)             
          slt   $t2, $t1, $t0           
          sw    $t1, 4($fp)             
          beqz  $t2, _L41               
_L40:                                   
          li    $t0, 1                  
          neg   $t1, $t0                
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L41:                                   
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -8($fp)            
_L42:                                   
          li    $t0, 1                  
          lw    $t1, 4($fp)             
          sgt   $t2, $t1, $t0           
          sw    $t1, 4($fp)             
          beqz  $t2, _L44               
_L43:                                   
          li    $t0, 1                  
          lw    $t1, -8($fp)            
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          li    $t0, 2                  
          lw    $t2, 4($fp)             
          div   $t3, $t2, $t0           
          move  $t2, $t3                
          sw    $t2, 4($fp)             
          sw    $t1, -8($fp)            
          b     _L42                    
_L44:                                   
          lw    $t0, -8($fp)            
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Math.max:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L45:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          sgt   $t2, $t0, $t1           
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t2, _L47               
_L46:                                   
          lw    $t0, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L47:                                   
          lw    $t0, 8($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Math.min:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L49:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($fp)             
          slt   $t2, $t0, $t1           
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          beqz  $t2, _L51               
_L50:                                   
          lw    $t0, 4($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L51:                                   
          lw    $t0, 8($fp)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -20           
_L53:                                   
          li    $t0, 1                  
          neg   $t1, $t0                
          sw    $t1, 4($sp)             
          jal   _Math.abs               
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 2                  
          li    $t1, 3                  
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          jal   _Math.pow               
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Math.log               
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 1                  
          li    $t1, 2                  
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          jal   _Math.max               
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 1                  
          li    $t1, 2                  
          sw    $t0, 4($sp)             
          sw    $t1, 8($sp)             
          jal   _Math.min               
          move  $t0, $v0                
          sw    $t0, 4($sp)             
          jal   _PrintInt               
          la    $t0, _STRING2           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING2:
          .asciiz "\n"                  
_STRING0:
          .asciiz "Math"                
_STRING1:
          .asciiz "Main"                
