using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Divingjournal2.DAL;
using System.Web.Services;
using System.Diagnostics;
using System.Net;
using Divingjournal2.Models;

namespace Divingjournal2
{
   

    public partial class New_Journal : System.Web.UI.Page
    {
        
        

        Models.Journal j = new Models.Journal();
        Models.Journal_Pressurechamber pc = new Models.Journal_Pressurechamber();
        Models.Journal_Cache jc = new Models.Journal_Cache();
        Models.Journal_Pressurechamber_Cache pcc = new Models.Journal_Pressurechamber_Cache();

        public static Models.Journal_Cache local_jc = new Models.Journal_Cache();

        public string localJournalName;
        public static bool isLoaded = false;

        
        protected override void OnInit(EventArgs e)
        {
            DateTextBox.Text = DateTime.Now.ToLocalTime().ToShortDateString();
            JournalIDLabel.Text = j.Id.ToString();
            StandardDiveButton.Enabled = false;
            StandardDiveTable.Visible = true;
            Calendar1.Visible = false;

            

            writeHeader("Standarddykk");
            showTables(true, false, false);



            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e )
        {
           if(isLoaded)
            {
                Debug.WriteLine("ER DET MULIG??" );
                DateTextBox.Text = local_jc.date;
                CourseNrTextBox.Text = local_jc.courseNumber;
                OtherTextBox.Text = local_jc.other;
                LocationTextBox.Text = local_jc.location;
                DivingSpotTextBox.Text = local_jc.divingSpot;
                DivingChiefTextBox.Text = local_jc.divingchief;
                Divingleader_teacherTextBox.Text = local_jc.divingleader_teacher;
                Divingleader_studentTextBox.Text = local_jc.divingleader_student;
                Diver_1TextBox.Text = local_jc.diver_1;
                Diver_2TextBox.Text = local_jc.diver_2;
                StandbyTextBox.Text = local_jc.diver_3;
                isLoaded = false;
            }


        }




        public Models.Subject checkSubjectDropDownList()
        {
            Models.Subject s = Models.Subject.DYK600_Safety;
           int value = SubjectDropDownList.SelectedIndex;
            switch (SubjectDropDownList.SelectedIndex)
            {
                case 1:
                    s = Models.Subject.DYK601_Facilities;
                    break;
                case 2:
                    s = Models.Subject.DYK601_Plumbing;
                    break;
                case 3:
                    s = Models.Subject.DYK601_Saving;
                    break;
                case 4:
                    s = Models.Subject.RED110_Saving;
                    break;
                default:
                    break;
            }
                    return s;
            }

        public Models.OF_Type D1checkOf_TypeDropDownList()
        {
            Models.OF_Type of = Models.OF_Type.OF_Heavy;
            int value = D1OF_TypeDropDownList.SelectedIndex;
            switch (D1OF_TypeDropDownList.SelectedIndex)
            {
                case 0:
                    of = Models.OF_Type.OF_Heavy;
                    break;
                case 1:
                    of = Models.OF_Type.OF_Light;
                    break;
                case 2:
                    of = Models.OF_Type.scuba;
                    break;
                default:
                    break;
            }
            return of;
        }

        public Models.OF_Type D2checkOf_TypeDropDownList()
        {
            Models.OF_Type of = Models.OF_Type.OF_Heavy;
            int value = D2OF_TypeDropDownList.SelectedIndex;
            switch (D2OF_TypeDropDownList.SelectedIndex)
            {
                case 0:
                    of = Models.OF_Type.OF_Heavy;
                    break;
                case 1:
                    of = Models.OF_Type.OF_Light;
                    break;
                case 2:
                    of = Models.OF_Type.scuba;
                    break;
                default:
                    break;
            }
            return of;
        }

        public Models.OF_Type SBcheckOf_TypeDropDownList()
        {
            Models.OF_Type of = Models.OF_Type.OF_Heavy;
            int value = SBOF_TypeDropDownList.SelectedIndex;
            switch (SBOF_TypeDropDownList.SelectedIndex)
            {
                case 0:
                    of = Models.OF_Type.OF_Heavy;
                    break;
                case 1:
                    of = Models.OF_Type.OF_Light;
                    break;
                case 2:
                    of = Models.OF_Type.scuba;
                    break;
                default:
                    break;
            }
            return of;
        }

        public Models.Direct D1checkDirectDropDownList()
        {
            Models.Direct d = Models.Direct.direct;
            int value = D1DirectDropDownList.SelectedIndex;
            switch (D1DirectDropDownList.SelectedIndex)
            {
                case 0:
                    d = Models.Direct.direct;
                    break;
                case 1:
                    d = Models.Direct.d_Stopp;
                    break;
                case 2:
                    d = Models.Direct.OD_O2;
                    break;
                default:
                    break;
            }
            return d;
        }

        public Models.Direct D2checkDirectDropDownList()
        {
            Models.Direct d = Models.Direct.direct;
            int value = D2DirectDropDownList.SelectedIndex;
            switch (D2DirectDropDownList.SelectedIndex)
            {
                case 0:
                    d = Models.Direct.direct;
                    break;
                case 1:
                    d = Models.Direct.d_Stopp;
                    break;
                case 2:
                    d = Models.Direct.OD_O2;
                    break;
                default:
                    break;
            }
            return d;
        }

