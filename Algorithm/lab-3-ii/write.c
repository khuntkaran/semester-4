#include<stdio.h>
#include<stdlib.h>
void main(){
    FILE *fptr1,*fptr2,*fptr3;
    long int i,number;

    fptr1 = fopen("best.txt","w");
    fptr2 = fopen("avg.txt","w");
    fptr3 = fopen("worst.txt","w");

    printf("Enter the number : ");
    scanf("%ld",&number);
    for(i=1;i<=number;i++){
        fprintf(fptr1,"%d\n",i);    //best case
        fprintf(fptr2,"%d\n",(rand()%(number)));    //average case
        fprintf(fptr3,"%d\n",number-i+1);    //worst case
    }
    fclose(fptr1);
    fclose(fptr2);
    fclose(fptr3);
}