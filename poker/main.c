#define three_card_pl  SEQUENCE_PTR = 0xc000; SEQUENCE_LEN = 132;
#define delete_points   SEQUENCE_PTR = 0xc0c0; SEQUENCE_LEN = 114;
#define change_course_bot SEQUENCE_PTR = 0xca00; SEQUENCE_LEN = 200;
#define change_course_pl SEQUENCE_PTR = 0xcc00; SEQUENCE_LEN = 200;
#define print_four_card_pl SEQUENCE_PTR = 0xcd00; SEQUENCE_LEN = 82;
#define print_five_card_pl SEQUENCE_PTR = 0xce00; SEQUENCE_LEN = 90;
#define print_bot_card SEQUENCE_PTR = 0xcf00; SEQUENCE_LEN = 184;
#define win_player SEQUENCE_PTR = 0xd000; SEQUENCE_LEN = 76;
#define win_bot SEQUENCE_PTR = 0xd100; SEQUENCE_LEN = 84;
#define delete_winner SEQUENCE_PTR = 0xd200; SEQUENCE_LEN = 122;
#define delete_cards SEQUENCE_PTR = 0xd300; SEQUENCE_LEN = 440;

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

extern volatile int THREE_CARD_PL[66];
extern volatile int DELETE_POINTS[57];
extern volatile int CHANGE_COURSE_TO_BOT[100];
extern volatile int CHANGE_COURSE_TO_PL[100];
extern volatile int PRINT_FOUR_CARD_PL[41];
extern volatile int PRINT_FIVE_CARD_PL[45];
extern volatile int PRINT_BOT_CARD[92];
extern volatile int WIN_PL[38];
extern volatile int WIN_BOT[42];
extern volatile int DELETE_WINNER[61];
// extern volatile int DELETE_WINNER[61];


extern volatile int SEQUENCE_LEN;
extern volatile int SEQUENCE_PTR;

extern volatile int WHO_WIN;

extern volatile int HAND1[5];
extern volatile int HAND2[5];

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
     /*13 - 25*/{'D', '2'}, {'D', '3'}, {'D', '4'},{'D', '5'}, {'D', '6'}, {'D', '7'},{'D', '8'}, {'D', '9'}, {'D', 'T'}, {'D', 'J'}, {'D', 'Q'}, {'D', 'K'}, {'D', 'A'},
     /*26 - 38*/{'S', '2'}, {'S', '3'}, {'S', '4'},{'S', '5'}, {'S', '6'}, {'S', '7'},{'S', '8'}, {'S', '9'}, {'S', 'T'}, {'S', 'J'}, {'S', 'Q'}, {'S', 'K'}, {'S', 'A'},
     /*39 - 51*/{'C', '2'}, {'C', '3'}, {'C', '4'},{'C', '5'}, {'C', '6'}, {'C', '7'},{'C', '8'}, {'C', '9'}, {'C', 'T'}, {'C', 'J'}, {'C', 'Q'}, {'C', 'K'}, {'C', 'A'}}};

// dare_c dare = {{0{'H', '2'}, 1{'H', '3'}, 2{'H', '4'},3{'H', '5'}, 4{'H', '6'}, 5{'H', '7'},6{'H', '8'}, 7{'H', '9'}, 8{'H', 'T'}, 9{'H', 'J'}, A{'H', 'Q'}, B{'H', 'K'}, C{'H', 'A'},
//              D{'D', '2'}, E{'D', '3'}, F{'D', '4'},10{'D', '5'}, 11{'D', '6'}, 12{'D', '7'},13{'D', '8'}, 14{'D', '9'}, 15{'D', 'T'}, 16{'D', 'J'}, 17{'D', 'Q'}, 18{'D', 'K'}, 19{'D', 'A'},
//              1A{'S', '2'}, 1B{'S', '3'}, 1C{'S', '4'},1D{'S', '5'}, 1E{'S', '6'}, 1F{'S', '7'},20{'S', '8'}, 21{'S', '9'}, 22{'S', 'T'}, 23{'S', 'J'}, 24{'S', 'Q'}, 25{'S', 'K'}, 26{'S', 'A'},
//              27{'C', '2'}, 28{'C', '3'}, 29{'C', '4'},2A{'C', '5'}, 2B{'C', '6'}, 2C{'C', '7'},2D{'C', '8'}, 2E{'C', '9'}, 2F{'C', 'T'}, 30{'C', 'J'}, 31{'C', 'Q'}, 32{'C', 'K'}, 33{'C', 'A'}}};


