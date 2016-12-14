TITLE  TEST_Reversestring   (TEST_Revstring.asm)
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB Kernel32.Lib
INCLUDELIB User32.Lib

.data
aName BYTE "Zhang jia Wei",0
namesize= ($-aName) -1

.code
main PROC
	;move name in stack 
	mov ecx,namesize
	mov esi,0

	Loop1: 
		movzx eax,aName[esi] ;get the char
		push eax ;
		inc esi
		loop Loop1

		mov ecx,namesize
		mov esi,0


	LOOP2:
		pop eax
		mov aName[esi],al
		inc esi
		loop LOOP2

	mov edx,OFFSET aName
	call WriteString
	call crlf

exit
main ENDP
END main