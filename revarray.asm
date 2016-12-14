TITLE revarray.asm

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB Kernel32.Lib
INCLUDELIB User32.Lib
;limit:need to use SIZEOF,LENGTHOF,TYPE operator
.data
array DWORD 1,2,3,4,5,6,7,8

.code

main PROC
mov ecx,LENGTHOF array ;loop's times
L1:
	mov 
	call DumpMem
exit
main ENDP
END MAIN