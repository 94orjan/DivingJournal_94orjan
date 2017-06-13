using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divingjournal2
{
    public partial class Pressurechamber_Journal_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if(!IsPostBack)
            {
                string CS = ConfigurationManager.ConnectionStrings["DivingJournalContext"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlDataAdapter da = new SqlDataAdapter("Select * from Journal", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }
            */

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}