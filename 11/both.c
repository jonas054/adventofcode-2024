#include <stdio.h>
#include <string.h>
#include <stdlib.h>

long int EXAMPLE[] = { 125, 17 };
long int INPUT[] = { 2, 72, 8949, 0, 981038, 86311, 246, 7636740 };

long int blink(long int stones[], long int length, int times) {
  if (times == 0)
    return length;

  if (length > 1) {
    long int sum = 0;
    for (long int i = 0; i < length; ++i)
      sum += blink(&stones[i], 1, times);
    return sum;
  }
  long int stone = stones[0];
  long int newStones[2];
  long int newStonesLength = 1;
  if (stone == 0) {
    newStones[0] = 1;
  } else {
    static char s[50];
    sprintf(s, "%ld", stone);
    if (strlen(s) % 2 == 0) {
      int half = strlen(s) / 2;
      sscanf(&s[half], "%ld", &newStones[1]);
      s[half] = 0;
      sscanf(s, "%ld", &newStones[0]);
      newStonesLength = 2;
    } else {
      newStones[0] = stone * 2024;
    }
  }
  return blink(newStones, newStonesLength, times - 1);
}

int main() {
  printf("Part 1: %ld\n", blink(INPUT, sizeof(INPUT) / sizeof(INPUT[0]), 25)); // 202019
  return 0;
}
