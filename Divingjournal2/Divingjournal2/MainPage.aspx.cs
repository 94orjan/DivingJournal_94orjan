using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Diagnostics;

namespace Divingjournal2
{
    public partial class MainPage : Page

    {
        public MainPage()
        {

        }

        protected void PopupSubmitButton_Click(object sender, EventArgs e)
        {
            Debug.WriteLine(PopupTextBox.Text);
        }
    }
}