int probabilities[10] = {5000, 4200, 400, 200, 39, 14, 2, 0, 0};//вероятность выпадения комбинации
int stronger_probabilities[10] = {5000, 800, 330, 120, 80, 60, 45, 43, 40, 40};//так как нельзя даблы использовать, то так

//give cards each players on hands
//writes cards in hand1 and hand2

void delay(int num)
{
    for(int i = 0; i < num; i++)
    {
        int a = 0;
    }
}

void analysis() {
    COMB1 = 0, COMB2 = 0;
    int fif = 50;

    int res1[13], res2[13], flags[2] = { 0, 0 }; // res - массивы для хранения количества карт каждого достоинства
    int flash[2] = { 0, 0 }; // для обнаружения флеша в комбинации

    for(int i = 0; i < 13; i++)
    {
        res1[i] = 0;
        res2[i] = 0;
    }

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
            hand1.cards[i] = dare.cards[SUIT_VALUE[card_raund]];
            HAND1[i] = hand1.cards[i].value;
            card_raund++;
        }
        else
        {
            hand2.cards[count] = dare.cards[SUIT_VALUE[card_raund]];
            HAND2[count] = hand2.cards[count].value;
            card_raund++;
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
    change_course_pl
    delay(5);
    delete_points
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
            RD_WR = 1;//ждем комманды и сразу же ее удаляем
            delete_points
            if(COMMAND == 4 && BID_PLAYER >= BID_BOT) //check
            {
                delay(2);//изменяем на ход бота
                change_course_bot
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
                    delay(2);//изменяем на ход бота
                    change_course_bot
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
                delay(2);//изменяем на ход бота
                change_course_bot
                int diff = BID_BOT - BID_PLAYER;
                BALANCE_PLAYER -= diff;
                BID_PLAYER = BID_BOT;
                bot_first(bot_stronger_prob);
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
            if(RAUND == 1)
            {
                print_four_card_pl
                delay(3);
                delete_points
            }
            else
            {
                print_five_card_pl
                delay(3);
                delete_points
            }
            RAUND++;
        }
        //MAKE PRINT 4 - 5 CARDS!!!!!!!!!!!!!!!!!!!
    }
    if(FOLD == 1 || WHO_WIN == 2) //бот сдался или игрок выиграл
    {
        print_bot_card
        delay(5);
        delete_points
        BALANCE_PLAYER += BID_BOT;
        BALANCE_PLAYER += BID_PLAYER;
        win_player
        //вывести победителя!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        RD_WR = 1;
        delete_winner
        delete_cards
    }
    else if(FOLD == 2 || WHO_WIN == 1)//игрок сдался или бот выиграл
    {
        print_bot_card
        delay(5);
        delete_points
        BALANCE_BOT += BID_BOT;
        BALANCE_BOT += BID_PLAYER;
        win_bot
        //вывести победителя!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        RD_WR = 1;
        delete_winner
        delete_cards
    }
    return;
}

int hand_iteration;

void insert_seq_player(int num1, int num2)   //REWORK!!!!!!!!!!!!!!!!!!!!!!!
{
    if(hand_iteration < 3)
    {
        if(hand2.cards[hand_iteration].suit == 'H')
        {
            THREE_CARD_PL[num1] = 0xA5;
        }
        else if(hand2.cards[hand_iteration].suit == 'D')
        {
            THREE_CARD_PL[num1] = 0xA6;
        }
        else if(hand2.cards[hand_iteration].suit == 'S')
        {
            THREE_CARD_PL[num1] = 0xA0;
        }
        else
        {
            THREE_CARD_PL[num1] = 0xA3;
        }

        THREE_CARD_PL[num2] = hand2.cards[hand_iteration].value;
    }
    else if(hand_iteration == 3)
    {
        if(hand2.cards[hand_iteration].suit == 'H')
        {
            PRINT_FOUR_CARD_PL[num1] = 0xA5;
        }
        else if(hand2.cards[hand_iteration].suit == 'D')
        {
            PRINT_FOUR_CARD_PL[num1] = 0xA6;
        }
        else if(hand2.cards[hand_iteration].suit == 'S')
        {
            PRINT_FOUR_CARD_PL[num1] = 0xA0;
        }
        else
        {
            PRINT_FOUR_CARD_PL[num1] = 0xA3;
        }

        PRINT_FOUR_CARD_PL[num2] = hand2.cards[hand_iteration].value;
    }
    else if(hand_iteration == 4)
    {
        if(hand2.cards[hand_iteration].suit == 'H')
        {
            PRINT_FIVE_CARD_PL[num1] = 0xA5;
        }
        else if(hand2.cards[hand_iteration].suit == 'D')
        {
            PRINT_FIVE_CARD_PL[num1] = 0xA6;
        }
        else if(hand2.cards[hand_iteration].suit == 'S')
        {
            PRINT_FIVE_CARD_PL[num1] = 0xA0;
        }
        else
        {
            PRINT_FIVE_CARD_PL[num1] = 0xA3;
        }

        PRINT_FIVE_CARD_PL[num2] = hand2.cards[hand_iteration].value;
    }
}

