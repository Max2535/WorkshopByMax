using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConAppSTD.Class
{
    class cDatabase
    {
        public string C_GETtConnectString(string ptSrvName, string ptUsr, string ptPwd, string ptDBName, int pnTimeOut, string ptAuthenMode = "2")
        {
            StringBuilder oConnStr;

            try
            {
                oConnStr = new StringBuilder();
                if (string.Equals(ptAuthenMode, "1"))
                {
                    // authen windows mode.
                    oConnStr.Append("Data Source = " + ptSrvName);
                    oConnStr.Append(";Initial Catalog = " + ptDBName);
                    oConnStr.Append(";Integrated Security = SSPI;");
                    oConnStr.Append(";Connection Timeout = " + pnTimeOut);
                }
                else
                {
                    // authen SQL mode.
                    oConnStr.Append("Data Source = " + ptSrvName);
                    oConnStr.Append(";Initial Catalog = " + ptDBName);
                    oConnStr.Append(";User ID = " + ptUsr);
                    oConnStr.Append(";Password = " + ptPwd);
                    oConnStr.Append(";Connection Timeout = " + pnTimeOut);
                }

                return oConnStr.ToString();
            }
            catch (Exception oEx)
            {
                
                return "";
            }
            finally
            {
                oConnStr = null;
            }
        }
    }
}
