<%@ Page Title="Ny journal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="New_Journal.aspx.cs" Inherits="Divingjournal2.New_Journal" %>




<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <asp:Label ID="HeaderLabel" runat="server"></asp:Label>
            <h1 id="h1Title"></h1>
            <asp:Panel ID="JournalTypeButtonPanel" runat="server">

                <asp:Button ID="StandardDiveButton" runat="server" Text="Direkte dykk" Width="25%" OnClick="StandardDiveButton_Click" />
                <asp:Button ID="SurfaceCompressionDiveButton" runat="server" Text="Overflatekompresjon" Width="25%" OnClick="SurfaceCompressionDiveButton_Click" />
                <asp:Button ID="PressureChamberDiveButton" runat="server" Text="Trykkammer" Width="25%" OnClick="PressureChamberDiveButton_Click" />

                 <asp:Button ID="Local_Save_button" runat="server" Text="Mellomlagre" />
                <asp:Button ID="AJAX_Button" runat="server" Text="Hent" />
                <asp:Button ID="Dummy_button" runat="server" Text="Dummy" />
                <asp:Button ID="DB_button" runat="server" Text="Lagre til DB" />
                <asp:Button ID="Print_Button" runat="server" Text="Skriv ut" OnClick="PrintJournal" />
            </asp:Panel>

       

            

             <div>
                 <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" runat="server" BehaviorID="PopupPanel_PopupControlExtender" PopupControlID="Local_save_panel" ExtenderControlID="" TargetControlID="Local_Save_button">
                   </ajaxToolkit:PopupControlExtender>
            <asp:Panel ID="Local_save_panel" runat="server" BackColor="White" BorderWidth="2" BorderStyle="Solid" BorderColor="Black">
            <h1>Gi et navn journalen skal lagres som</h1>
            <asp:Label ID="PopupLabel" runat="server" Text="Navn:"></asp:Label>
            <asp:TextBox ID="PopupTextBox" runat="server"></asp:TextBox>
            <asp:Button  ID="submit_local_save_button" Text="Lagre midlertidig" runat="server" OnClick="Local_Save_Click" />
        </asp:Panel>
            </div>

                      


            <div style="text-align: right; padding: 0px; height: 22px; width: auto;">
                <asp:Table ID="FirstInfoTable" runat="server" BorderStyle="None" CellPadding="1" CellSpacing="1" HorizontalAlign="Right" Font-Size="X-Large">
                    <asp:TableRow ID="JournalIDRow" runat="server">

                        <asp:TableCell runat="server">Journal nr</asp:TableCell>
                        <asp:TableCell ID="JournalIDCell" runat="server" HorizontalAlign="Right">
                            <asp:Label ID="JournalIDLabel" runat="server" Text=""></asp:Label>

                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="CourseNrRow" runat="server">

                        <asp:TableCell runat="server">Kurs nr</asp:TableCell>
                        <asp:TableCell ID="CourseNrCell" runat="server" HorizontalAlign="Right">
                            <asp:TextBox ID="CourseNrTextBox" runat="server" Width="100%"></asp:TextBox>

                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow ID="SubjectRow" runat="server" Font-Size="Large">
                        <asp:TableCell runat="server">Fag</asp:TableCell>
                        <asp:TableCell ID="SubjectCell" runat="server" ColumnSpan="2">
                            <asp:DropDownList ID="SubjectDropDownList" runat="server">
                                <asp:ListItem>DYK600 - Sikkerhetsopplæring i dykking</asp:ListItem>

                                <asp:ListItem>DYK601 - Fagopplæring i anlegg</asp:ListItem>

                                <asp:ListItem>DYK601 - Fagopplæring i rørlegging</asp:ListItem>

                                <asp:ListItem>DYK601 - Fagopplæring i berging</asp:ListItem>

                                <asp:ListItem>RED110 - Redningsdykking</asp:ListItem>

                            </asp:DropDownList>

                        </asp:TableCell>

                    </asp:TableRow>


                </asp:Table>
            </div>



            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" CellPadding="1" DayNameFormat="Shortest">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>





            <asp:Panel runat="server" ID="MainInfoPanel">

                <div style="text-align: right; padding: 0px; height: 22px; width: auto;">

                    <asp:Table ID="MainInfoTable" runat="server" Visible="True" HorizontalAlign="Left" Font-Size="Large">



                        <asp:TableRow ID="DateRow" runat="server">

                            <asp:TableCell runat="server">
                                <asp:Button ID="DateButton" runat="server" Text="Dato" Width="100%" OnClick="DateButton_Click" />

                            </asp:TableCell>
                            <asp:TableCell ID="DateCell" runat="server">
                                <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>



                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow2" runat="server">

                            <asp:TableCell runat="server">Sted</asp:TableCell>
                            <asp:TableCell ID="LocationCell" runat="server">
                                <asp:TextBox ID="LocationTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="DivingSpotRow" runat="server">
                            <asp:TableCell runat="server">Dykkepost</asp:TableCell>
                            <asp:TableCell ID="DivingSpotCell" runat="server">
                                <asp:TextBox ID="DivingSpotTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>



                        <asp:TableRow ID="OtherRow" runat="server">
                            <asp:TableCell runat="server">Annet</asp:TableCell>
                            <asp:TableCell ID="OtherCell" runat="server">
                                <asp:TextBox ID="OtherTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>









                        <asp:TableRow ID="TableRow4" runat="server" BorderStyle="None">

                            <asp:TableCell runat="server">Dykkesjef</asp:TableCell>
                            <asp:TableCell ID="DivingChiefCell" runat="server">
                                <asp:TextBox ID="DivingChiefTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow5" runat="server" BorderStyle="None">

                            <asp:TableCell runat="server">Dykkeleder (instruktør)</asp:TableCell>
                            <asp:TableCell ID="Divingleader_teacherCell" runat="server">
                                <asp:TextBox ID="Divingleader_teacherTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="Divingleader_studentRow" runat="server">
                            <asp:TableCell runat="server">Dykkeleder (student)</asp:TableCell>
                            <asp:TableCell ID="Divingleader_studentCell" runat="server">
                                <asp:TextBox ID="Divingleader_studentTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="diver_1Row" runat="server">
                            <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                            <asp:TableCell ID="diver_1Cell" runat="server">
                                <asp:TextBox ID="Diver_1TextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="diver_2Row" runat="server">

                            <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                            <asp:TableCell ID="TableCell5" runat="server">
                                <asp:TextBox ID="Diver_2TextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="StandbyRow" runat="server">

                            <asp:TableCell runat="server">Standby-/beredskapsdykker</asp:TableCell>
                            <asp:TableCell ID="TableCell6" runat="server">
                                <asp:TextBox ID="StandbyTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="HelpmanRow" runat="server">
                            <asp:TableCell runat="server">Hjelpemann</asp:TableCell>
                            <asp:TableCell ID="TableCell7" runat="server">
                                <asp:TextBox ID="HelpmanTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="Helpman_assistingRow" runat="server">
                            <asp:TableCell runat="server">Assisterende hjelpemann</asp:TableCell>
                            <asp:TableCell ID="TableCell8" runat="server">
                                <asp:TextBox ID="Helpman_assistingTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="Lineman_1Row" runat="server">

                            <asp:TableCell runat="server">Linemann 1</asp:TableCell>
                            <asp:TableCell ID="TableCell9" runat="server">
                                <asp:TextBox ID="Lineman_1TextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="Lineman_2Row" runat="server">
                            <asp:TableCell runat="server">Linemann 2</asp:TableCell>
                            <asp:TableCell ID="TableCell10" runat="server">
                                <asp:TextBox ID="Lineman_2TextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="OthersRow" runat="server">
                            <asp:TableCell runat="server">Andre</asp:TableCell>
                            <asp:TableCell ID="TableCell11" runat="server">
                                <asp:TextBox ID="OthersTextBox" runat="server"></asp:TextBox>




                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="PurposeRow" runat="server">
                            <asp:TableCell runat="server">Formål</asp:TableCell>
                            <asp:TableCell ID="TableCell14" runat="server">
                                <asp:TextBox ID="PurposeTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="chamberoperatorRow" runat="server">
                            <asp:TableCell runat="server">Kammeroperatør</asp:TableCell>
                            <asp:TableCell ID="TableCell15" runat="server">
                                <asp:TextBox ID="chamberoperatorTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="chamberassistentRow" runat="server">
                            <asp:TableCell runat="server">Kammerassistent</asp:TableCell>
                            <asp:TableCell ID="TableCell16" runat="server">
                                <asp:TextBox ID="chamberassistentTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="isChamberClearRow" runat="server">
                            <asp:TableCell runat="server">Kammer OK?</asp:TableCell>
                            <asp:TableCell ID="TableCell17" runat="server">

                                <asp:CheckBox ID="isChamberClearCheckBox" Text="Kammer OK" TextAlign="Left" runat="server" />

                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="isOxygenClearRow" runat="server">
                            <asp:TableCell runat="server">Oksygen OK?</asp:TableCell>
                            <asp:TableCell ID="TableCell18" runat="server">

                                <asp:CheckBox ID="isOxygenClearCheckBox" runat="server" Text="Oksygen OK" TextAlign="Left" />

                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="treatmentRow" runat="server">
                            <asp:TableCell runat="server">Behandling</asp:TableCell>
                            <asp:TableCell ID="TableCell19" runat="server">

                                <asp:CheckBox ID="treatmentCheckBox" Text="  Behandling" runat="server" TextAlign="Left" />

                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="doctorRow" runat="server">
                            <asp:TableCell runat="server">Lege</asp:TableCell>
                            <asp:TableCell ID="TableCell20" runat="server">
                                <asp:TextBox ID="doctorTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>



                    </asp:Table>

                </div>

            </asp:Panel>

            <asp:Panel runat="server" ID="SecondaryInfoPanel">

                <div style="text-align: right; padding: 0px; height: 22px; width: auto;">
                    <asp:Table runat="server" ID="SecondaryInfoTable" Visible="True" HorizontalAlign="Left" Font-Size="Large">
                        <asp:TableRow ID="TableRow15" runat="server">

                            <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Luftsystem</asp:TableHeaderCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow16" runat="server">

                            <asp:TableCell runat="server">Hovedforsyning</asp:TableCell>
                            <asp:TableCell ID="TableCell2" runat="server">
                                <asp:TextBox ID="airsystem_mainTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="TableRow17" runat="server">
                            <asp:TableCell runat="server">Sekundærforsyning</asp:TableCell>
                            <asp:TableCell ID="TableCell3" runat="server">
                                <asp:TextBox ID="airsystem_secondaryTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow18" runat="server">

                            <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Oksygen til kammer</asp:TableHeaderCell>

                        </asp:TableRow>

                        <asp:TableRow ID="TableRow19" runat="server">

                            <asp:TableCell runat="server">I bruk</asp:TableCell>
                            <asp:TableCell ID="TableCell1" runat="server">
                                <asp:TextBox ID="oxygenForChamber_inUseTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="TableRow20" runat="server">
                            <asp:TableCell runat="server">Klar til bruk</asp:TableCell>
                            <asp:TableCell ID="TableCell4" runat="server">
                                <asp:TextBox ID="oxygenForChamber_readyForUseTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>

                        <asp:TableHeaderRow ID="TransportRow">
                            <asp:TableHeaderCell>
                                <asp:CheckBoxList ID="TransportCheckBoxList" AutoPostBack="true" RepeatDirection="Horizontal" runat="server" OnSelectedIndexChanged="TransportCheckBoxList_SelectedIndexChanged">

                                    <asp:ListItem Value="0">Dykkekurv</asp:ListItem>
                                    <asp:ListItem Value="1">Våtklokke</asp:ListItem>

                                </asp:CheckBoxList>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>

                        <asp:TableRow ID="EmergencyGasRow1" runat="server" Visible="false">

                            <asp:TableHeaderCell CssClass="tableCellHeaderStyle">Nødgass</asp:TableHeaderCell>

                        </asp:TableRow>

                        <asp:TableRow ID="EmergencyGasRow2" runat="server" Visible="false">

                            <asp:TableCell runat="server">Våtklokke</asp:TableCell>
                            <asp:TableCell ID="TableCell12" runat="server">
                                <asp:TextBox ID="emergencyGas_divingBellTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>
                        <asp:TableRow ID="EmergencyGasRow3" runat="server" Visible="false">
                            <asp:TableCell runat="server">Dykkekurv</asp:TableCell>
                            <asp:TableCell ID="TableCell13" runat="server">
                                <asp:TextBox ID="emergencyGas_divingBasketTextBox" runat="server"></asp:TextBox>


                            </asp:TableCell>

                        </asp:TableRow>
                    </asp:Table>

                </div>
            </asp:Panel>





            <asp:Panel runat="server">

                <div style="text-align: right; padding: 0px; height: 22px; width: auto;">

                    <asp:Table ID="PressureChamberDiversTable" runat="server" HorizontalAlign="Left" Font-Size="Large">



                        <asp:TableHeaderRow ID="TableHeaderRow1" runat="server">
                            <asp:TableHeaderCell runat="server" ColumnSpan="2">
                       Dykkere
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow ID="TableRow1" runat="server">
                            <asp:TableCell ID="TableCell22" runat="server">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell21" runat="server">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow3" runat="server">
                            <asp:TableCell ID="TableCell23" runat="server">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell24" runat="server">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow6" runat="server">
                            <asp:TableCell ID="TableCell25" runat="server">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell26" runat="server">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow7" runat="server">
                            <asp:TableCell ID="TableCell27" runat="server">
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell28" runat="server">
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>


                    </asp:Table>
                </div>
            </asp:Panel>
            <!-- her var updatepanel -->





            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:Panel ID="DiversPanel" runat="server">

                        <div style="width: auto;">

                            <asp:Table ID="DiversTable" runat="server" HorizontalAlign="Left" CellSpacing="20" CellPadding="20">
                                <asp:TableRow runat="server">
                                    <asp:TableCell ID="Diver1Cell" runat="server">



                                        <h4>Dykker 1</h4>
                                        <asp:DropDownList ID="D1OF_TypeDropDownList" runat="server">
                                            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


                                            <asp:ListItem Value="1">OF Lett</asp:ListItem>


                                            <asp:ListItem Value="2">Scuba</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:DropDownList ID="D1DirectDropDownList" runat="server">
                                            <asp:ListItem Value="0">Direkte</asp:ListItem>


                                            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


                                            <asp:ListItem Value="2">OD - O2</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:DropDownList ID="D1AirTypeDropDownList" OnSelectedIndexChanged="D1AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                            <asp:ListItem Value="0">Luft</asp:ListItem>


                                            <asp:ListItem Value="1">Nitrox</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:CheckBox ID="D1RepeatedAirCheckBox" Text="Gjentatt" runat="server" />

                                        <br />

                                        <asp:Table ID="D1N2GroupBeforeDiveTable" HorizontalAlign="Left" runat="server">
                                            <asp:TableRow ID="TableRow24" runat="server">
                                                <asp:TableCell runat="server">N2-gruppe før dykk</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1N2GroupBeforeDiveTextBox" Width="60" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>



                                        <asp:Table ID="D1NitroxPercentTable" HorizontalAlign="Right" Visible="false" runat="server">
                                            <asp:TableRow ID="NitroxPercentRow" runat="server">
                                                <asp:TableCell runat="server">Nitrox %</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1NitroxPercentTextbox" Width="55" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>




                                        <asp:Table ID="D1VolumeTable" runat="server">



                                            <asp:TableRow ID="BreathingGearRow" runat="server">
                                                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1BreathingGearTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="VolumeTitleRow" runat="server">
                                                <asp:TableHeaderCell ColumnSpan="2">Volum og Trykk</asp:TableHeaderCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="VolumeRow" runat="server">
                                                <asp:TableCell runat="server">
                    Volum
                                                </asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1VolumeTextBox" runat="server"></asp:TextBox>

                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="PressureRow" runat="server">
                                                <asp:TableCell runat="server">
                    Trykk

                                                </asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1PressureTextBox" runat="server"></asp:TextBox>

                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="PlannedDepthTitleRow" runat="server">
                                                <asp:TableHeaderCell ColumnSpan="2">Plan dybde og Tid</asp:TableHeaderCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="PlannedDepthRow" runat="server">
                                                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1PlannedDepthTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="PlannedTimeRow" runat="server">
                                                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1PlannedTimeTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>
                     <br/>
                                                </asp:TableCell>
                                            </asp:TableRow>

                                            <asp:TableRow ID="CourseDiveRow" runat="server">
                                                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D1CourseDiveTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>

                                        </asp:Table>


                                    </asp:TableCell>
                                    <asp:TableCell ID="Diver2Cell" runat="server">




                                        <h4>Dykker 2</h4>
                                        <asp:DropDownList ID="D2OF_TypeDropDownList" runat="server">
                                            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


                                            <asp:ListItem Value="1">OF Lett</asp:ListItem>


                                            <asp:ListItem Value="2">Scuba</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:DropDownList ID="D2DirectDropDownList" runat="server">
                                            <asp:ListItem Value="0">Direkte</asp:ListItem>


                                            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


                                            <asp:ListItem Value="2">OD - O2</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:DropDownList ID="D2AirTypeDropDownList" OnSelectedIndexChanged="D2AirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                            <asp:ListItem Value="0">Luft</asp:ListItem>


                                            <asp:ListItem Value="1">Nitrox</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:CheckBox ID="D2RepeatedAirCheckBox" Text="Gjentatt" runat="server" />

                                        <br />


                                        <asp:Table ID="Table2" HorizontalAlign="Left" runat="server">
                                            <asp:TableRow ID="TableRow21" runat="server">
                                                <asp:TableCell runat="server">N2-gruppe før dykk</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2N2GroupBeforeDiveTextBox" Width="60" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>



                                        <asp:Table ID="D2NitroxPercentTable" HorizontalAlign="Right" Visible="false" runat="server">
                                            <asp:TableRow ID="TableRow22" runat="server">
                                                <asp:TableCell runat="server">Nitrox %</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2NitroxPercentTextbox" Width="55" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>





                                        <asp:Table ID="Table4" runat="server">



                                            <asp:TableRow ID="TableRow23" runat="server">
                                                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2BreathingGearTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow25" runat="server">
                                                <asp:TableHeaderCell ColumnSpan="2">Volum og Trykk</asp:TableHeaderCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow26" runat="server">
                                                <asp:TableCell runat="server">
                    Volum
                                                </asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2VolumeTextBox" runat="server"></asp:TextBox>

                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow27" runat="server">
                                                <asp:TableCell runat="server">
                    Trykk

                                                </asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2PressureTextBox" runat="server"></asp:TextBox>

                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow28" runat="server">
                                                <asp:TableHeaderCell ColumnSpan="2">Plan dybde og Tid</asp:TableHeaderCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow29" runat="server">
                                                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2PlannedDepthTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow30" runat="server">
                                                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2PlannedTimeTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>
                     <br/>
                                                </asp:TableCell>
                                            </asp:TableRow>

                                            <asp:TableRow ID="TableRow31" runat="server">
                                                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="D2CourseDiveTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>

                                        </asp:Table>

                                    </asp:TableCell>
                                    <asp:TableCell ID="StandbyCell" runat="server">


                                        <h4>Standby</h4>
                                        <asp:DropDownList ID="SBOF_TypeDropDownList" runat="server">
                                            <asp:ListItem Value="0">OF Tungt</asp:ListItem>


                                            <asp:ListItem Value="1">OF Lett</asp:ListItem>


                                            <asp:ListItem Value="2">Scuba</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:DropDownList ID="SBDirectDropDownList" runat="server">
                                            <asp:ListItem Value="0">Direkte</asp:ListItem>


                                            <asp:ListItem Value="1">D. Stopp</asp:ListItem>


                                            <asp:ListItem Value="2">OD - O2</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:DropDownList ID="SBAirTypeDropDownList" OnSelectedIndexChanged="SBAirTypeDropDownList_SelectedIndexChanged" runat="server" AutoPostBack="true">
                                            <asp:ListItem Value="0">Luft</asp:ListItem>


                                            <asp:ListItem Value="1">Nitrox</asp:ListItem>


                                        </asp:DropDownList>


                                        <asp:CheckBox ID="SBRepeatedAirCheckBox" Text="Gjentatt" runat="server" />

                                        <br />

                                        <asp:Table ID="Table5" HorizontalAlign="Left" runat="server">
                                            <asp:TableRow ID="TableRow32" runat="server">
                                                <asp:TableCell runat="server">N2-gruppe før dykk</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBN2GroupBeforeDiveTextBox" Width="60" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>



                                        <asp:Table ID="SBNitroxPercentTable" HorizontalAlign="Right" Visible="false" runat="server">
                                            <asp:TableRow ID="TableRow33" runat="server">
                                                <asp:TableCell runat="server">Nitrox %</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBNitroxPercentTextbox" Width="55" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>




                                        <asp:Table ID="Table7" runat="server">



                                            <asp:TableRow ID="TableRow34" runat="server">
                                                <asp:TableCell runat="server">Pusteutstyr</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBBreathingGearTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow35" runat="server">
                                                <asp:TableHeaderCell ColumnSpan="2">Volum og Trykk</asp:TableHeaderCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow36" runat="server">
                                                <asp:TableCell runat="server">
                    Volum
                                                </asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBVolumeTextBox" runat="server"></asp:TextBox>

                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow37" runat="server">
                                                <asp:TableCell runat="server">
                    Trykk

                                                </asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBPressureTextBox" runat="server"></asp:TextBox>

                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow38" runat="server">
                                                <asp:TableHeaderCell ColumnSpan="2">Plan dybde og Tid</asp:TableHeaderCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow39" runat="server">
                                                <asp:TableCell runat="server">Plan dybde</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBPlannedDepthTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow ID="TableRow40" runat="server">
                                                <asp:TableCell runat="server">Plan tid</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBPlannedTimeTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>
                     <br/>
                                                </asp:TableCell>
                                            </asp:TableRow>

                                            <asp:TableRow ID="TableRow41" runat="server">
                                                <asp:TableCell runat="server">Kursdykk nr./formål</asp:TableCell>
                                                <asp:TableCell runat="server">
                                                    <asp:TextBox ID="SBCourseDiveTextBox" runat="server"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>

                                        </asp:Table>



                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>


            <!-- hidden fields to store modal result in -->
