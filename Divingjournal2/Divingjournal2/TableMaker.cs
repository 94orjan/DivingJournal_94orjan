using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using DiverLibrary;
using System.Web.UI.HtmlControls;

namespace Divingjournal2
{

    public class TableMaker
    {
        int FONTSIZE = 18;
        int PADDINGSIZE = 4;

        public TableMaker()
        {

        }

        /*These three methods are for automatically table with x*y set of rows and columns
         *We might not need them, but they were used for testing. */
        public void addTable(Panel panel, int numberOfRows, int numberOfColumns)
        {
            Table table = new Table();

            for (int i = 0; i < numberOfRows; i++)
            {
                table.Rows.Add(newRow(numberOfColumns));
            }

            table.CellPadding = PADDINGSIZE;



            panel.Controls.Add(table);
        }

        public TableRow newRow(int numberOfCells)
        {
            TableRow row = new TableRow();

            for (int i = 0; i < numberOfCells; i++)
            {
                row.Cells.Add(newCell());
            }

            return row;
        }

        public TableCell newCell()
        {
            TableCell cell = new TableCell();
            applyMyStyle(cell);



            applyMyStyle(cell);
            TextBox textbox = new TextBox();
            cell.Controls.Add(textbox);



            return cell;
        }

        //Used to apply default style to cells
        public void applyMyStyle(WebControl webcontrol)
        {
            TableItemStyle itemstyle = new TableItemStyle();
            itemstyle.BorderWidth = 1;
            itemstyle.Font.Size = FONTSIZE;
            itemstyle.BorderColor = System.Drawing.Color.DarkBlue;

            webcontrol.ApplyStyle(itemstyle);

        }

        /* This method needs another parameter for deciding
         * where the text written in the textbox should go. */
        public TableRow makeRowWithTextbox(string text, string id)
        {
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            
            applyMyStyle(cell1);
            applyMyStyle(cell2);
            cell1.Text = text;
            TextBox textbox = new TextBox();
            textbox.ID = id;
            textbox.AutoPostBack = true;
            cell2.ID = id + "Cell";
            cell2.Controls.Add(textbox);
            
            
            

            row.Controls.Add(cell1);
            row.Controls.Add(cell2);

            return row;
        }

        public TableRow makeRowWithTextbox(string text)
        {
            TableRow row = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();

            applyMyStyle(cell1);
            applyMyStyle(cell2);
            cell1.Text = text;
            TextBox textbox = new TextBox();
            textbox.AutoPostBack = true;
            cell2.Controls.Add(textbox);




            row.Controls.Add(cell1);
            row.Controls.Add(cell2);

            return row;
        }

        public void assignTextFromTextbox(Panel panel,string id)
        {
           
        }

        
        //THIS METHOD GATHERS ALL TABLE-MAKING METHODS TOGETHER AND SENDS THEM TO PANEL
        public void journalTableMaster(Panel panel)
        {


            //**FIRST, TABLE COMMON FOR ALL DIVES**
              panel.Controls.Add(tableFirstInfo());



              panel.Controls.Add(tableSecondInfo());

              panel.Controls.Add(tableCrewInfo());

              panel.Controls.Add(tableAirInfo("Luftsystem", "Hovedforsyning", "Sekundærforsyning"));
              panel.Controls.Add(tableAirInfo("Oksygen til kammer", "I bruk", "Klar til bruk"));
              panel.Controls.Add(tableAirInfo("Nødgass", "Våtklokke", "Dykkekurv"));

            //**SECOND TABLE COMMON FOR ALL DIVES, BUT ONE TABLE PER DIVER**


        }

        /*For these variables (3 rows):
         * - JournalID
         * - CourseNumber
         * - Subject
         */
        public Table tableFirstInfo()
        {
            
            Table table = new Table();
            table.CellPadding = PADDINGSIZE;

            table.Rows.Add(makeRowWithTextbox("Journal nr", "journalTextboxID"));
            table.Rows.Add(makeRowWithTextbox("Kurs nr", "subjectTextboxID"));

            

            TableRow subjectRow = new TableRow();
            TableCell subjectRowCell1 = new TableCell();
            TableCell subjectRowCell2 = new TableCell();
            applyMyStyle(subjectRowCell1);
            applyMyStyle(subjectRowCell2);
            subjectRowCell1.Text = "Fag";

            DropDownList subjectList = new DropDownList();
            subjectList.Items.Insert(0, new ListItem("DYK600 - Sikkerhetsopplæring i dykking", ""));
            subjectList.Items.Insert(1, new ListItem("DYK601 - Fagopplæring i anlegg", ""));
            subjectList.Items.Insert(2, new ListItem("DYK601 - Fagopplæring i rørlegging", ""));
            subjectList.Items.Insert(3, new ListItem("DYK601 - Fagopplæring i berging", ""));
            subjectList.Items.Insert(4, new ListItem("RED110 - Redningsdykking", ""));
            subjectRowCell2.Controls.Add(subjectList);
            subjectRow.Cells.Add(subjectRowCell1);
            subjectRow.Cells.Add(subjectRowCell2);

            table.Rows.Add(subjectRow);

            return table;
        }

        /*For these variables (4 rows):
         * - Date
         * - Location
         * - Divingspot
         * - Other
         */
       public Table tableSecondInfo()
        {

            Table table = new Table();
            table.CellPadding = PADDINGSIZE;

            table.Rows.Add(makeRowWithTextbox("Dato"));
            table.Rows.Add(makeRowWithTextbox("Sted"));
            table.Rows.Add(makeRowWithTextbox("Dykkepost"));
            table.Rows.Add(makeRowWithTextbox("Annet"));

            return table;
        } 

        /*For these variables (11 rows):
         * - Diving Crew
         */
           public Table tableCrewInfo()
         {

              Table table = new Table();
              table.CellPadding = PADDINGSIZE;

              table.Rows.Add(makeRowWithTextbox("Dykkesjef"));
              table.Rows.Add(makeRowWithTextbox("Dykkeleder (instruktør)"));
              table.Rows.Add(makeRowWithTextbox("Dykkeleder (student)"));
              table.Rows.Add(makeRowWithTextbox("Dykker 1"));
              table.Rows.Add(makeRowWithTextbox("Dykker 2"));
              table.Rows.Add(makeRowWithTextbox("Standby-/beredskapsdykker"));
              table.Rows.Add(makeRowWithTextbox("Hjelpemann"));
              table.Rows.Add(makeRowWithTextbox("Assisterende hjelpemann"));
              table.Rows.Add(makeRowWithTextbox("Linemann 1"));
              table.Rows.Add(makeRowWithTextbox("Linemann 2"));
              table.Rows.Add(makeRowWithTextbox("Andre"));


              return table;
          } 

        /*For these variables (9(?) rows):
         * - 
         */
        public Table tableAirInfo(string title, string textRow1, string textRow2)
        {

            Table table = new Table();
            table.CellPadding = PADDINGSIZE;

            TableRow airRow = new TableRow();
            TableCell airCell = new TableCell();

            var h3 = new HtmlGenericControl("h3");
            h3.InnerHtml = title;

            airCell.Controls.Add(h3);
            airRow.Controls.Add(airCell);

            table.Controls.Add(airRow);
            
            table.Rows.Add(makeRowWithTextbox(textRow1));
            table.Rows.Add(makeRowWithTextbox(textRow2));
            

            return table;
        } 


    }

    
}