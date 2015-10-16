.data
msg:
  .ascii "Hello World!\n"
  len = . - msg

.text
.globl _start

_start:
# Write the string to stdout
  movq  $len, %rdx
  movq  $msg, %rsi
  movq  $1, %rdi
  movq  $1, %rax
  syscall
# and exit
  movq  $0, %rdi
  movq  $60, %rax
  syscall
