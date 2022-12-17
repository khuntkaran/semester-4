#include<stdio.h>
#include<time.h>

void main(){
    clock_t start,end;
    double cpu_time_used;
    int fac2=0,fac=1,n;
    printf("Enter n : ");
    scanf("%d",&n);
    printf("%d, %d, ",fac2,fac);
    int i;

    start=clock();
    for(i=0;i<n-2;i++){
        printf("%d, ",fac+fac2);
        int x=fac;
        fac=fac+fac2;
        fac2=x;
    }
    end=clock();
    cpu_time_used=((double)(end-start))/CLOCKS_PER_SEC;
    printf("\ntime = %f\n",cpu_time_used);
}