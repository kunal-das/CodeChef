#include <stdio.h>
#include <stdlib.h>

int arr[1000001] = {0};

int main()
{
	//printf("%s\n", "Enter the number of test cases");
	int num_of_test_cases;
	scanf("%d", &num_of_test_cases);
	int num,i;
	for (i = 0; i < num_of_test_cases; i++)
	{
		scanf("%d", &num);
		arr[num]++;
	}

	for (i = 0; i < 1000001; i++)
	{
		while(arr[i] > 0)
		{
			printf("%d\n", i);
			arr[i]--;
		}
	}
	return 0;
}