        public Models.Direct SBcheckDirectDropDownList()
        {
            Models.Direct d = Models.Direct.direct;
            int value = SBDirectDropDownList.SelectedIndex;
            switch (SBDirectDropDownList.SelectedIndex)
            {
                case 0:
                    d = Models.Direct.direct;
                    break;
                case 1:
                    d = Models.Direct.d_Stopp;
                    break;
                case 2:
                    d = Models.Direct.OD_O2;
                    break;
                default:
                    break;
            }
            return d;
        }

        public Models.AirType D1checkAirTypeDropDownList()
        {
            Models.AirType a = Models.AirType.air;
            int value = D1DirectDropDownList.SelectedIndex;
            switch (D1DirectDropDownList.SelectedIndex)
            {
                case 0:
                    a = Models.AirType.air;
                    break;
                case 1:
                    a = Models.AirType.nitrox;
                    break;
                default:
                    break;
            }
            return a;
        }

        public Models.AirType D2checkAirTypeDropDownList()
        {
            Models.AirType a = Models.AirType.air;
            int value = D2DirectDropDownList.SelectedIndex;
            switch (D2DirectDropDownList.SelectedIndex)
            {
                case 0:
                    a = Models.AirType.air;
                    break;
                case 1:
                    a = Models.AirType.nitrox;
                    break;
                default:
                    break;
            }
            return a;
        }

        public Models.AirType SBcheckAirTypeDropDownList()
        {
            Models.AirType a = Models.AirType.air;
            int value = SBDirectDropDownList.SelectedIndex;
            switch (SBDirectDropDownList.SelectedIndex)
            {
                case 0:
                    a = Models.AirType.air;
                    break;
                case 1:
                    a = Models.AirType.nitrox;
                    break;
                default:
                    break;
            }
            return a;
        }

        public void PrintJournal(object sender, EventArgs e)
        {
            Response.Redirect("~/Standard_Journal_View.aspx");

        }

        public void SubmitButton_Click(object sender, EventArgs e)
        {
            WriteToDatabase();
        }




