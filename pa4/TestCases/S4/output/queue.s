          .text                         
          .globl main                   

          .data                         
          .align 2                      
_QueueItem:                             # virtual table
          .word 0                       # parent
          .word _STRING0                # class name
          .word _QueueItem.Init         
          .word _QueueItem.GetData      
          .word _QueueItem.GetNext      
          .word _QueueItem.GetPrev      
          .word _QueueItem.SetNext      
          .word _QueueItem.SetPrev      

          .data                         
          .align 2                      
_Queue:                                 # virtual table
          .word 0                       # parent
          .word _STRING1                # class name
          .word _Queue.Init             
          .word _Queue.EnQueue          
          .word _Queue.DeQueue          

          .data                         
          .align 2                      
_Main:                                  # virtual table
          .word 0                       # parent
          .word _STRING2                # class name



          .text                         
_QueueItem_New:                         # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L35:                                   
          li    $t0, 16                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          sw    $t1, 8($t0)             
          sw    $t1, 12($t0)            
          la    $t1, _QueueItem         
          sw    $t1, 0($t0)             
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Queue_New:                             # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -16           
_L36:                                   
          li    $t0, 12                 
          sw    $t0, 4($sp)             
          jal   _Alloc                  
          move  $t0, $v0                
          li    $t1, 0                  
          sw    $t1, 4($t0)             
          sw    $t1, 8($t0)             
          la    $t1, _Queue             
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

_QueueItem.Init:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L38:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          lw    $t1, 8($fp)             
          sw    $t1, 4($t0)             
          lw    $t2, 8($t0)             
          lw    $t2, 12($fp)            
          sw    $t2, 8($t0)             
          lw    $t3, 12($t2)            
          sw    $t0, 12($t2)            
          lw    $t3, 12($t0)            
          lw    $t3, 16($fp)            
          sw    $t3, 12($t0)            
          lw    $t4, 8($t3)             
          sw    $t0, 8($t3)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t3, 16($fp)            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_QueueItem.GetData:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L39:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 4($t0)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_QueueItem.GetNext:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L40:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_QueueItem.GetPrev:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L41:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 12($t0)            
          move  $v0, $t1                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_QueueItem.SetNext:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L42:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          lw    $t1, 8($fp)             
          sw    $t1, 8($t0)             
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_QueueItem.SetPrev:                     # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L43:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 12($t0)            
          lw    $t1, 8($fp)             
          sw    $t1, 12($t0)            
          sw    $t0, 4($fp)             
          sw    $t1, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Queue.Init:                            # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -28           
