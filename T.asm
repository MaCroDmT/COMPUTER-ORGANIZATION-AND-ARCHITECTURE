.MODEL SAMLL
.STACK 100H
.DATA
STR DB 'ENTER THREE INITIALS:$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,STR
    INT 21H
    
    
    
    MOV AH,2
    MOV BL,'P'
    MOV BH,'R'
    MOV CL,'O'
    
    
    MOV DL,BL
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    MOV DL,CL
    INT 21H 
    
    
    
    ;MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    MOV DL,BL
    INT 21H
    
    
    ;MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    MOV DL,BH
    INT 21H
    
    
    ;MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV DL,CL
    INT 21H   
    
    
    MOV CH,'?'
    MOV DL,CH
    INT 21H
    
    
    
    MAIN ENDP
END MAIN
    
    
    