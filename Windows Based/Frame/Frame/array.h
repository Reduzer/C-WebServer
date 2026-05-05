#pragma once

//stores data in a array
typedef struct {
	int *Array;
	size_t used;
	size_t size;
} Array;

void initArray (Array *a, size_t size) {
	a->Array = malloc(size * sizeof(Array));
	a->used = 0;
	a->size = size;
}

void swapElements (Array *a, int i, int j) {
	int tmp = a->Array[i];
	a->Array[i] = a->Array[j];
	a->Array[j] = tmp;
}

void arrayAppend (Array *a, int element) {
	if (a->used == a->size) {
		a->Array = realloc(a->Array, a->size * sizeof(int));
	}
	a->Array[a->size++] = element;
}

void arrayInsertAtIndex(Array *a, int i, int element) {
	if (a->used == a->size) {
		a->Array = realloc(a->Array, a->size * sizeof(int));
	}
	
	for (int j = a->size; j > i; j--) {
		swapElements(a, j, j+1);
	}

	a->Array[i] = element;
}

void freeArray (Array *a) {
	free(a->Array);
	a->Array = NULL;
	a->size = 0;
	a->used = 0;
}
