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
    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    public class Core: IBlinxCore
    {
        public int getVersion()  {
            return _getVersion();
        }

        [DllImport("blinx-dll.dll", EntryPoint = "getVersion", CallingConvention = CallingConvention.Cdecl)]
        public static extern int _getVersion();

        protected object GetAutomationObject()
        {
            return new Core();
        }
    }
}

