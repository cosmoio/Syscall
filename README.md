# Syscall

I needed to look up how to make syscalls in 32 bit, 64 bit systems and as usual, stackoverflow was quite helpful. 

http://stackoverflow.com/questions/12806584/what-is-better-int-0x80-or-syscall
Quoting:
  *  syscall is default way of entering kernel mode on x86-64. This instruction is not available in 32 bit modes of operation on Intel processors.
  *  sysenter is an instruction most frequently used to invoke system calls in 32 bit modes of operation. It is similar to syscall, a bit more difficult to use though, but that is kernel's concern.
  *  int 0x80 is a legacy way to invoke a system call and should be avoided.


The code is pretty much self-explanatory (thanks in large parts to stackoverflow..).

# nasm -f elf helloworld.asm

% Make an elf binary (default: helloworld) via nasm

# gcc -m64 -nostdlib -o hello-syscall syscall.s

% -m64 force 64 bit compilation 
% -nostdlib obvious


