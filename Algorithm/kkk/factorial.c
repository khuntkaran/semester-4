#include <stdio.h>
#include <time.h>

void main(){
    int n=0,fac=1;
    clock_t start,end;
    double cpu_time_used;


    printf("Enter no : ");
    scanf("%d",&n);

    start = clock();
    for(int i=1;i<=n;i++){
        fac=fac*i;
    }
    end=clock();
    cpu_time_used=((double)(end-start))/CLOCKS_PER_SEC;
    printf("factorial = %d\n",fac);
    printf("time = %f",cpu_time_used);
}