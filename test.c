#include <stdio.h>
#include <stdlib.h>

#define OS_TYPE linux
#ifdef OS_TYPE
#define CLS system("clear")
#else
#define CLS system("cls")
#endif /* OS_TYPE */

int main(void){
    CLS;
    return 0;
}