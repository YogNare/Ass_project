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
#0xfc08-09 нужно изменить!!!!!!!!!!!!!!!!!!!!!!!!!!!
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
dc 495

asect 0xfc0e
BALANCE_PLAYER>
dc 490

asect 0xfc10
BID_BOT>
dc 5

asect 0xfc12
BID_PLAYER>
dc 10

asect 0xfc14
FOLD_BOT>
dc 0

asect 0xfc16
FOLD_PLAYER>
dc 0

asect 0xfc18
RAUND>
ds 2

#10 random cards
asect 0xfe00
SUIT_VALUE>
dc 3, 4, 5, 19, 13, 51, 9, 8, 26, 30


asect 0xff00
#full dare
DARE>
dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
asect 0xff70
dc "H","H","H","H","H","H","H","H","H","H","H","H","H","D", "D", "D", "D", "D", "D","D", "D", "D","D", "D", "D", "D", "S","S","S","S","S","S","S","S","S","S","S","S","S","C", "C", "C", "C", "C", "C","C", "C", "C","C", "C", "C", "C"
end.