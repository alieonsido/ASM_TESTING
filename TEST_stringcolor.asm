TITLE  stringcolor.asm   (TEST_stringcolor.asm)
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB Kernel32.Lib
INCLUDELIB User32.Lib

.data
COUNT = 4
BlueTextOnGray = 2 + (lightGray * 16)
DefaultColor = lightGray+ (black * 16)
arrayD SDWORD 12345678h,1A4B2000h,3434h,7AB9h
prompt BYTE "ENTER a 32-bit signed integer",0

.code
main PROC
	mov eax,BlueTextOnGray
	call SetTextColor ;
	call Clrscr ;clear screen

	;Use DumpMem to reveal the thing
	mov esi,OFFSET arrayD
	mov ebx,TYPE arrayD
	mov ecx,LENGTHOF arrayD
	call DumpMem

exit
main ENDP
END main