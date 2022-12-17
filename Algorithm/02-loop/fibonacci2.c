#include<stdio.h>
void fibo(int fac2,int fac,int n,int i){
    if(i==n){
        return;
    }
    else{
        printf("%d, ",fac+fac2);
        i++;
        int x=fac;
        fac=fac+fac2;
        fac2=x;
        fibo(fac2,fac,n,i);
    }
}
void main(){
    int fac2=0,fac=1,n;
    printf("Enter n : ");
    scanf("%d",&n);
    printf("%d, %d, ",fac2,fac);
    int i=2;
    fibo(fac2,fac,n,i);
}
