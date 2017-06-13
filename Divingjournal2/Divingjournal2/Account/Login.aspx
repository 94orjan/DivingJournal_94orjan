<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Divingjournal2.Account.Login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logg inn</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="container">
                    <div class="jumbotron container">
                        <div class=" alert-danger">
                            <asp:Label runat="server" ID="WrongPasswordLabel" Visible="false" Text="Feil brukernavn eller passord. Prøv igjen."></asp:Label>
                        </div>
                        <div class="h2">
                            <asp:Image runat="server" ImageUrl="~/images/HVL-logo_trimmet_1200x304.png" Width="25%" />
                            <h2 class="h2">Velkommen</h2>
                        </div>
                        <div class="col-md-6">
                            <asp:Table runat="server" CssClass="table">
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Brukernavn</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxUserName" runat="server" Style="text-align: left" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Passord</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:RequiredFieldValidator ID="PasswordError" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" CssClass="btn-primary btn" Text="Logg inn" />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
