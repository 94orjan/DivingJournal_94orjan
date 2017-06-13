<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Divingjournal2.Account.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrer bruker</title>
   
    <link href="../css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="container">
                    <div class="jumbotron container">
                        
                        <div class="h2">
                            <asp:Image runat="server" ImageUrl="~/images/HVL-logo_trimmet_1200x304.png" Width="25%" />
                            <h2 class="h2">Registrer ny bruker</h2>
                        </div>
                        <div class="col-md-6">
                            <asp:Table runat="server" CssClass="table">
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Fornavn</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxFirstName" runat="server" Style="text-align: left" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFirstName" CssClass="form-control-static" ErrorMessage="Firstname is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Etternavn</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxLastName" runat="server" Style="text-align: left" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="Lastname is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Velg brukernavn</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxUN" runat="server" Style="text-align: left" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Velg passord</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxPass" runat="server" Style="text-align: left" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell runat="server">
                                <div class="form-control-static text-info">Gjenta passord</div>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="TextBoxRPass" runat="server" Style="text-align: left" CssClass="form-control"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both passwords must be same" ForeColor="Red"></asp:CompareValidator>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <input id="Reset1" class="btn btn-primary" type="reset" value="Reset" />
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
