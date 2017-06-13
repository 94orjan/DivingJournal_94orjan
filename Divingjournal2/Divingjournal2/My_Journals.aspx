<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="My_Journals.aspx.cs" Inherits="Divingjournal2.My_Journals" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div class="jumbotron">
            <h2>Mine journaler</h2>
        </div>
        <div class="form-control-static">
        <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="current_user_journals">
            <Columns>
                <asp:BoundField DataField="date" HeaderText="Dato" SortExpression="date" HeaderStyle-BackColor="#04488b" HeaderStyle-ForeColor="White" />
                <asp:TemplateField HeaderText="Journalnavn" SortExpression="journal_name" HeaderStyle-BackColor="#04488b" HeaderStyle-ForeColor="White">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="form-control-static" ID="TextBox1" runat="server" Text='<%# Bind("journal_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label CssClass="form-control-static" ID="Label1" runat="server" Text='<%# Bind("journal_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="journal_name" DataNavigateUrlFormatString="write_journal?journal_name={0}" Text="Åpne" HeaderStyle-BackColor="#04488b" />
                <asp:HyperLinkField DataNavigateUrlFields="journal_name" DataNavigateUrlFormatString="write_journal?journal_name={0}" Text="Slett" ControlStyle-ForeColor="Red" HeaderStyle-BackColor="#04488b" />
            </Columns>
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="current_user_journals" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT [date], [journal_name] FROM [Journal_Cache] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:Parameter DefaultValue="orjan" Name="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="col-md-4 table">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Navn på journal:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox CssClass="form-control" Width="200px" ID="journal_name_textbox" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Hent Journal" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </div>
        
        
       
    </div>
</asp:Content>