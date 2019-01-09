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
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          sw    $t0, 12($t1)            
          la    $t0, _QueueItem         
          sw    $t0, 0($t1)             
          move  $v0, $t1                
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
          move  $t1, $v0                
          li    $t0, 0                  
          sw    $t0, 4($t1)             
          sw    $t0, 8($t1)             
          la    $t0, _Queue             
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
_L37:                                   
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

_QueueItem.Init:                        # function entry
          sw $fp, 0($sp)                
          sw $ra, -4($sp)               
          move $fp, $sp                 
          addiu $sp, $sp, -12           
_L38:                                   
          lw    $t1, 16($fp)            
          lw    $t2, 12($fp)            
          lw    $t3, 8($fp)             
          lw    $t4, 4($fp)             
          lw    $t0, 4($t4)             
          sw    $t3, 4($t4)             
          lw    $t0, 8($t4)             
          sw    $t2, 8($t4)             
          lw    $t0, 12($t2)            
          sw    $t4, 12($t2)            
          lw    $t0, 12($t4)            
          sw    $t1, 12($t4)            
          lw    $t0, 8($t1)             
          sw    $t4, 8($t1)             
          sw    $t4, 4($fp)             
          sw    $t3, 8($fp)             
          sw    $t2, 12($fp)            
          sw    $t1, 16($fp)            
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
          lw    $t1, 4($fp)             
          lw    $t0, 4($t1)             
          sw    $t1, 4($fp)             
          move  $v0, $t0                
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
          sw    $t0, 4($fp)             
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
          sw    $t0, 4($fp)             
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
          lw    $t0, 8($fp)             
          lw    $t1, 4($fp)             
          lw    $t2, 8($t1)             
          sw    $t0, 8($t1)             
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
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
          lw    $t0, 8($fp)             
          lw    $t1, 4($fp)             
          lw    $t2, 12($t1)            
          sw    $t0, 12($t1)            
          sw    $t1, 4($fp)             
          sw    $t0, 8($fp)             
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
          lw    $t1, 4($fp)             
          lw    $t0, 8($t1)             
          sw    $t1, 4($fp)             
          jal   _QueueItem_New          
          move  $t0, $v0                
          lw    $t1, 4($fp)             
          sw    $t0, 8($t1)             
          lw    $t4, 8($t1)             
          li    $t3, 0                  
          lw    $t2, 8($t1)             
          lw    $t0, 8($t1)             
          sw    $t4, 4($sp)             
          sw    $t3, 8($sp)             
          sw    $t2, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t4)             
          lw    $t0, 8($t0)             
          sw    $t1, 4($fp)             
          jalr  $t0                     
          lw    $t1, 4($fp)             
          sw    $t1, 4($fp)             
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
          lw    $t1, 8($fp)             
          lw    $t2, 4($fp)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jal   _QueueItem_New          
          move  $t0, $v0                
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          move  $t3, $t0                
          lw    $t0, 8($t2)             
          sw    $t0, 4($sp)             
          lw    $t0, 0($t0)             
          lw    $t0, 16($t0)            
          sw    $t2, 4($fp)             
          sw    $t3, -8($fp)            
          sw    $t1, 8($fp)             
          jalr  $t0                     
          move  $t4, $v0                
          lw    $t2, 4($fp)             
          lw    $t3, -8($fp)            
          lw    $t1, 8($fp)             
          lw    $t0, 8($t2)             
          sw    $t3, 4($sp)             
          sw    $t1, 8($sp)             
          sw    $t4, 12($sp)            
          sw    $t0, 16($sp)            
          lw    $t0, 0($t3)             
          lw    $t0, 8($t0)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
          jalr  $t0                     
          lw    $t2, 4($fp)             
          lw    $t1, 8($fp)             
          sw    $t2, 4($fp)             
          sw    $t1, 8($fp)             
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
          lw    $t1, 0($t1)             
          lw    $t1, 20($t1)            
          sw    $t0, 4($fp)             
          jalr  $t1                     
          move  $t2, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, 8($t0)             
          seq   $t1, $t2, $t1           
          sw    $t0, 4($fp)             
          beqz  $t1, _L48               
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
          lw    $t1, 0($t1)             
          lw    $t1, 20($t1)            
          sw    $t0, 4($fp)             
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t0, 4($fp)             
          sw    $t1, 4($sp)             
          lw    $t2, 0($t1)             
          lw    $t2, 12($t2)            
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t2                     
          move  $t2, $v0                
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t3, 0($t1)             
          lw    $t3, 20($t3)            
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t3                     
          move  $t4, $v0                
          lw    $t2, -12($fp)           
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t3, 0($t1)             
          lw    $t3, 16($t3)            
          sw    $t2, -12($fp)           
          sw    $t4, -16($fp)           
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t3                     
          move  $t3, $v0                
          lw    $t2, -12($fp)           
          lw    $t4, -16($fp)           
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t4, 4($sp)             
          sw    $t3, 8($sp)             
          lw    $t3, 0($t4)             
          lw    $t3, 24($t3)            
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t3                     
          lw    $t2, -12($fp)           
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t3, 0($t1)             
          lw    $t3, 16($t3)            
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          sw    $t1, -8($fp)            
          jalr  $t3                     
          move  $t3, $v0                
          lw    $t2, -12($fp)           
          lw    $t0, 4($fp)             
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t1, 0($t1)             
          lw    $t1, 20($t1)            
          sw    $t3, -20($fp)           
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          jalr  $t1                     
          move  $t1, $v0                
          lw    $t3, -20($fp)           
          lw    $t2, -12($fp)           
          lw    $t0, 4($fp)             
          sw    $t3, 4($sp)             
          sw    $t1, 8($sp)             
          lw    $t1, 0($t3)             
          lw    $t1, 28($t1)            
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
          jalr  $t1                     
          lw    $t2, -12($fp)           
          lw    $t0, 4($fp)             
          sw    $t2, -12($fp)           
          sw    $t0, 4($fp)             
