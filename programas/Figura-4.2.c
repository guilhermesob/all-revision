#include <stdio.h>
#include <stdlib.h>

void mover (int n, char Orig, char Temp, char Dest);

int main(){
    
    mover (3, 'O', 'D','T');
    system("pause");
    return
} 

void mover (int n, char Orig, char Temp, char Dest)
{
    if (n==1)
        printf("Mova o disco 1 da haste %c", Orig, " para a haste %c\n", Dest);
    else{
        mover(n-1, Orig, Dest, Temp);
        printf("Mova o disco 1 da haste %c", Orig, " para a haste %c\n", Dest);
        mover(n-1, Temp,Orig, Dest);
        
    }
}

