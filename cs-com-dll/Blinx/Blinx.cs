using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace Blinx2
{
    [ComVisible(true)]
    public interface IBlinx
    {
        string getVersion();
        string getVersionNumber();
    }

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
            return this.blinx.getVersionNumber();
        }

        protected object GetAutomationObject()
        {
            return new Main();
        }
    }
}