_L49:                                   
          lw    $t2, -12($fp)           
          move  $v0, $t2                
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
          lw    $t0, 8($t0)             
          sw    $t1, -8($fp)            
          jalr  $t0                     
          lw    $t1, -8($fp)            
          li    $t0, 0                  
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
_L52:                                   
          lw    $t0, -12($fp)           
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L54               
_L53:                                   
          lw    $t0, -12($fp)           
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t2, 0($t1)             
          lw    $t2, 12($t2)            
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
          jalr  $t2                     
          lw    $t1, -8($fp)            
          lw    $t0, -12($fp)           
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
_L51:                                   
          lw    $t0, -12($fp)           
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -12($fp)           
          b     _L52                    
_L54:                                   
          li    $t0, 0                  
          sw    $t0, -12($fp)           
_L56:                                   
          lw    $t0, -12($fp)           
          li    $t1, 4                  
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L58               
_L57:                                   
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 16($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, -8($fp)            
_L55:                                   
          lw    $t0, -12($fp)           
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -12($fp)           
          b     _L56                    
_L58:                                   
          la    $t0, _STRING5           
          sw    $t0, 4($sp)             
          jal   _PrintString            
          li    $t0, 0                  
          sw    $t0, -12($fp)           
_L60:                                   
          lw    $t0, -12($fp)           
          li    $t1, 10                 
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L62               
_L61:                                   
          lw    $t0, -12($fp)           
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          sw    $t0, 8($sp)             
          lw    $t2, 0($t1)             
          lw    $t2, 12($t2)            
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
          jalr  $t2                     
          lw    $t1, -8($fp)            
          lw    $t0, -12($fp)           
          sw    $t1, -8($fp)            
          sw    $t0, -12($fp)           
_L59:                                   
          lw    $t0, -12($fp)           
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -12($fp)           
          b     _L60                    
_L62:                                   
          li    $t0, 0                  
          sw    $t0, -12($fp)           
_L64:                                   
          lw    $t0, -12($fp)           
          li    $t1, 17                 
          slt   $t1, $t0, $t1           
          sw    $t0, -12($fp)           
          beqz  $t1, _L66               
_L65:                                   
          lw    $t1, -8($fp)            
          sw    $t1, 4($sp)             
          lw    $t0, 0($t1)             
          lw    $t0, 16($t0)            
          sw    $t1, -8($fp)            
          jalr  $t0                     
          move  $t0, $v0                
          lw    $t1, -8($fp)            
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintInt               
          lw    $t1, -8($fp)            
          la    $t0, _STRING4           
          sw    $t0, 4($sp)             
          sw    $t1, -8($fp)            
          jal   _PrintString            
          lw    $t1, -8($fp)            
          sw    $t1, -8($fp)            
_L63:                                   
          lw    $t0, -12($fp)           
          li    $t1, 1                  
          add   $t0, $t0, $t1           
          sw    $t0, -12($fp)           
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
