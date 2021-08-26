#include "../headers/functions.h"

int main(void)
{
    int key = 0;

    while (key != 5)
    {
        printf("MENU\n");
        printf("1 - Add\n");
        printf("2 - Sub\n");
        printf("3 - Mul\n");
        printf("4 - Div\n");
        printf("5 - Exit\n");
        fscanf(stdin, "%d", &key);

        switch(key)
        {
            case 1:
                add();
                break;
            case 2:
                sub();
                break;            
            case 3:
                mul();
                break;            
            case 4:
                div();
                break;            
            default:
                break;              
        }
    }
    return 0;
}
