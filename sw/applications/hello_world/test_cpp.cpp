/*
 * Copyright 2022 ESL EPFL
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Author: Jose Miranda <jose.mirandacalero@epfl.ch>
 */

extern "C" {
    #include <stdio.h>
    #include <stdlib.h>
    #include "float.h"
    #include "test_cpp.h"
}

#define LOOPS 50
template <typename T> 
T mySum(T x, T y)
{
    return x+y;
}

int test_numbers(void) 
{
    int i = 0, a = 3, b = 7;
    float c = 4.2, d=3.21;
	
    while (i < LOOPS)   
    {
     float g = (c+d);
     printf("Integer sum %d\n FLoat sum %.4f \n", mySum(a, b), g);
     i = i + 1;
    }
	
    return 0;
}
