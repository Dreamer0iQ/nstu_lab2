.section  __TEXT,__text,regular,pure_instructions
  .globl  _countTrailingZeros
  .p2align  2
_countTrailingZeros:
  sub  sp, sp, #16
  str  w0, [sp, #12]
  str  wzr, [sp, #8]
LBB0_1:
  ldr  w8, [sp, #12]
  subs  w8, w8, #5
  cset  w8, lt
  tbnz  w8, #0, LBB0_3
LBB0_2:
  ldr  w8, [sp, #12]
  mov  w9, #5
  sdiv  w8, w8, w9
  str  w8, [sp, #12]
  ldr  w9, [sp, #12]
  ldr  w8, [sp, #8]
  add  w8, w8, w9
  str  w8, [sp, #8]
  b  LBB0_1
LBB0_3:
  ldr  w0, [sp, #8]
  add  sp, sp, #16
  ret

  .globl  _main
  .p2align  2
_main:
  sub  sp, sp, #128
  stp  x29, x30, [sp, #128]
  add  x29, sp, #128
  stur  wzr, [x29, #-4]
  adrp  x0, l_.str@PAGE
  add  x0, x0, l_.str@PAGEOFF
  bl  _printf
  add  x1, sp, #8
  bl  _scanf
  ldr  w8, [sp, #8]
  subs  w8, w8, #0
  cset  w8, ge
  tbnz  w8, #0, LBB1_2
LBB1_1:
  adrp  x0, l_.str.1@PAGE
  add  x0, x0, l_.str.1@PAGEOFF
  bl  _printf
  mov  w8, #1
  stur  w8, [x29, #-4]
  b  LBB1_3
LBB1_2:
  ldr  w0, [sp, #8]
  bl  _countTrailingZeros
  str  w0, [sp, #4]
  adrp  x0, l_.str.2@PAGE
  add  x0, x0, l_.str.2@PAGEOFF
  bl  _printf
  ldr  w1, [sp, #8]
  bl  _printf
  adrp  x0, l_.str.3@PAGE
  add  x0, x0, l_.str.3@PAGEOFF
  bl  _printf
  ldr  w1, [sp, #4]
  bl  _printf
  stur  wzr, [x29, #-4]
LBB1_3:
  ldur  w0, [x29, #-4]
  ldp  x29, x30, [sp, #16]
  add  sp, sp, #32
  ret

  .section  __TEXT,__cstring,cstring_literals
l_.str:
  .asciz  "Введите число: "

l_.str.1:
  .asciz  "Ошибка: Факториал отрицательного числа не определён."

l_.str.2:
  .asciz  "Количество нулей в конце факториала "

l_.str.3:
  .asciz  "!: "