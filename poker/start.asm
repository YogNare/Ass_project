asect 0
main: ext
dc _start, 0
_start:
jsr main
halt


asect 0xfc00
RD_WR> 
#0 - цп is working
#1 - цп останавливается
dc 0

asect 0xfc02
WHO_WIN>#надо это сделать!!!!!!!!!!!!!!!!!!!!!!!!!!!!(а именно пасс игроком)
ds 2

asect 0xfc04
COMB1> #комбинация бота
ds 2

asect 0xfc06
COMB2> #комбинация игрока
ds 2

asect 0xfc08
COMMAND>
ds 2
#fold - пас 1
#call - поддержка 2
#raise - поднять 3
#check - пропустить ход ставки(с ее сохранением) 4

asect 0xfc0a
BID_COMMAND>
ds 2

asect 0xfc0c
BALANCE_BOT>
ds 2

asect 0xfc0e
BALANCE_PLAYER>
ds 2

asect 0xfc10
BID_BOT>
dc 5

asect 0xfc12
BID_PLAYER>
dc 10

asect 0xfc14
FOLD> #2 - player, 1 - bot
dc 0

asect 0xfc18
RAUND>
ds 2

asect 0xfc1a
SEQUENCE_PTR>
ds 2

asect 0xfc1c
SEQUENCE_LEN>
ds 2
#30 random cards
asect 0xfe00
SUIT_VALUE>
# dc 5, 6, 7, 8, 9, 21, 22, 23, 24, 25
dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

asect 0xc000
SEQUENCE>#card value output
dc 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x33, 0x42, 0x1b, 0x5b, 0x38, 0x43, 0x55, 0x2b, 0x32, 0x36, 0x36, 0, 0x1b, 0x5b, 0x35, 0x42, 0x1b, 0x5b, 0x34, 0x43, 0 , 0x1b, 0x5b, 0x35, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0x55, 0x2b, 0x32, 0x36, 0x36, 0, 0x1b, 0x5b, 0x35, 0x42, 0x1b, 0x5b, 0x34, 0x43, 0 , 0x1b, 0x5b, 0x35, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0x55, 0x2b, 0x32, 0x36, 0x36, 0, 0x1b, 0x5b, 0x35, 0x42, 0x1b, 0x5b, 0x34, 0x43, 0 , 0x1b, 0x5b, 0x35, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0x55, 0x2b, 0x32, 0x36, 0x36, 0, 0x1b, 0x5b, 0x35, 0x42, 0x1b, 0x5b, 0x34, 0x43, 0 , 0x1b, 0x5b, 0x35, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0x55, 0x2b, 0x32, 0x36, 0x36, 0, 0x1b, 0x5b, 0x35, 0x42, 0x1b, 0x5b, 0x34, 0x43, 0
#  home-posit      |       down 11                                |       right 8        |            card p1          17↑|         down 5        |       right 4         |num|       up 5             |       right 9         |            card p2            ↑|         down 5        |       right 4         |num|       up 5            |       right 9         |            card p3          63↑|         down 5        |       right 4         |num|       up 5            |       right 9         |            card p4          86↑|         down 5        |       right 4         |num|       up 5            |       right 9         |            card p3         109↑|         down 5        |       right 4         |num|

asect 0xff00
#full dare
DARE>
dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
asect 0xff70
dc "H","H","H","H","H","H","H","H","H","H","H","H","H","D", "D", "D", "D", "D", "D","D", "D", "D","D", "D", "D", "D", "S","S","S","S","S","S","S","S","S","S","S","S","S","C", "C", "C", "C", "C", "C","C", "C", "C","C", "C", "C", "C"
end.