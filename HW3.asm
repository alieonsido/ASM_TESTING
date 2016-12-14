TITLE Homework3						(Homework3.asm)

INCLUDE Irvine32.inc
INCLUDELIB irvine32.lib
INCLUDELIB user32.lib
INCLUDELIB kernel32.lib

.data
; EX2. Decalre 7 datatypes & initialize to value only appears in its type
aByte   BYTE   0FEh
aSByte  SBYTE  -0FFh
aWord   WORD   0FEFFh
aSWord  SWORD  -0FFEEh
aDWord  DWORD  0FEFEFFFEh
aSDWord SDWORD -0FEFFFFFEh
aQWord  QWORD  -0FEFFEFEFFEFFFEh
; Ex3. A symbolic name for ID, a variable definition
myID EQU <"40371216H">
newID BYTE myID

.code
main PROC
	; Ex1.Subtracts 3 intergers using only 16-bit registers and Dumpregs
	mov ax, 0FEh
	movzx eax, ax
	mov bx, 40h
	mov cx, 30h
	sub ax, bx
	sub ax, cx	
	call Dumpregs
exit
main ENDP
END main