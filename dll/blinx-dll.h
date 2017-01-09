#pragma once  

#ifdef BLINX_EXPORTS  
  #define BLINX_API __declspec(dllexport)   
#else  
  #define BLINX_API __declspec(dllimport)   
#endif  

namespace BlinxDll
{  
  class Core
  {  
    public:
      static BLINX_API int getVersion();
  };  
}  