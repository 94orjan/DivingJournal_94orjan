<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pressurechamber_Journal_View.aspx.cs" Inherits="Divingjournal2.Pressurechamber_Journal_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        
        <div style="padding: 1px; border-style: hidden; font-size:11px; color: #FFFFFF; font-family: Arial; background-color: #336699; text-align:center">
            
            <table style="width: 100%;" id="MainTable">
                <tr>
                    <td>
                        <img width="25%" src="images/hvl_logo.jpg" /></td>
                    <td>
                        <h1 style="margin: 1px; text-align: center;">HVL</h1>

                        <table id="SubjectDateLocationTable" style="width: 100%;">
                            <tr>
                                <td>
                                    <asp:GridView ID="SubjectGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:BoundField DataField="subject" HeaderText="Fag" SortExpression="subject" />

                                        </Columns>
                                        <EditRowStyle Width="100%" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:GridView ID="DateLocationGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:BoundField DataField="date" HeaderText="Dato" SortExpression="date" />
                                            <asp:BoundField DataField="location" HeaderText="Sted" SortExpression="location" />
                                            <asp:BoundField DataField="divingSpot" HeaderText="Dykkepost" SortExpression="divingSpot" />

                                        </Columns>
                                        <EditRowStyle Width="100%" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" Width="33%" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                            </tr>
                        </table>
                    </td>




                    <td>

                        <h1 style="margin: 1px; text-align: center;">DYKKEJOURNAL</h1>

                        <table id="JournalIDTable" style="width: 100%;">
                            <tr>
                                <td>
                        <asp:GridView ID="JournalIDGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="courseNumber" HeaderText="Kurs nr" SortExpression="courseNumber" />

                                <asp:BoundField DataField="Id" HeaderText="Journal nr" ReadOnly="True" SortExpression="Id" />

                            </Columns>
                            <EditRowStyle Width="100%" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" Width="50%" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>

                                    </td>
                                </tr>
                            <tr>
                                <td>

                        <asp:GridView ID="OtherGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="other" HeaderText="Annet" SortExpression="other" />

                            </Columns>
                            <EditRowStyle Width="100%" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                    </td>

                </tr>
                <tr>
                    <td><div id="JournalTypeGridView" style="text-align: left; padding-left: 10px">TRYKKAMMERDYKK</div></td>

                </tr>
                <tr>
                    <td colspan="6" style="width: 100%;">

                        <table id="DiverCrewTable" style="width: 100%;">
                            <tr>
                                <td style="width: 33%">

                                    <asp:GridView ID="DivingCrewGridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:BoundField DataField="divingchief" HeaderText="Dykkesjef (avdelingsleder)" SortExpression="divingchief" />

                                        </Columns>
                                        <EditRowStyle />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="DivingCrewGridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="diver_1" HeaderText="Dykker 1" SortExpression="diver_1" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="DivingCrewGridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="lineman_1" HeaderText="Linemann 1" SortExpression="lineman_1" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                            </tr>
                            <tr>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:BoundField DataField="divingleader_teacher" HeaderText="Dykkeleder (instruktør)" SortExpression="divingleader_teacher" />

                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="diver_2" HeaderText="Dykker 2" SortExpression="diver_2" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="lineman_2" HeaderText="Linemann 2" SortExpression="lineman_2" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                            </tr>
                            <tr>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:BoundField DataField="divingleader_student" HeaderText="Dykkeleder (student)" SortExpression="divingleader_student" />

                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="standby" HeaderText="Standby-/beredskapsdykker" SortExpression="standby" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="helpman" HeaderText="Hjelpemann" SortExpression="helpman" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">

                                    <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="others" HeaderText="Andre" SortExpression="others" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                                <td style="width: 33%">

                                    <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="helpman_assisting" HeaderText="Assisterende hjelpemann" SortExpression="helpman_assisting" />
                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </td>
                            </tr>

                        </table>

                    </td>

                </tr>
                

                <tr>
                    <td style="width: 33%">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <div>Luftsystem</div>
                                    <asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:BoundField DataField="airsystem_main" HeaderText="Hovedforsyning" SortExpression="airsystem_main" />
                                            <asp:BoundField DataField="airsystem_secondary" HeaderText="Sekundær-" SortExpression="airsystem_secondary" />

                                        </Columns>
                                        <EditRowStyle Width="50px" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" Width="50%" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </td>

                            </tr>
                        </table>
                    </td>
                    <td style="width: 33%">
                        <div style="text-align: center">Oksygen til kammer</div>
                        <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="oxygenForChamber_inUse" HeaderText="I bruk" SortExpression="oxygenForChamber_inUse" />
                                <asp:BoundField DataField="oxygenForChamber_readyForUse" HeaderText="Klar til bruk" SortExpression="oxygenForChamber_readyForUse" />

                            </Columns>
                            <EditRowStyle Width="100%" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" Width="50%" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>

                    </td>
                    <td style="width: 33%">
                        <div>Nødgass</div>
                        <asp:GridView ID="GridView22" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="emergencyGas_divingBell" HeaderText="Våtklokke" SortExpression="emergencyGas_divingBell" />
                                <asp:BoundField DataField="emergencyGas_divingBasket" HeaderText="Dykkekurv" SortExpression="emergencyGas_divingBasket" />

                            </Columns>
                            <EditRowStyle Width="100%" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" Width="50%" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>

                    </td>

                </tr>
                <tr>
                    <td style="width: 33%">
                        &nbsp;</td>
                    <td  style="width: 33%">
                        &nbsp;</td>
                    <td style="width: 33%">
                        &nbsp;</td>

                </tr>
               
                <tr>
                    <td style="width:100%" colspan="3">

                        <table style="width: 100%; align-items:center">

                            <tr>
                                <td>

                        

                                </td>
                                <td>
                                    <div style="font-weight:bold">Dykker 1</div>
                                    </td>
                                <td>

                        <div style="font-weight:bold">Dykker 2</div>

                                </td>
                                <td>

                        <div style="font-weight:bold">Standby</div>

                                </td>
                            </tr>
                            <tr>
                                <td style="width:30%">

                        <asp:DetailsView ID="Diver1DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="Forlot overflaten" SortExpression="leftSurface" ShowHeader="true"></asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="På bunn" SortExpression="reachedBottom" ShowHeader="true"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="Forlot bunn (dybde)" SortExpression="leftBottom_Depth" ShowHeader="true"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="Forlot bunn (tid)" SortExpression="leftBottom_Time" ShowHeader="true" />
                                <asp:BoundField DataField="bottomTime" HeaderText="Bunntid" SortExpression="bottomTime" ShowHeader="true" />
                                <asp:BoundField DataField="maxDepth" HeaderText="Maks dybde" SortExpression="maxDepth" ShowHeader="true" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="true" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="Tillegg til bunntid" SortExpression="additionToBottomTime" ShowHeader="true" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="Tabell brukt (meter)" SortExpression="tableUsed_Meter" ShowHeader="true" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="Tabell brukt (minutt)" SortExpression="tableUsed_Minutes" ShowHeader="true" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="Oppstigning til 1. stopp" SortExpression="ascensionToFirstStop" ShowHeader="true" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="Tid på sikkerhetsstopp" SortExpression="timeAtSafetyStop" ShowHeader="true" />
                                <asp:BoundField DataField="arrived9m" HeaderText="Ankom 9m" SortExpression="arrived9m" ShowHeader="true" />
                                <asp:BoundField DataField="left9m" HeaderText="Forlot 9m" SortExpression="left9m" ShowHeader="true" />
                                <asp:BoundField DataField="arrived6m" HeaderText="Ankom 6m" SortExpression="arrived6m" ShowHeader="true" />
                                <asp:BoundField DataField="left6m" HeaderText="Forlot 6m" SortExpression="left6m" ShowHeader="true" />
                                <asp:BoundField DataField="arrived3m" HeaderText="Ankom 3m" SortExpression="arrived3m" ShowHeader="true" />
                                <asp:BoundField DataField="left3m" HeaderText="Forlot 3m" SortExpression="left3m" ShowHeader="true" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="På overflaten" SortExpression="reachedSurface" ShowHeader="true" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="Oppstigningstid" SortExpression="ascensionTime" ShowHeader="true" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="Dykketid" SortExpression="totalDivingTime" ShowHeader="true" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2-gruppe etter dykk" SortExpression="N2GroupAfterDive" ShowHeader="true" />
                                 <asp:CheckBoxField DataField="isEverythingOK" HeaderText="Alt vel etter dykk?" SortExpression="isEverythingOK"  ShowHeader="true" />
                            </Fields>
                            
                        </asp:DetailsView>


            
                                </td>
                                <td>
                        <asp:DetailsView ID="Diver1DetailsView0" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_1" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" ShowHeader="False" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" ShowHeader="False" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="False" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" ShowHeader="False" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" ShowHeader="False" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" ShowHeader="False" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" ShowHeader="False" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" ShowHeader="False" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" ShowHeader="False" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" ShowHeader="False" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" ShowHeader="False" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" ShowHeader="False" />
                               
                                <asp:CheckBoxField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK"  ShowHeader="False" />
                            </Fields>
                            
                        </asp:DetailsView>
                                </td>
                                <td>
                        <asp:DetailsView ID="Diver2DetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_2" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" ShowHeader="False" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" ShowHeader="False" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="False" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" ShowHeader="False" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" ShowHeader="False" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" ShowHeader="False" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" ShowHeader="False" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" ShowHeader="False" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" ShowHeader="False" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" ShowHeader="False" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" ShowHeader="False" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" ShowHeader="False" />
                                 <asp:CheckBoxField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK"  ShowHeader="False"/>
                            </Fields>
                        </asp:DetailsView>
                                </td>
                                <td>
                        <asp:DetailsView ID="StandbyDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="Diver_Standby" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                            <Fields>
                                <asp:BoundField DataField="leftSurface" HeaderText="leftSurface" SortExpression="leftSurface" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="reachedBottom" HeaderText="reachedBottom" SortExpression="reachedBottom" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Depth" HeaderText="leftBottom_Depth" SortExpression="leftBottom_Depth" ShowHeader="False"></asp:BoundField>
                                <asp:BoundField DataField="leftBottom_Time" HeaderText="leftBottom_Time" SortExpression="leftBottom_Time" ShowHeader="False" />
                                <asp:BoundField DataField="bottomTime" HeaderText="bottomTime" SortExpression="bottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="maxDepth" HeaderText="maxDepth" SortExpression="maxDepth" ShowHeader="False" />
                                <asp:BoundField DataField="ELD" HeaderText="ELD" SortExpression="ELD" ShowHeader="False" />
                                <asp:BoundField DataField="additionToBottomTime" HeaderText="additionToBottomTime" SortExpression="additionToBottomTime" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Meter" HeaderText="tableUsed_Meter" SortExpression="tableUsed_Meter" ShowHeader="False" />
                                <asp:BoundField DataField="tableUsed_Minutes" HeaderText="tableUsed_Minutes" SortExpression="tableUsed_Minutes" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionToFirstStop" HeaderText="ascensionToFirstStop" SortExpression="ascensionToFirstStop" ShowHeader="False" />
                                <asp:BoundField DataField="timeAtSafetyStop" HeaderText="timeAtSafetyStop" SortExpression="timeAtSafetyStop" ShowHeader="False" />
                                <asp:BoundField DataField="arrived9m" HeaderText="arrived9m" SortExpression="arrived9m" ShowHeader="False" />
                                <asp:BoundField DataField="left9m" HeaderText="left9m" SortExpression="left9m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived6m" HeaderText="arrived6m" SortExpression="arrived6m" ShowHeader="False" />
                                <asp:BoundField DataField="left6m" HeaderText="left6m" SortExpression="left6m" ShowHeader="False" />
                                <asp:BoundField DataField="arrived3m" HeaderText="arrived3m" SortExpression="arrived3m" ShowHeader="False" />
                                <asp:BoundField DataField="left3m" HeaderText="left3m" SortExpression="left3m" ShowHeader="False" />
                                <asp:BoundField DataField="reachedSurface" HeaderText="reachedSurface" SortExpression="reachedSurface" ShowHeader="False" />
                                <asp:BoundField DataField="ascensionTime" HeaderText="ascensionTime" SortExpression="ascensionTime" ShowHeader="False" />
                                <asp:BoundField DataField="totalDivingTime" HeaderText="totalDivingTime" SortExpression="totalDivingTime" ShowHeader="False" />
                                <asp:BoundField DataField="N2GroupAfterDive" HeaderText="N2GroupAfterDive" SortExpression="N2GroupAfterDive" ShowHeader="False" />
                                 <asp:CheckBoxField DataField="isEverythingOK" HeaderText="isEverythingOK" SortExpression="isEverythingOK"  ShowHeader="False" />
                            </Fields>
                        </asp:DetailsView>
                                </td>
                            </tr>
                            
                        </table>
                    </td>
                </tr>
               

            </table>
            <table id="LastInfoTable" style="width:100%">
                <tr>
                    <td>
                    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="notes" HeaderText="Merknader" SortExpression="notes" />

                            </Columns>
                            <EditRowStyle Width="100%" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" Width="50%" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>

                    </td>
                     <td style="width: 50%">

                        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="1" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>

                                <asp:BoundField DataField="changelog" HeaderText="Loggførte endringer" SortExpression="changelog" />

                            </Columns>
                            <EditRowStyle Width="100%" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" Width="100%" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>

                    </td>
                </tr>
            </table>


            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Journal] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:SqlDataSource ID="Diver_1" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:SqlDataSource ID="Diver_Dummy" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Diver_2" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Diver_Standby" runat="server" ConnectionString="<%$ ConnectionStrings:DivingJournalContext %>" SelectCommand="SELECT * FROM [Diver_Standard] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <asp:Button ID="PDF_Button" runat="server" Text="Åpne i PDF" />
    </form>
</body>
</html>
