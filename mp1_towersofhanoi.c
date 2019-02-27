#include<stdio.h>

void towersOfHanoi(int N, char src, char aux, char dst){
	if(N == 1){
		printf("Disk %d from %c to %c.\n", N, src, dst);
	}
	else{
		towersOfHanoi(N-1, src, dst, aux);
		printf("Disk %d from %c to %c.\n", N, src, dst);
		towersOfHanoi(N-1, aux, src, dst);
	}

}

int main(){
	char src='A';
	char aux='B';
	char dst='C';
	int N;

	printf("Enter Number of Disks: ");
	scanf("%d", &N);
	printf("Moves:\n");
	towersOfHanoi(N, src, aux, dst);
	printf("\n");

	return 0;
}