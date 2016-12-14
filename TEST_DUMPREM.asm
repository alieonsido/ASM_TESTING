TITLE TEST_DumpMem.asm

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB Kernel32.Lib
INCLUDELIB User32.Lib

.data 
array DWORD 1,2,3,4,5,6,7,8,9,25o
.code

main PROC
	mov esi,OFFSET array
	mov ecx,LENGTHOF array
	mov ebx,TYPE array
	call DumpMem

exit
main ENDP
END main