void insert_seq_bot(int num1, int num2)
{
        if(hand1.cards[hand_iteration].suit == 'H')
        {
            PRINT_BOT_CARD[num1] = 0xA5;
        }
        else if(hand1.cards[hand_iteration].suit == 'D')
        {
            PRINT_BOT_CARD[num1] = 0xA6;
        }
        else if(hand1.cards[hand_iteration].suit == 'S')
        {
            PRINT_BOT_CARD[num1] = 0xA0;
        }
        else
        {
            PRINT_BOT_CARD[num1] = 0xA3;
        }

        PRINT_BOT_CARD[num2] = hand1.cards[hand_iteration].value;
}



int main(){
    BALANCE_BOT = 2000;
    BALANCE_PLAYER = 2000;
    for(int i = 0; i < 3; i++)
    {
        
        BID_BOT = 5;
        BID_PLAYER = 10;
        BALANCE_BOT -= BID_BOT;
        BALANCE_PLAYER -= BID_PLAYER;
        // if (i == 0)//убрать
        // {
        //     hand1.cards[0].suit = 'D';
        //     hand1.cards[0].value = 'A';
        //     hand1.cards[1].suit = 'H';
        //     hand1.cards[1].value = 'T';
        //     hand1.cards[2].suit = 'H';
        //     hand1.cards[2].value = 'K';
        //     hand1.cards[3].suit = 'C';
        //     hand1.cards[3].value = 'K';
        //     hand1.cards[4].suit = 'D';
        //     hand1.cards[4].value = '2';

        //     hand2.cards[0].suit = 'C';
        //     hand2.cards[0].value = '3';
        //     hand2.cards[1].suit = 'H';
        //     hand2.cards[1].value = '3';
        //     hand2.cards[2].suit = 'H';
        //     hand2.cards[2].value = '9';
        //     hand2.cards[3].suit = 'S';
        //     hand2.cards[3].value = '6';
        //     hand2.cards[4].suit = 'C';
        //     hand2.cards[4].value = '9';
        // }
        // else
        // {
            generate_cards();
        // }
        hand_iteration = 0;
        insert_seq_player(17, 24);
        insert_seq_bot(13, 20);
        hand_iteration++;
        insert_seq_player(34, 41);
        insert_seq_bot(30, 37); 
        hand_iteration++;
        insert_seq_player(51, 58);
        insert_seq_bot(47, 54);     
        hand_iteration++;
        insert_seq_player(33, 40);
        insert_seq_bot(64, 71); 
        hand_iteration++;
        insert_seq_player(37, 44);
        insert_seq_bot(81, 88); 


        for(int j = 0; j < 6; j++)//надо проверить
        {
            prob_raise[j] = SUIT_VALUE[j]&1;
        }
        // if(i == 0)//убрать
        // {
        //     prob_fold = 1;
        // }
        // else
        // {
        prob_fold = SUIT_VALUE[6]&1;
        // }
        // prob_fold = 1;/////////////////////
        // RD_WR = 1;////////////////////////
        // RD_WR = 1;////////////////////

        RAUND = 1;  

        // if(i == 0)//убрать
        // {
        //     COMB1 = 0;
        //     COMB2 = 0;
        //     WHO_WIN = 1;
        // }
        // else
        // {
        analysis();
        
        //вывод 3 карт
        three_card_pl
        // SEQUENCE_PTR = 0xc000;
        // SEQUENCE_LEN = 132;
        // RD_WR = 1;//убрать.........................
        delay(10);
        //убрали точки у комманды
        delete_points
        // SEQUENCE_PTR = 0xc0c0;
        // SEQUENCE_LEN = 114;

        int bot_stronger_prob = stronger_probabilities[COMB1];//вероятность что у игрока будет комбинация лучше
        raund(bot_stronger_prob);
        BID_BOT = 0;
        BID_PLAYER = 0;
        // RD_WR = 1;//убрать.........................

    }
    return 0;
}
