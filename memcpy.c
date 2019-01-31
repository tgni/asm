#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define DATA_LEN	(23)
char a[DATA_LEN] = {0,1,0,3};
char b[DATA_LEN];

main()
{
	memcpy((void *)b, (void *)a, DATA_LEN);
	return;
}
