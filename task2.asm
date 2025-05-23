.MODEL SMALL
.STACK 100H
.DATA
    
    STS DB 'Enter two digits more than 5:$'
    STA DB 'The add is:1$'
    STR DB '*$'
    STL DB 'ADD IS:1$'
    STK DB '*$'
   
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9       ;INSTRUCTION
    LEA DX,STS
    INT 21H
    
    MOV AH,1        ;INPUTS
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL  
    
        
    MOV AH,2        ;NEW LINE + CARRIAGE RETURN
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
                    ; STA VAR PRINT
    MOV AH,9
    LEA DX,STA
    INT 21H
    
    ADD BL,BH        ;CONVERTION
    SUB BL,38H
    SUB BL,2H
    
    MOV AH,2          ; VALUE OF CONVERSION
    MOV DL,BL
    INT 21H
    
    MOV AH,2            ; NEW LINE
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9           ;STR PRINT
    LEA DX,STR
    INT 21H
    
    MOV AH,2           ;NEW LINE
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9          ;STR AGAIN PRINT
    LEA DX,STR
    INT 21H 
    
    MOV AH,2
    MOV DL,0AH          ;NEW LINE
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,STK        ;STK PRINT , STL PRINT
    INT 21H
    LEA DX,STL
    INT 21H
        
    MOV AH,2
    MOV DL,BL        ;VALUE OF CONVERSION
    INT 21H
    
    MOV AH,9
    LEA DX,STK        ;STK PRINT
    INT 21H
   
    MOV AH,2
    MOV DL,0AH        ;NEW LINE
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,STR        ;STR PRINT
    INT 21H 
    
    MOV AH,2          ;NEW LINE
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,STR         ;STR PRINT
    INT 21H 
    
    
    MAIN ENDP
END MAIN