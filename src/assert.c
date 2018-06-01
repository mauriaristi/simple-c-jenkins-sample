#include <assert.h>

int assertResultInt(int result, int expected){

	if (result == expected){

		printf("ASSESSMENT: \033[32m PASSED \033[0m\n\n");
		return ASSERT_PASS;

	}else{

		printf("ASSESSMENT: \033[31m FAILED \033[0m\n\n");
		return ASSERT_FAIL;

	}

}
  