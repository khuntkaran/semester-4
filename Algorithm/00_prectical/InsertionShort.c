#include<stdio.h>
void main(){
    int i,n,x,j;

    printf("Enter the size of Array = ");
    scanf("%d",&n);

    int arr[n];

    for(i=0; i<n; i++){
        printf("Enter the %d Element = ",i+1);
        scanf("%d",&arr[i]);
    }

    for(i=1; i<n; i++){
        x = arr[i];
        j = i-1;
        while (x < arr[j] && j > -1){
            arr[j+1] = arr[j];
            j = j-1;
            arr[j+1] = x;
        }
    }

    for(i=0; i<n; i++){
        printf("%d, ",arr[i]);
    }
}