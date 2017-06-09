<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Divingjournal2.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 238px;
        }
        .auto-style6 {
            width: 238px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h1 class="auto-style3" style="height: 34px"><strong><span class="auto-style2">Logg inn her</span><br />
            </strong></h1>
        </div>
        <div class="auto-style3">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style6">UserName</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBoxUserName" runat="server" style="text-align: right" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameError" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBoxPassword" runat="server" style="text-align: left" TextMode="Password" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordError" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" style="text-align: left" Text="Login" Width="80px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
