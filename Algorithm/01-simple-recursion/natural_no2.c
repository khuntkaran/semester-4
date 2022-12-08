#include <stdio.h>
void printNo(int n){
    if(n>50){
        return;
    }
    else{
        printf("%d,",n);
        return printNo(n+1);
    }
}
void main(){
    int i=1;
    printNo(i);
}