section .text			;execute code here
    global _start		;for the linker (ld)
_start:				;where the execution begins
    mov eax, 4			;kernel call no.: write
    mov ebx, 1			;Where to write: stdout
    mov ecx, message		;location of string
    mov edx, message_length	;No. of chars to write
    int 0x80			;Call the kernel
mov eax, 1			;kernel call no.: exit
    int 0x80			;call the kernal

section .data
    message db "Assembly rules!",10
    message_length equ $ - message
