.MODEL SAMLL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    
    SUB BH,BL
    ADD BH,30H
    
    MOV AH,2
    MOV DL,BH
    INT 21H  
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    INC BH
    
    MOV DL,BH
    INT 21H
               
               
  MAIN ENDP
END MAIN