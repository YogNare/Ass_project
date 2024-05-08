/***************************************************************************************************************************/
//use this to compile file: clang -target cdm -o  file.asm -S main.c
//use this to create .img file: cocas -t cdm16 file.asm start.asm -o out.img
/***************************************************************************************************************************/
#define three_card_pl  SEQUENCE_PTR = 0xc000; SEQUENCE_LEN = 132; //display 3 player's cards
#define delete_points   SEQUENCE_PTR = 0xc0c0; SEQUENCE_LEN = 114; //clear "command"  
#define change_move_bot SEQUENCE_PTR = 0xca00; SEQUENCE_LEN = 200; //change move to bot
#define change_move_pl SEQUENCE_PTR = 0xcc00; SEQUENCE_LEN = 194;  //change move to player
#define print_four_card_pl SEQUENCE_PTR = 0xcd00; SEQUENCE_LEN = 82; //display player's fourth card
#define print_five_card_pl SEQUENCE_PTR = 0xd500; SEQUENCE_LEN = 98; //display player's fifth card
#define print_bot_card SEQUENCE_PTR = 0xcf00; SEQUENCE_LEN = 184;  //display 5 bot's cards
#define win_player SEQUENCE_PTR = 0xd000; SEQUENCE_LEN = 76;       //display player victory
#define win_bot SEQUENCE_PTR = 0xd100; SEQUENCE_LEN = 84;          //display bot victory
#define delete_winner SEQUENCE_PTR = 0xd200; SEQUENCE_LEN = 122;   //delete winner
#define delete_cards SEQUENCE_PTR = 0xd300; SEQUENCE_LEN = 330;    //remove all cards occurencess
#define final_win_bot SEQUENCE_PTR = 0xd600; SEQUENCE_LEN = 96;    //display final bot victory
#define final_win_pl SEQUENCE_PTR = 0xd700; SEQUENCE_LEN = 88;     //display final player victory
/***************************************************************************************************************************/
extern volatile int SUIT_VALUE[30];     //30 random values
extern volatile int RD_WR;              //memory cell responsible for stopping the processor
// extern volatile int DARE[52];           
/***************************************************************************************************************************/
extern volatile int COMB1; //Bot's cards combinations
extern volatile int COMB2; //Player's cards combinations
/***************************************************************************************************************************/
extern volatile int COMMAND;     //what command was entered
extern volatile int BID_COMMAND; //what bid was entered
/***************************************************************************************************************************/
extern volatile int BALANCE_BOT;    //bot's balance
extern volatile int BALANCE_PLAYER; //player's balance
extern volatile int BID_BOT;        //bot's bid
extern volatile int BID_PLAYER;     //player's bid
/***************************************************************************************************************************/
extern volatile int FOLD;  //1 - if bot fold, 2 - if player fold
/***************************************************************************************************************************/
extern volatile int ROUND; //round of the game
/***************************************************************************************************************************/
                                        //interface arrays
extern volatile int THREE_CARD_PL[66];
extern volatile int DELETE_POINTS[57];
extern volatile int CHANGE_COURSE_TO_BOT[100];
extern volatile int CHANGE_COURSE_TO_PL[97];
extern volatile int PRINT_FOUR_CARD_PL[41];
extern volatile int PRINT_FIVE_CARD_PL[49];
extern volatile int PRINT_BOT_CARD[92];
extern volatile int WIN_PL[38];
extern volatile int WIN_BOT[42];
extern volatile int DELETE_WINNER[61];
// extern volatile int DELETE_WINNER[61];
/***************************************************************************************************************************/
                                    //two memory cells that help display the interface
extern volatile int SEQUENCE_LEN;
extern volatile int SEQUENCE_PTR;
/***************************************************************************************************************************/
extern volatile int WHO_WIN; //memory cell showing the winner
/***************************************************************************************************************************/
extern volatile int HAND1[5];
extern volatile int HAND2[5];
/***************************************************************************************************************************/
                            //card, hand and dare structures
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

