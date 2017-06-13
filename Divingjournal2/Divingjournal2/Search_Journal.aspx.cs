using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divingjournal2
{
    public partial class Search_Journal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_button_Click(object sender, EventArgs e)
        {

            Session["Dykkeleder"] = Dykkeleder_textbox.Text;
            Session["Dato"] = Dato_textbox.Text;
            Session["Dykker"] = Dykker_textbox.Text;
            Session["Kursnr"] = Kursnr_textbox.Text;

            Response.Redirect("~/Search_Journal_Results.aspx");
        }
    }
}