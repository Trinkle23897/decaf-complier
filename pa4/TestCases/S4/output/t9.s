          .text                         
          .globl main                   

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING0                # class name

          .data                         
          .align 2                      
_Base:                                  # virtual table
          .word 0                       # parent
          .word _STRING1                # class name

          .data                         
          .align 2                      
_Sub1:                                  # virtual table
          .word _Base                   # parent
          .word _STRING2                # class name

          .data                         
          .align 2                      
_Sub2:                                  # virtual table
          .word _Base                   # parent
          .word _STRING3                # class name

          .data                         
          .align 2                      
_Sub3:                                  # virtual table
          .word _Sub1                   # parent
          .word _STRING4                # class name

          .data                         
          .align 2                      
_Sub4:                                  # virtual table
          .word _Sub3                   # parent
          .word _STRING5                # class name



          .text                         
_Main_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L37:                                   
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

_Base_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L38:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Base              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Sub1_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L39:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Sub1              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Sub2_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L40:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Sub2              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Sub3_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L41:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Sub3              
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Sub4_New:                              # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L42:                                   
          li    $t0, 4                  
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          la    $t1, _Sub4              
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
          addiu $sp, $sp, -44           
_L43:                                   
          jal   _Base_New               
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, -8($fp)            
          jal   _Sub1_New               
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          move  $t2, $t0                
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          jal   _Sub2_New               
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          lw    $t2, -12($fp)           
          move  $t3, $t0                
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          sw    $t3, -16($fp)           
          jal   _Sub3_New               
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          lw    $t2, -12($fp)           
          lw    $t3, -16($fp)           
          move  $t4, $t0                
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
          sw    $t3, -16($fp)           
          sw    $t4, -20($fp)           
          jal   _Sub4_New               
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          lw    $t2, -12($fp)           
          lw    $t3, -16($fp)           
          lw    $t4, -20($fp)           
          move  $t5, $t0                
          sw    $t1, 4($sp)             
          sw    $t2, -12($fp)           
          sw    $t3, -16($fp)           
          sw    $t4, -20($fp)           
          sw    $t5, -24($fp)           
          jal   _Main.printType         
          lw    $t2, -12($fp)           
          lw    $t3, -16($fp)           
          lw    $t4, -20($fp)           
          lw    $t5, -24($fp)           
          sw    $t2, 4($sp)             
          sw    $t3, -16($fp)           
          sw    $t4, -20($fp)           
          sw    $t5, -24($fp)           
          jal   _Main.printType         
          lw    $t3, -16($fp)           
          lw    $t4, -20($fp)           
          lw    $t5, -24($fp)           
          sw    $t3, 4($sp)             
          sw    $t4, -20($fp)           
          sw    $t5, -24($fp)           
          jal   _Main.printType         
          lw    $t4, -20($fp)           
          lw    $t5, -24($fp)           
          sw    $t4, 4($sp)             
          sw    $t5, -24($fp)           
          jal   _Main.printType         
          lw    $t5, -24($fp)           
          sw    $t5, 4($sp)             
          sw    $t5, -24($fp)           
          jal   _Main.printType         
          lw    $t5, -24($fp)           
          move  $t1, $t5                
          sw    $t1, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _Main.printType         
          lw    $t1, -8($fp)            
          la    $t0, _Sub1              
          lw    $t2, 0($t1)             
          sw    $t1, -8($fp)            
          sw    $t0, -28($fp)           
          sw    $t2, -32($fp)           
_L44:                                   
          lw    $t0, -28($fp)           
          lw    $t1, -32($fp)           
          seq   $t2, $t0, $t1           
          sw    $t0, -28($fp)           
          sw    $t1, -32($fp)           
          bne   $t2, $zero, _L47        
