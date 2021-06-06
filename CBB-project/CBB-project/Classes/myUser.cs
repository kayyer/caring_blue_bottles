using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CBB_project.Classes
{
    public class myUser
    {
        public string UserName;

        public bool isAdmin;

        public string FullName;

        public myUser(string username, string fullname, bool isadmin)
        {
            UserName = username;
            FullName = fullname;
            isAdmin = isadmin;

        }
    }
}