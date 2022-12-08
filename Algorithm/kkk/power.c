#include<stdio.h>
void main(){
    int x,y,power=1;
    printf("Enter x : ");
    scanf("%d",&x);
    printf("Enter power : ");
    scanf("%d",&y);
    for(int i=1;i<=y;i++){
        power=power*x;
    }
    printf("Answer = %d",power);
}