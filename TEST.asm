TITLE  Add and Subtract(TEST.asm)
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB Kernel32.Lib
INCLUDELIB User32.Lib

.code
main PROC
mov ax,10h
add ax,30h
call DumpRegs
INVOKE ExitProcess,0 
exit

main ENDP
END main