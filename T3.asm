.MODEL SMALL
.STACK 100H
.DATA 
STR DB 'ENTER A HEX DIGIT:$'
STR2 DB '1$'
.CODE

MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,STR
    INT 21H
    
    
    MOV AH,2
  
    MOV BL,'C'
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
   
    
    
    MOV AH,9
    LEA DX,STR2
    INT 21H  
    
     SUB BL,11H
     
    MOV AH,2
    MOV DL,BL
    INT 21H
    
   MAIN ENDP
END MAIN
    