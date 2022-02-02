// NOTES: make repo pubic, remove things to know about c
// Program generates a list of random integers and computes the mean (as a real number).
// Takes length of list and seed as parameters.
// Prints out the list of integers and the calculated mean. 

#include "rand-int-mean.h"

int main(){

	// Read in an the length of the int array from the user, store in list_len
	int list_len;
	printf("Enter the length of the list of random integers: ");
	scanf("%d", &list_len);
	printf("\n%d", list_len);
	if (list_len<0){
		printf("Please enter a non-negative number");
		return 0;
	}

	// Read in the random seed from the user, store in seed
	int seed;
	printf("Enter an integer for the random seed: ");
	scanf("%d", &seed);
	srand(seed);

	
	double sum = 0;

	printf("Integers randomly generated: ");
	for (int i = 0; i<list_len; i++){
		int rand_int = rand();
		sum = sum + rand_int;
		printf("\n%d", rand_int);
	}

	double mean = sum/list_len;
	printf("\nThe mean is %f", mean);
	printf("\n");

	return 0;
}