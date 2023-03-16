#include<stdio.h>

int binarySearch(int arr[], int start, int end, int value)    

{    

    int mid;

	        if(end >= start){

    	

		mid = (start + end)/2;  

		  

        if(arr[mid] == value){                 

            return mid+1;    

        }  

        else if(arr[mid] < value){  

            return binarySearch(arr, mid+1, end, value);    

        }    

        else{  

            return binarySearch(arr, start, mid-1, value);    

        }          

    }    

    return -1;     

}   

void main(){

	int n,i,element;

	

	printf("Enter the number : ");

	scanf("%d", &n);

	

	int arr[n];

	

	for (i=0; i<n; i++) {

		printf("Enter the value at [%d] : ", i);

		scanf("%d", &arr[i]);

	}

	

	printf("Enter you want to Search Element : ");

	scanf("%d", &element);

	

	int res = binarySearch(arr, 0, n-1, element);

	

	printf("Your Element is at %d Index of the Array.", res);

	







}