Hand hand1, hand2;      //hand1 - robot's hand, hand2 - player's hand
dare_c dare = {{{'H', '2'}, {'H', '3'}, {'H', '4'},{'H', '5'}, {'H', '6'}, {'H', '7'},{'H', '8'}, {'H', '9'}, {'H', 'T'}, {'H', 'J'}, {'H', 'Q'}, {'H', 'K'}, {'H', 'A'},
     /*13 - 25*/{'D', '2'}, {'D', '3'}, {'D', '4'},{'D', '5'}, {'D', '6'}, {'D', '7'},{'D', '8'}, {'D', '9'}, {'D', 'T'}, {'D', 'J'}, {'D', 'Q'}, {'D', 'K'}, {'D', 'A'},
     /*26 - 38*/{'S', '2'}, {'S', '3'}, {'S', '4'},{'S', '5'}, {'S', '6'}, {'S', '7'},{'S', '8'}, {'S', '9'}, {'S', 'T'}, {'S', 'J'}, {'S', 'Q'}, {'S', 'K'}, {'S', 'A'},
     /*39 - 51*/{'C', '2'}, {'C', '3'}, {'C', '4'},{'C', '5'}, {'C', '6'}, {'C', '7'},{'C', '8'}, {'C', '9'}, {'C', 'T'}, {'C', 'J'}, {'C', 'Q'}, {'C', 'K'}, {'C', 'A'}}};

// dare_c dare = {{0{'H', '2'}, 1{'H', '3'}, 2{'H', '4'},3{'H', '5'}, 4{'H', '6'}, 5{'H', '7'},6{'H', '8'}, 7{'H', '9'}, 8{'H', 'T'}, 9{'H', 'J'}, A{'H', 'Q'}, B{'H', 'K'}, C{'H', 'A'},
//              D{'D', '2'}, E{'D', '3'}, F{'D', '4'},10{'D', '5'}, 11{'D', '6'}, 12{'D', '7'},13{'D', '8'}, 14{'D', '9'}, 15{'D', 'T'}, 16{'D', 'J'}, 17{'D', 'Q'}, 18{'D', 'K'}, 19{'D', 'A'},
//              1A{'S', '2'}, 1B{'S', '3'}, 1C{'S', '4'},1D{'S', '5'}, 1E{'S', '6'}, 1F{'S', '7'},20{'S', '8'}, 21{'S', '9'}, 22{'S', 'T'}, 23{'S', 'J'}, 24{'S', 'Q'}, 25{'S', 'K'}, 26{'S', 'A'},
//              27{'C', '2'}, 28{'C', '3'}, 29{'C', '4'},2A{'C', '5'}, 2B{'C', '6'}, 2C{'C', '7'},2D{'C', '8'}, 2E{'C', '9'}, 2F{'C', 'T'}, 30{'C', 'J'}, 31{'C', 'Q'}, 32{'C', 'K'}, 33{'C', 'A'}}};

/***************************************************************************************************************************/
// int probabilities[10] = {5000, 4200, 400, 200, 39, 14, 2, 0, 0};                //probability of getting a combination
int stronger_probabilities[10] = {5000, 800, 330, 120, 80, 60, 45, 43, 40, 40}; //the probability that the player has a better hand

