.MODEL SMALL
.STACK 100H
.DATA
    
    STR DB 'ENTER A HEX DIGIT (A-F):$'
    OPT DB 'IN DECIMAN IT IS :1$'

.CODE
MAIN PROC
        
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,STR
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,OPT
    INT 21H
    
    ADD BL,-11h ;NEG OF 11 HEXADECIMAL
    MOV AH,2
    MOV DL,BL
    INT 21H        
    
    MAIN ENDP
END MAIN