<input type="hidden" id="journal_name_hidden">

            


  <script src="Stopwatch3.js"></script>
  <script src ="Scripts/jquery-3.1.1.js"></script>

  <script >
      var storage = window.localStorage;
      var local_journals = [];

      
      //Save data to LocalStorage
      $(document).on("click", "#<%=Local_Save_button.ClientID %>", function (evt) {
          
          if (!navigator.onLine) {
              var journal_name = prompt("Gi journalen et navn. Vitkig at du husker dette navnet, fordi du vil bli spurt om det når du skal hente journalen frem igjen.");
              var new_local_journal = {
                  subject: $("#<%=SubjectDropDownList.ClientID %>").val(),
                  courseNumber: $("#<%=CourseNrTextBox.ClientID %>").val(),
                  other: $("#<%=OtherTextBox.ClientID %>").val(),
                  date: $("#<%=DateTextBox.ClientID %>").val(),
                  location: $("#<%=LocationTextBox.ClientID %>").val(),
                  divingSpot: $("#<%=DivingSpotTextBox.ClientID %>").val(),
                  divingchief: $("#<%=DivingChiefTextBox.ClientID %>").val(),
                  divingleader_teacher: $("#<%=Divingleader_teacherTextBox.ClientID %>").val(),
                  divingleader_student: $("#<%=Divingleader_studentTextBox.ClientID %>").val(),
                  diver_1: $("#<%=Diver_1TextBox.ClientID %>").val(),
                  diver_2: $("#<%=Diver_2TextBox.ClientID %>").val(),
                  standby: $("#<%=StandbyTextBox.ClientID %>").val(),
                  lineman_1: $("#<%=Lineman_1TextBox.ClientID %>").val(),
                  lineman_2: $("#<%=Lineman_2TextBox.ClientID %>").val(),
                  helpman: $("#<%=HelpmanTextBox.ClientID %>").val(),
                  helpman_assisting: $("#<%=Helpman_assistingTextBox.ClientID %>").val(),
                  others: $("#<%=OthersTextBox.ClientID %>").val(),
                  airsystem_main: $("#<%=airsystem_mainTextBox.ClientID %>").val(),
                  airsystem_secondary: $("#<%=airsystem_secondaryTextBox.ClientID %>").val(),
                  oxygenForChamber_inUse: $("#<%=oxygenForChamber_inUseTextBox.ClientID %>").val(),
                  oxygenForChamber_readyForUse: $("#<%=oxygenForChamber_readyForUseTextBox.ClientID %>").val(),
                  emergencyGas_divingBell: $("#<%=emergencyGas_divingBellTextBox.ClientID %>").val(),
                  emergencyGas_divingBasket: $("#<%=emergencyGas_divingBasketTextBox.ClientID %>").val(),
                  purpose: $("#<%=PurposeTextBox.ClientID %>").val(),
                  chamberoperator: $("#<%=chamberoperatorTextBox.ClientID %>").val(),
                  chamberassistent: $("#<%=chamberassistentTextBox.ClientID %>").val(),
                  doctor: $("#<%=doctorTextBox.ClientID %>").val(),

                  //diver1 - Standard
                  of_type: $("#<%=D1OF_TypeDropDownList.ClientID %>").val(),
                  direct: $("#<%=D1DirectDropDownList.ClientID %>").val(),
                  airType: $("#<%=D1AirTypeDropDownList.ClientID %>").val(),
                  nitroxType: $("#<%=D1NitroxPercentTextbox.ClientID %>").val(),
                  repeatedAir: $("#<%=D1RepeatedAirCheckBox.ClientID %>").val(),
                  N2GroupBeforeDive: $("#<%=D1N2GroupBeforeDiveTextBox.ClientID %>").val(),
                  breathingGear: $("#<%=D1BreathingGearTextBox.ClientID %>").val(),
                  volume: $("#<%=D1VolumeTextBox.ClientID %>").val(),
                  pressure: $("#<%=D1PressureTextBox.ClientID %>").val(),
                  plannedDepth: $("#<%=D1PlannedDepthTextBox.ClientID %>").val(),
                  plannedTime: $("#<%=D1PlannedTimeTextBox.ClientID %>").val(),
                  courseDive: $("#<%=D1CourseDiveTextBox.ClientID %>").val(),
                  leftSurface: $("#<%=D1LeftSurface.ClientID %>").val(),
                  reachedBottom: $("#<%=D1ReachedBottom.ClientID %>").val(),
                  leftBottom_Depth: $("#<%=D1leftBottom_Depth.ClientID %>").val(),
                  leftBottom_Time: $("#<%=D1leftBottom_Time.ClientID %>").val(),
                  bottomTime: $("#<%=D1bottomTime.ClientID %>").val(),
                  maxDepth: $("#<%=D1maxDepth.ClientID %>").val(),
                  ELD: $("#<%=D1ELD.ClientID %>").val(),
                  additionToBottomTime: $("#<%=D1additionToBottomTime.ClientID %>").val(),
                  tableUsed_Meter: $("#<%=D1tableUsed_Meter.ClientID %>").val(),
                  tableUsed_Minutes: $("#<%=D1tableUsed_Minutes.ClientID %>").val(),
                  ascensionToFirstStop: $("#<%=D1ascensionToFirstStop.ClientID %>").val(),
                  timeAtSafetyStop: $("#<%=D1timeAtSafetyStop.ClientID %>").val(),
                  totalDivingTime: $("#<%=D1totalDivingTime.ClientID %>").val(),
                  N2GroupAfterDive: $("#<%=D1N2GroupAfterDive.ClientID %>").val(),
                  isEverythingOK: $("#<%=D1isEverythingOKDropDownList.ClientID %>").val(),
                  arrived9m: $("#<%=D1arrived9m.ClientID %>").val(),
                  arrived6m: $("#<%=D1arrived6m.ClientID %>").val(),
                  arrived3m: $("#<%=D1arrived3m.ClientID %>").val(),
                  left9m: $("#<%=D1left9m.ClientID %>").val(),
                  left6m: $("#<%=D1left6m.ClientID %>").val(),
                  left3m: $("#<%=D1left3m.ClientID %>").val(),
                  reachedSurface: $("#<%=D1reachedSurface.ClientID %>").val(),
                  ascensionTime: $("#<%=D1ascensionTime.ClientID %>").val()

              };

              storage.setItem(journal_name, JSON.stringify(new_local_journal));
          }
             
          
      });

      //Retreive data from LocalStorage
      $(document).on("click", "#<%=AJAX_Button.ClientID %>", function (evt) {
          var get_local_name = prompt("Skriv inn navn på journalen du ønsker å hente");
          var local_journal = JSON.parse(localStorage.getItem(get_local_name));
          $("#<%=CourseNrTextBox.ClientID %>").val(local_journal.courseNumber);
          $("#<%=SubjectDropDownList.ClientID %>").val(local_journal.subject);
          $("#<%=OtherTextBox.ClientID %>").val(local_journal.other);
      $("#<%=DateTextBox.ClientID %>").val(local_journal.date);
      $("#<%=LocationTextBox.ClientID %>").val(local_journal.location);
      $("#<%=DivingSpotTextBox.ClientID %>").val(local_journal.divingSpot);
      $("#<%=DivingChiefTextBox.ClientID %>").val(local_journal.divingchief);
      $("#<%=Divingleader_teacherTextBox.ClientID %>").val(local_journal.divingleader_teacher);
      $("#<%=Divingleader_studentTextBox.ClientID %>").val(local_journal.divingleader_student);
      $("#<%=Diver_1TextBox.ClientID %>").val(local_journal.diver_1);
      $("#<%=Diver_2TextBox.ClientID %>").val(local_journal.diver_2);
      $("#<%=StandbyTextBox.ClientID %>").val(local_journal.standby);
      $("#<%=Lineman_1TextBox.ClientID %>").val(local_journal.lineman_1);
      $("#<%=Lineman_2TextBox.ClientID %>").val(local_journal.lineman_2);
      $("#<%=HelpmanTextBox.ClientID %>").val(local_journal.helpman);
      $("#<%=Helpman_assistingTextBox.ClientID %>").val(local_journal.helpman_assisting);
      $("#<%=OthersTextBox.ClientID %>").val(local_journal.others);
      $("#<%=airsystem_mainTextBox.ClientID %>").val(local_journal.airsystem_main);
      $("#<%=airsystem_secondaryTextBox.ClientID %>").val(local_journal.airsystem_secondary);
      $("#<%=oxygenForChamber_inUseTextBox.ClientID %>").val(local_journal.oxygenForChamber_inUse);
      $("#<%=oxygenForChamber_readyForUseTextBox.ClientID %>").val(local_journal.oxygenForChamber_readyForUse);
      $("#<%=emergencyGas_divingBellTextBox.ClientID %>").val(local_journal.emergencyGas_divingBell);
      $("#<%=emergencyGas_divingBasketTextBox.ClientID %>").val(local_journal.emergencyGas_divingBasket);
      $("#<%=PurposeTextBox.ClientID %>").val(local_journal.purpose);
      $("#<%=chamberoperatorTextBox.ClientID %>").val(local_journal.chamberoperator);
      $("#<%=chamberassistentTextBox.ClientID %>").val(local_journal.chamberassistent);
      $("#<%=doctorTextBox.ClientID %>").val(local_journal.doctor);

      //diver1 - Standard


      $("#<%=D1OF_TypeDropDownList.ClientID %>").val(local_journal.of_type);
      $("#<%=D1DirectDropDownList.ClientID %>").val(local_journal.direct);
      $("#<%=D1AirTypeDropDownList.ClientID %>").val(local_journal.airType);
      $("#<%=D1NitroxPercentTextbox.ClientID %>").val(local_journal.nitroxType);
      $("#<%=D1RepeatedAirCheckBox.ClientID %>").val(local_journal.repeatedAir);
      $("#<%=D1N2GroupBeforeDiveTextBox.ClientID %>").val(local_journal.N2GroupBeforeDive);
      $("#<%=D1BreathingGearTextBox.ClientID %>").val(local_journal.breathingGear);
      $("#<%=D1VolumeTextBox.ClientID %>").val(local_journal.volume);
      $("#<%=D1PressureTextBox.ClientID %>").val(local_journal.pressure);
      $("#<%=D1PlannedDepthTextBox.ClientID %>").val(local_journal.plannedDepth);
      $("#<%=D1PlannedTimeTextBox.ClientID %>").val(local_journal.plannedTime);
      $("#<%=D1CourseDiveTextBox.ClientID %>").val(local_journal.courseDive);
      $("#<%=D1LeftSurface.ClientID %>").val(local_journal.leftSurface);
      $("#<%=D1ReachedBottom.ClientID %>").val(local_journal.reachedBottom);
      $("#<%=D1leftBottom_Depth.ClientID %>").val(local_journal.leftBottom_Depth);
      $("#<%=D1leftBottom_Time.ClientID %>").val(local_journal.leftBottom_Time);
      $("#<%=D1bottomTime.ClientID %>").val(local_journal.bottomTime);
      $("#<%=D1maxDepth.ClientID %>").val(local_journal.maxDepth);
      $("#<%=D1ELD.ClientID %>").val(local_journal.ELD);
      $("#<%=D1additionToBottomTime.ClientID %>").val(local_journal.additionToBottomTime);
      $("#<%=D1tableUsed_Meter.ClientID %>").val(local_journal.tableUsed_Meter);
      $("#<%=D1tableUsed_Minutes.ClientID %>").val(local_journal.tableUsed_Minutes);
      $("#<%=D1ascensionToFirstStop.ClientID %>").val(local_journal.ascensionToFirstStop);
      $("#<%=D1timeAtSafetyStop.ClientID %>").val(local_journal.timeAtSafetyStop);
      $("#<%=D1totalDivingTime.ClientID %>").val(local_journal.totalDivingTime);
      $("#<%=D1N2GroupAfterDive.ClientID %>").val(local_journal.N2GroupAfterDive);
      $("#<%=D1isEverythingOKDropDownList.ClientID %>").val(local_journal.isEverythingOK);
      $("#<%=D1arrived9m.ClientID %>").val(local_journal.arrived9m);
      $("#<%=D1arrived6m.ClientID %>").val(local_journal.arrived6m);
      $("#<%=D1arrived3m.ClientID %>").val(local_journal.arrived3m);
      $("#<%=D1left9m.ClientID %>").val(local_journal.left9m);
      $("#<%=D1left6m.ClientID %>").val(local_journal.left6m);
      $("#<%=D1left3m.ClientID %>").val(local_journal.left3m);
      $("#<%=D1reachedSurface.ClientID %>").val(local_journal.reachedSurface);
      $("#<%=D1ascensionTime.ClientID %>").val(local_journal.ascensionTime);

      });

      //Fill in Dummy data in the fomrs
      $(document).on("click", "#<%=Dummy_button.ClientID %>", function (evt) {
          $("#<%=SubjectDropDownList.ClientID %>").val("DYK601 - Fagopplæring i anlegg");
    $("#<%=CourseNrTextBox.ClientID %>").val("1337");
      $("#<%=OtherTextBox.ClientID %>").val("Noe annet");
      $("#<%=DateTextBox.ClientID %>").val("5/25/2017");
      $("#<%=LocationTextBox.ClientID %>").val("Skålevik");
      $("#<%=DivingSpotTextBox.ClientID %>").val("post 3");
      $("#<%=DivingChiefTextBox.ClientID %>").val("Ørjan Eide");
      $("#<%=Divingleader_teacherTextBox.ClientID %>").val("Nils Terje Krumsvik");
      $("#<%=Divingleader_studentTextBox.ClientID %>").val("Jonas Holme");
      $("#<%=Diver_1TextBox.ClientID %>").val("Rune Hval");
      $("#<%=Diver_2TextBox.ClientID %>").val("Hans Fisherman");
      $("#<%=StandbyTextBox.ClientID %>").val("Scooby Doo");
      $("#<%=Lineman_1TextBox.ClientID %>").val("Lotte Lise");
      $("#<%=Lineman_2TextBox.ClientID %>").val("Line Petrine");
      $("#<%=HelpmanTextBox.ClientID %>").val("Postmann Pat");
      $("#<%=Helpman_assistingTextBox.ClientID %>").val("Brannmann Sam");
      $("#<%=OthersTextBox.ClientID %>").val("Angela Merkel");
      $("#<%=airsystem_mainTextBox.ClientID %>").val("190");
      $("#<%=airsystem_secondaryTextBox.ClientID %>").val("190");
      $("#<%=oxygenForChamber_inUseTextBox.ClientID %>").val("110");
      $("#<%=oxygenForChamber_readyForUseTextBox.ClientID %>").val("180");
      $("#<%=emergencyGas_divingBellTextBox.ClientID %>").val("");
      $("#<%=emergencyGas_divingBasketTextBox.ClientID %>").val("");
      $("#<%=PurposeTextBox.ClientID %>").val("Utdanning");
      $("#<%=chamberoperatorTextBox.ClientID %>").val("Jan Tran");
      $("#<%=chamberassistentTextBox.ClientID %>").val("Erna Solberg");
      $("#<%=doctorTextBox.ClientID %>").val("Karl I. Hage");

      //diver1 - Standard
      $("#<%=D1OF_TypeDropDownList.ClientID %>").val("1");
      $("#<%=D1DirectDropDownList.ClientID %>").val("0");
      $("#<%=D1AirTypeDropDownList.ClientID %>").val("1");
      $("#<%=D1NitroxPercentTextbox.ClientID %>").val("60");
      $("#<%=D1RepeatedAirCheckBox.ClientID %>").val("on");
      $("#<%=D1N2GroupBeforeDiveTextBox.ClientID %>").val("I");
      $("#<%=D1BreathingGearTextBox.ClientID %>").val("KM 17K");
      $("#<%=D1VolumeTextBox.ClientID %>").val("10 L");
      $("#<%=D1PressureTextBox.ClientID %>").val("180 Bar");
      $("#<%=D1PlannedDepthTextBox.ClientID %>").val("15 m");
      $("#<%=D1PlannedTimeTextBox.ClientID %>").val("60 min");
      $("#<%=D1CourseDiveTextBox.ClientID %>").val("RB 6");
      $("#<%=D1LeftSurface.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1ReachedBottom.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1leftBottom_Depth.ClientID %>").val("12 m");
      $("#<%=D1leftBottom_Time.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1bottomTime.ClientID %>").val("60 min");
      $("#<%=D1maxDepth.ClientID %>").val("15 min");
      $("#<%=D1ELD.ClientID %>").val("ELD");
      $("#<%=D1additionToBottomTime.ClientID %>").val("5 min");
      $("#<%=D1tableUsed_Meter.ClientID %>").val("15 m");
      $("#<%=D1tableUsed_Minutes.ClientID %>").val("65 min");
      $("#<%=D1ascensionToFirstStop.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1timeAtSafetyStop.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1totalDivingTime.ClientID %>").val("65 min");
      $("#<%=D1N2GroupAfterDive.ClientID %>").val("I");
      $("#<%=D1isEverythingOKDropDownList.ClientID %>").val("1");
      $("#<%=D1arrived9m.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1arrived6m.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1arrived3m.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1left9m.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1left6m.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1left3m.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1reachedSurface.ClientID %>").val("Kl 8:06 PM");
      $("#<%=D1ascensionTime.ClientID %>").val("5 min");

      });

 
  </script>
       



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
   
    <div style="text-align:center; padding:0px; height: 22px; width: auto;">

                        <asp:Table ID="StandardDiveTable" runat="server" Visible="True" HorizontalAlign="Left" GridLines="Both">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                                <asp:TableCell runat="server">Standarddykk</asp:TableCell>
                                <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                                <asp:TableCell runat="server">Standby</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1LeftSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="Sett inn" CommandArgument="D1LeftSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">             
                    Forlot overflaten
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button2" runat="server" Text="Sett inn" CommandArgument="D2LeftSurface" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2LeftSurface" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBLeftSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button3" runat="server" Text="Sett inn" CommandArgument="SBLeftSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1ReachedBottom" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button4" runat="server" Text="Sett inn" CommandArgument="D1ReachedBottom" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">På bunn</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button5" runat="server" Text="Sett inn" CommandArgument="D2ReachedBottom" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2ReachedBottom" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBReachedBottom" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button6" runat="server" Text="Sett inn" CommandArgument="SBReachedBottom" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1leftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot bunn (dybde)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2leftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                                    </div>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBleftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button7" runat="server" Text="Sett inn" CommandArgument="D1leftBottom_Time" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot bunn (klokkeslett)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button9" runat="server" Text="Sett inn" CommandArgument="D2leftBottom_Time" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBleftBottom_Time" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button8" runat="server" Text="Sett inn" CommandArgument="SBleftBottom_Time" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1bottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Bunntid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2bottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBbottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1maxDepth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Maks dybde</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2maxDepth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBmaxDepth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1ELD" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">ELD</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2ELD" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBELD" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1additionToBottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tillegg til bunntid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2additionToBottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBadditionToBottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1tableUsed_Meter" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tabell brukt (meter)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2tableUsed_Meter" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBtableUsed_Meter" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1tableUsed_Minutes" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tabell brukt (minutt)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2tableUsed_Minutes" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBtableUsed_Minutes" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button10" runat="server" Text="Sett inn" CommandArgument="D1ascensionToFirstStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Oppstigning til 1. stopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button12" runat="server" Text="Sett inn" CommandArgument="D2ascensionToFirstStop" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button11" runat="server" Text="Sett inn" CommandArgument="SBascensionToFirstStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button13" runat="server" Text="Sett inn" CommandArgument="D1timeAtSafetyStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tid på sikkerhetsstopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button15" runat="server" Text="Sett inn" CommandArgument="D2timeAtSafetyStop" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBtimeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button14" runat="server" Text="Sett inn" CommandArgument="SBtimeAtSafetyStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1arrived9m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button16" runat="server" Text="Sett inn" CommandArgument="D1arrived9m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Ankom 9m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button30" runat="server" Text="Sett inn" CommandArgument="D2arrived9m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2arrived9m" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBarrived9m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button17" runat="server" Text="Sett inn" CommandArgument="SBarrived9m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1left9m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button18" runat="server" Text="Sett inn" CommandArgument="D1left9m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 9m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button31" runat="server" Text="Sett inn" CommandArgument="D2left9m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2left9m" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBleft9m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button19" runat="server" Text="Sett inn" CommandArgument="SBleft9m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1arrived6m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button20" runat="server" Text="Sett inn" CommandArgument="D1arrived6m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Ankom 6m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button32" runat="server" Text="Sett inn" CommandArgument="D2arrived6m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2arrived6m" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBarrived6m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button21" runat="server" Text="Sett inn" CommandArgument="SBarrived6m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1left6m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button22" runat="server" Text="Sett inn" CommandArgument="D1left6m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 6m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button33" runat="server" Text="Sett inn" CommandArgument="D2left6m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2left6m" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBleft6m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button23" runat="server" Text="Sett inn" CommandArgument="SBleft6m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1arrived3m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button24" runat="server" Text="Sett inn" CommandArgument="D1arrived3m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Ankom 3m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button34" runat="server" Text="Sett inn" CommandArgument="D2arrived3m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2arrived3m" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBarrived3m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button25" runat="server" Text="Sett inn" CommandArgument="SBarrived3m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1left3m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button26" runat="server" Text="Sett inn" CommandArgument="D1left3m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 3m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button35" runat="server" Text="Sett inn" CommandArgument="D2left3m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2left3m" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBleft3m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button27" runat="server" Text="Sett inn" CommandArgument="SBleft3m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1reachedSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button28" runat="server" Text="Sett inn" CommandArgument="D1reachedSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">På overflaten</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button36" runat="server" Text="Sett inn" CommandArgument="D2reachedSurface" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2reachedSurface" runat="server" Width="75"></asp:TextBox>

                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBreachedSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button29" runat="server" Text="Sett inn" CommandArgument="SBreachedSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1ascensionTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Oppstigningstid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2ascensionTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBascensionTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1totalDivingTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Dykketid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2totalDivingTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBtotalDivingTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1N2GroupAfterDive" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">N2-gruppe etter dykk</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2N2GroupAfterDive" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBN2GroupAfterDive" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:DropDownList ID="D1isEverythingOKDropDownList" runat="server" Width="75">
                                            <asp:ListItem Value="0">Ja</asp:ListItem>
                                            <asp:ListItem Value="1">Nei</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Alt vel etter dykk?</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:DropDownList ID="D2isEverythingOKDropDownList" runat="server" Width="75">
                                            <asp:ListItem Value="0">Ja</asp:ListItem>
                                            <asp:ListItem Value="1">Nei</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:DropDownList ID="SBisEverythingOKDropDownList" runat="server" Width="75">
                                            <asp:ListItem Value="0">Ja</asp:ListItem>
                                            <asp:ListItem Value="1">Nei</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                            </asp:TableRow>

                        </asp:Table>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>






            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div style="text-align: center; padding: 0px; height: 22px; width: auto;">

                        <asp:Table ID="SurfaceCompressionDiveTable" runat="server" Visible="False" GridLines="Both" HorizontalAlign="Left">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Dykker 1</asp:TableCell>
                                <asp:TableCell runat="server">Overflatedekompresjonsdykk</asp:TableCell>
                                <asp:TableCell runat="server">Dykker 2</asp:TableCell>
                                <asp:TableCell runat="server">Standby</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_leftSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button37" runat="server" Text="Sett inn" CommandArgument="D1Comp_leftSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot overflaten</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button41" runat="server" Text="Sett inn" CommandArgument="D2Comp_leftSurface" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_leftSurface" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_leftSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button38" runat="server" Text="Sett inn" CommandArgument="SBComp_leftSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_reachedBottom" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button39" runat="server" Text="Sett inn" CommandArgument="D1Comp_reachedBottom" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">På bunn</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button42" runat="server" Text="Sett inn" CommandArgument="D2Comp_reachedBottom" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_reachedBottom" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_reachedBottom" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button40" runat="server" Text="Sett inn" CommandArgument="SBComp_reachedBottom" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_leftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot bunn (dybde)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_leftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_leftBottom_Depth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button43" runat="server" Text="Sett inn" CommandArgument="D1Comp_leftBottom_Time" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot dybde (klokkeslett)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button77" runat="server" Text="Sett inn" CommandArgument="D2Comp_leftBottom_Time" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_leftBottom_Time" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button44" runat="server" Text="Sett inn" CommandArgument="SBComp_leftBottom_Time" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_bottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Bunntid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_bottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_bottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_maxDepth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Maks dybde</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_maxDepth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_maxDepth" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_ELD" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">ELD</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_ELD" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_ELD" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_additionToBottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tillegg til bunntid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_additionToBottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_additionToBottomTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_tableUsed_Meter" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tabell brukt (meter)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_tableUsed_Meter" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_tableUsed_Meter" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_tableUsed_Minutes" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tabell brukt (minutt)</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_tableUsed_Minutes" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_tableUsed_Minutes" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button47" runat="server" Text="Sett inn" CommandArgument="D1Comp_ascensionToFirstStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Oppstigning til 1. stopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button78" runat="server" Text="Sett inn" CommandArgument="D2Comp_ascensionToFirstStop" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_ascensionToFirstStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button48" runat="server" Text="Sett inn" CommandArgument="SBComp_ascensionToFirstStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button45" runat="server" Text="Sett inn" CommandArgument="D1Comp_timeAtSafetyStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tid på sikkerhetsstopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button79" runat="server" Text="Sett inn" CommandArgument="D2Comp_timeAtSafetyStop" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_timeAtSafetyStop" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button46" runat="server" Text="Sett inn" CommandArgument="SBComp_timeAtSafetyStop" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_left18m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button49" runat="server" Text="Sett inn" CommandArgument="D1Comp_left18m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 18m stopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button80" runat="server" Text="Sett inn" CommandArgument="D2Comp_left18m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_left18m" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_left18m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button50" runat="server" Text="Sett inn" CommandArgument="SBComp_left18m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_left15m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button51" runat="server" Text="Sett inn" CommandArgument="D1Comp_left15m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 15m stopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button81" runat="server" Text="Sett inn" CommandArgument="D2Comp_left15m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_left15m" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_left15m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button52" runat="server" Text="Sett inn" CommandArgument="SBComp_left15m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_left12m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button53" runat="server" Text="Sett inn" CommandArgument="D1Comp_left12m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 12m stopp</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button82" runat="server" Text="Sett inn" CommandArgument="D2Comp_left12m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_left12m" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_left12m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button54" runat="server" Text="Sett inn" CommandArgument="SBComp_left12m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_time12_0m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button55" runat="server" Text="Sett inn" CommandArgument="D1Comp_time12_0m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tid 12-0m</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button83" runat="server" Text="Sett inn" CommandArgument="D2Comp_time12_0m" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_time12_0m" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_time12_0m" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button56" runat="server" Text="Sett inn" CommandArgument="SBComp_time12_0m" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="ChamberSealedButton" runat="server" Text="Forsegl kammer" OnClick="ChamberSealedButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_reached15mInChamber" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button57" runat="server" Text="Sett inn" CommandArgument="D1Comp_reached15mInChamber" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Ankom 15m i kammer</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button84" runat="server" Text="Sett inn" CommandArgument="D2Comp_reached15mInChamber" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_reached15mInChamber" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_reached15mInChamber" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button58" runat="server" Text="Sett inn" CommandArgument="SBComp_reached15mInChamber" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_surfaceInterval" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button59" runat="server" Text="Sett inn" CommandArgument="D1Comp_surfaceInterval" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Overflateintervall</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button85" runat="server" Text="Sett inn" CommandArgument="D2Comp_surfaceInterval" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_surfaceInterval" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_surfaceInterval" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button60" runat="server" Text="Sett inn" CommandArgument="SBComp_surfaceInterval" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_o2_1" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button61" runat="server" Text="Sett inn" CommandArgument="D1Comp_o2_1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">O2 - 1</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button86" runat="server" Text="Sett inn" CommandArgument="D2Comp_o2_1" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_o2_1" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_o2_1" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button62" runat="server" Text="Sett inn" CommandArgument="SBComp_o2_1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_air_1" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button63" runat="server" Text="Sett inn" CommandArgument="D1Comp_air_1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Luft - 1</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button87" runat="server" Text="Sett inn" CommandArgument="D2Comp_air_1" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_air_1" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_air_1" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button64" runat="server" Text="Sett inn" CommandArgument="SBComp_air_1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_o2_2" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button65" runat="server" Text="Sett inn" CommandArgument="D1Comp_o2_2" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">O2 - 2</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button88" runat="server" Text="Sett inn" CommandArgument="D2Comp_o2_2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_o2_2" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_o2_2" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button66" runat="server" Text="Sett inn" CommandArgument="SBComp_o2_2" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_air_2" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button67" runat="server" Text="Sett inn" CommandArgument="D1Comp_air_2" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Luft - 2</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button89" runat="server" Text="Sett inn" CommandArgument="D2Comp_air_2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_air_2" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_air_2" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button68" runat="server" Text="Sett inn" CommandArgument="SBComp_air_2" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_o2_3" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button69" runat="server" Text="Sett inn" CommandArgument="D1Comp_o2_3" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">O2 - 3</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button90" runat="server" Text="Sett inn" CommandArgument="D2Comp_o2_3" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_o2_3" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_o2_3" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button70" runat="server" Text="Sett inn" CommandArgument="SBComp_o2_3" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_air_3" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button71" runat="server" Text="Sett inn" CommandArgument="D1Comp_air_3" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Luft - 3</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button91" runat="server" Text="Sett inn" CommandArgument="D2Comp_air_3" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_air_3" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_air_3" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button72" runat="server" Text="Sett inn" CommandArgument="SBComp_air_3" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_left12mWithoutO2" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button73" runat="server" Text="Sett inn" CommandArgument="D1Comp_left12mWithoutO2" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Forlot 12m uten O2</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button92" runat="server" Text="Sett inn" CommandArgument="D2Comp_left12mWithoutO2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_left12mWithoutO2" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_left12mWithoutO2" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button74" runat="server" Text="Sett inn" CommandArgument="SBComp_left12mWithoutO2" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="D1Comp_reachedSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button75" runat="server" Text="Sett inn" CommandArgument="D1Comp_reachedSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">Kammer på overflaten</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button93" runat="server" Text="Sett inn" CommandArgument="D2Comp_reachedSurface" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="D2Comp_reachedSurface" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="SBComp_reachedSurface" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button76" runat="server" Text="Sett inn" CommandArgument="SBComp_reachedSurface" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_timeInChamber" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tid i kammer</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_timeInChamber" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_timeInChamber" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_timeAtSea" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Tid i sjø</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_timeAtSea" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_timeAtSea" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_totalDecompression" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Total dekompresjon</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_totalDecompression" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_totalDecompression" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_totalDivingTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Total dykketid</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_totalDivingTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_totalDivingTime" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="D1Comp_N2GroupAfterDive" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">N2-gruppe etter dykk</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:TextBox ID="D2Comp_N2GroupAfterDive" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:TextBox ID="SBComp_N2GroupAfterDive" runat="server" Width="75"></asp:TextBox>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:DropDownList ID="D1Comp_isEverythingOKDropDownList" runat="server" Width="75">
                                            <asp:ListItem Value="0">Ja</asp:ListItem>
                                            <asp:ListItem Value="1">Nei</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">Alt vel etter dykk?</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: right;">
                                        <asp:DropDownList ID="D2Comp_isEverythingOKDropDownList" runat="server" Width="75">
                                            <asp:ListItem Value="0">Ja</asp:ListItem>
                                            <asp:ListItem Value="1">Nei</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <div style="text-align: left;">
                                        <asp:DropDownList ID="SBComp_isEverythingOKDropDownList" runat="server" Width="75">
                                            <asp:ListItem Value="0">Ja</asp:ListItem>
                                            <asp:ListItem Value="1">Nei</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>

                        </asp:Table>

                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>


            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div style="text-align: center; padding: 0px; height: 22px; width: auto;">
                        <asp:Table ID="PressureChamberDiveTable" runat="server" Visible="False" GridLines="Both" HorizontalAlign="Left">
                            <asp:TableRow>
                                <asp:TableCell runat="server">Klokkeslett start</asp:TableCell>
                                <asp:TableCell runat="server">Dybde fra - til</asp:TableCell>
                                <asp:TableCell runat="server">Klokkeslett slutt</asp:TableCell>
                                <asp:TableCell runat="server">Antall min</asp:TableCell>
                                <asp:TableCell runat="server">Pustegass</asp:TableCell>
                                <asp:TableCell runat="server">Merknader</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server" id="P1row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="P1ClockTextBox1" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="P1ClockButton1" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="P1DepthTextBox" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="P1ClockButton2" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="P1ClockTextBox2" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="P1NumberOfMinsButton" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="P1NumberOfMinsTextBox" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="P1BreathingGasTextBox" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="P1NotesTextBox" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P2row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox9" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button94" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox10" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button95" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox11" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button96" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox12" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox13" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox14" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P3row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox15" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button97" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox16" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button98" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox17" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button99" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox18" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox19" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox20" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P4row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox21" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button100" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox22" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button101" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox23" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button102" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox24" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox25" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox26" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P5row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox27" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button103" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox28" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button104" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox29" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button105" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox30" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox31" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox32" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P6row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox33" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button106" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox34" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button107" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox35" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button108" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox36" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox37" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox38" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P7row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox39" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button109" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox40" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button110" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox41" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button111" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox42" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox43" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox44" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P8row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox45" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button112" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox46" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button113" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox47" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button114" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox48" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox49" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox50" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P9row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox51" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button115" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox52" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button116" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox53" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button117" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox54" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox55" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox56" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P10row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox57" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button118" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox58" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button119" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox59" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button120" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox60" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox61" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox62" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P11row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox63" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button121" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox64" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button122" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox65" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button123" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox66" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox67" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox68" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P12row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox69" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button124" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox70" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button125" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox71" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button126" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox72" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox73" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox74" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P13row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox75" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button127" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox76" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button128" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox77" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button129" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox78" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox79" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox80" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P14row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox81" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button130" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox82" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button131" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox83" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button132" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox84" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox85" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox86" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P15row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox87" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button133" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox88" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button134" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox89" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button135" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox90" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox91" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox92" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P16row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox93" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button136" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox94" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button137" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox95" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button138" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox96" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox97" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox98" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P17row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox99" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button139" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox100" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button140" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox101" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button141" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox102" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox103" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox104" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P18row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox105" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button142" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox106" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button143" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox107" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button144" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox108" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox109" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox110" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P19row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox111" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button145" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox112" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button146" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox113" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button147" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox114" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox115" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox116" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P20row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox117" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button148" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox118" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button149" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox119" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button150" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox120" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox121" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox122" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P21row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox123" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button151" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox124" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button152" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox125" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button153" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox126" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox127" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox128" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P22row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox129" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button154" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox130" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button155" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox131" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button156" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox132" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox133" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox134" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P23row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox135" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button157" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox136" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button158" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox137" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button159" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox138" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox139" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox140" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P24row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox141" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button160" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox142" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button161" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox143" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button162" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox144" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox145" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox146" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server" id="P25row">
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox147" runat="server" Width="75"></asp:TextBox>
                                    <asp:Button ID="Button163" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox1" OnClick="TimeButton_Click" />
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox148" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button164" runat="server" Text="Sett inn" CommandArgument="P1ClockTextBox2" OnClick="TimeButton_Click" />
                                    <asp:TextBox ID="TextBox149" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:Button ID="Button165" runat="server" Text="Button" OnClick="P1NumberOfMinsButton_Click" />
                                    <asp:TextBox ID="TextBox150" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox151" runat="server" Width="75"></asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox152" runat="server" Width="400"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                           

                           







                        </asp:Table>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>


        </ContentTemplate>
    </asp:UpdatePanel>





    <!-- Stopwatches -->

    <asp:Table ID="StopWatchTable" runat="server" BorderStyle="Solid" BorderWidth="2px" BackColor="White">
        <asp:TableRow>
            <asp:TableCell>Dykker 1</asp:TableCell>
            <asp:TableCell>Dykker 2</asp:TableCell>
            <asp:TableCell>Standby</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <h3 id="timerLabel1">00:00:00</h3>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start1" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset1" />
            </asp:TableCell>
            <asp:TableCell>
                <h3 id="timerLabel2">00:00:00</h3>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start2" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset2" />
            </asp:TableCell>
            <asp:TableCell>
                <h3 id="timerLabel3">00:00:00</h3>
                <br />
                <input type="button" onclick="start_stop(this)" value="START" id="start3" />
                <input type="button" onclick="reset(this)" value="RESET" id="reset3" />
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>


    <ajaxToolkit:AlwaysVisibleControlExtender ID="StopWatchTable_AlwaysVisibleControlExtender" runat="server" BehaviorID="StopWatchTable_AlwaysVisibleControlExtender" TargetControlID="StopWatchTable" HorizontalSide="Right" UseAnimation="True" VerticalOffset="100" VerticalSide="Bottom" />
    <ajaxToolkit:DropShadowExtender ID="StopWatchTable_DropShadowExtender" runat="server" BehaviorID="StopWatchTable_DropShadowExtender" TargetControlID="StopWatchTable"></ajaxToolkit:DropShadowExtender>


    <script src="Stopwatch3.js"></script>



</asp:Content>
