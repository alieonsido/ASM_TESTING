Title TEST_Arraysum
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB Kernel32.Lib
INCLUDELIB User32.Lib

.data
array DWORD 10000h,20000h,30000h,40000h,50000h
theSum DWORD ?

.code
ArraySum PROC ;ECX:element's number ESI:array's Displacement EAX:element's total
	push esi
	push ecx
	mov eax,0
L1: add eax,[esi]
	add esi,TYPE DWORD
	loop L1

	pop ecx
	pop esi
	ret
ArraySum ENDP

main PROC
	mov esi,OFFSET array
	mov ecx,LENGTHOF array
	call ArraySum
	mov theSum,eax
	exit
main ENDP
END main

;endian址會影響元素
;跟陣列本身沒關係