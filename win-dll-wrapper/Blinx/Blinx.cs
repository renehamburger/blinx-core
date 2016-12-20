using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

// Register after building with:
// TODO: simplify?

namespace Blinx2
{
    [Guid("BBF87E31-77E2-46B6-8193-1689A1441FC6")]
    [ComVisible(true)]
    public interface IBlinx
    {
        string getVersion();
        string getVersionNumber();
    }

    [Guid("BBF87E31-77E2-46B6-1093-1689A124BFC7")]
    [ClassInterface(ClassInterfaceType.None)]
    public class Main: IBlinx
    {
        private Blinx blinx = new Blinx();
       
        public int sum(int a, int b)
        {
            return a + b;
        }

        [ComVisible(true)]
        public string getVersion()  {
            return Blinx.getVersion();
        }

        [ComVisible(true)]
        public string getVersionNumber()  {
            return this.blinx.getVersionNumber();
        }

        protected object GetAutomationObject()
        {
            return new Main();
        }
    }
}