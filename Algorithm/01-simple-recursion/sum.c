#include<stdio.h>
void main(){
    int n=0,sum=0,i;
    printf("Enter n : ");
    scanf("%d",&n);

    for(i=1;i<=n;i++){
        sum=sum+i;
    }
    printf("sum = %d",sum);
}