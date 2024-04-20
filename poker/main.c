
extern volatile int SUIT_VALUE[10];
extern volatile int RD_WR;
extern volatile int DARE[52];

extern volatile int COMB1;
extern volatile int COMB2;

extern volatile int COMMAND;
extern volatile int BID_COMMAND;

extern volatile int BALANCE_BOT;
extern volatile int BALANCE_PLAYER;
extern volatile int BID_BOT;
extern volatile int BID_PLAYER;

extern volatile int FOLD_BOT;

extern volatile int FOLD_PLAYER;
extern volatile int RAUND;

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

int probabilities[10] = {5000, 4200, 400, 200, 39, 14, 2, 0, 0};
int stronger_probabilities[10] = {4800, 4600, 800, 400, 200, 161, 147, 0, 0, 0};
int raise_count = 0;

//give cards each players on hands
//writes cards in hand1 and hand2
void generate_cards()
{
    for(int i = 0; i < 10; i++)
    {
        while(DARE[SUIT_VALUE[i]] == 1)
        {
            SUIT_VALUE[i] = (SUIT_VALUE[i] + 1);
            if(SUIT_VALUE[i] >= 52)
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


int bot_first()
{
    if(COMMAND == 4 && BID_PLAYER >= BID_BOT) //IF check THEN call/check
    {
        int diff = BID_PLAYER - BID_BOT;
        BALANCE_BOT -= diff;
        BID_BOT = BID_PLAYER;
        return 0;
    }
    else if(COMMAND == 3) //IF raise THEN call/check
    {
        int diff = BID_PLAYER - BID_BOT;
        BALANCE_BOT -= diff;
        BID_BOT = BID_PLAYER;
        return 0;
    }
    else if(COMMAND == 2) //IF call THEN check
    {
        return 0;
    }
    return 0;
}



int main(){
    int fold = 0;
    generate_cards();
    COMB1 = 2;
    RAUND = 1;
    int bot_stronger_prob = stronger_probabilities[COMB1];//вероятность что у игрока будет комбинация лучше
    while(1)//3 cards
    {
        RD_WR = 1;//ждем комманды
        if(COMMAND == 4 && BID_PLAYER >= BID_BOT) //check
        {
            if(raise_count <= 2)
            {
                bot_stronger_prob = bot_stronger_prob - 400;
            }

            bot_first();
            break;
        }
        else if(COMMAND == 3) //raise
        {
            if(raise_count <= 2)
            {
                bot_stronger_prob = bot_stronger_prob - 400;
            }
            BALANCE_PLAYER -= BID_COMMAND;
            BID_PLAYER += BID_COMMAND;
            raise_count++;
            if(raise_count > 2)
                bot_stronger_prob += 200;

            bot_first();
        }
        else if(COMMAND == 2 && BID_BOT > BID_PLAYER) //call
        {
            int diff = BID_BOT - BID_PLAYER;
            BALANCE_PLAYER -= diff;
            BID_PLAYER = BID_BOT;
        }
        else if(COMMAND == 1)
        {
            FOLD_PLAYER = 1;
            break;
        }
    }
    RAUND = 2;
    
    // RD_WR = 1;//выдача 4 карты
    // if(FOLD_PLAYER == 1)//игрок спасовал
    // {
    //     return 0;
    // }

    // if(bot_stronger_prob > 5200)//если бот не уверен в своих картах, то он пасует   
    // { 
    //     FOLD_BOT = 1;
    //     return 0;
    // }
    // while(1)
    // {
    //     if(COMMAND == 4 && BID_PLAYER >= BID_BOT) //check
    //     {
    //         bot_first();
    //         break;
    //     }
    //     else if(COMMAND == 3) //raise
    //     {
    //         BALANCE_PLAYER -= BID_COMMAND;
    //         BID_PLAYER += BID_COMMAND;
    //         bot_first();

    //     }
    //     else if(COMMAND == 2 && BID_BOT > BID_PLAYER) //call
    //     {
    //         int diff = BID_BOT - BID_PLAYER;
    //         BALANCE_PLAYER -= diff;
    //         BID_PLAYER = BID_BOT;
    //         bot_first();
    //     }
    //     else if(COMMAND == 1)
    //     {
    //         FOLD_PLAYER = 1;
    //     }
    //     RD_WR = 2;
    // }
    return 0;
}
