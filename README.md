# verilog-design-internals-code

This program basically do the following function:

mov reg1, 3 → load constant 3 into reg1 \n
mov reg2, 3 → load constant 3 into reg2
add reg1, reg2 → reg1 = reg1 + reg2
cmp reg1, 6 → compare reg1 with 6
je _halt → if equal, go to halt
jne _add → if not equal, repeat loop
_halt: hlt → stop execution
