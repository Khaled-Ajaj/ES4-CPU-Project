MAIN:
MOV R0, #0
MOV R1, #0
MOV R2, #0
MOV R3, #0
MOV R4, #0
MOV R5, #0
STR R1, [R0, #1]
STR R2, [R0, #2]
STR R3, [R0, #3]
STR R4, [R0, #4]
STR R5, [R0, #5]
MOV R1, R1
MOV R1, R1
MOV R1, R1
MOV R1, R1
MOV R3, #1
STR R3, [R0, #3]
CHECK:
LDR R4, [R0, #4]
LDR R5, [R0, #5]
SUBS R6, R4, R5
BEQ CHECK
BMI PLAYERTWO
PLAYERONE:
MOV R1, #1
STR R1, [R0, #1]
B END
PLAYERTWO:
MOV R2, #1
STR R2, [R0, #2]
END:

