#include<stdio.h>
void main(){
    int i,j, n, temp, flage = 1;

    printf("Enter thr Size of Array: ");
    scanf("%d",&n);

    int arr[n];

    for(i=0; i<n; i++){
        printf("Enter the Element %d : ",i+1);
        scanf("%d",&arr[i]);
    }

    for(i=0; i<n; i++){
        for(j=0; j<n-1-i; j++){
            if(arr[j] > arr[j+1]){
                flage = 0;
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
        if(flage == 1){
            printf("Array already Sorted!\n");
            break;
        }
    }

    for(i=0; i<n; i++){
        printf("%d, ",arr[i]);
    }
}
