#include<stdio.h>

void main(){
    int n;
    printf("Enter Number : ");
    scanf("%d",&n);
    int x=n,sum=0;
    while(n>0){
        int x=n%10;
        sum+=x;
        n=n/10;
    }
    printf("sum = %d\n",sum);
}