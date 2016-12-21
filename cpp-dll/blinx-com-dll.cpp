#include <iostream>  
#include "blinx-cpp-dll.h"  

using namespace std;

int main()  
{  
    cout << "Blinx version: " << BlinxDll::Core::getVersion() << endl; 
    return 0;  
}  