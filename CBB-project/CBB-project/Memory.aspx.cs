using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CBB_project
{
    public partial class Memory : System.Web.UI.Page
    {
        public Dictionary<string, string> qas;

        protected void Page_Load(object sender, EventArgs e)
        {
            qas = new Dictionary<string, string>();

            qas.Add("Kérdés0", "Válasz0");
            qas.Add("Kérdés1", "Válasz1");
            qas.Add("Kérdés2", "Válasz2");
            qas.Add("Kérdés3", "Válasz3");

            coder();

        }

        public void coder()
        {
            tb.Text = qas["Kérdés0"];

        }

        public string coderMaker()
        {
            
            return "<input type='submit' id='myID' text='" + qas["Kérdés0"] + "' onclick='return clickMemory()'/>";
        }


    }
}