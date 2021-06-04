using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CBB_project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                name.BackColor = Color.White;
                psw.BackColor = Color.White;
            }
        }

        protected void loginClick(object sender, EventArgs e)
        {
            if(name.Text.Length < 1)
            {
                name.BackColor = Color.Red;
                return;
            }
            if (psw.Text.Length < 1)
            {
                psw.BackColor = Color.Red;
                return;
            }

            string username = name.Text;
            string userpsw = psw.Text;
            bool loggedin = false;
            //hash
            //SQL - ok-e?
            loggedin = true;
            if (loggedin)
            {
                Response.Redirect(ResolveUrl("~/MainSite"));
                return;
            }
        }

        protected void forgottenClick(object sender, EventArgs e)
        {
            if (name.Text.Length < 1)
            {
                name.BackColor = Color.Red;
                return;
            }

            string username = name.Text;
            //SQL - kérés beküldése
        }
    }
}