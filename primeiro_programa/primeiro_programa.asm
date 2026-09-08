section .data

msg:    db "Hello world!",10 ; 10 aqui representa quebra de linha '\n'
                             ;msg é um mais próximo a um ponteiro, um 'rotulo'.  db define como cadeia de bytes

len:    equ $ - msg     ; $ - ultimo end ocupado na memória
                        ; len - tamanho da mensagem (sendo "definido" aqui)

section .text

        global _start ;

_start:

        mov     rax, 1 ; chamda de sistema 'sys_write'.
        mov     rdi, 1
        mov     rsi, msg
        mov     rdx, len
        syscall

        mov rax, 60 ; chamada de sistema 'sys_exit'
        mov rdi, 0  ; return 0
        syscall
_end:

