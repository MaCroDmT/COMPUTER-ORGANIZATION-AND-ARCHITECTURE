.MODEL SAMLL
.STACK 100H
.DATA

STR DB 'INPUT A HEX DIGITS IN LOWER CASE(a-f):$' 
STR2 DB 'IN CAPITAL IT IS:'
STR3 DB 'IN DECIMAL IT IS:1' 

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
    
    
    SUB BL,20H ;C TO c CONVERSION
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    
    MOV AH,9
    LEA DX,STR2
    INT 21H 
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H   
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    MOV AH,9
    LEA DX,STR3
    INT 21H
    
    ADD BL,30H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MAIN ENDP
END MAIN
    
    
    
    
    
    