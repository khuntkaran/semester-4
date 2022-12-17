#include<stdio.h>
#include<time.h>
void main(){
    clock_t start,end;
    double cpu_time_used;
    FILE *fp;
    int a[100],i=0;

    start = clock();
    fp=fopen("gingalala.txt","r");
    while(fscanf(fp,"%d",&a[i])!=EOF){
        printf("%d\n",a[i]);
        i++;
    }
    end=clock();
    cpu_time_used=((double)(end-start))/CLOCKS_PER_SEC;
    printf("time = %f\n",cpu_time_used);
    fclose(fp);
}