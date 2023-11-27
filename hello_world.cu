#include "cuda_runtime.h"
#include "device_launch_parameters.h"


#include <stdio.h>

//Device Code
__global__ void hello_cuda(){
    printf("Hello from CUDA world \n");
}

//Host code
int main(){
    

    //kernel launch parameters
    hello_cuda<< <1,1>> > (); // async call
    printf("Hello from CPU \n");
    cudaDeviceSynchronize();// will make the prgram stall till all the launched kernels have finished execution
    

    cudaDeviceReset();
    return 0;
}