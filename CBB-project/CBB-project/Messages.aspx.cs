using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CBB_project
{
    public partial class Messages : System.Web.UI.Page
    {
        public string docID
        {
            get
            {
                string did = "";
                try
                {
                    if (Page.RouteData.Values["DocID"] != null)
                    {
                        did = Page.RouteData.Values["DocID"].ToString();
                    }
                }
                catch (Exception exc)
                {
                    did = "";
                }
                return did;
            }
        }

        public bool isValid = false;

        protected void Page_Init(object sender, EventArgs e)
        {
            try
            {
                Master.SqlIF.ResetParameters();
            }
            catch(Exception exc)
            {
                //nincs DB
                isValid = false;
                return;
            }
            isValid = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newClick(object sender, EventArgs e)
        {
            Response.Redirect(ResolveUrl("/Messages/new"));
            return;
        }

        protected string getMessages()
        {
            if (isValid)
            {
                Master.SqlIF.ResetParameters();
                Master.SqlIF.AddVarcharParameter("@sessionid", Master.myuser.sessionID, 32);
                DataTable dt = Master.SqlIF.getDataTable("getMessages");
                StringBuilder sb = new StringBuilder();

                foreach (DataRow dr in dt.Rows)
                {
                    sb.AppendLine("<div class='card rounded mx-auto' style='background-color:#8BBF58; color:white; text-align: center; margin: 10px; width:80%;'>");
                    sb.AppendLine(" <div class='card-header' style='font-size: 1.6em;'>");
                    sb.AppendLine((dr["U1Name"].ToString().Equals("-") ? dr["U2Name"].ToString() : dr["U1Name"].ToString()));
                    sb.AppendLine(" </div>");
                    sb.AppendLine(" <a href = '/Messages/" + dr["MID"].ToString() + "' style='text-decoration:none; color:white;'>");
                    sb.AppendLine("     <div class='card-body'>");
                    sb.AppendLine("         <p class='card-text'>");
                    sb.AppendLine(dr["Subject"].ToString());
                    sb.AppendLine("         </p>");
                    sb.AppendLine("     </div>");
                    sb.AppendLine(" </a>");
                    sb.AppendLine("</div>");
                }

                return sb.ToString();
            }
            else
            {
                //hiba
                return "";
            }
        }

        protected string newMessage()
        {
            return "";
        }

        protected string getMessage()
        {
            if (isValid)
            {
                Master.SqlIF.ResetParameters();
                Master.SqlIF.AddVarcharParameter("@sessionid", Master.myuser.sessionID, 32);
                Master.SqlIF.AddIntParameter("@MID", Int32.Parse(docID));
                DataTable dt = Master.SqlIF.getDataTable("getMessages");
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("<div class='overflow-auto mx-auto my-auto rounded' style='width: 80%; background-color:#8BBF58; color:white; padding: 10px;'>");
                foreach (DataRow dr in dt.Rows)
                {
                    sb.AppendLine("<p style='text-align:" + (dr["SenderID"].ToString().Equals(Master.myuser.userID.ToString()) ? "end" : "left") + "'>" + dr["Content"].ToString() + "</p>");
                }
                sb.AppendLine("</div>");

                return sb.ToString();
            }
            else
            {
                //hiba
                return "";
            }
        }

        protected void Send_Click(object sender, EventArgs e)
        {

        }

        protected void sendBut_Click(object sender, EventArgs e)
        {

        }

        protected void refreshBut_Click(object sender, ImageClickEventArgs e)
        {
            search.Text = "";
            return;
        }
    }
}