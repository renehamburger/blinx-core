using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

// Register after building with:
// TODO: simplify?

namespace BlinxComDll
{
    [Guid("00000000-0000-0000-B000-000000000001")]
    [ComVisible(true)]
    public interface IBlinxCore
    {
        int getVersion();
    }

    [Guid("00000000-0000-0000-B000-000000000002")]
    [ClassInterface(ClassInterfaceType.None)]
    public class Core: IBlinxCore
    {
        //private Blinx blinx = new Blinx();

        [ComVisible(true)]
        public int getVersion()  {
            return 11;
            //return BlinxDll::Core::getVersion();
        }

        protected object GetAutomationObject()
        {
            return new Core();
        }
    }
}

