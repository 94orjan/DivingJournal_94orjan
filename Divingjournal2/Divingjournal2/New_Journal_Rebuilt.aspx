<%@ Page  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="New_Journal_Rebuilt.aspx.cs" Inherits="Divingjournal2.New_Journal_Rebuilt" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/bootstrap.css" rel="stylesheet" />

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

        
        <div class="container">

            <div class="jumbotron">
                <div class=" btn-group pull-right">
                    <asp:Button runat="server" ID="LocalSaveButton" Text="Lagre midlertidig" OnClick="LocalSaveButton_Click" CssClass="btn-primary btn" />
                    <asp:Button runat="server" ID="SaveToDatabaseButton" Text="Lagre til database" OnClick="SaveToDatabaseButton_Click" CssClass="btn-success btn"/>
                </div>
                <asp:Label ID="HeaderLabel" runat="server"></asp:Label>
                <h3 class="h3" id="h1Title"></h3>

                <asp:Button CssClass="btn-lg btn-primary btn" runat="server" id="StandardDiveButton" OnClick="StandardDiveButton_Click" Text="Standarddykk" Width="33%" Enabled="false" />
                <asp:Button CssClass="btn-lg btn-primary btn" runat="server" id="SurfaceCompressionDiveButton" OnClick="SurfaceCompressionDiveButton_Click" Text="Overflatedekompresjon" Width="33%" />
                <asp:Button CssClass="btn-lg btn-primary btn" runat="server" id="PressureChamberDiveButton" OnClick="PressureChamberDiveButton_Click" Text="Trykkammer" Width="33%" />

            </div>

            

        <div>

            <div class="col-md-6" id="firstInfoDiv">
                <asp:Table ID="Table1" runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dato</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="DateTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Sted</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="LocationTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="DivingSpotRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkepost</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="DivingSpotTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkesjef (avdelingsleder)</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="DivingchiefTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkeleder (instruktør)</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="divingleader_teacherTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Divingleader_studentRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkeleder (student)</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="divingleader_studentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Diver1Row"  runat="server">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykker 1</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="diver_1TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBox ID="diver_1StandbyCheckBox" OnCheckedChanged="standbyCheckBox_CheckedChanged" runat="server" Text="Standby" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Diver2Row"  runat="server">
                       <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykker 2</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="diver_2TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBox ID="diver_2StandbyCheckBox" OnCheckedChanged="standbyCheckBox_CheckedChanged" runat="server" Text="Standby" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Diver3Row" runat="server">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykker 3</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="diver_3TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:CheckBox ID="diver_3StandbyCheckBox" OnCheckedChanged="standbyCheckBox_CheckedChanged" runat="server" Text="Standby" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Lineman_1Row">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Linemann 1</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="lineman_1TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Lineman_2Row">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Linemann 2</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="lineman_2TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="HelpmanRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Hjelpemann</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="helpmanTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="Helpman_assistingRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Assisterende hjelpemann</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="helpman_assistingTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="OthersRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Andre</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="othersTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="ChamberRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Kammer</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="ChamberTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="PurposeRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Formål</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="PurposeTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="chamberoperatorRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Kammeroperatør</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="ChamberOperatorTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="chamberassistentRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Kammerassistent</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="ChamberAssistantTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="PCDiverTitleRow">
                        <asp:TableCell runat="server" ColumnSpan="2">
                            <div class="form-control-static text-info text-center">Dykkere</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="PCDiverRow1">
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver1TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver2TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="PCDiverRow2">
                        <asp:TableCell runat="server">
                              <asp:TextBox ID="PCDiver3TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver4TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="PCDiverRow3">
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver5TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver6TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="PCDiverRow4">
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver7TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                             <asp:TextBox ID="PCDiver8TextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="ChamberCheckBoxRow">
                        <asp:TableCell runat="server">
                             <asp:CheckBox ID="isChamberClearCheckBox" runat="server" Text="Kammer sjekket ut" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                             <asp:CheckBox ID="isOxygenClearCheckBox" runat="server" Text="Oksygen sjekket ut" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                        <asp:TableCell>
                             <asp:CheckBox ID="treatmentCheckBox" AutoPostBack="true" runat="server" Text="Behandling" CssClass="checkbox-inline form-control-static text-info" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="doctorRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Lege</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="DoctorTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="tenderRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Tender</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="TenderTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                </asp:Table>
                
            </div>

            <div class="col-md-4" id="secondInfoDiv">
                <asp:Table ID="Table2" runat="server" CssClass="table">

                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Journal nr</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="journalIDTextBox" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="courseNrRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Kurs nr</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="courseNumberTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="SubjectRow" runat="server">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Fag</div>
                        </asp:TableCell>
                        <asp:TableCell ID="SubjectCell" runat="server">
                            <div class="dropdown form-control-static">
                                <asp:DropDownList ID="SubjectDropDownList" runat="server">
                                    <asp:ListItem>DYK600 - Sikkerhetsopplæring i dykking</asp:ListItem>

                                    <asp:ListItem>DYK601 - Fagopplæring i anlegg</asp:ListItem>

                                    <asp:ListItem>DYK601 - Fagopplæring i rørlegging</asp:ListItem>

                                    <asp:ListItem>DYK601 - Fagopplæring i berging</asp:ListItem>

                                    <asp:ListItem>RED110 - Redningsdykking</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow ID="OtherRow">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Annet</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="otherTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-center">Luftsystem</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Hovedforsyning</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="airsystem_mainTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Sekundær-</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="airsystem_secondaryTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-center">Oksygen til kammer</div>
                        </asp:TableCell>
                        </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">I bruk</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="oxygenForChamber_inUseTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Klar til bruk</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="oxygenForChamber_readyForUseTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="BellAndBasketCheckBoxRow">
                        <asp:TableCell>
                            <div class="checkbox-inline form-control-static text-info">
                                <asp:CheckBox ID="DivingBellCheckBox" runat="server" Text="Våtklokke" AutoPostBack="true" OnCheckedChanged="BellAndBasket_CheckedChanged"/>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                            <div class="checkbox-inline form-control-static text-info">
                                <asp:CheckBox ID="DivingBasketCheckBox" runat="server" Text="Dykkekurv" AutoPostBack="true" OnCheckedChanged="BellAndBasket_CheckedChanged"/>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="EmergencyGasRow1" Visible="false">
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-center">Nødgass</div>
                        </asp:TableCell>
                        </asp:TableRow>
                    <asp:TableRow ID="EmergencyGasRow2" Visible="false">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Våtklokke</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="emergencyGas_divingBellTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="EmergencyGasRow3" Visible="false">
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-info">Dykkekurv</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="emergencyGas_divingBasketTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                </asp:Table>
               
            </div>

        </div>
        <table>
            <tr>
                <td>

            <div class="col-md-4" id="diver1Div">
                 <asp:Table ID="Diver1Table" runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <div class="h4 form-control-static text-center text-primary">Dykker 1</div>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D1of_typeDropDownList" runat="server">
                                    <asp:ListItem Value="0">OF Tungt</asp:ListItem>
                                    <asp:ListItem Value="1">OF Lett</asp:ListItem>
                                    <asp:ListItem Value="2">Scuba</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="D1directDropDownList" runat="server">
                                    <asp:ListItem Value="0">Direkte</asp:ListItem>
                                    <asp:ListItem Value="1">D. Stopp</asp:ListItem>
                                    <asp:ListItem Value="2">OD - O2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D1AirTypeDropDownList" OnSelectedIndexChanged="D1AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Luft</asp:ListItem>
                                    <asp:ListItem Value="1">Nitrox</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="checkbox-inline text-info form-control-static">
                                <asp:CheckBox ID="D1RepeatedCheckBox" Text="Gjentatt" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                          <asp:TableCell ID="TableCell5" runat="server">
                            <div class="form-control-static text-info">N2-gruppe før dykk</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell6" runat="server">
                            <asp:TextBox ID="D1N2GroupBeforeDiveTextBox" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell ID="D1NitroxPercentCell1" runat="server" Enabled="false">
                            <div class="form-control-static text-right text-info">Nitrox %</div>
                        </asp:TableCell>
                        <asp:TableCell ID="D1NitroxPercentCell2" runat="server" Enabled="false">
                            <asp:TextBox ID="D1NitroxPercentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell9" runat="server">
                            <div class="form-control-static text-info">Pusteutstyr</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell10" ColumnSpan="3" runat="server">
                            <asp:TextBox ID="D1breathingGearTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Volum</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Trykk</div>
                        </asp:TableCell>
                           <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan dybde</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan tid</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D1volumeTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D1pressureTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D1plannedDepthTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D1plannedTimeTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell23" runat="server">
                            <div class="form-control-static text-info">Kursdykk nr./formål</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell24" ColumnSpan="3" runat="server">
                            <asp:TextBox ID="D1courseDiveTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
                </td><td>
            <div class="col-md-4" id="diver2Div">
               <asp:Table ID="Diver2Table" runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <div class="h4 form-control-static text-center text-primary">Dykker 2</div>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D2of_typeDropDownList" runat="server">
                                    <asp:ListItem Value="0">OF Tungt</asp:ListItem>
                                    <asp:ListItem Value="1">OF Lett</asp:ListItem>
                                    <asp:ListItem Value="2">Scuba</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="D2directDropDownList" runat="server">
                                    <asp:ListItem Value="0">Direkte</asp:ListItem>
                                    <asp:ListItem Value="1">D. Stopp</asp:ListItem>
                                    <asp:ListItem Value="2">OD - O2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D2AirTypeDropDownList" OnSelectedIndexChanged="D2AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Luft</asp:ListItem>
                                    <asp:ListItem Value="1">Nitrox</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="checkbox-inline text-info form-control-static">
                                <asp:CheckBox ID="D2RepeatedCheckBox" Text="Gjentatt" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                          <asp:TableCell ID="TableCell11" runat="server">
                            <div class="form-control-static text-info">N2-gruppe før dykk</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server">
                            <asp:TextBox ID="D2N2GroupBeforeDiveTextBox" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell ID="D2NitroxPercentCell1" runat="server" Enabled="false">
                            <div class="form-control-static text-right text-info">Nitrox %</div>
                        </asp:TableCell>
                        <asp:TableCell ID="D2NitroxPercentCell2" runat="server" Enabled="false">
                            <asp:TextBox ID="D2NitroxPercentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell13" runat="server">
                            <div class="form-control-static text-info">Pusteutstyr</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server" ColumnSpan="3">
                            <asp:TextBox ID="D2breathingGearTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Volum</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Trykk</div>
                        </asp:TableCell>
                           <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan dybde</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan tid</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D2volumeTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D2pressureTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D2PlannedDepthTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D2PlannedTimeTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell15" runat="server">
                            <div class="form-control-static text-info">Kursdykk nr./formål</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server" ColumnSpan="3">
                            <asp:TextBox ID="D2CourseDiveTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    

                </asp:Table>
            </div>
                </td><td>
            <div class="col-md-4" id="diver3Div">
                 <asp:Table ID="Diver3Table" runat="server" CssClass="table">
                    <asp:TableRow>
                        <asp:TableCell runat="server" ColumnSpan="4">
                            <div class="h4 form-control-static text-center text-primary">Dykker 3</div>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D3of_typeDropDownList" runat="server">
                                    <asp:ListItem Value="0">OF Tungt</asp:ListItem>
                                    <asp:ListItem Value="1">OF Lett</asp:ListItem>
                                    <asp:ListItem Value="2">Scuba</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="D3directDropDownList" runat="server">
                                    <asp:ListItem Value="0">Direkte</asp:ListItem>
                                    <asp:ListItem Value="1">D. Stopp</asp:ListItem>
                                    <asp:ListItem Value="2">OD - O2</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="dropdown form-control-static">
                                <asp:DropDownList ID="D3AirTypeDropDownList" OnSelectedIndexChanged="D3AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Luft</asp:ListItem>
                                    <asp:ListItem Value="1">Nitrox</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell>
                             <div class="checkbox-inline text-info form-control-static">
                                <asp:CheckBox ID="D3RepeatedCheckBox" Text="Gjentatt" runat="server" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                          <asp:TableCell ID="TableCell3" runat="server">
                            <div class="form-control-static text-info">N2-gruppe før dykk</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server">
                            <asp:TextBox ID="D3N2GroupBeforeDiveTextBox" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell ID="D3NitroxPercentCell1" runat="server" Enabled="false">
                            <div class="form-control-static text-right text-info">Nitrox %</div>
                        </asp:TableCell>
                        <asp:TableCell ID="D3NitroxPercentCell2" runat="server" Enabled="false">
                            <asp:TextBox ID="D3NitroxPercentTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell19" runat="server">
                            <div class="form-control-static text-info">Pusteutstyr</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell20" runat="server" ColumnSpan="3">
                            <asp:TextBox ID="D3breathingGearTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                      <asp:TableRow>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Volum</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Trykk</div>
                        </asp:TableCell>
                           <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan dybde</div>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <div class="form-control-static text-center text-info">Plan tid</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D3volumeTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D3PressureTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D3PlannedDepthTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox ID="D3PlannedTimeTextBox" runat="server" CssClass="form-control text-center"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell ID="TableCell21" runat="server">
                            <div class="form-control-static text-info">Kursdykk nr./formål</div>
                        </asp:TableCell>
                        <asp:TableCell ID="TableCell22" runat="server" ColumnSpan="3">
                            <asp:TextBox ID="D3CourseDiveTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    

                </asp:Table>
            </div>
                </td>
        </tr>
        </table>
        </div>
            <br />

            <div class="col-md-10 text-center" id="standardDiveDiv">
                <asp:Table ID="StandardAndCompressionDiveTable" runat="server" CssClass="table table-bordered">
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="form-control-static text-info" style="font-weight:700">Velg alle</div>
                        </asp:TableCell>
                        <asp:TableCell>   
                            <div class="form-control-static text-info" style="font-weight:700"><asp:Label runat="server" ID="DiveTitleLabel" Text="Standarddykk"></asp:Label></div>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-info" style="font-weight:700">Dykker 1</div>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-info" style="font-weight:700">Dykker 2</div>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2">
                            <div class="form-control-static text-info" style="font-weight:700">Dykker 3</div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="LeftSurfaceRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button78" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot overflaten (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D1LeftSurfaceButton" OnClick="TimeButton_Click" CommandArgument="D1LeftSurface" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1LeftSurface"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D2LeftSurfaceButton" OnClick="TimeButton_Click" CommandArgument="D2LeftSurface"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2LeftSurface"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D3LeftSurfaceButton" OnClick="TimeButton_Click" CommandArgument="D3LeftSurface"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3LeftSurface"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="ReachedBottomRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button79" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">På bunn (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D1reachedBottomButton" OnClick="TimeButton_Click" CommandArgument="D1reachedBottom" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1reachedBottom"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D2reachedBottomButton" OnClick="TimeButton_Click" CommandArgument="D2reachedBottom"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2reachedBottom"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D3reachedBottomButton" OnClick="TimeButton_Click" CommandArgument="D3reachedBottom"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3reachedBottom"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="leftBottom_DepthRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot bunn (dybde) (m)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                          
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1leftBottom_Depth"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                          
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2leftBottom_Depth"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                          
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3leftBottom_Depth"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="leftBottom_TimeRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button80" OnClick="TimeButtonWithExtraFunction_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot bunn (tid) (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D1leftBottom_TimeButton" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D1leftBottom_Time" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1leftBottom_Time"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D2leftBottom_TimeButton" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D2leftBottom_Time"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2leftBottom_Time"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D3leftBottom_TimeButton" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D3leftBottom_Time"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3leftBottom_Time"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="bottomTimeRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Bunntid (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                            
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1bottomTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                            
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2bottomTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                           
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3bottomTime"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="maxDepthRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Maks dybde (m)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                            
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1maxDepth"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                        
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2maxDepth"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3maxDepth"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="ELDRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">ELD (m)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1ELD"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2ELD"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3ELD"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="additionToBottomTimeRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tillegg til bunntid (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1additionToBottomTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2additionToBottomTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3additionToBottomTime"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="tableUsed_MeterRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tabell brukt (m)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1tableUsed_Meter"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2tableUsed_Meter"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3tableUsed_Meter"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="tableUsed_MinutesRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tabell brukt (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1tableUsed_Minutes"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2tableUsed_Minutes"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3tableUsed_Minutes"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="ascensionToFirstStopRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button81" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Oppstigning til 1. stopp (min/sek)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D1ascensionToFirstStopButton" OnClick="TimeButton_Click" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1ascensionToFirstStop"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D2ascensionToFirstStopButton" OnClick="TimeButton_Click" CommandArgument="D2ascensionToFirstStop"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2ascensionToFirstStop"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D3ascensionToFirstStopButton" OnClick="TimeButton_Click" CommandArgument="D3ascensionToFirstStop"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3ascensionToFirstStop"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="timeAtSafetyStopRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button82" OnClick="TimeButtonWithExtraFunction_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tid på sikkerhetsstopp (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D1timeAtSafetyStopBtn" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D1timeAtSafetyStop" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1timeAtSafetyStop"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D2timeAtSafetyStopBtn" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D2timeAtSafetyStop"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2timeAtSafetyStop"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D3timeAtSafetyStopBtn" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D3timeAtSafetyStop"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3timeAtSafetyStop"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    

                    <asp:TableRow ID="arrived9mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button83" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Ankom 9m (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button12" OnClick="TimeButton_Click" CommandArgument="D1arrived9m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1arrived9m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button13" OnClick="TimeButton_Click" CommandArgument="D2arrived9m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2arrived9m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button14" OnClick="TimeButton_Click" CommandArgument="D3arrived9m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3arrived9m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left9mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button84" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 9m (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button15" OnClick="TimeButton_Click" CommandArgument="D1left9m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left9m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button16" OnClick="TimeButton_Click" CommandArgument="D2left9m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left9m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button17" OnClick="TimeButton_Click" CommandArgument="D3left9m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left9m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="arrived6mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button85" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Ankom 6m (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button18" OnClick="TimeButton_Click" CommandArgument="D1arrived6m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1arrived6m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button19" OnClick="TimeButton_Click" CommandArgument="D2arrived6m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2arrived6m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button20" OnClick="TimeButton_Click" CommandArgument="D3arrived6m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3arrived6m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left6mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button86" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 6m (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button21" OnClick="TimeButton_Click" CommandArgument="D1left6m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left6m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button22" OnClick="TimeButton_Click" CommandArgument="D2left6m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left6m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button23" OnClick="TimeButton_Click" CommandArgument="D3left6m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left6m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="arrived3mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button87" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Ankom 3m (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button24" OnClick="TimeButton_Click" CommandArgument="D1arrived3m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1arrived3m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button25" OnClick="TimeButton_Click" CommandArgument="D2arrived3m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2arrived3m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button26" OnClick="TimeButton_Click" CommandArgument="D3arrived3m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3arrived3m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left3mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button88" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 3m (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button27" OnClick="TimeButton_Click" CommandArgument="D1left3m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left3m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button28" OnClick="TimeButton_Click" CommandArgument="D2left3m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left3m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button29" OnClick="TimeButton_Click" CommandArgument="D3left3m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left3m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>



                    <asp:TableRow ID="left18mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button89" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 18m stopp (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button33" OnClick="TimeButton_Click" CommandArgument="D1left18m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left18m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button34" OnClick="TimeButton_Click" CommandArgument="D2left18m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left18m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button35" OnClick="TimeButton_Click" CommandArgument="D3left18m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left18m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left15mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button90" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 15m stopp (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button36" OnClick="TimeButton_Click" CommandArgument="D1left15m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left15m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button37" OnClick="TimeButton_Click" CommandArgument="D2left15m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left15m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button38" OnClick="TimeButton_Click" CommandArgument="D3left15m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left15m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left12mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button91" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 12m stopp (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button39" OnClick="TimeButton_Click" CommandArgument="D1left12m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left12m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button40" OnClick="TimeButton_Click" CommandArgument="D2left12m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left12m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button41" OnClick="TimeButton_Click" CommandArgument="D3left12m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left12m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="time12_0mRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button92" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tid 12-0m (sek)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button42" OnClick="TimeButton_Click" CommandArgument="D1time12_0m" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1time12_0m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button43" OnClick="TimeButton_Click" CommandArgument="D2time12_0m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2time12_0m"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button44" OnClick="TimeButton_Click" CommandArgument="D3time12_0m"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3time12_0m"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="chamberSealedRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="chamberSealedButton" OnClick="chamberSealedButton_Click" runat="server" CssClass="btn-default form-control" Text="Forsegle kammer" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                        </asp:TableCell>
                        <asp:TableCell Width="5%">                            
                        </asp:TableCell>
                        <asp:TableCell Width="15%">                             
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                        </asp:TableCell>
                    </asp:TableRow>
                    

                    <asp:TableRow ID="reached15mInChamberRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button93" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Ankom 15m i kammer (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button45" OnClick="TimeButton_Click" CommandArgument="D1reached15mInChamber" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1reached15mInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button46" OnClick="TimeButton_Click" CommandArgument="D2reached15mInChamber"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2reached15mInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button47" OnClick="TimeButton_Click" CommandArgument="D3reached15mInChamber"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3reached15mInChamber"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="surfaceIntervalRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button94" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Overflateintervall (min/sek)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button48" OnClick="TimeButton_Click" CommandArgument="D1surfaceInterval" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1surfaceInterval"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button49" OnClick="TimeButton_Click" CommandArgument="D2surfaceInterval"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2surfaceInterval"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button50" OnClick="TimeButton_Click" CommandArgument="D3surfaceInterval"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3surfaceInterval"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left15mInChamberRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button95" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Forlot 15m i kammer (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button51" OnClick="TimeButton_Click" CommandArgument="D1left15mInChamber" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left15mInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button52" OnClick="TimeButton_Click" CommandArgument="D2left15mInChamber"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left15mInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button53" OnClick="TimeButton_Click" CommandArgument="D3left15mInChamber"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left15mInChamber"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="reached12mInChamber">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button96" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Ankom 12m i kammer (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button54" OnClick="TimeButton_Click" CommandArgument="D1reached12mInChamber" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1reached12mInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button55" OnClick="TimeButton_Click" CommandArgument="D2reached12mInChamber"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2reached12mInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button56" OnClick="TimeButton_Click" CommandArgument="D3reached12mInChamber"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3reached12mInChamber"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="o2_1Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button97" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">O2 - 1 (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button57" OnClick="TimeButton_Click" CommandArgument="D1o2_1" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1o2_1"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button58" OnClick="TimeButton_Click" CommandArgument="D2o2_1"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2o2_1"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button59" OnClick="TimeButton_Click" CommandArgument="D3o2_1"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3o2_1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="air_1Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button98" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Luft - 1 (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button60" OnClick="TimeButton_Click" CommandArgument="D1air_1" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1air_1"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button61" OnClick="TimeButton_Click" CommandArgument="D2air_1"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2air_1"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button62" OnClick="TimeButton_Click" CommandArgument="D3air_1"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3air_1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="o2_2Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button99" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">O2 - 2 (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button63" OnClick="TimeButton_Click" CommandArgument="D1o2_2" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1o2_2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button64" OnClick="TimeButton_Click" CommandArgument="D2o2_2"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2o2_2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button65" OnClick="TimeButton_Click" CommandArgument="D3o2_2"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3o2_2"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="air_2Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button100" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Luft - 2 (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button66" OnClick="TimeButton_Click" CommandArgument="D1air_2" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1air_2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button67" OnClick="TimeButton_Click" CommandArgument="D2air_2"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2air_2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button68" OnClick="TimeButton_Click" CommandArgument="D3air_2"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3air_2"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="o2_3Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button101" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">O2 - 3 (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button69" OnClick="TimeButton_Click" CommandArgument="D1o2_3" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1o2_3"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button70" OnClick="TimeButton_Click" CommandArgument="D2o2_3"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2o2_3"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button71" OnClick="TimeButton_Click" CommandArgument="D3o2_3"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3o2_3"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="air_3Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button102" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Luft - 3 (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button72" OnClick="TimeButton_Click" CommandArgument="D1air_3" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1air_3"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button73" OnClick="TimeButton_Click" CommandArgument="D2air_3"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2air_3"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button74" OnClick="TimeButton_Click" CommandArgument="D3air_3"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3air_3"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="left12mWithoutO2Row">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button103" OnClick="TimeButton_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Start oppstigning til overflaten (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button75" OnClick="TimeButton_Click" CommandArgument="D1left12mWithoutO2" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1left12mWithoutO2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button76" OnClick="TimeButton_Click" CommandArgument="D2left12mWithoutO2"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2left12mWithoutO2"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="Button77" OnClick="TimeButton_Click" CommandArgument="D3left12mWithoutO2"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3left12mWithoutO2"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>



                    <asp:TableRow ID="reachedSurfaceRow">
                        <asp:TableCell Width="4%">
                            <asp:Button ID="Button104" OnClick="TimeButtonWithExtraFunction_Click" runat="server" CssClass=" btn-primary form-control" Text="Sett inn alle" />
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">På overflaten (kl)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D1reachedSurfaceBtn" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D1reachedSurface" runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1reachedSurface"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D2reachedSurfaceBtn" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D2reachedSurface"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2reachedSurface"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                            <asp:Button ID="D3reachedSurfaceBtn" OnClick="TimeButtonWithExtraFunction_Click" CommandArgument="D3reachedSurface"  runat="server" CssClass="btn-default form-control" Text="Sett inn" />
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3reachedSurface"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>


                    <asp:TableRow ID="ascensionTimeRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Oppstigningstid (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1ascensionTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2ascensionTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3ascensionTime"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>


                    <asp:TableRow ID="timeInChamberRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tid i kammer (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1timeInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2timeInChamber"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3timeInChamber"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="timeAtSeaRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Tid i sjø (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1timeAtSea"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2timeAtSea"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3timeAtSea"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="totalDecompressionRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Total dekompresjon (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1totalDecompression"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2totalDecompression"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3totalDecompression"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>



                    <asp:TableRow ID="totalDivingTimeRow">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Total dykketid (min)</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D1totalDivingTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D2totalDivingTime"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control" ID="D3totalDivingTime"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="N2GroupAfterDive">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">N2-gruppe etter dykk</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control text-uppercase" ID="D1N2GroupAfterDive"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control text-uppercase" ID="D2N2GroupAfterDive"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <asp:TextBox runat="server" CssClass="form-group form-control text-uppercase" ID="D3N2GroupAfterDive"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="isEverythingOK">
                        <asp:TableCell Width="4%">
                        </asp:TableCell>
                        <asp:TableCell Width="30%">
                            <div class="form-control-static text-info">Alt OK etter dykk?</div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                            <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="D1isEverythingOKDropDownList" runat="server">
                                    <asp:ListItem Value="0">Ja</asp:ListItem>
                                    <asp:ListItem Value="1">Nei</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="D2isEverythingOKDropDownList" runat="server">
                                    <asp:ListItem Value="0">Ja</asp:ListItem>
                                    <asp:ListItem Value="1">Nei</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                        <asp:TableCell Width="5%">
                        </asp:TableCell>
                        <asp:TableCell Width="15%">
                             <div class="dropdown form-control-static">
                                 <asp:DropDownList ID="D3isEverythingOKDropDownList" runat="server">
                                    <asp:ListItem Value="0">Ja</asp:ListItem>
                                    <asp:ListItem Value="1">Nei</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
                

            </div>

            <div class="col-md-4 text-info" id="notesDiv">Merknader
                <asp:TextBox ID="notesTextBox" TextMode="MultiLine" Columns="50" Rows="5" runat="server"></asp:TextBox>
            </div>

            <div class=" btn-group pull-right">
                <asp:Button runat="server" ID="Button1" Text="Lagre midlertidig" OnClick="LocalSaveButton_Click" CssClass="btn-primary btn" />
                <asp:Button runat="server" ID="Button2" Text="Lagre til database" OnClick="SaveToDatabaseButton_Click" CssClass="btn-success btn"/>
            </div>


        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>