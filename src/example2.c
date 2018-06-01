#include <simple.h>
#include <assert.h>

int main(){

	
	int num1 = 2;
    int num2 = 3;

	int result = add2int(num1,num2);
	
	return assertResult(result, num1+num2+1 ); 

}
  