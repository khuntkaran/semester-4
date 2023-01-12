#include <stdio.h>
#include <time.h>

int pivot(int arr[], int i, int j)
{
	int p = arr[i], temp;
	int k = i;
	int l = j + 1;
	do {
		k++;
	}

	while (arr[k] <= p && k < j);
	do {
		l--;
	} while (arr[l] > p);
	while (k < l)
	{
		temp = arr[k];
		arr[k] = arr[l];
		arr[l] = temp;
		do { 	k++;
		} while (arr[k] <= p);
		do { 	l--;
		} while (arr[l] > p);
	}

	temp = arr[i];
	arr[i] = arr[l];
	arr[l] = temp;
	return l;
}

void quicksort(int arr[], int i, int j)
{
	if (i < j)
	{
		int position = pivot(arr, i, j);
		quicksort(arr, i, position - 1);
		quicksort(arr, position + 1, j);
	}
}

void main()
{
	int arr[10] = { 3,
		5,
		4,
		6,
		8,
		7,
		9,
		2,
		1,
		10
	}, n = 10, i;
	clock_t start, end;
	double cpu_time_used;

	start = clock();
	quicksort(arr, 0, n - 1);
	end = clock();
	for (i = 0; i < n; i++)
	{
		printf("%d ", arr[i]);
	}

	printf("\n");
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("\n The time taken is : %lf \n ", cpu_time_used);
}
