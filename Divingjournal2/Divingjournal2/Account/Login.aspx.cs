using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

// Hei

namespace Divingjournal2.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=divingjournal.database.windows.net;Initial Catalog=DivingJournalDB;Integrated Security=False;User ID=djadmin;Password=DykkerUtdanningDB!5;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlDataAdapter sda = new SqlDataAdapter("Select count(*) From UserData Where UserName = '" + TextBoxUserName.Text + "' and Password = '" + TextBoxPassword.Text + "' ",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows[0][0].ToString()== "1")
            {
                Session["Username"] = TextBoxUserName.Text;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Write("Password is Not correct");
            }
        }
    }
    
}