            private void WriteToDatabase()
        {
          
            DivingJournalContext db = new DivingJournalContext();

            j.username = HttpContext.Current.Session["Username"].ToString();
           // j.subject = checkSubjectDropDownList();
           // j.transport = checkTransportCheckBoxes();
            j.courseNumber = CourseNrTextBox.Text;
            j.other = OtherTextBox.Text;
            j.date = DateTextBox.Text;
            j.location = LocationTextBox.Text;
            j.divingSpot = DivingSpotTextBox.Text;
            j.divingchief = DivingChiefTextBox.Text;
            j.divingleader_teacher=Divingleader_teacherTextBox.Text;
            j.divingleader_student = Divingleader_studentTextBox.Text;
            j.diver_1 = Diver_1TextBox.Text;
            j.diver_2=Diver_2TextBox.Text;
            j.diver_3=StandbyTextBox.Text;
            j.lineman_1=Lineman_1TextBox.Text;
            j.lineman_2=Lineman_2TextBox.Text;
            j.helpman=HelpmanTextBox.Text;
            j.helpman_assisting=Helpman_assistingTextBox.Text;
            j.others=OthersTextBox.Text;
            j.airsystem_main=airsystem_mainTextBox.Text;
            j.airsystem_secondary=airsystem_secondaryTextBox.Text;
            j.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
            j.oxygenForChamber_readyForUse=oxygenForChamber_readyForUseTextBox.Text;
            j.emergencyGas_divingBell=emergencyGas_divingBellTextBox.Text;
            j.emergencyGas_divingBasket=emergencyGas_divingBasketTextBox.Text;


            //må legge til notes og changelog

            db.Journals.Add(j);
            db.SaveChanges();
            Session["Journal_Id"] = j.Id;
            if (j.journalType == Models.JournalType.direct)
            {
                var diver1 = new Models.Diver_Standard
                {
                    //map data fra webform til diver_standard
                    JournalID = j.Id,
                    //  of_type = D1checkOf_TypeDropDownList(),
                    //  direct = D1checkDirectDropDownList(),
                    //   airType = D1checkAirTypeDropDownList(),
                    nitroxType = D1NitroxPercentTextbox.Text,
                    repeatedAir = D1RepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D1BreathingGearTextBox.Text,
                    volume = D1VolumeTextBox.Text,
                    pressure = D1PressureTextBox.Text,
                    plannedDepth = D1PlannedDepthTextBox.Text,
                    plannedTime = D1PlannedTimeTextBox.Text,
                    courseDive = D1CourseDiveTextBox.Text,
                    leftSurface = D1LeftSurface.Text,
                    reachedBottom = D1ReachedBottom.Text,
                    leftBottom_Depth = D1leftBottom_Depth.Text,
                    leftBottom_Time = D1leftBottom_Time.Text,
                    bottomTime = D1bottomTime.Text,
                    maxDepth = D1maxDepth.Text,
                    ELD = D1ELD.Text,
                    additionToBottomTime = D1additionToBottomTime.Text,
                    tableUsed_Meter = D1tableUsed_Meter.Text,
                    tableUsed_Minutes = D1tableUsed_Minutes.Text,
                    ascensionToFirstStop = D1ascensionToFirstStop.Text,
                    timeAtSafetyStop = D1timeAtSafetyStop.Text,
                    totalDivingTime = D1totalDivingTime.Text,
                    N2GroupAfterDive = D1N2GroupAfterDive.Text,
                    //   isEverythingOK = checkYesNoDropDownList(D1isEverythingOKDropDownList),


                    arrived9m = D1arrived9m.Text,
                    arrived6m = D1arrived6m.Text,
                    arrived3m = D1arrived3m.Text,
                    reachedSurface = D1reachedSurface.Text,
                    ascensionTime = D1ascensionTime.Text

                };

                var diver2 = new Models.Diver_Standard
                {
                    JournalID = j.Id,
                    // of_type = D2checkOf_TypeDropDownList(),
                    //  direct = D2checkDirectDropDownList(),
                    //  airType = D2checkAirTypeDropDownList(),
                    nitroxType = D2NitroxPercentTextbox.Text,
                    repeatedAir = D2RepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D2BreathingGearTextBox.Text,
                    volume = D2VolumeTextBox.Text,
                    pressure = D2PressureTextBox.Text,
                    plannedDepth = D2PlannedDepthTextBox.Text,
                    plannedTime = D2PlannedTimeTextBox.Text,
                    courseDive = D2CourseDiveTextBox.Text,
                    leftSurface = D2LeftSurface.Text,
                    reachedBottom = D2ReachedBottom.Text,
                    leftBottom_Depth = D2leftBottom_Depth.Text,
                    leftBottom_Time = D2leftBottom_Time.Text,
                    bottomTime = D2bottomTime.Text,
                    maxDepth = D2maxDepth.Text,
                    ELD = D2ELD.Text,
                    additionToBottomTime = D2additionToBottomTime.Text,
                    tableUsed_Meter = D2tableUsed_Meter.Text,
                    tableUsed_Minutes = D2tableUsed_Minutes.Text,
                    ascensionToFirstStop = D2ascensionToFirstStop.Text,
                    timeAtSafetyStop = D2timeAtSafetyStop.Text,
                    totalDivingTime = D2totalDivingTime.Text,
                    N2GroupAfterDive = D2N2GroupAfterDive.Text,
                    //   isEverythingOK = checkYesNoDropDownList(D2isEverythingOKDropDownList),


                    arrived9m = D2arrived9m.Text,
                    arrived6m = D2arrived6m.Text,
                    arrived3m = D2arrived3m.Text,
                    reachedSurface = D2reachedSurface.Text,
                    ascensionTime = D2ascensionTime.Text
                };

                var standby = new Models.Diver_Standard
                {
                    JournalID = j.Id,
                    //    of_type = SBcheckOf_TypeDropDownList(),
                    //   direct = SBcheckDirectDropDownList(),
                    //    airType = SBcheckAirTypeDropDownList(),
                    nitroxType = SBNitroxPercentTextbox.Text,
                    repeatedAir = SBRepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = SBN2GroupBeforeDiveTextBox.Text,
                    breathingGear = SBBreathingGearTextBox.Text,
                    volume = SBVolumeTextBox.Text,
                    pressure = SBPressureTextBox.Text,
                    plannedDepth = SBPlannedDepthTextBox.Text,
                    plannedTime = SBPlannedTimeTextBox.Text,
                    courseDive = SBCourseDiveTextBox.Text,
                    leftSurface = SBLeftSurface.Text,
                    reachedBottom = SBReachedBottom.Text,
                    leftBottom_Depth = SBleftBottom_Depth.Text,
                    leftBottom_Time = SBleftBottom_Time.Text,
                    bottomTime = SBbottomTime.Text,
                    maxDepth = SBmaxDepth.Text,
                    ELD = SBELD.Text,
                    additionToBottomTime = SBadditionToBottomTime.Text,
                    tableUsed_Meter = SBtableUsed_Meter.Text,
                    tableUsed_Minutes = SBtableUsed_Minutes.Text,
                    ascensionToFirstStop = SBascensionToFirstStop.Text,
                    timeAtSafetyStop = SBtimeAtSafetyStop.Text,
                    totalDivingTime = SBtotalDivingTime.Text,
                    N2GroupAfterDive = SBN2GroupAfterDive.Text,
                    //    isEverythingOK = checkYesNoDropDownList(SBisEverythingOKDropDownList),


                    arrived9m = SBarrived9m.Text,
                    arrived6m = SBarrived6m.Text,
                    arrived3m = SBarrived3m.Text,
                    reachedSurface = SBreachedSurface.Text,
                    ascensionTime = SBascensionTime.Text
                };

                db.Diver_Standards.Add(diver1);
                db.Diver_Standards.Add(diver2);
                db.Diver_Standards.Add(standby);
            } else     
            {
                var diver1 = new Models.Diver_Compression
                {
                    //map data fra webform til diver_standard

                    //     of_type = D1checkOf_TypeDropDownList(),
                    //    direct = D1checkDirectDropDownList(),
                    //    airType = D1checkAirTypeDropDownList(),
                    nitroxType = D1NitroxPercentTextbox.Text,
                    repeatedAir = D1RepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D1BreathingGearTextBox.Text,
                    volume = D1VolumeTextBox.Text,
                    pressure = D1PressureTextBox.Text,
                    plannedDepth = D1PlannedDepthTextBox.Text,
                    plannedTime = D1PlannedTimeTextBox.Text,
                    courseDive = D1CourseDiveTextBox.Text,

                    leftSurface = D1Comp_leftSurface.Text,
                    reachedBottom = D1Comp_reachedBottom.Text,
                    leftBottom_Depth = D1Comp_leftBottom_Depth.Text,
                    leftBottom_Time = D1Comp_leftBottom_Time.Text,
                    bottomTime = D1Comp_bottomTime.Text,
                    maxDepth = D1Comp_maxDepth.Text,
                    ELD = D1Comp_ELD.Text,
                    additionToBottomTime = D1Comp_additionToBottomTime.Text,
                    tableUsed_Meter = D1Comp_tableUsed_Meter.Text,
                    tableUsed_Minutes = D1Comp_tableUsed_Minutes.Text,
                    ascensionToFirstStop = D1Comp_ascensionToFirstStop.Text,
                    timeAtSafetyStop = D1Comp_timeAtSafetyStop.Text,
                    totalDivingTime = D1Comp_totalDivingTime.Text,
                    N2GroupAfterDive = D1Comp_N2GroupAfterDive.Text,
                    //  isEverythingOK = checkYesNoDropDownList(D1Comp_isEverythingOKDropDownList),

                    left18m = D1Comp_left18m.Text,
                    left15m=D1Comp_left15m.Text,
                    left12m=D1Comp_left12m.Text,
                    time12_0m=D1Comp_time12_0m.Text,
                    reached15mInChamber=D1Comp_reached15mInChamber.Text,
                    o2_1=D1Comp_o2_1.Text,
                    o2_2=D1Comp_o2_2.Text,
                    o2_3=D1Comp_o2_3.Text,
                    surfaceInterval=D1Comp_surfaceInterval.Text,
                    air_1=D1Comp_air_1.Text,
                    air_2=D1Comp_air_2.Text,
                    air_3=D1Comp_air_3.Text,
                    left12mWithoutO2=D1Comp_left12mWithoutO2.Text,
                    reachedSurface=D1Comp_reachedSurface.Text,
                    timeInChamber=D1Comp_timeInChamber.Text,
                    timeAtSea=D1Comp_timeAtSea.Text,
                    totalDecompression=D1Comp_totalDecompression.Text,
                };

                var diver2 = new Models.Diver_Compression
                {

                    // of_type = D2checkOf_TypeDropDownList(),
                    //    direct = D2checkDirectDropDownList(),
                    //  airType = D2checkAirTypeDropDownList(),
                    nitroxType = D2NitroxPercentTextbox.Text,
                    repeatedAir = D2RepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D2BreathingGearTextBox.Text,
                    volume = D2VolumeTextBox.Text,
                    pressure = D2PressureTextBox.Text,
                    plannedDepth = D2PlannedDepthTextBox.Text,
                    plannedTime = D2PlannedTimeTextBox.Text,
                    courseDive = D2CourseDiveTextBox.Text,

                    leftSurface = D2Comp_leftSurface.Text,
                    reachedBottom = D2Comp_reachedBottom.Text,
                    leftBottom_Depth = D2Comp_leftBottom_Depth.Text,
                    leftBottom_Time = D2Comp_leftBottom_Time.Text,
                    bottomTime = D2Comp_bottomTime.Text,
                    maxDepth = D2Comp_maxDepth.Text,
                    ELD = D2Comp_ELD.Text,
                    additionToBottomTime = D2Comp_additionToBottomTime.Text,
                    tableUsed_Meter = D2Comp_tableUsed_Meter.Text,
                    tableUsed_Minutes = D2Comp_tableUsed_Minutes.Text,
                    ascensionToFirstStop = D2Comp_ascensionToFirstStop.Text,
                    timeAtSafetyStop = D2Comp_timeAtSafetyStop.Text,
                    totalDivingTime = D2Comp_totalDivingTime.Text,
                    N2GroupAfterDive = D2Comp_N2GroupAfterDive.Text,
                    //   isEverythingOK = checkYesNoDropDownList(D2Comp_isEverythingOKDropDownList),

                    left18m = D2Comp_left18m.Text,
                    left15m = D2Comp_left15m.Text,
                    left12m = D2Comp_left12m.Text,
                    time12_0m = D2Comp_time12_0m.Text,
                    reached15mInChamber = D2Comp_reached15mInChamber.Text,
                    o2_1 = D2Comp_o2_1.Text,
                    o2_2 = D2Comp_o2_2.Text,
                    o2_3 = D2Comp_o2_3.Text,
                    surfaceInterval = D2Comp_surfaceInterval.Text,
                    air_1 = D2Comp_air_1.Text,
                    air_2 = D2Comp_air_2.Text,
                    air_3 = D2Comp_air_3.Text,
                    left12mWithoutO2 = D2Comp_left12mWithoutO2.Text,
                    reachedSurface = D2Comp_reachedSurface.Text,
                    timeInChamber = D2Comp_timeInChamber.Text,
                    timeAtSea = D2Comp_timeAtSea.Text,
                    totalDecompression = D2Comp_totalDecompression.Text,
                };


                var standby = new Models.Diver_Compression
                {

                    //    of_type = SBcheckOf_TypeDropDownList(),
                    //    direct = SBcheckDirectDropDownList(),
                    //     airType = SBcheckAirTypeDropDownList(),
                    nitroxType = SBNitroxPercentTextbox.Text,
                    repeatedAir = SBRepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = SBN2GroupBeforeDiveTextBox.Text,
                    breathingGear = SBBreathingGearTextBox.Text,
                    volume = SBVolumeTextBox.Text,
                    pressure = SBPressureTextBox.Text,
                    plannedDepth = SBPlannedDepthTextBox.Text,
                    plannedTime = SBPlannedTimeTextBox.Text,
                    courseDive = SBCourseDiveTextBox.Text,

                    leftSurface = SBComp_leftSurface.Text,
                    reachedBottom = SBComp_reachedBottom.Text,
                    leftBottom_Depth = SBComp_leftBottom_Depth.Text,
                    leftBottom_Time = SBComp_leftBottom_Time.Text,
                    bottomTime = SBComp_bottomTime.Text,
                    maxDepth = SBComp_maxDepth.Text,
                    ELD = SBComp_ELD.Text,
                    additionToBottomTime = SBComp_additionToBottomTime.Text,
                    tableUsed_Meter = SBComp_tableUsed_Meter.Text,
                    tableUsed_Minutes = SBComp_tableUsed_Minutes.Text,
                    ascensionToFirstStop = SBComp_ascensionToFirstStop.Text,
                    timeAtSafetyStop = SBComp_timeAtSafetyStop.Text,
                    totalDivingTime = SBComp_totalDivingTime.Text,
                    N2GroupAfterDive = SBComp_N2GroupAfterDive.Text,
                    //   isEverythingOK = checkYesNoDropDownList(SBComp_isEverythingOKDropDownList),

                    left18m = SBComp_left18m.Text,
                    left15m = SBComp_left15m.Text,
                    left12m = SBComp_left12m.Text,
                    time12_0m = SBComp_time12_0m.Text,
                    reached15mInChamber = SBComp_reached15mInChamber.Text,
                    o2_1 = SBComp_o2_1.Text,
                    o2_2 = SBComp_o2_2.Text,
                    o2_3 = SBComp_o2_3.Text,
                    surfaceInterval = SBComp_surfaceInterval.Text,
                    air_1 = SBComp_air_1.Text,
                    air_2 = SBComp_air_2.Text,
                    air_3 = SBComp_air_3.Text,
                    left12mWithoutO2 = SBComp_left12mWithoutO2.Text,
                    reachedSurface = SBComp_reachedSurface.Text,
                    timeInChamber = SBComp_timeInChamber.Text,
                    timeAtSea = SBComp_timeAtSea.Text,
                    totalDecompression = SBComp_totalDecompression.Text,
                };

                db.Diver_Compressions.Add(diver1);
                db.Diver_Compressions.Add(diver2);
                db.Diver_Compressions.Add(standby);

            }

            db.SaveChanges();
            
        }

