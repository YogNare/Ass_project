
extern volatile int SUIT_VALUE[10];
extern volatile int RD_WR;
extern volatile int DARE[52];

typedef struct Card{
    char suit;
    char value;
}Card;

typedef struct Hand{
    Card cards[5];
}Hand;

//dare in c
typedef struct dare_c{
    Card cards[52];
}dare_c;
//hand1 - robot's hand, hand2 - player's hand
Hand hand1, hand2;
dare_c dare = {{{'H', '2'}, {'H', '3'}, {'H', '4'},{'H', '5'}, {'H', '6'}, {'H', '7'},{'H', '8'}, {'H', '9'}, {'H', 'T'}, {'H', 'J'}, {'H', 'Q'}, {'H', 'K'}, {'H', 'A'},
                {'D', '2'}, {'D', '3'}, {'D', '4'},{'D', '5'}, {'D', '6'}, {'D', '7'},{'D', '8'}, {'D', '9'}, {'D', 'T'}, {'D', 'J'}, {'D', 'Q'}, {'D', 'K'}, {'D', 'A'},
                {'S', '2'}, {'S', '3'}, {'S', '4'},{'S', '5'}, {'S', '6'}, {'S', '7'},{'S', '8'}, {'S', '9'}, {'S', 'T'}, {'S', 'J'}, {'S', 'Q'}, {'S', 'K'}, {'S', 'A'},
                {'C', '2'}, {'C', '3'}, {'C', '4'},{'C', '5'}, {'C', '6'}, {'C', '7'},{'C', '8'}, {'C', '9'}, {'C', 'T'}, {'C', 'J'}, {'C', 'Q'}, {'C', 'K'}, {'C', 'A'}}};

//give cards each players on hands
//writes cards in hand1 and hand2
void generate_cards()
{
    for(int i = 0; i < 10; i++)
    {
        while(DARE[SUIT_VALUE[i]] == 1)
        {
            SUIT_VALUE[i] = (SUIT_VALUE[i] + 1);
            if(SUIT_VALUE[i] == 52)
            {
                SUIT_VALUE[i] = 0;
            }
        }
        int count = 0;
        DARE[SUIT_VALUE[i]] = 1;
        if(i < 5)
        {
            hand1.cards[i] = dare.cards[SUIT_VALUE[i]];
        }
        else
        {
            hand2.cards[count] = dare.cards[SUIT_VALUE[count]];
            count++;
        }
        
    }
}

int main(){
    generate_cards();
}