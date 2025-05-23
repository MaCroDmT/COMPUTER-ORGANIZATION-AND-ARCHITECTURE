.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
            
    MOV AH,2
    MOV BL,'/'
    MOV DL,BL
    INT 21H
    
    MOV DL,0AH;PRINTING NEWLINE(NO CARRIAGE RETURN)
    INT 21H   ;INVOKING THE INTRUPT 
    ;MOV DL,0DH;PRINTING CARRIAGE RETURN
    ;INT 21H   ;INVOKING THE INTRUP
    
    MOV BH,'*'
    MOV DL,BH
    INT 21H 
    
    MOV DL,0AH
    INT 21H
    ;MOV DL,0DH
    ;INT 21H  
    
    MOV CL,'?'
    MOV DL,CL
    INT 21H 
    
    
    MOV DL,0AH
    INT 21H
   MOV DL,0DH
    INT 21H            
    
    
     MOV AH,1
     INT 21H
    MOV BL,AL
   
    MOV AH,2
    MOV DL,0AH;PRINTING NEWLINE(NO CARRIAGE RETURN)
    INT 21H   ;INVOKING THE INTRUPT 
    ;MOV DL,0DH;PRINTING CARRIAGE RETURN
    ;INT 21H   ;INVOKING THE INTRUP  
    
    
     MOV AH,1
     INT 21H
    MOV BH,AL
    
    
   
    
    
    
    MAIN ENDP
END MAIN
