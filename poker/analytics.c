typedef struct Card {
    char suit;
    char value;
} Card;

typedef struct Hand {
    Card cards[5];
} Hand;

extern Hand hand1, hand2;
extern volatile int COMB1, COMB2, WHO_WIN;

void analysis() {
    COMB1 = 0, COMB2 = 0;

    int res1[13] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, res2[13] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, flags[2] = { 0, 0 }; // res - массивы для хранения количества карт каждого достоинства
    int flash[2] = { 0, 0 }; // для обнаружения флеша в комбинации

    for (int i = 0; i < 5; i++) {
        if (hand1.cards[i].value >= '2' && hand1.cards[i].value <= '9') {
            res1[hand1.cards[i].value - '2']++;
            continue;
        }

        if (hand1.cards[i].value == 'T') {
            res1[8]++;
            continue;
        }

        if (hand1.cards[i].value == 'J') {
            res1[9]++;
            continue;
        }

        if (hand1.cards[i].value == 'Q') {
            res1[10]++;
            continue;
        }

        if (hand1.cards[i].value == 'K') {
            res1[11]++;
            continue;
        }

        if (hand1.cards[i].value == 'A') {
            res1[12]++;
            continue;
        }
    }
        
    for (int i = 0; i < 5; i++) {
        if (hand2.cards[i].value >= '2' && hand2.cards[i].value <= '9') {
            res2[hand2.cards[i].value - '2']++;
            continue;
        }

        if (hand2.cards[i].value == 'T') {
            res2[8]++;
            continue;
        }

        if (hand2.cards[i].value == 'J') {
            res2[9]++;
            continue;
        }

        if (hand2.cards[i].value == 'Q') {
            res2[10]++;
            continue;
        }

        if (hand2.cards[i].value == 'K') {
            res2[11]++;
            continue;
        }

        if (hand2.cards[i].value == 'A') {
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
