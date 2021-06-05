using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CBB_project.Classes;


namespace CBB_project
{
    public partial class SiteMaster : MasterPage
    {
        /// <summary>
        /// SQL eléréséhez szükséges publikus interfész
        /// </summary>
        public SQLIF SqlIF;

        protected void Page_Init(object sender, EventArgs e)
        {
            SqlIF = new SQLIF(System.Configuration.ConfigurationManager.ConnectionStrings["CBBDB"].ConnectionString);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}