        public static bool CheckForInternetConnection()
        {
            try
            {
                using (var client = new WebClient())
                {
                    using (var stream = client.OpenRead("http://www.google.com"))
                    {
                        return true;
                    }
                }
            }
            catch
            {
                return false;
            }
        }

        public void Local_Save_Click(object sender, EventArgs e)
        {
            /*
            if (CheckForInternetConnection())
            { WriteToLocalDatabase(); }
            */
            //WriteToLocalDatabase();
        } 
 /*       private void WriteToLocalDatabase()
        {
            DivingJournalContext db = new DivingJournalContext();
            jc.username = HttpContext.Current.Session["Username"].ToString();
            jc.journal_name = PopupTextBox.Text;
            jc.subject = checkSubjectDropDownList();
            jc.transport = returnTransportCheckBoxList();
            jc.courseNumber = CourseNrTextBox.Text;
            jc.other = OtherTextBox.Text;
            jc.date = DateTextBox.Text;
            jc.location = LocationTextBox.Text;
            jc.divingSpot = DivingSpotTextBox.Text;
            jc.divingchief = DivingChiefTextBox.Text;
            jc.divingleader_teacher = Divingleader_teacherTextBox.Text;
            jc.divingleader_student = Divingleader_studentTextBox.Text;
            jc.diver_1 = Diver_1TextBox.Text;
            jc.diver_2 = Diver_2TextBox.Text;
            jc.standby = StandbyTextBox.Text;
            jc.lineman_1 = Lineman_1TextBox.Text;
            jc.lineman_2 = Lineman_2TextBox.Text;
            jc.helpman = HelpmanTextBox.Text;
            jc.helpman_assisting = Helpman_assistingTextBox.Text;
            jc.others = OthersTextBox.Text;
            jc.airsystem_main = airsystem_mainTextBox.Text;
            jc.airsystem_secondary = airsystem_secondaryTextBox.Text;
            jc.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
            jc.oxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
            jc.emergencyGas_divingBell = emergencyGas_divingBellTextBox.Text;
            jc.emergencyGas_divingBasket = emergencyGas_divingBasketTextBox.Text;

            //må legge til notes og changelog

            db.Journal_Caches.Add(jc);
            db.SaveChanges();

            //Response.Redirect("~/New_Journal.aspx");
            
            if (j.journalType == Models.JournalType.direct)
            {
                var diver1 = new Models.Diver_Standard
                {
                    //map data fra webform til diver_standard
                    JournalID = Journal_Cache.Id,
                    of_type = D1checkOf_TypeDropDownList(),
                    direct = D1checkDirectDropDownList(),
                    airType = D1checkAirTypeDropDownList(),
                    nitroxType = D1NitroxPercentTextbox.Text,
                    repeatedAir = D1RepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D1BreathingGearTextBox.Text,
                    volume = D1VolumeTextBox.Text,
                    pressure = D1PressureTextBox.Text,
                    plannedDepth = D1PlannedDepthTextBox.Text,
                    plannedTime = D1PlannedTimeTextBox.Text,
                    courseDive = D1CourseDiveTextBox.Text,
                    leftSurface = D1LeftSurface.Text,
                    reachedBottom = D1ReachedBottom.Text,
                    leftBottom_Depth = D1leftBottom_Depth.Text,
                    leftBottom_Time = D1leftBottom_Time.Text,
                    bottomTime = D1bottomTime.Text,
                    maxDepth = D1maxDepth.Text,
                    ELD = D1ELD.Text,
                    additionToBottomTime = D1additionToBottomTime.Text,
                    tableUsed_Meter = D1tableUsed_Meter.Text,
                    tableUsed_Minutes = D1tableUsed_Minutes.Text,
                    ascensionToFirstStop = D1ascensionToFirstStop.Text,
                    timeAtSafetyStop = D1timeAtSafetyStop.Text,
                    totalDivingTime = D1totalDivingTime.Text,
                    N2GroupAfterDive = D1N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D1isEverythingOKDropDownList),


                    arrived9m = D1arrived9m.Text,
                    arrived6m = D1arrived6m.Text,
                    arrived3m = D1arrived3m.Text,
                    reachedSurface = D1reachedSurface.Text,
                    ascensionTime = D1ascensionTime.Text

                };

                var diver2 = new Models.Diver_Standard
                {
                    JournalID = j.Id,
                    of_type = D2checkOf_TypeDropDownList(),
                    direct = D2checkDirectDropDownList(),
                    airType = D2checkAirTypeDropDownList(),
                    nitroxType = D2NitroxPercentTextbox.Text,
                    repeatedAir = D2RepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                    breathingGear = D2BreathingGearTextBox.Text,
                    volume = D2VolumeTextBox.Text,
                    pressure = D2PressureTextBox.Text,
                    plannedDepth = D2PlannedDepthTextBox.Text,
                    plannedTime = D2PlannedTimeTextBox.Text,
                    courseDive = D2CourseDiveTextBox.Text,
                    leftSurface = D2LeftSurface.Text,
                    reachedBottom = D2ReachedBottom.Text,
                    leftBottom_Depth = D2leftBottom_Depth.Text,
                    leftBottom_Time = D2leftBottom_Time.Text,
                    bottomTime = D2bottomTime.Text,
                    maxDepth = D2maxDepth.Text,
                    ELD = D2ELD.Text,
                    additionToBottomTime = D2additionToBottomTime.Text,
                    tableUsed_Meter = D2tableUsed_Meter.Text,
                    tableUsed_Minutes = D2tableUsed_Minutes.Text,
                    ascensionToFirstStop = D2ascensionToFirstStop.Text,
                    timeAtSafetyStop = D2timeAtSafetyStop.Text,
                    totalDivingTime = D2totalDivingTime.Text,
                    N2GroupAfterDive = D2N2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(D2isEverythingOKDropDownList),


                    arrived9m = D2arrived9m.Text,
                    arrived6m = D2arrived6m.Text,
                    arrived3m = D2arrived3m.Text,
                    reachedSurface = D2reachedSurface.Text,
                    ascensionTime = D2ascensionTime.Text
                };

                var standby = new Models.Diver_Standard
                {
                    JournalID = j.Id,
                    of_type = SBcheckOf_TypeDropDownList(),
                    direct = SBcheckDirectDropDownList(),
                    airType = SBcheckAirTypeDropDownList(),
                    nitroxType = SBNitroxPercentTextbox.Text,
                    repeatedAir = SBRepeatedAirCheckBox.Checked,
                    N2GroupBeforeDive = SBN2GroupBeforeDiveTextBox.Text,
                    breathingGear = SBBreathingGearTextBox.Text,
                    volume = SBVolumeTextBox.Text,
                    pressure = SBPressureTextBox.Text,
                    plannedDepth = SBPlannedDepthTextBox.Text,
                    plannedTime = SBPlannedTimeTextBox.Text,
                    courseDive = SBCourseDiveTextBox.Text,
                    leftSurface = SBLeftSurface.Text,
                    reachedBottom = SBReachedBottom.Text,
                    leftBottom_Depth = SBleftBottom_Depth.Text,
                    leftBottom_Time = SBleftBottom_Time.Text,
                    bottomTime = SBbottomTime.Text,
                    maxDepth = SBmaxDepth.Text,
                    ELD = SBELD.Text,
                    additionToBottomTime = SBadditionToBottomTime.Text,
                    tableUsed_Meter = SBtableUsed_Meter.Text,
                    tableUsed_Minutes = SBtableUsed_Minutes.Text,
                    ascensionToFirstStop = SBascensionToFirstStop.Text,
                    timeAtSafetyStop = SBtimeAtSafetyStop.Text,
                    totalDivingTime = SBtotalDivingTime.Text,
                    N2GroupAfterDive = SBN2GroupAfterDive.Text,
                    isEverythingOK = checkYesNoDropDownList(SBisEverythingOKDropDownList),


                    arrived9m = SBarrived9m.Text,
                    arrived6m = SBarrived6m.Text,
                    arrived3m = SBarrived3m.Text,
                    reachedSurface = SBreachedSurface.Text,
                    ascensionTime = SBascensionTime.Text
                };
            

                db.Diver_Standards.Add(diver1);
                db.Diver_Standards.Add(diver2);
                db.Diver_Standards.Add(standby);
                
            }
            
        } */





