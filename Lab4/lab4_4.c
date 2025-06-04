// Tanvi Jain 
// 04/06/25

#include <stdio.h>

int main(){
  // set up a variable to count the running sum + avg
  double sum = 0;
  double avg = 0;

  // collect user input and print new avg
  for (int i = 1; i < 11; i++){
    int input;
    printf("\nEnter reading %d: ", i);
    scanf("%d", &input);
    
    // add new input to the running sum
    sum += input;
    //find new sum 
    avg = sum/i;

    // print results
    printf("Average: %.2f\n", avg);
  }
  return 0;
}
