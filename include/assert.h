#define ASSERT_PASS   0
#define ASSERT_FAIL   1

int assertResultInt(int result, int expected){

	if (result == expected){

		printf("\nASSESSMENT: \033[32m PASSED \033[0m\n\n");
		return ASSERT_PASS;

	}else{

		printf("\nASSESSMENT: \033[31m FAILED \033[0m\n\n");
		return ASSERT_FAIL;

	}

}