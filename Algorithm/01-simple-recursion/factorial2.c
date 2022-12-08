#include <stdio.h>
int factorial(int n){
    if(n<=1){
        return 1;
    }
    else{
        return n*factorial(n-1);
    }
}
void main(){
    int n=0,fac=0;
    printf("Enter n : ");
    scanf("%d",&n);

    fac=factorial(n);
    printf("factorial = %d",fac);
}