_L44:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          sw    $t0, 4($fp)             
          jal   _QueueItem_New          
          move  $t1, $v0                
          lw    $t0, 4($fp)             
          sw    $t1, 8($t0)             
          lw    $t1, 8($t0)             
          li    $t2, 0                  
          lw    $t3, 8($t0)             
          lw    $t4, 8($t0)             
          sw    $t1, 4($sp)             
          sw    $t2, 8($sp)             
          sw    $t3, 12($sp)            
          sw    $t4, 16($sp)            
          lw    $t2, 0($t1)             
          lw    $t1, 8($t2)             
          sw    $t0, 4($fp)             
          jalr  $t1                     
          lw    $t0, 4($fp)             
          sw    $t0, 4($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Queue.EnQueue:                         # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -32           
_L45:                                   
          jal   _QueueItem_New          
          move  $t0, $v0                
          move  $t1, $t0                
          lw    $t0, 4($fp)             
          lw    $t2, 8($t0)             
          sw    $t2, 4($sp)             
          lw    $t3, 0($t2)             
          lw    $t2, 16($t3)            
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t2                     
          move  $t3, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          lw    $t2, 8($t0)             
          sw    $t1, 4($sp)             
          lw    $t4, 8($fp)             
          sw    $t4, 8($sp)             
          sw    $t3, 12($sp)            
          sw    $t2, 16($sp)            
          lw    $t2, 0($t1)             
          lw    $t1, 8($t2)             
          sw    $t0, 4($fp)             
          sw    $t4, 8($fp)             
          jalr  $t1                     
          lw    $t0, 4($fp)             
          lw    $t4, 8($fp)             
          sw    $t0, 4($fp)             
          sw    $t4, 8($fp)             
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

_Queue.DeQueue:                         # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -36           
_L46:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          sw    $t1, 4($sp)             
          lw    $t2, 0($t1)             
          lw    $t1, 20($t2)            
          sw    $t0, 4($fp)             
          jalr  $t1                     
          move  $t2, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          seq   $t3, $t2, $t1           
          sw    $t0, 4($fp)             
          beqz  $t3, _L48               
_L47:                                   
          la    $t0, _STRING3           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 0                  
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     
_L48:                                   
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t1, 20($t0)            
          jalr  $t1                     
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t2, 12($t0)            
          sw    $t1, -8($fp)            
          jalr  $t2                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          move  $t2, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t3, 20($t0)            
          sw    $t2, -12($fp)           
          sw    $t1, -8($fp)            
          jalr  $t3                     
          move  $t0, $v0                
          lw    $t2, -12($fp)           
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t3, 0($t1)             
          lw    $t4, 16($t3)            
          sw    $t2, -12($fp)           
          sw    $t0, -16($fp)           
          sw    $t1, -8($fp)            
          jalr  $t4                     
          move  $t3, $v0                
          lw    $t2, -12($fp)           
          lw    $t0, -16($fp)           
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t3, 8($sp)             
          lw    $t3, 0($t0)             
          lw    $t0, 24($t3)            
          sw    $t2, -12($fp)           
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t2, -12($fp)           
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t3, 16($t0)            
          sw    $t2, -12($fp)           
          sw    $t1, -8($fp)            
          jalr  $t3                     
          move  $t0, $v0                
          lw    $t2, -12($fp)           
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t3, 0($t1)             
          lw    $t1, 20($t3)            
          sw    $t0, -20($fp)           
          sw    $t2, -12($fp)           
          jalr  $t1                     
          move  $t3, $v0                
          lw    $t0, -20($fp)           
          lw    $t2, -12($fp)           
          sw    $t0, 4($sp)             
          sw    $t3, 8($sp)             
          lw    $t1, 0($t0)             
          lw    $t0, 28($t1)            
          sw    $t2, -12($fp)           
          jalr  $t0                     
          lw    $t2, -12($fp)           
          sw    $t2, -12($fp)           
_L49:                                   
          lw    $t0, -12($fp)           
          move  $v0, $t0                
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     

main:                                   # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -28           
_L50:                                   
          jal   _Queue_New              
          move  $t0, $v0                
          move  $t1, $t0                
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t2, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t2                     
          lw    $t1, -8($fp)            
          li    $t0, 0                  
          move  $t2, $t0                
          sw    $t1, -8($fp)            
          sw    $t2, -12($fp)           
_L52:                                   
          li    $t0, 10                 
          lw    $t1, -12($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L54               
_L53:                                   
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t1, -12($fp)           
          sw    $t1, 8($sp)             
          lw    $t2, 0($t0)             
          lw    $t3, 12($t2)            
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t3                     
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
_L51:                                   
          li    $t0, 1                  
          lw    $t1, -12($fp)           
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -12($fp)           
          b     _L52                    
_L54:                                   
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -12($fp)           
_L56:                                   
          li    $t0, 4                  
          lw    $t1, -12($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L58               
_L57:                                   
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t1, 0($t0)             
          lw    $t2, 16($t1)            
          sw    $t0, -8($fp)            
          jalr  $t2                     
          move  $t1, $v0                
          lw    $t0, -8($fp)            
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintInt               
          lw    $t0, -8($fp)            
          la    $t1, _STRING4           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
_L55:                                   
          li    $t0, 1                  
          lw    $t1, -12($fp)           
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -12($fp)           
          b     _L56                    
_L58:                                   
          la    $t0, _STRING5           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -12($fp)           
_L60:                                   
          li    $t0, 10                 
          lw    $t1, -12($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L62               
_L61:                                   
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t1, -12($fp)           
          sw    $t1, 8($sp)             
          lw    $t2, 0($t0)             
          lw    $t3, 12($t2)            
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
          jalr  $t3                     
          lw    $t0, -8($fp)            
          lw    $t1, -12($fp)           
          sw    $t0, -8($fp)            
          sw    $t1, -12($fp)           
_L59:                                   
          li    $t0, 1                  
          lw    $t1, -12($fp)           
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -12($fp)           
          b     _L60                    
_L62:                                   
          li    $t0, 0                  
          move  $t1, $t0                
          sw    $t1, -12($fp)           
_L64:                                   
          li    $t0, 17                 
          lw    $t1, -12($fp)           
          slt   $t2, $t1, $t0           
          sw    $t1, -12($fp)           
          beqz  $t2, _L66               
_L65:                                   
          lw    $t0, -8($fp)            
          sw    $t0, 4($sp)             
          lw    $t1, 0($t0)             
          lw    $t2, 16($t1)            
          sw    $t0, -8($fp)            
          jalr  $t2                     
          move  $t1, $v0                
          lw    $t0, -8($fp)            
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintInt               
          lw    $t0, -8($fp)            
          la    $t1, _STRING4           
          sw    $t1, 4($sp)             
          sw    $t0, -8($fp)            
          jal   _PrintString            
          lw    $t0, -8($fp)            
          sw    $t0, -8($fp)            
_L63:                                   
          li    $t0, 1                  
          lw    $t1, -12($fp)           
          add   $t2, $t1, $t0           
          move  $t1, $t2                
          sw    $t1, -12($fp)           
          b     _L64                    
_L66:                                   
          la    $t0, _STRING5           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          move  $sp, $fp                
          lw    $ra, -4($fp)            
          lw    $fp, 0($fp)             
          jr    $ra                     




          .data                         
_STRING4:
          .asciiz " "                   
_STRING3:
          .asciiz "Queue Is Empty"      
_STRING5:
          .asciiz "\n"                  
_STRING0:
          .asciiz "QueueItem"           
_STRING1:
          .asciiz "Queue"               
_STRING2:
          .asciiz "Main"                
