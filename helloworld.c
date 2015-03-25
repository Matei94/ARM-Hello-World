/******************************************************************************
 * Statically linked ARM Linux "hello world" style executable that prints out
 * the author's name and the current local time and date.
 *****************************************************************************/

#include <stdio.h> /* printf */
#include <time.h>  /* date and time information */

#define NAME "Razvan Madalin MATEI" /* author's name */

int main(int argc, char **argv) {
	time_t rawtime;
	struct tm *timeinfo;

	time(&rawtime);
	timeinfo = localtime(&rawtime);

	printf("Name: " NAME "\nDate: %s", asctime(timeinfo));

	return 0;
}
