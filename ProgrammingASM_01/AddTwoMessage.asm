; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

Include Irvine32.inc 

.data

msgHello	BYTE "My name is Arthur Aigeltinger IV", 0

.code
main proc
	mov	eax, 8000h			
	mov	ebx, 2000h
	mov ecx, 1000h
	mov edx, 5000h

	add eax, ebx	;add contents of ebx into eax
	add ecx, edx	;add contents of edx into ecx

	sub eax, ecx	;subtract value of ecx from eax

	call DumpRegs

	mov edx, offset msgHello	;point edx to message
	call Writestring			;print to display

	call Crlf		;print carridge return and line feed

	call Waitmsg	;wait for keypress to continue

	invoke ExitProcess,0

main endp
end main