/***************************************************************************************************************************/
// void delay(int num)     //delay for display
// {
//     for(int i = 0; i < num; i++)
//     {
//         int a = 0;
//     }
// }
/***************************************************************************************************************************/
void analysis() {       //analysis of card combinations
    COMB1 = 0, COMB2 = 0;
    int fif = 50;

    int res1[13], res2[13], flags[2] = { 0, 0 }; // res - arrays for storing the number of cards of each value
    int flash[2] = { 0, 0 }; //to detect a flush in a combination

    for (int i = 0; i < 13; i++) //reset res1 and res2
    {
        res1[i] = 0;
        res2[i] = 0;
    }

    for (int i = 0; i < 5; i++) {
        // if (hand1.cards[i].value <= 0x39) {
        //     res1[hand1.cards[i].value - '2']++;
        //     continue;
        // }
        if (hand1.cards[i].value <= 0x39)
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
        if (hand2.cards[i].value <= 0x39)
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
        flash[0] = 1; // if 5 cards are of the same suit, then it is a flush
    }

    if (hand2.cards[0].suit == hand2.cards[1].suit && hand2.cards[0].suit == hand2.cards[2].suit && hand2.cards[0].suit == hand2.cards[3].suit && hand2.cards[0].suit == hand2.cards[4].suit) {
        flash[1] = 1; // similar for the second hand
    }

    for (int i = 0; i < 13; i++) {
        if (res1[i] == 1) {
            if (i <= 8 && res1[i + 1] == 1 && res1[i + 2] == 1 && res1[i + 3] == 1 && res1[i + 4] == 1) { // if it's a straight
                if (flash[0] == 1) {
                    if (i == 8) { //straight and flush and the first card in ascending order is 10 => royal flush
                        COMB1 = 9;
                        break;
                    }

                    else { // if the first card is not 10, then it is a straight flush
                        COMB1 = 8;
                        break;
                    }
                }

                else { // straight but not flush
                    COMB1 = 4;
                    break;
                }
            }

            else if (flash[0] == 1) { // just a flush
                COMB1 = 5;
            }
        }

        if (res1[i] == 4) { // four of kind
            COMB1 = 7;
            break;
        }

        if (res1[i] == 2) {
            for (int k = i + 1; k < 13; k++) {
                if (res1[k] == 2) { // two pairs
                    COMB1 = 2;
                    flags[0] = 1;
                    break;
                }

                if (res1[k] == 3) { // full house
                    COMB1 = 6;
                    flags[0] = 1;
                    break;
                }
            }

            if (flags[0] == 0) { // if two pair and a full house don't match, then it's a pair
                COMB1 = 1;
            }

            break;
        }

        if (res1[i] == 3) {
            for (int k = i + 1; k < 13; k++) {
                if (res1[k] == 2) { // full house
                    COMB1 = 6;
                    flags[0] = 1;
                    break;
                }
            }

            if (flags[0] == 0) { // three cards of the same value, but not a full house => set
                COMB1 = 3;
            }

            break;
        }
    }

    for (int i = 0; i < 13; i++) { // similar for the second hand
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
            if (COMB1 == 1 || COMB1 == 2) { // if a pair or two pairs
                if (res1[i] == 2 && res1[i] > res2[i]) { // first hand's highest card
                    WHO_WIN = 1;
                    return; //we go from high cards to low ones - if we find differences in the hands in the presence of any card, then there is no point in further looking for the high card
                }

                if (res2[i] == 2 && res2[i] > res1[i]) { // second hand's highest card
                    WHO_WIN = 2;
                    return;
                }
            }

            else if (COMB1 == 3) {
                if (res1[i] == 3 && res1[i] > res2[i]) {
                    WHO_WIN = 1;
                    return; 
                }

                if (res2[i] == 3 && res2[i] > res1[i]) {
                    WHO_WIN = 2;
                    return;
                }
            }

            else if (COMB1 == 7) {
                if (res1[i] == 4 && res1[i] > res2[i]) {
                    WHO_WIN = 1;
                    return;
                }

                if (res2[i] == 4 && res2[i] > res1[i]) {
                    WHO_WIN = 2;
                    return;
                }
            }

            else {
                if (res1[i] > 0 && res2[i] == 0) {
                    WHO_WIN = 1;
                    return;
                }

                if (res2[i] > 0 && res1[i] == 0) {
                    WHO_WIN = 2;
                    return;
                }
            }
        }

        WHO_WIN = 0; //the values ​​of all cards of the first hand coincide with the values ​​of all cards of the second hand => draw
    }
}

/***************************************************************************************************************************/
int card_one_round = 0;
void generate_cards()//generate cards for hand1 and hand2
{
    int count = 0;
    for(int i = 0; i < 10; i++)
    {
        if(i < 5)
        {
            hand1.cards[i] = dare.cards[SUIT_VALUE[card_one_round]];
            HAND1[i] = hand1.cards[i].value;
            card_one_round++;
        }
        else
        {
            hand2.cards[count] = dare.cards[SUIT_VALUE[card_one_round]];
            HAND2[count] = hand2.cards[count].value;
            card_one_round++;
            count++;
        }
        
    }
}
/***************************************************************************************************************************/
int prob_raise[6] = {0}; //the probability that the bot will increase bid
int pointer_raise = 0;
int prob_fold; //the probability that the bot will fold

