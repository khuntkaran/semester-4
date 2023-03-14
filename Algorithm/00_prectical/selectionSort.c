#include<stdio.h>
void main(){
    int i, j, n;

    printf("Eneter the size of Array : ");
    scanf("%d",&n);

    int arr[n];

    for(i=0; i<n; i++){
        printf("Enter the Element %d = ",i+1);
        scanf("%d",&arr[i]);
    }

    for(i=0; i<n-1; i++){
        for(j=i+1; j<n; j++){
            if(arr[i] > arr[j]){
                int temp = arr[j];
                arr[j] = arr[i];
                arr[i] = temp;
            }
        }
    }

    for(i=0; i<n; i++){
        printf("%d, ",arr[i]);
    }
}