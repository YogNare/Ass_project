asect 0
main: ext
dc _start, 0
_start:
jsr main
halt


asect 0xfc00
RD_WR> 
#0 - pc is working
#1 - cp is stopped and nothing
#2 - cp is stopped and give us random value
dc 0

WHO_WIN>
ds 2

COMB1>
ds 16

COMB2>
ds 16

#10 random cards
asect 0xfe00
SUIT_VALUE>
dc 51,1, 51, 41, 4, 3, 9, 7, 9, 11, 51
asect 0xff00

#full dare
DARE>
dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
asect 0xff70
dc "H","H","H","H","H","H","H","H","H","H","H","H","H","D", "D", "D", "D", "D", "D","D", "D", "D","D", "D", "D", "D", "S","S","S","S","S","S","S","S","S","S","S","S","S","C", "C", "C", "C", "C", "C","C", "C", "C","C", "C", "C", "C"
end.