<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_Journal.aspx.cs" Inherits="Divingjournal2.Search_Journal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;
           <h1>Søk bare på en parameter om gangen</h1>
            <br />
            <br />
            Dykker:
            <asp:TextBox ID="Dykker_textbox" runat="server"></asp:TextBox>
&nbsp; Dykkeleder:&nbsp;
            <asp:TextBox ID="Dykkeleder_textbox" runat="server"></asp:TextBox>
&nbsp; Kurs nr:&nbsp;
            <asp:TextBox ID="Kursnr_textbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Dato:&nbsp; <asp:TextBox ID="Dato_textbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Search_button" runat="server" OnClick="Search_button_Click" Text="Søk" />
        </div>
    </form>
</body>
</html>