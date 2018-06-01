
#include <simple.h>
#include <assert.h>


int test1();
int test2();


// ==============================================
//                    MAIN CODE
// ==============================================
int main(){

	
	int err = ASSERT_PASS;

	err = err | test1(); // Run test 1
	err = err | test2(); // Run test 2
	
	return err ; 

}
// ==============================================






// ==============================================
// Test case 1.
// ==============================================
int test1(){

	
	int num1 = 1;
    int num2 = 2;

	int result = add2int( num1, num2 );
	
	printf("Assessing test case 1 -> ");

	return assertResultInt( result, 3 ); 

}
// ==============================================

// ==============================================
// Test case 2.
int test2(){

	
	int num1 = 2;
    int num2 = 3;

	int result = add2int( num1, num2);
	
	printf("Assessing test case 2 -> ");

	return assertResultInt(result, num1+num2+1 ); 

}
// ==============================================


  