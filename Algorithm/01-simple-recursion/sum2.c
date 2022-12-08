#include<stdio.h>

int add(int a){
    if(a<1){
        return 0;
    }
    else{
        return a+add(a-1);
    }
}
void main(){
    int n=0,sum=0;
    printf("Enter N : ");
    scanf("%d",&n);

    sum=add(n);
    printf("Sum = %d",sum);
}