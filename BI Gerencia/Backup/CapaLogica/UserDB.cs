using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapaLogica
{
    public class UserDB
    {
        public UserDB(string connectionSIA, string conectionCEM,string User)
       {
           dbSIAWIN = connectionSIA;
           dbCEM = conectionCEM;
           UserLogin = User;

       }
        public string dbSIAWIN {get;set;}
        public string dbCEM {get;set;}
        public string UserLogin { get; set; }
        

    }
}