        protected void StandardDiveButton_Click(object sender, EventArgs e)
        {
            j.journalType = Models.JournalType.direct;
            writeHeader("Standarddykk");
            showTables(true, false, false);
            
        }

        protected void SurfaceCompressionDiveButton_Click(object sender, EventArgs e)
        {
            j.journalType = Models.JournalType.surfaceCompression;
            writeHeader("Overflatedekompresjon");
            showTables(false, true, false);
            

        }

        protected void PressureChamberDiveButton_Click(object sender, EventArgs e)
        {
            
            writeHeader("Trykkammer");
            showTables(false, false, true);

        }

        public void writeHeader(string diveType)
        {
            HeaderLabel.Text = string.Format("<h1>{0}</h1>", "Dykkerjournal - " + diveType);
        }

        public void showTables(bool standard, bool surface, bool chamber)
        {
            StandardDiveTable.Visible = standard;
            SurfaceCompressionDiveTable.Visible = surface;
            PressureChamberDiveTable.Visible = chamber;

            StandardDiveButton.Enabled = !standard;
            SurfaceCompressionDiveButton.Enabled = !surface;
            PressureChamberDiveButton.Enabled = !chamber;

            D1DirectDropDownList.Items[2].Enabled = !chamber;
            D2DirectDropDownList.Items[2].Enabled = !chamber;
            SBDirectDropDownList.Items[2].Enabled = !chamber;

            //Only disabled for pressurechamber:
            CourseNrRow.Visible = !chamber;
            DiversTable.Visible = !chamber;
            DivingSpotRow.Visible = !chamber;
            OtherRow.Visible = !chamber;
            Divingleader_studentRow.Visible = !chamber;
            diver_1Row.Visible = !chamber;
            diver_2Row.Visible = !chamber;
            StandbyRow.Visible = !chamber;
            HelpmanRow.Visible = !chamber;
            Helpman_assistingRow.Visible = !chamber;
            Lineman_1Row.Visible = !chamber;
            Lineman_2Row.Visible = !chamber;
            OthersRow.Visible = !chamber;
            
            TransportRow.Visible = !chamber;
            if (chamber)
            {
                setTransportCheckBoxList(!chamber);
            }

            
                
            

            //Only enabled for pressurechamber:
            PurposeRow.Visible = chamber;
            chamberoperatorRow.Visible = chamber;
            chamberassistentRow.Visible = chamber;
            isChamberClearRow.Visible = chamber;
            isOxygenClearRow.Visible = chamber;
            treatmentRow.Visible = chamber;
            doctorRow.Visible = chamber;
            PressureChamberDiversTable.Visible = chamber;
            
        }

   

