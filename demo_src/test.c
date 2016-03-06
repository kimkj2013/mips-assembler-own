/*
 * testMain.c
 *
 *  Created on: Nov 9, 2015
 *      Author: yuej2
 */
#include "stdlib.h"
#include "stdio.h"

void main( )
{

	int  a,b ;
	int  * ap;
    int i;

	int  array[10];
    char arrayC[10];
    char * cp;


	array[0]  = 1;
	array[9]  = 9;


	for(  i = 0; i < 10; i++ ){
         array[i]=i;
	}

	for( i = 0; i < 10; i++)
	    	 printf(" %d   ", array[i]);

    printf("\n");

    printf("array address is %p\n",(void *)array);

	for(  i = 0, ap = array; i < 10; i++ ){
	         *(ap+i)=i;
         printf(" value  %d  address %p array value[%d] is %d\n",
        		 *(ap+i), (void *)(ap+i), i,array[i]);
	}

	printf("\n\n");

	for(  i = 0, cp = arrayC; i < 10; i++ ){
		         *(cp+i)=i+'0';
	         printf(" value  %c  address %p array value[%d] is %c\n",
	        		 *(cp+i), (void *)(cp+i), i,arrayC[i]);
	}



     for( i = 0; i < 10; i++)
    	 printf(" %d   ", array[i]);

     printf("\n");

	a = 2;
	ap = &a;

	printf("a is %d, address of a is %p, ap is %p \n",
			a, (void *)&a, (void *)ap);

	b = a + 3;
	*ap =  a + 3;

	printf("a is %d, address of a is %p, ap is %p \n",
				a, (void *)&a,  (void *)ap );

     return;

}



