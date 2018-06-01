#include <simple.h>
#include <assert.h>

int main(){

	
	int num1 = 1;
    int num2 = 2;

	int result = add2int( num1, num2 );
	
	return assertResult( result, num1+num2 ); 

}
  