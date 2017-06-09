using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Divingjournal2.Account
{
    public partial class Register : System.Web.UI.Page
    {

        Int32 temp = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)//If this is not the first time for page to be loaded,means the page went to the server an is back
            {
                SqlConnection conn = new SqlConnection("Data Source=divingjournal.database.windows.net;Initial Catalog=DivingJournalDB;Integrated Security=False;User ID=djadmin;Password=DykkerUtdanningDB!5;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                conn.Open();
                string checkuser = "select count(*) from UserData where UserName='" + TextBoxUN.Text.ToString() + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                temp = Convert.ToInt32(com.ExecuteScalar());
                if (temp > 0)
                {
                    Response.Write("<script>alert('username already exists')</script>");
                    Server.Transfer("Login.aspx");


                }

                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DivingJournalContext"].ConnectionString);
                conn.Open();

                string insertQuery = "insert into UserData (FirstName, LastName, UserName, Password) values (@Fname, @Lname, @Uname, @password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Fname", TextBoxFirstName.Text);
                com.Parameters.AddWithValue("@Lname", TextBoxLastName.Text);
                com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Admin.aspx");
                Response.Write("Registration is successful");
                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
        }
    }
}