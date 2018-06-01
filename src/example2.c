#include <simple.h>

int assertResult(int result, int expected){

	if (result == expected){
		printf("\nASSESSMENT: \033[32mPASSED\033[0m\n\n");
		return  0;
	}else{
		printf("\nASSESSMENT: \033[31mFAILED\033[0m\n\n");
		return -1;
	}

}



int main(){

	
	int num1 = 2;
    int num2 = 3;

	int result = add2int(num1,num2);
	
	return assertResult(result,num1+num2+1); 

}
  