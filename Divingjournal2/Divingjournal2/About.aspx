<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Divingjournal2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Stopwatch Test
    </h2>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000">
            </asp:Timer>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        
    </asp:UpdatePanel>


    <asp:Button ID="StartButton" runat="server" Text="Start" OnClick="StartButton_Click" />



    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <!-- Lag til klokke her! -->

                <div>

                </div>


            </asp:TableCell>

        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <!-- Lag til klokke her! -->

                <div>

                </div>


            </asp:TableCell>

        </asp:TableRow>
    </asp:Table>

    <script src="Stopwatch.js"></script>


</asp:Content>
