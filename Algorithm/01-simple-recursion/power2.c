#include <stdio.h>
int sqre(int a,int b){
    if(b<1){
        return 1;
    }
    else{
        return a*sqre(a,b-1);
    }
}
void main(){
    int x,y,power;
    printf("Enter x : ");
    scanf("%d",&x);
    printf("Enter power : ");
    scanf("%d",&y);
    power=sqre(x,y);
    printf("Power = %d",power);

}