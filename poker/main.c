
extern volatile int SUIT_VALUE[30];
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
extern volatile int SEQUENCE_PTR;

extern volatile int WHO_WIN;

typedef struct Card{
    char suit;
    char value;
}Card;

// typedef struct Card{
//     int suit;
//     int value;
// }Card;

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

// dare_c dare = {{{0x48, 50}, {0x48, 51}, {0x48, 52},{0x48, 53}, {0x48, 54}, {0x48, 55},{0x48, 56}, {0x48, 57}, {0x48, 84}, {0x48, 74}, {0x48, 81}, {0x48, 75}, {0x48, 65},
//      /*13 - 25*/{0x68, 50}, {0x68, 51}, {0x68, 52},{0x68, 53}, {0x68, 54}, {0x68, 55},{0x68, 56}, {0x68, 57}, {0x68, 84}, {0x68, 74}, {0x68, 81}, {0x68, 75}, {0x68, 65},
//      /*26 - 38*/{0x83, 50}, {0x83, 51}, {0x83, 52},{0x83, 53}, {0x83, 54}, {0x83, 55},{0x83, 56}, {0x83, 57}, {0x83, 84}, {0x83, 74}, {0x83, 81}, {0x83, 75}, {0x83, 65},
//      /*39 - 51*/{0x67, 50}, {0x67, 51}, {0x67, 52},{0x67, 53}, {0x67, 54}, {0x67, 55},{0x67, 56}, {0x67, 57}, {0x67, 84}, {0x67, 74}, {0x67, 81}, {0x67, 75}, {0x67, 65}}};



int probabilities[10] = {5000, 4200, 400, 200, 39, 14, 2, 0, 0};//вероятность выпадения комбинации
int stronger_probabilities[10] = {5000, 800, 330, 120, 80, 60, 45, 43, 40, 40};//так как нельзя даблы использовать, то так

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

int card_raund = 0;
void generate_cards()
{
    int count = 0;
    for(int i = 0; i < 10; i++)
    {
        if(i < 5)
        {
            hand1.cards[card_raund] = dare.cards[SUIT_VALUE[card_raund]];
            card_raund++;
        }
        else
        {
            hand2.cards[count] = dare.cards[SUIT_VALUE[card_raund]];
            count++;
        }
        
    }
}

int prob_raise[6] = {0};
int pointer_raise = 0;
int prob_fold;
void bot_first(int bot_stronger_prob)
{
    if(BID_PLAYER > BID_BOT)//IF raise THEN call
    {
        int diff = BID_PLAYER - BID_BOT;
        BALANCE_BOT -= diff;
        BID_BOT = BID_PLAYER;
    }
    else if(BID_PLAYER == BID_BOT) //IF IBD IS EQUAL THEN THERE IS PROBABILITY OF BOT RAISE
    {
        if(pointer_raise < 6)
        {
            if(prob_raise[pointer_raise] == 1) //IF BIT == 1 THEN RAISE 15
            {
                int diff = 15;
                BALANCE_BOT -= diff;
                BID_BOT += diff;
            }
            pointer_raise++;
            
        }
    }
    return;
}

