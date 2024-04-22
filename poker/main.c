
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

extern volatile int FOLD;

extern volatile int RAUND;

extern volatile int SEQUENCE[118];
extern volatile int SEQUENCE_LEN;

extern volatile int WHO_WIN;

// typedef struct Card{
//     char suit;
//     char value;
// }Card;

typedef struct Card{
    int suit;
    int value;
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
// dare_c dare = {{{'H', '2'}, {'H', '3'}, {'H', '4'},{'H', '5'}, {'H', '6'}, {'H', '7'},{'H', '8'}, {'H', '9'}, {'H', 'T'}, {'H', 'J'}, {'H', 'Q'}, {'H', 'K'}, {'H', 'A'},
//                 {'D', '2'}, {'D', '3'}, {'D', '4'},{'D', '5'}, {'D', '6'}, {'D', '7'},{'D', '8'}, {'D', '9'}, {'D', 'T'}, {'D', 'J'}, {'D', 'Q'}, {'D', 'K'}, {'D', 'A'},
//                 {'S', '2'}, {'S', '3'}, {'S', '4'},{'S', '5'}, {'S', '6'}, {'S', '7'},{'S', '8'}, {'S', '9'}, {'S', 'T'}, {'S', 'J'}, {'S', 'Q'}, {'S', 'K'}, {'S', 'A'},
//                 {'C', '2'}, {'C', '3'}, {'C', '4'},{'C', '5'}, {'C', '6'}, {'C', '7'},{'C', '8'}, {'C', '9'}, {'C', 'T'}, {'C', 'J'}, {'C', 'Q'}, {'C', 'K'}, {'C', 'A'}}};

dare_c dare = {{{48, 50}, {48, 51}, {48, 52},{48, 53}, {48, 54}, {48, 55},{48, 56}, {48, 57}, {48, 84}, {48, 74}, {48, 81}, {48, 75}, {48, 65},
     /*13 - 25*/{68, 50}, {68, 51}, {68, 52},{68, 53}, {68, 54}, {68, 55},{68, 56}, {68, 57}, {68, 84}, {68, 74}, {68, 81}, {68, 75}, {68, 65},
     /*26 - 38*/{83, 50}, {83, 51}, {83, 52},{83, 53}, {83, 54}, {83, 55},{83, 56}, {83, 57}, {83, 84}, {83, 74}, {83, 81}, {83, 75}, {83, 65},
     /*39 - 51*/{67, 50}, {67, 51}, {67, 52},{67, 53}, {67, 54}, {67, 55},{67, 56}, {67, 57}, {67, 84}, {67, 74}, {67, 81}, {67, 75}, {67, 65}}};


int probabilities[10] = {5000, 4200, 400, 200, 39, 14, 2, 0, 0};
int stronger_probabilities[10] = {4800, 4600, 800, 400, 200, 161, 147, 0, 0, 0};//так как нельзя даблы использовать, то так

//give cards each players on hands
//writes cards in hand1 and hand2
int res1[13] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, res2[13] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, flags[2] = { 0, 0 }; // res - массивы для хранения количества карт каждого достоинства
int flash[2] = { 0, 0 }; // для обнаружения флеша в комбинации

void analysis() {
    COMB1 = 0, COMB2 = 0;
    int fif = 50;

    for (int i = 0; i < 5; i++) {
        // if (hand1.cards[i].value <= 0x39) {
        //     res1[hand1.cards[i].value - '2']++;
        //     continue;
        // }
        if(hand1.cards[i].value <= 0x39)
        {
            res1[hand1.cards[i].value - fif]++;
            continue;
        }
        if (hand1.cards[i].value == 84) {
            res1[8]++;
            continue;
        }

        if (hand1.cards[i].value == 74) {
            res1[9]++;
            continue;
        }

        if (hand1.cards[i].value == 81) {
            res1[10]++;
            continue;
        }

        if (hand1.cards[i].value == 75) {
            res1[11]++;
            continue;
        }

        if (hand1.cards[i].value == 65) {
            res1[12]++;
            continue;
        }
    }
        
    for (int i = 0; i < 5; i++) {
        // if(hand2.cards[i].value <= 0x39)
        // {
        //     res2[hand2.cards[i].value - 50]++;
        //     continue;
        // }
        if(hand2.cards[i].value <= 0x39)
        {
            res2[hand2.cards[i].value - fif]++;
            continue;
        }

        if (hand2.cards[i].value == 84) {
            res2[8]++;
            continue;
        }

        if (hand2.cards[i].value == 74) {
            res2[9]++;
            continue;
        }

        if (hand2.cards[i].value == 81) {
            res2[10]++;
            continue;
        }

        if (hand2.cards[i].value == 75) {
            res2[11]++;
            continue;
        }

        if (hand2.cards[i].value == 65) {
            res2[12]++;
            continue;
        }
    }

    if (hand1.cards[0].suit == hand1.cards[1].suit && hand1.cards[0].suit == hand1.cards[2].suit && hand1.cards[0].suit == hand1.cards[3].suit && hand1.cards[0].suit == hand1.cards[4].suit) {
        flash[0] = 1; // если 5 карт одной масти, то это флеш
    }

    if (hand2.cards[0].suit == hand2.cards[1].suit && hand2.cards[0].suit == hand2.cards[2].suit && hand2.cards[0].suit == hand2.cards[3].suit && hand2.cards[0].suit == hand2.cards[4].suit) {
        flash[1] = 1; // аналогично для второй руки
    }
    
    for (int i = 0; i < 13; i++) {
        if (res1[i] == 1) {
            if (i <= 8 && res1[i + 1] == 1 && res1[i + 2] == 1 && res1[i + 3] == 1 && res1[i + 4] == 1) { // если стрит
                if (flash[0] == 1) {
                    if (i == 8) { // стрит и флеш и первая карта в порядке по возрастанию это 10 => флеш рояль
                        COMB1 = 9; 
                        break;
                    }

                    else { // если первая карта не 10, то стрит флеш
                        COMB1 = 8;
                        break;
                    }
                }

                else { // стрит, но не флеш
                    COMB1 = 4;
                    break;
                }
            }

            else if (flash[0] == 1) { // просто флеш
                COMB1 = 5;
            }
        }

        if (res1[i] == 4) { // каре
            COMB1 = 7;
            break;
        }

        if (res1[i] == 2) {
            for (int k = i + 1; k < 13; k++) {
                if (res1[k] == 2) { // две пары
                    COMB1 = 2;
                    flags[0] = 1;
                    break;
                }

                if (res1[k] == 3) { // фулл хаус
                    COMB1 = 6;
                    flags[0] = 1;
                    break;
                }
            }

            if (flags[0] == 0) { // если две пары и фулл хаус не подошли, то это пара
                COMB1 = 1;
            }

            break;
        }
        
        if (res1[i] == 3) {
            for (int k = i + 1; k < 13; k++) {
                if (res1[k] == 2) { // фулл хаус
                    COMB1 = 6;
                    flags[0] = 1;
                    break;
                }
            }

            if (flags[0] == 0) { // три карты одного достоинства, но не фулл хаус => сет
                COMB1 = 3;
            }

            break;
        }
    }

    for (int i = 0; i < 13; i++) { // аналогично для второй руки
        if (res2[i] == 1) {
            if (i <= 8 && res2[i + 1] == 1 && res2[i + 2] == 1 && res2[i + 3] == 1 && res2[i + 4] == 1) {
                if (flash[1] == 1) {
                    if (i == 8) {
                        COMB2 = 9;
                        break;
                    }

                    else {
                        COMB2 = 8;
                        break;
                    }
                }

                else {
                    COMB2 = 4;
                    break;
                }
            }

            else if (flash[1] == 1) {
                COMB2 = 5;
            }
        }

        if (res2[i] == 4) {
            COMB2 = 7;
            break;
        }

        if (res2[i] == 2) {
            for (int k = i + 1; k < 13; k++) {
                if (res2[k] == 2) {
                    COMB2 = 2;
                    flags[1] = 1;
                    break;
                }

                if (res2[k] == 3) {
                    COMB2 = 6;
                    flags[1] = 1;
                    break;
                }
            }

            if (flags[1] == 0) {
                COMB2 = 1;
            }

            break;
        }

        if (res2[i] == 3) {
            for (int k = i + 1; k < 13; k++) {
                if (res2[k] == 2) {
                    COMB2 = 6;
                    flags[1] = 1;
                    break;
                }
            }

            if (flags[1] == 0) {
                COMB2 = 3;
            }

            break;
        }
    }

    if (COMB1 > COMB2) {
        WHO_WIN = 1;
    }

    if (COMB1 < COMB2) {
        WHO_WIN = 2;
    }

    if (COMB1 == COMB2) {
        for (int i = 12; i >= 0; i--) {
            if (res1[i] == 1 && res2[i] == 0) { // старшая карта у первой руки
                WHO_WIN = 1;
                return; // идём от старших карт к младшим - если нашли различия у рук в наличии какой-либо карты, то дальше нет смысла искать старшую карту
            }

            if (res2[i] == 1 && res1[i] == 0) { // старшая карта у второй руки
                WHO_WIN = 2;
                return;
            }
        }

        WHO_WIN = 0; // достоинства всех карт первой руки совпадают с достоинствами всех карт второй руки => ничья
    }
}

void generate_cards()
{
    int count = 0;
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
        DARE[SUIT_VALUE[i]] = 1;
        if(i < 5)
        {
            hand1.cards[i] = dare.cards[SUIT_VALUE[i]];

        }
        else
        {
            hand2.cards[count] = dare.cards[SUIT_VALUE[i]];
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

int raund(int bot_stronger_prob)
{
    for(int i = 0; i < 3; i++)
    {
        int raise_count = 0;
        while(1)
        {
            if(RAUND > 1 && bot_stronger_prob > 5200)//бот сдается
            {
                FOLD = 2;
                return RAUND;
            }
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
                if(raise_count < 7) //raise only if raise_count < 7
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
            }
            else if(COMMAND == 2) //call
            {
                // int diff = BID_BOT - BID_PLAYER;
                // BALANCE_PLAYER -= diff;
                // BID_PLAYER = BID_BOT;
            }
            else if(COMMAND == 1)
            {
                FOLD = 1;
                break;
            }
        }
        RAUND++;
        if(FOLD == 1)
        {
            return RAUND;
        }
    }
    return 0;
}
int hand_iteration = 0;

void insert_seq_player(int num1, int num2)
{
    if(hand2.cards[hand_iteration].suit == 'H')
    {
        SEQUENCE[num1] = 0x31;
    }
    else if(hand2.cards[hand_iteration].suit == 'D')
    {
        SEQUENCE[num1] = 0x32;
    }
    else if(hand2.cards[hand_iteration].suit == 'S')
    {
        SEQUENCE[num1] = 0x34;
    }
    else
    {
        SEQUENCE[num1] = 0x37;
    }

    SEQUENCE[num2] = hand2.cards[hand_iteration].value;
}


int main(){
    // int kek[10] = {0};
    int fold = 0;
    generate_cards();
    //16 25
    //39 48
    //62 71
    //85 94
    //108 117
    insert_seq_player(16, 25);
    hand_iteration++;
    insert_seq_player(39, 48);
    hand_iteration++;
    insert_seq_player(62, 71);
    hand_iteration++;
    insert_seq_player(85, 94);
    hand_iteration++;
    insert_seq_player(108, 117);

    analysis();
    RD_WR = 1;////////////////////
    SEQUENCE_LEN = 63;
    RAUND = 1;
    int bot_stronger_prob = stronger_probabilities[COMB1];//вероятность что у игрока будет комбинация лучше
    raund(bot_stronger_prob);
    return 0;
}
