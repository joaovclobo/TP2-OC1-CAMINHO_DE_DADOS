add x2, x0, x1
lw x3, 0(x20)
add x4, x3, x21
sub x5, x30, x15
and x6, x22, x27
or x7, x6, x15
beq x1, x2, desvia
add x8, x30, x30
sub x9, x31, x31
desvia:
add x10, x23, x17
sw x10, 0(x16)       