_L45:                                   
          lw    $t0, -32($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -32($fp)           
          bne   $t0, $zero, _L44        
_L46:                                   
          la    $t0, _STRING6           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          lw    $t0, -8($fp)            
          lw    $t1, 0($t0)             
          lw    $t2, 4($t1)             
          sw    $t2, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          la    $t1, _STRING7           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          la    $t1, _Sub1              
          lw    $t2, 4($t1)             
          sw    $t2, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          la    $t1, _STRING8           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
          jal   _Halt                   
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
_L47:                                   
          lw    $t0, -8($fp)            
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          jal   _Main.printType         
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Main.printType:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -76           
_L48:                                   
          la    $t0, _Sub4              
          lw    $t1, 4($fp)             
          lw    $t2, 0($t1)             
          sw    $t1, 4($fp)             
          sw    $t0, -8($fp)            
          sw    $t2, -12($fp)           
_L49:                                   
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          seq   $t2, $t0, $t1           
          sw    $t2, -16($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          bne   $t2, $zero, _L52        
_L50:                                   
          lw    $t0, -12($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -12($fp)           
          bne   $t0, $zero, _L49        
_L51:                                   
          li    $t0, 0                  
          sw    $t0, -16($fp)           
_L52:                                   
          lw    $t0, -16($fp)           
          beqz  $t0, _L54               
_L53:                                   
          la    $t0, _STRING9           
          sw    $t0, 4($sp)             
          jal   _PrintString            
_L78:                                   
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L54:                                   
          la    $t0, _Sub3              
          lw    $t1, 4($fp)             
          lw    $t2, 0($t1)             
          sw    $t1, 4($fp)             
          sw    $t0, -20($fp)           
          sw    $t2, -24($fp)           
_L55:                                   
          lw    $t0, -20($fp)           
          lw    $t1, -24($fp)           
          seq   $t2, $t0, $t1           
          sw    $t2, -28($fp)           
          sw    $t0, -20($fp)           
          sw    $t1, -24($fp)           
          bne   $t2, $zero, _L58        
_L56:                                   
          lw    $t0, -24($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -24($fp)           
          bne   $t0, $zero, _L55        
_L57:                                   
          li    $t0, 0                  
          sw    $t0, -28($fp)           
_L58:                                   
          lw    $t0, -28($fp)           
          beqz  $t0, _L60               
_L59:                                   
          la    $t0, _STRING10          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          b     _L78                    
_L60:                                   
          la    $t0, _Sub2              
          lw    $t1, 4($fp)             
          lw    $t2, 0($t1)             
          sw    $t1, 4($fp)             
          sw    $t0, -32($fp)           
          sw    $t2, -36($fp)           
_L61:                                   
          lw    $t0, -32($fp)           
          lw    $t1, -36($fp)           
          seq   $t2, $t0, $t1           
          sw    $t0, -32($fp)           
          sw    $t1, -36($fp)           
          sw    $t2, -40($fp)           
          bne   $t2, $zero, _L64        
_L62:                                   
          lw    $t0, -36($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -36($fp)           
          bne   $t0, $zero, _L61        
_L63:                                   
          li    $t0, 0                  
          sw    $t0, -40($fp)           
_L64:                                   
          lw    $t0, -40($fp)           
          beqz  $t0, _L66               
_L65:                                   
          la    $t0, _STRING11          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          b     _L78                    
_L66:                                   
          la    $t0, _Sub1              
          lw    $t1, 4($fp)             
          lw    $t2, 0($t1)             
          sw    $t1, 4($fp)             
          sw    $t0, -44($fp)           
          sw    $t2, -48($fp)           
_L67:                                   
          lw    $t0, -44($fp)           
          lw    $t1, -48($fp)           
          seq   $t2, $t0, $t1           
          sw    $t2, -52($fp)           
          sw    $t0, -44($fp)           
          sw    $t1, -48($fp)           
          bne   $t2, $zero, _L70        
_L68:                                   
          lw    $t0, -48($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -48($fp)           
          bne   $t0, $zero, _L67        
_L69:                                   
          li    $t0, 0                  
          sw    $t0, -52($fp)           
_L70:                                   
          lw    $t0, -52($fp)           
          beqz  $t0, _L72               
_L71:                                   
          la    $t0, _STRING12          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          b     _L78                    
_L72:                                   
          la    $t0, _Base              
          lw    $t1, 4($fp)             
          lw    $t2, 0($t1)             
          sw    $t1, 4($fp)             
          sw    $t0, -56($fp)           
          sw    $t2, -60($fp)           
_L73:                                   
          lw    $t0, -56($fp)           
          lw    $t1, -60($fp)           
          seq   $t2, $t0, $t1           
          sw    $t2, -64($fp)           
          sw    $t0, -56($fp)           
          sw    $t1, -60($fp)           
          bne   $t2, $zero, _L76        
_L74:                                   
          lw    $t0, -60($fp)           
          lw    $t0, 0($t0)             
          sw    $t0, -60($fp)           
          bne   $t0, $zero, _L73        
_L75:                                   
          li    $t0, 0                  
          sw    $t0, -64($fp)           
_L76:                                   
          lw    $t0, -64($fp)           
          beqz  $t0, _L78               
_L77:                                   
          la    $t0, _STRING13          
          sw    $t0, 4($sp)             
          jal   _PrintString            
          b     _L78                    




          .data                         
_STRING8:
          .asciiz "\n"                  
_STRING1:
          .asciiz "Base"                
_STRING11:
          .asciiz "Sub2\n"              
_STRING12:
          .asciiz "Sub1\n"              
_STRING5:
          .asciiz "Sub4"                
_STRING6:
          .asciiz "Decaf runtime error: "
_STRING4:
          .asciiz "Sub3"                
_STRING3:
          .asciiz "Sub2"                
_STRING2:
          .asciiz "Sub1"                
_STRING13:
          .asciiz "Base\n"              
_STRING0:
          .asciiz "Main"                
_STRING9:
          .asciiz "Sub4\n"              
_STRING7:
          .asciiz " cannot be cast to " 
_STRING10:
          .asciiz "Sub3\n"              
