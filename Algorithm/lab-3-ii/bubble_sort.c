#include<stdio.h>
#include<time.h>
void main(){
    clock_t start,end;
    double cpu_time_used;
    FILE *fp,*fp2;
    int size=100000;
    int a[size],n=0,i,j,temp;

    start = clock();
    fp=fopen("avg.txt","r");
    fp2=fopen("output.txt","w");
    while(fscanf(fp,"%d",&a[n])!=EOF){
        n++;
    }


    for(i=0;i<n-1;i++){
        for(j=0;j<n-i;j++){
            if(a[j]>a[j+1]){
                temp=a[j];
                a[j]=a[j+1];
                a[j+1]=temp;
            }
        }
    }
    for(i=0;i<n;i++){
        fprintf(fp2,"%d\n",a[i]); 
    }

    end=clock();
    cpu_time_used=((double)(end-start))/CLOCKS_PER_SEC;
    printf("time = %f\n",cpu_time_used);
    fclose(fp);
    fclose(fp2);
}