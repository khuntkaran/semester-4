#include<stdio.h>
void main(){
    int x,y,power=1,i;
    printf("Enter x : ");
    scanf("%d",&x);
    printf("Enter power : ");
    scanf("%d",&y);
    for(i=1;i<=y;i++){
        power=power*x;
    }
    printf("Answer = %d",power);
}