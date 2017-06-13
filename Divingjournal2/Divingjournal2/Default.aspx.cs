using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Divingjournal2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = (string)Session["timeLabel"];           
        }

        protected void NewJournalButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/write_journal.aspx");
        }

        protected void GetJournalButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/my_journals.aspx");
        }

        protected void SearchJournalsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/search_journal.aspx");
        }

        protected void NewJournalOldButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/new_journal.aspx");
        }
    }
}