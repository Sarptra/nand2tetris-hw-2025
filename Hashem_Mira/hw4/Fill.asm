(MAIN_LOOP)
  @KBD
  D=M
  @FILL_WHITE
  D;JGT
  @FILL_BLACK
  0;JMP

(FILL_WHITE)
  @R0
  M=-1
  @DRAW_SCREEN
  0;JMP

(FILL_BLACK)
  @R0
  M=0
  @DRAW_SCREEN
  0;JMP

(DRAW_SCREEN)
  @8191
  D=A
  @R1
  M=D
  @SCREEN
  D=A
  @R2
  M=D

(DRAW_LOOP)
  @R1
  D=M
  @MAIN_LOOP
  D;JEQ
  @R0
  D=M
  @R2
  A=M
  M=D
  @R2
  M=M+1
  @R1
  M=M-1
  @DRAW_LOOP
  0;JMP
