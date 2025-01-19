#include <stdio.h>
#include <string.h>
#include <stdlib.h>

long int EXAMPLE[] = { 125, 17 };
long int INPUT[] = { 2, 72, 8949, 0, 981038, 86311, 246, 7636740 };

#define SIZE 200000

struct DataItem {
  long int key;
  long int data;
};

struct DataItem* hashArray[SIZE];

long int hashCode(long int key) {
  return (37 * key) % SIZE;
}

struct DataItem* search(long int key) {
  int hashIndex = hashCode(key);
	
  while (hashArray[hashIndex] != NULL) {
    if (hashArray[hashIndex]->key == key)
      return hashArray[hashIndex];
			
    hashIndex = (hashIndex + 1) % SIZE;
  }
	
  return NULL;
}

void insert(long int key, long int data) {
  struct DataItem* item = (struct DataItem*) malloc(sizeof(struct DataItem));
  item->data = data;
  item->key = key;

  int hashIndex = hashCode(key);

  while (hashArray[hashIndex] != NULL)
    hashIndex = (hashIndex + 1) % SIZE;
	
  hashArray[hashIndex] = item;
}

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
  long int key = stone * 100 + times;
  struct DataItem* cachedItem = search(key);
  if (cachedItem)
    return cachedItem->data;

  long int b = blink(newStones, newStonesLength, times - 1);
  insert(key, b);
  return b;
}

int main() {
  int inputSize = sizeof(INPUT) / sizeof(INPUT[0]);
  printf("Part 1: %ld\n", blink(INPUT, inputSize, 25)); // 202019
  printf("Part 2: %ld\n", blink(INPUT, inputSize, 75)); // 239321955280205
  return 0;
}
