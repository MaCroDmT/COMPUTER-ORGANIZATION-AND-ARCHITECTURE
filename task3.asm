.MODEL SMALL
.STACK 100H
.DATA
    
    STR1 DB 'ENTER INPUT OF 2 DIGIT (MORE THAN 5):$'
    STR2 DB 'ADDED VALUE OF GIVEN INPUT:1$'
    STR3 DB '* * * * * * * * * * *$'
    STR4 DB '* * * * * * * * * * *$'
    STR5 DB '* * THE SUM IS:1$'
    STR6 DB ' * *$'
    STR7 DB '* * * * * * * * * * *$'
    STR8 DB '* * * * * * * * * * *$'
   
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9       
    LEA DX,STR1
    INT 21H
    
    MOV AH,1        
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL  
    
        
    MOV AH,2        
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,2
    ADD BH,BL 
    ADD BH,8H
    SUB BH,42H
    INT 21H
    
    
    MOV AH,9       
    LEA DX,STR2
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    
    MOV AH,2        
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
     MOV AH,9       
    LEA DX,STR3
    INT 21H     
    
    
     MOV AH,2        
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
     MOV AH,9       
    LEA DX,STR4
    INT 21H   
    
    
     MOV AH,2        
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
     MOV AH,9       
    LEA DX,STR5
    INT 21H
    
    
    MOV AH,2
    MOV DL,BH
    INT 21H  
    
    
 
    MOV AH,9       
    LEA DX,STR6
    INT 21H   
    
    
    
     MOV AH,2        
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
     MOV AH,9       
    LEA DX,STR7
    INT 21H
               
    
    
     MOV AH,2        
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
     MOV AH,9       
    LEA DX,STR8
    INT 21H
    
    
    
    
                    
    
    
    MAIN ENDP
END MAIN