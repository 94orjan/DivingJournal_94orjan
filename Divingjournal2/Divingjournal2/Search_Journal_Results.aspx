<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_Journal_Results.aspx.cs" Inherits="Divingjournal2.Search_Journal_Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,Id1" DataSourceID="QueryResult">
                <EmptyDataTemplate><h1>Ingen resultat...</h1></EmptyDataTemplate>
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="journalType" HeaderText="journalType" SortExpression="journalType" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="transport" HeaderText="transport" SortExpression="transport" />
                    <asp:BoundField DataField="courseNumber" HeaderText="courseNumber" SortExpression="courseNumber" />
                    <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:BoundField DataField="divingSpot" HeaderText="divingSpot" SortExpression="divingSpot" />
                    <asp:BoundField DataField="divingchief" HeaderText="divingchief" SortExpression="divingchief" />
                    <asp:BoundField DataField="divingleader_teacher" HeaderText="divingleader_teacher" SortExpression="divingleader_teacher" />
                    <asp:BoundField DataField="divingleader_student" HeaderText="divingleader_student" SortExpression="divingleader_student" />
                    <asp:BoundField DataField="diver_1" HeaderText="diver_1" SortExpression="diver_1" />
                    <asp:BoundField DataField="diver_2" HeaderText="diver_2" SortExpression="diver_2" />
                    <asp:BoundField DataField="diver_3" HeaderText="diver_3" SortExpression="diver_3" />
                    <asp:BoundField DataField="lineman_1" HeaderText="lineman_1" SortExpression="lineman_1" />
                    <asp:BoundField DataField="lineman_2" HeaderText="lineman_2" SortExpression="lineman_2" />
                    <asp:BoundField DataField="helpman" HeaderText="helpman" SortExpression="helpman" />
                    <asp:BoundField DataField="helpman_assisting" HeaderText="helpman_assisting" SortExpression="helpman_assisting" />
                    <asp:BoundField DataField="others" HeaderText="others" SortExpression="others" />
                    <asp:BoundField DataField="airsystem_main" HeaderText="airsystem_main" SortExpression="airsystem_main" />
                    <asp:BoundField DataField="airsystem_secondary" HeaderText="airsystem_secondary" SortExpression="airsystem_secondary" />
                    <asp:BoundField DataField="oxygenForChamber_inUse" HeaderText="oxygenForChamber_inUse" SortExpression="oxygenForChamber_inUse" />
                    <asp:BoundField DataField="oxygenForChamber_readyForUse" HeaderText="oxygenForChamber_readyForUse" SortExpression="oxygenForChamber_readyForUse" />
                    <asp:BoundField DataField="emergencyGas_divingBell" HeaderText="emergencyGas_divingBell" SortExpression="emergencyGas_divingBell" />
                    <asp:BoundField DataField="emergencyGas_divingBasket" HeaderText="emergencyGas_divingBasket" SortExpression="emergencyGas_divingBasket" />
                    <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                    <asp:BoundField DataField="changelog" HeaderText="changelog" SortExpression="changelog" />
                    <asp:BoundField DataField="Id1" HeaderText="Id1" InsertVisible="False" ReadOnly="True" SortExpression="Id1" />
                    <asp:BoundField DataField="JournalID" HeaderText="JournalID" SortExpression="JournalID" />
                    <asp:BoundField DataField="diver_name" HeaderText="diver_name" SortExpression="diver_name" />
                    <asp:BoundField DataField="of_type" HeaderText="of_type" SortExpression="of_type" />
                    <asp:BoundField DataField="direct" HeaderText="direct" SortExpression="direct" />
                    <asp:BoundField DataField="airType" HeaderText="airType" SortExpression="airType" />
                    <asp:BoundField DataField="nitroxType" HeaderText="nitroxType" SortExpression="nitroxType" />
                    <asp:CheckBoxField DataField="repeatedAir" HeaderText="repeatedAir" SortExpression="repeatedAir" />
                    <asp:BoundField DataField="N2GroupBeforeDive" HeaderText="N2GroupBeforeDive" SortExpression="N2GroupBeforeDive" />
                    <asp:BoundField DataField="breathingGear" HeaderText="breathingGear" SortExpression="breathingGear" />
                    <asp:BoundField DataField="volume" HeaderText="volume" SortExpression="volume" />
                    <asp:BoundField DataField="pressure" HeaderText="pressure" SortExpression="pressure" />
                    <asp:BoundField DataField="plannedDepth" HeaderText="plannedDepth" SortExpression="plannedDepth" />
                    <asp:BoundField DataField="plannedTime" HeaderText="plannedTime" SortExpression="plannedTime" />
                    <asp:BoundField DataField="courseDive" HeaderText="courseDive" SortExpression="courseDive" />
                    <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" />
                    <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" />
                    <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" />
                    <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" />
                    <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" />
                    <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" />
                    <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" />
                    <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" />
                    <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" />
                    <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" />
                    <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" />
                    <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" />
                    <asp:BoundField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK" />
                    <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" />
                    <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" />
                    <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" />
                    <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" />
                    <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" />
                    <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" />
                    <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" />
                    <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" />
                    <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" />
                    <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" />
                    <asp:BoundField DataField="Journal_Cache_Id" HeaderText="Journal_Cache_Id" SortExpression="Journal_Cache_Id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="QueryResult" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT Journal.*, Diver_Standard.* FROM Journal INNER JOIN Diver_Standard ON Journal.Id = Diver_Standard.JournalID WHERE ([diver_2] = @diver_2) OR ([diver_1] = @diver_1)  OR ([diver_3] = @diver_3) OR ([date] = @date) OR ([divingleader_teacher] = @divingleader_teacher) OR ([divingleader_student] = @divingleader_student) OR ([courseNumber] = @courseNumber);">
                <SelectParameters>
                    <asp:SessionParameter Name="diver_2" SessionField="Dykker" DefaultValue="x" />
                    <asp:SessionParameter Name="diver_1" SessionField="Dykker" DefaultValue="x" />
                    <asp:SessionParameter DefaultValue="x" Name="diver_3" SessionField="Dykker" />
                    <asp:SessionParameter Name="date" SessionField="Dato" DefaultValue="x" />
                    <asp:SessionParameter DefaultValue="x" Name="divingleader_teacher" SessionField="Dykkeleder" />
                    <asp:SessionParameter DefaultValue="x" Name="divingleader_student" SessionField="Dykkeleder" />
                    <asp:SessionParameter DefaultValue="x" Name="courseNumber" SessionField="Kursnr" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>