void raund(int bot_stronger_prob)
{
    //(НАДО)удаляю строчку анализа
    for(int i = 0; i < 3; i++)
    {
        int raise_count = 0;
        while(1)
        {
            if(RAUND > 1 && bot_stronger_prob > 6000)//бот сдается
            {
                if(prob_fold == 1)
                {
                    FOLD = 1;
                    break;
                }

            }
            RD_WR = 1;//ждем комманды
            if(COMMAND == 4 && BID_PLAYER >= BID_BOT) //check
            {

                bot_first(bot_stronger_prob);
                if(BID_BOT > BID_PLAYER)
                {
                    continue;
                }
                break;
            }
            else if(COMMAND == 3 && BID_COMMAND <= 20 && BID_PLAYER >= BID_BOT) //raise
            {
                if(raise_count < 7) //raise only if raise_count < 7
                {
                    BALANCE_PLAYER -= BID_COMMAND;
                    BID_PLAYER += BID_COMMAND;
                    raise_count++;
                    if(RAUND == 1)
                    {
                        if(COMB1 == 0)
                            bot_stronger_prob += 300; //после 4 повышения
                        else if(COMB1 == 1)
                            bot_stronger_prob += 1150; //после 5 повышения
                        else if(COMB1 == 2)
                            bot_stronger_prob += 1000; //после 6 повышения
                    }
                    bot_first(bot_stronger_prob);
                }
            }
            else if(COMMAND == 2 &&  BID_PLAYER < BID_BOT) //call
            {
                int diff = BID_BOT - BID_PLAYER;
                BALANCE_PLAYER -= diff;
                BID_PLAYER = BID_BOT;
            }
            else if(COMMAND == 1)
            {
                FOLD = 2;
                break;
            }
        }
        if(FOLD > 0)
        {
            break;
        }
        else{
            RAUND++;
        }
        //MAKE PRINT 4 - 5 CARDS!!!!!!!!!!!!!!!!!!!
    }
    if(FOLD == 1 || WHO_WIN == 2) //бот сдался или игрок выиграл
    {
        BALANCE_PLAYER += BID_BOT;
        BALANCE_PLAYER += BID_PLAYER;
        //вывести победителя!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    }
    else if(FOLD == 2 || WHO_WIN == 1)//игрок сдался или бот выиграл
    {
        BALANCE_BOT += BID_BOT;
        BALANCE_BOT += BID_PLAYER;
        //вывести победителя!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    }
    return;
}



// int hand_iteration = 0;
// void insert_seq_player(int num1, int num2)   //REWORK!!!!!!!!!!!!!!!!!!!!!!!
// {
//     if(hand2.cards[hand_iteration].suit == 'H')
//     {
//         SEQUENCE[num1] = 0x31;
//     }
//     else if(hand2.cards[hand_iteration].suit == 'D')
//     {
//         SEQUENCE[num1] = 0x32;
//     }
//     else if(hand2.cards[hand_iteration].suit == 'S')
//     {
//         SEQUENCE[num1] = 0x34;
//     }
//     else
//     {
//         SEQUENCE[num1] = 0x37;
//     }

//     SEQUENCE[num2] = hand2.cards[hand_iteration].value;
// }


int main(){
    BALANCE_BOT = 2000;
    BALANCE_PLAYER = 2000;
    for(int i = 0; i < 3; i++)
    {
        BID_BOT = 5;
        BID_PLAYER = 10;
        BALANCE_BOT -= BID_BOT;
        BALANCE_PLAYER -= BID_PLAYER;
        if (i == 0)//убрать
        {
            hand1.cards[0].suit = 'H';
            hand1.cards[0].value = '2';
            hand1.cards[1].suit = 'S';
            hand1.cards[1].value = '3';
            hand1.cards[2].suit = 'C';
            hand1.cards[2].value = '4';
            hand1.cards[3].suit = 'H';
            hand1.cards[3].value = 'A';
            hand1.cards[4].suit = 'H';
            hand1.cards[4].value = '7';

            hand2.cards[0].suit = 'C';
            hand2.cards[0].value = '2';
            hand2.cards[1].suit = 'D';
            hand2.cards[1].value = '3';
            hand2.cards[2].suit = 'D';
            hand2.cards[2].value = '4';
            hand2.cards[3].suit = 'D';
            hand2.cards[3].value = 'K';
            hand2.cards[4].suit = 'D';
            hand2.cards[4].value = '7';
        }
        else
        {
            generate_cards();
        }

        // insert_seq_player(16, 25);
        // hand_iteration++;
        // insert_seq_player(39, 48);
        // hand_iteration++;
        // insert_seq_player(62, 71);
        // hand_iteration++;
        // insert_seq_player(85, 94);
        // hand_iteration++;
        // insert_seq_player(108, 117);
        RAUND = 1;
        for(int j = 0; j < 6; j++)//надо проверить
        {
            prob_raise[i] = SUIT_VALUE[i]&1;
        }


        if(i == 0)//убрать
        {
            prob_fold = 1;
        }
        else
        {
            prob_fold = SUIT_VALUE[6]&1;
        }
        // prob_fold = 1;/////////////////////
        // RD_WR = 1;////////////////////////
        // SEQUENCE_PTR = 0xc000;
        // SEQUENCE_LEN = 64;
        // RD_WR = 1;////////////////////

        if(i == 0)//убрать
        {
            COMB1 = 0;
            COMB2 = 0;
            WHO_WIN = 1;
        }
        else
        {
            analysis();
        }

        // RD_WR = 1;////////////////////

        int bot_stronger_prob = stronger_probabilities[COMB1];//вероятность что у игрока будет комбинация лучше
        raund(bot_stronger_prob);
        BID_BOT = 0;
        BID_PLAYER = 0;
        RD_WR = 1;//убрать.........................
    }
    return 0;
}
