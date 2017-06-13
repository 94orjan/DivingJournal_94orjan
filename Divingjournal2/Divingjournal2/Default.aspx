<%@ Page Title="Hjem" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Divingjournal2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <link href="css/bootstrap.css" rel="stylesheet" />
    <h1 class="h1">Elektronisk loggføring av dykkejournaler</h1>
    
        
   
    <div class="jumbotron container">
         
        <br />
        <div class="btn-block col-md-12">
            <asp:Button ID="NewJournalButton" runat="server" Text="Opprett journal" OnClick="NewJournalButton_Click" CssClass="btn-primary btn" Width="33%" Font-Size="XX-Large" />
            <asp:Button ID="GetJournalButton" runat="server" Text="Mine journaler" OnClick="GetJournalButton_Click" CssClass="btn-primary btn" Width="33%" Font-Size="XX-Large"/>
            <asp:Button ID="SearchJournalsButton" runat="server" Text="Søk etter journal" OnClick="SearchJournalsButton_Click" CssClass="btn-primary btn" Width="33%" Font-Size="XX-Large"/>      
         </div>
    </div>

     <asp:Button ID="Button1" runat="server" Text="Opprett journal (gammel)" OnClick="NewJournalOldButton_Click" CssClass="btn-primary btn" Font-Size="Large" />

</asp:Content>
