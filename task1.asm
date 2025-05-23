.MODEL SMALL
.STACK 100H
.DATA
    
    STR DB 'Input a hex digit in lower case[a-f]:$'
    STR1 DB 0AH,0DH,'In capital it is: $'
    STR2 DB 0AH,0DH,'In decimal it IS: $'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,STR
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,9
    LEA DX,STR1
    INT 21H
    
    SUB BH,20H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,9
    LEA DX,STR2
    INT 21H
    
    SUB BH,11H
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
    MOV DL,BH
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN         



