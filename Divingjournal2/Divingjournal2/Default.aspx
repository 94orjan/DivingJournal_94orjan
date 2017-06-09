<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Divingjournal2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Elektronisk dritt av dykkerjournaler</h1>
    
        <asp:Table ID="Table1" runat="server" CellSpacing="50" HorizontalAlign="Center" CellPadding="50">
            <asp:TableRow>
                <asp:TableCell>
    <asp:Button ID="NewJournalButton" runat="server" Text="Oppreournal" Width="300" Height="300" OnClick="NewJournalButton_Click" CssClass="btn-primary" Font-Size="XX-Large" />
    </asp:TableCell>
                <asp:TableCell>
    <asp:Button ID="GetJournalButton" runat="server" Text="Mine journaler" Width="300" Height="300" OnClick="GetJournalButton_Click" CssClass="btn-primary" Font-Size="XX-Large"/>
                    </asp:TableCell>
                <asp:TableCell>
    <asp:Button ID="Button2" runat="server" Text="Søk etter journal" Width="300" Height="300" OnClick="Button2_Click" CssClass="btn-primary" Font-Size="XX-Large"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
   
    

</asp:Content>
