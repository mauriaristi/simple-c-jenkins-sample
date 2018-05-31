#include <simple.h>

int assertResult(int result, int expected){

	if (result == expected){
		return  0;
	else{
		return -1;
	}

}



int main(){

	
	int num1 = 1;
        int num2 = 2;
	int res = add2int(num1,num2);
	
	return assertResult(res,num1+num2);

}
