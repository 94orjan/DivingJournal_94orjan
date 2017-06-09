<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Divingjournal2.MainPage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 223px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Ny" Width="200px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Pågående" Width="200px" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Søk" Width="200px" />
    


        
    


        <br />
        <br />
        <asp:Button ID="btn_LogOut" runat="server" Text="Logg ut" Width="200px" />
    
        <br />
    

        <asp:Button ID="PopupButton" runat="server" Text="Button" />
        <asp:Panel ID="PopupPanel" runat="server" BackColor="White" BorderWidth="2" BorderStyle="Solid" BorderColor="Black">
            <h1>Test</h1>
            <asp:Label ID="PopupLabel" runat="server" Text="Navn:"></asp:Label>
            <asp:TextBox ID="PopupTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="PopupSubmitButton" Text="Lagre midlertidig" runat="server" OnClick="PopupSubmitButton_Click" />
        </asp:Panel>

         
        <asp:ScriptManager runat="server">
            
        </asp:ScriptManager>

        <ajaxToolkit:PopupControlExtender ID="PopupPanel_PopupControlExtender" runat="server" BehaviorID="PopupPanel_PopupControlExtender" PopupControlID="PopupPanel" ExtenderControlID="" TargetControlID="PopupButton">
        </ajaxToolkit:PopupControlExtender>
    
    </form>
</body>
</html>
