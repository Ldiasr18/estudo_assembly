# Anotações Assembly

### Sessão de dados:

Contém a inicialização de dados que persistem durante a execução do programa.
    
Exemplos:
Strings, constantes, inicizadores de array, dados de configuração.

    section .data
        ; Declaração de strings
        welcome_msg db 'Hello world!'
        error_msg db 'Error: invalid output'
        
        ; Dados numéricos
        pi dd 3.14159                      ; 32-bits float
        max_user dq 1000                   ; 64-bits inteiro
        loockup_table db 1, 4, 9, 16, 25   ; array
        
        ; Constantes do sistema
        BUFFER_SIZE equ 256
        VERSION_STRING db 'v2.1.0', 0


### Sessão bss (block starting symbol)

Reserva espaço para variaveis não iniciazadas.

Exemplos:
buffers, contadores, arrays e dados de usuarios.

    section .bss
        ; Reserva espaço para variaveis
        input_buffer resb 256                  ; 256-byte buffers
        user_count resq 1                      ; 64-bit counter
        temp_array resd 100                    ; Array of 100 32-bit integers
        file_handle resq 1                     ; File descriptor storage


### Sessão de texto

Contem instruções de execução.

    section .texto
        global_start                           ; Entrada para linux
        ; global main                          ; Entrada alternativa para C
    
    _start:
        ; Instruções do programa
        ; Tem que finalizar com uma chamada de saida do sistema
        
### Instruções

Formato de operações:
    
    [label:]  mnemonic [operand1], [operand2]
    
    
### requisitos

nasm
binutils (ld)



    
