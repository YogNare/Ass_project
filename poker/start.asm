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
#dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dc 0x21, 0x17, 0x26, 0x1b, 0x32, 0x1c, 0x14, 0x19, 0x06, 0x18, 0x0e, 0x2b, 0x05, 0x16, 0x30, 0x11, 0x29, 0x1e, 0x27, 0x07, 0x04, 0x12, 0x10, 0x33, 0x0c, 0x0b, 0x2a, 0x2c, 0x09, 0x20

asect 0xc000
THREE_CARD_PL>#(66)card value output ~13↓8→♣↓→{1}↑9→♣↓→{2}↑9→♣↓→{3}↑
dc     0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x34, 0x42, 0x1b, 0x5b, 0x38, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x31, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x32, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x33, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x36, 0x42

asect 0xc0c0
DELETE_POINTS>#(57)  ~18↓5→{Command:                      }20←
dc  0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x35, 0x43, 0x43, 0x6f, 0x6d, 0x6d, 0x61, 0x6e, 0x64, 0x3a, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x1b, 0x5b, 0x39, 0x44, 0x1b, 0x5b, 0x39, 0x44, 0x1b, 0x5b, 0x32, 0x44

asect 0xca00
CHANGE_COURSE_TO_BOT>#(100)
dc 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x42, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x4b, 0x4f, 0x4e, 0x53, 0x54, 0x41, 0x4e, 0x54, 0x49, 0x4e, 0x20, 0x20, 0x20, 0x3c, 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x31, 0x42, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x50, 0x4c, 0x41, 0x59, 0x45, 0x52, 0x20, 0x20, 0x20
#~↓{                            KONSTANTIN   <}
#~10↓{                                PLAYER   }

asect 0xcc00
CHANGE_COURSE_TO_PL>#(100)
dc 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x42, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x4b, 0x4f, 0x4e, 0x53, 0x54, 0x41, 0x4e, 0x54, 0x49, 0x4e, 0x20, 0x20, 0x20, 0x20, 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x31, 0x42, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x50, 0x4c, 0x41, 0x59, 0x45, 0x52, 0x20, 0x20, 0x3c
#~↓{                            KONSTANTIN    }
#~10↓{                                PLAYER  <}

asect 0xcd00
PRINT_FOUR_CARD_PL>#(41)
dc  0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x34, 0x42, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x38, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x31

asect 0xce00
PRINT_FIVE_CARD_PL>#(45)   ~13↓54→♣↓→{1}
dc 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x39, 0x42, 0x1b, 0x5b, 0x34, 0x42, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x31

asect 0xcf00
PRINT_BOT_CARD> #(92)   ~5↓8→♣↓→{1}↑9→♣↓→{2}↑9→♣↓→{3}↑9→♣↓→{4}↑9→♣↓→{5}↑
dc 0x1b, 0x5b, 0x48, 0x1b, 0x5b, 0x35, 0x42, 0x1b, 0x5b, 0x38, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x31, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x32, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x33, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x34, 0x1b, 0x5b, 0x41, 0x1b, 0x5b, 0x39, 0x43, 0xe2, 0x99, 0xa0, 0x1b, 0x5b, 0x42, 0x1b, 0x5b, 0x43, 0x35, 0x1b, 0x5b, 0x41

asect 0xff00
#full dare
DARE>
dc 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
asect 0xff70
dc "H","H","H","H","H","H","H","H","H","H","H","H","H","D", "D", "D", "D", "D", "D","D", "D", "D","D", "D", "D", "D", "S","S","S","S","S","S","S","S","S","S","S","S","S","C", "C", "C", "C", "C", "C","C", "C", "C","C", "C", "C", "C"

asect 0xfc60
HAND1>
ds 5
asect 0xfc70
HAND2>
ds 5    

end.