void bot_logic(int bot_stronger_prob)//logic for bot
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
    change_move_pl
    // delay(5);
    delete_points
    return;
}
/***************************************************************************************************************************/
//one round
void one_round(int bot_stronger_prob)
{
    for(int i = 0; i < 3; i++)
    {
        int raise_count = 0;
        while(1)
        {
            if(ROUND > 1 && bot_stronger_prob > 6000)//Bot fold
            {
                if(prob_fold == 1)
                {
                    FOLD = 1;
                    break;
                }

            }
            RD_WR = 1;//We wait for the command and immediately delete it
            delete_points
            if(COMMAND == 4 && BID_PLAYER >= BID_BOT) //IF check THEN
            {
                // delay(2);
                change_move_bot
                bot_logic(bot_stronger_prob);
                if(BID_BOT > BID_PLAYER)
                {
                    continue;
                }
                break;
            }
            else if(COMMAND == 3 && BID_COMMAND <= 20 && BID_PLAYER >= BID_BOT) //IF raise THEN
            {
                if(raise_count < 7) //we can raise only if raise_count < 7
                {
                    // delay(2);
                    change_move_bot
                    BALANCE_PLAYER -= BID_COMMAND;
                    BID_PLAYER += BID_COMMAND;
                    raise_count++;
                    if(ROUND == 1)
                    {
                        if(COMB1 == 0)
                            bot_stronger_prob += 300; //after 4 raise
                        else if(COMB1 == 1)
                            bot_stronger_prob += 1150; //after 5 raise
                        else if(COMB1 == 2)
                            bot_stronger_prob += 1000; //after 6 raise
                    }
                    bot_logic(bot_stronger_prob);
                }
            }
            else if(COMMAND == 2 &&  BID_PLAYER < BID_BOT) //IF call THEN
            {
                // delay(2);
                change_move_bot
                int diff = BID_BOT - BID_PLAYER;
                BALANCE_PLAYER -= diff;
                BID_PLAYER = BID_BOT;
                bot_logic(bot_stronger_prob);
            }
            else if(COMMAND == 1) //IF fold THEN
            {
                FOLD = 2;
                break;
            }
        }
        if(FOLD > 0) //if someone fold
        {
            break;
        }
        else        //else we display other cards
        {
            if(ROUND == 1)
            {
                print_four_card_pl
                // delay(5);
                delete_points
            }
            else
            {
                print_five_card_pl
                // delay(5);
                delete_points
            }
            ROUND++;
        }
    }
    if (FOLD == 1) //if the bot folds
    {
        WHO_WIN = 2;
        if(ROUND == 1)
        {
            print_four_card_pl
            print_five_card_pl
        }
        else if(ROUND == 2)
        {
            print_five_card_pl
        }
    }
    else if(FOLD == 2)//if the player folds
    {
        WHO_WIN = 1;
        if(ROUND == 1)
        {
            print_four_card_pl
            print_five_card_pl
        }
        else if(ROUND == 2)
        {
            print_five_card_pl
        }
    }

    if(WHO_WIN == 2) //if the player wins
    {
        print_bot_card
        // delay(5);
        delete_points
        BALANCE_PLAYER += BID_BOT;
        BALANCE_PLAYER += BID_PLAYER;
        win_player
        RD_WR = 1;
        delete_winner
        delete_cards
    }
    else if(WHO_WIN == 1)//if the bot wins
    {
        print_bot_card
        // delay(5);
        delete_points
        BALANCE_BOT += BID_BOT;
        BALANCE_BOT += BID_PLAYER;
        win_bot
        RD_WR = 1;
        delete_winner
        delete_cards
    }
    return;
}

/***************************************************************************************************************************/
            //this block is necessary to display the cards we need
int hand_iteration;
void insert_seq_player(int num1, int num2)
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
/***************************************************************************************************************************/

int main(){     //main function
    //set the initial balance
    BALANCE_BOT = 2000;      
    BALANCE_PLAYER = 2000;   
    int suit_iter = 0;
    for(int i = 0; i < 3; i++)
    {
        FOLD = 0;   
        BID_BOT = 5;        //set the initial the bot's bid
        BID_PLAYER = 10;    //set the initial the player's bid
        BALANCE_BOT -= BID_BOT;
        BALANCE_PLAYER -= BID_PLAYER;

        generate_cards();
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
        insert_seq_player(41, 48);
        insert_seq_bot(81, 88); 

        pointer_raise = 0;
        for(int j = 0; j < 6; j++)
        {
            prob_raise[j] = SUIT_VALUE[suit_iter]&1;
            suit_iter++;
        }
        prob_fold = SUIT_VALUE[6]&1;
    
        ROUND = 1;  

        analysis();
        
        int bot_stronger_prob = stronger_probabilities[COMB1];//probability that the player will have a better combination
        
        three_card_pl
        // delay(10);
        delete_points

        one_round(bot_stronger_prob);
        BID_BOT = 0;
        BID_PLAYER = 0;
    }

    if(BALANCE_BOT > BALANCE_PLAYER) //if bot win
    {
        final_win_bot
    }
    else if(BALANCE_BOT < BALANCE_PLAYER) //if player win
    {
        final_win_pl
    }
    return 0;
}
