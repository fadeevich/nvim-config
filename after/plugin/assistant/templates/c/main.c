#include <stdio.h>

void test(void);

int main(void) {
    int t = 1;
    scanf("%d", &t);
    for (int i = 0; i < t; ++i) {
        test();
    }

    return 0;
}

void test(void) {
}