        protected void DateButton_Click(object sender, EventArgs e)
        {
            DateTextBox.Text = DateTime.Now.ToLocalTime().ToShortDateString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTextBox.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        //Help method for finding textbox by ID. Used in TimeButton_Click()
        private Control FindControlRecursive(Control rootControl, string controlID)
        {
            if (rootControl.ID == controlID) return rootControl;

            foreach (Control controlToSearch in rootControl.Controls)
            {
                Control controlToReturn =
                    FindControlRecursive(controlToSearch, controlID);
                if (controlToReturn != null) return controlToReturn;
            }
            return null;
        }

        //Makes datestamp with "Kl " in front. All datestamp buttons use this method. 
        protected void TimeButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (button.CommandArgument != null)
            {
                TextBox textbox = (TextBox)FindControlRecursive(Page, button.CommandArgument);
                textbox.Text = DateTime.Now.ToShortTimeString();
            }
        }

        protected void TimeButtonWithExtraFunction_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (button.CommandArgument != null)
            {
                TextBox textbox = (TextBox)FindControlRecursive(Page, button.CommandArgument);
                textbox.Text = DateTime.Now.ToShortTimeString();
            }
        }




        protected void TransportCheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            TransportCheckBoxListChanged();
        }

        public void TransportCheckBoxListChanged()
        {
            checkTransportCheckboxList(TransportCheckBoxList.SelectedIndex);
            //if neither divingbasket or divingbell is chosen, hide emergency gas rows
            if (TransportCheckBoxList.Items[0].Selected == false && TransportCheckBoxList.Items[1].Selected == false)
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = false;
            }
            else
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = true;
            }
        }

        public void checkTransportCheckboxList(int lastChanged)
        {
            if (TransportCheckBoxList.Items[0].Selected == true && TransportCheckBoxList.Items[1].Selected == true)
            {
                if (TransportCheckBoxList.Items[0] == TransportCheckBoxList.Items[lastChanged])
                {
                    TransportCheckBoxList.Items[1].Selected = false;
                }

                if (TransportCheckBoxList.Items[1] == TransportCheckBoxList.Items[lastChanged])
                {
                    TransportCheckBoxList.Items[0].Selected = false;
                }
            }
        }

        public void setTransportCheckBoxList(bool value)
        {
            TransportCheckBoxList.Items[0].Selected = value;
            TransportCheckBoxList.Items[1].Selected = value;
            TransportCheckBoxListChanged();
        }



        public Models.Transport returnTransportCheckBoxList()
        {
            if (TransportCheckBoxList.Items[0].Selected)
            {
                return Models.Transport.divingBasket;
            } else if (TransportCheckBoxList.Items[1].Selected)
            {
                return Models.Transport.divingBell;
            } else
            {
                return Models.Transport.noTransport;
            }
        }

        protected void D1AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D1AirTypeDropDownList.SelectedValue=="0")
            {
                D1NitroxPercentTable.Visible = false;
            }
            if (D1AirTypeDropDownList.SelectedValue=="1")
            {
                D1NitroxPercentTable.Visible = true;
            }
            
        }

        protected void D2AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D2AirTypeDropDownList.SelectedValue == "0")
            {
                D2NitroxPercentTable.Visible = false;
            }
            if (D2AirTypeDropDownList.SelectedValue == "1")
            {
                D2NitroxPercentTable.Visible = true;
            }

        }

        protected void SBAirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SBAirTypeDropDownList.SelectedValue == "0")
            {
                SBNitroxPercentTable.Visible = false;
            }
            if (SBAirTypeDropDownList.SelectedValue == "1")
            {
                SBNitroxPercentTable.Visible = true;
            }

        }


        protected void ChamberSealedButton_Click(object sender, EventArgs e)
        {
            if (ChamberSealedButton.Text == "Forsegl kammer")
            {
                ChamberSealedButton.Text = "Kammer forseglet";
            } else
            {
                ChamberSealedButton.Text = "Forsegl kammer";
            }
            
        }

        protected void SaveToDatabaseButton_Click(object sender, EventArgs e)
        {

        }

        public bool checkYesNoDropDownList(DropDownList list)
        {
            if (list.SelectedIndex == 0) //Yes chosen
            {
                return true;
            } else
            {
                return false;
            }
        }

        public Models.JournalType checkJournalType()
        {
            return Models.JournalType.direct;
        }

        public void calculateTime(TextBox startTimeTextBox, TextBox stopTimeTextBox, TextBox resultTextBox)
        {
            TimeSpan startTimeSpan, stopTimeSpan;
            
            if (startTimeTextBox != null && stopTimeTextBox != null)
                
            {
                try {
                    startTimeSpan = TimeSpan.Parse(startTimeTextBox.Text);
                    stopTimeSpan = TimeSpan.Parse(stopTimeTextBox.Text);
                    resultTextBox.Text = ((int)stopTimeSpan.TotalMinutes - (int)startTimeSpan.TotalMinutes).ToString();
                } catch (FormatException)
                {
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Feil format. Kl som hh:mm')</SCRIPT>");
                    
                } catch (OverflowException)
                {
                    Response.Write("OverflowException");
                }
                

                

            }
        }

        protected void P1NumberOfMinsButton_Click(object sender, EventArgs e)
        {
            calculateTime(P1ClockTextBox1, P1ClockTextBox2, P1NumberOfMinsTextBox);
        }
    }
    }
        
    

