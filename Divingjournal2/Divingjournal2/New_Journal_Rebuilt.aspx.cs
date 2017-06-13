using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Net;
using Divingjournal2.DAL;


namespace Divingjournal2
{
    public partial class New_Journal_Rebuilt : System.Web.UI.Page
    {
        List<Watch> watchList = new List<Watch>();

        Models.Journal j = new Models.Journal();
        Models.Journal_Pressurechamber pc = new Models.Journal_Pressurechamber();

        Models.Journal_Cache jc = new Models.Journal_Cache();
        Models.Journal_Pressurechamber_Cache pcc = new Models.Journal_Pressurechamber_Cache();

        public static Models.Journal_Cache local_jc = new Models.Journal_Cache();

        public string localJournalName;
        public static bool isLoaded = false;

        protected override void OnInit(EventArgs e)
        {


            //Stuff that is available by default, when the page opens first time
            writeHeader("Standarddykk");
            j.journalType = Models.JournalType.direct;
            showTables(true, false, false);
            DateTextBox.Text = DateTime.Now.ToLocalTime().ToShortDateString();

            makeWatches();

            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StandardDiveButton_Click(object sender, EventArgs e)
        {
            writeHeader("Standarddykk");
            j.journalType = Models.JournalType.direct;
            showTables(true, false, false);
        }

        protected void SurfaceCompressionDiveButton_Click(object sender, EventArgs e)
        {
            writeHeader("Overflatedekompresjon");
            j.journalType = Models.JournalType.surfaceCompression;
            showTables(false, true, false);
        }

        protected void PressureChamberDiveButton_Click(object sender, EventArgs e)
        {
            writeHeader("Trykkammer");
            j.journalType = Models.JournalType.pressurechamber;
            showTables(false, false, true);
        }

        public void writeHeader(string diveType)
        {
            HeaderLabel.Text = string.Format("<h3>{0}</h3>", "Dykkerjournal - " + diveType);
        }

        public void showTables(bool standard, bool surface, bool chamber)
        {
            StandardDiveButton.Enabled = !standard;
            SurfaceCompressionDiveButton.Enabled = !surface;
            PressureChamberDiveButton.Enabled = !chamber;

            arrived9mRow.Visible = standard;
            arrived6mRow.Visible = standard;
            arrived3mRow.Visible = standard;
            left9mRow.Visible = standard;
            left6mRow.Visible = standard;
            left3mRow.Visible = standard;
            ascensionTimeRow.Visible = standard;

            left18mRow.Visible = surface;
            left15mRow.Visible = surface;
            left12mRow.Visible = surface;
            time12_0mRow.Visible = surface;
            reached15mInChamberRow.Visible = surface;
            surfaceIntervalRow.Visible = surface;
            left15mInChamberRow.Visible = surface;
            reached12mInChamber.Visible = surface;
            chamberSealedRow.Visible = surface;
            o2_1Row.Visible = surface;
            o2_2Row.Visible = surface;
            o2_3Row.Visible = surface;
            air_1Row.Visible = surface;
            air_2Row.Visible = surface;
            air_3Row.Visible = surface;
            left12mWithoutO2Row.Visible = surface;
            timeInChamberRow.Visible = surface;
            timeAtSeaRow.Visible = surface;
            totalDecompressionRow.Visible = surface;


            //Only disabled for pressurechamber:
            courseNrRow.Visible = !chamber;
            Diver1Table.Visible = !chamber;
            Diver2Table.Visible = !chamber;
            Diver3Table.Visible = !chamber;
            DivingSpotRow.Visible = !chamber;
            OtherRow.Visible = !chamber;
            Divingleader_studentRow.Visible = !chamber;
            Diver1Row.Visible = !chamber;
            Diver2Row.Visible = !chamber;
            Diver3Row.Visible = !chamber;
            HelpmanRow.Visible = !chamber;
            Helpman_assistingRow.Visible = !chamber;
            Lineman_1Row.Visible = !chamber;
            Lineman_2Row.Visible = !chamber;
            OthersRow.Visible = !chamber;
            BellAndBasketCheckBoxRow.Visible = !chamber;
            StandardAndCompressionDiveTable.Visible = !chamber;
            if (chamber)
            {
                DivingBasketCheckBox.Checked = DivingBellCheckBox.Checked = !chamber;
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = !chamber;
            }



            //Only enabled for pressurechamber:
            PurposeRow.Visible = chamber;
            chamberoperatorRow.Visible = chamber;
            chamberassistentRow.Visible = chamber;
            ChamberCheckBoxRow.Visible = chamber;
            doctorRow.Visible = chamber;
            tenderRow.Visible = chamber;
            ChamberRow.Visible = chamber;
            PCDiverTitleRow.Visible = chamber;
            PCDiverRow1.Visible = chamber;
            PCDiverRow2.Visible = chamber;
            PCDiverRow3.Visible = chamber;
            PCDiverRow4.Visible = chamber;

        }

        private void WriteToDatabase()
            {
                DivingJournalContext db = new DivingJournalContext();
                j.username = HttpContext.Current.Session["Username"].ToString();

            if (PressureChamberDiveButton.Enabled)
            {

                j.subject = checkSubjectDropDownList();
                j.transport = checkTransportCheckBoxes();
                j.courseNumber = courseNumberTextBox.Text;
                j.other = otherTextBox.Text;
                j.date = DateTextBox.Text;
                j.location = LocationTextBox.Text;
                j.divingSpot = DivingSpotTextBox.Text;
                j.divingchief = DivingchiefTextBox.Text;
                j.divingleader_teacher = divingleader_teacherTextBox.Text;
                j.divingleader_student = divingleader_studentTextBox.Text;
                j.diver_1 = diver_1TextBox.Text;
                j.diver_2 = diver_2TextBox.Text;
                j.diver_3 = diver_3TextBox.Text;
                j.lineman_1 = lineman_1TextBox.Text;
                j.lineman_2 = lineman_2TextBox.Text;
                j.helpman = helpmanTextBox.Text;
                j.helpman_assisting = helpman_assistingTextBox.Text;
                j.others = othersTextBox.Text;
                j.airsystem_main = airsystem_mainTextBox.Text;
                j.airsystem_secondary = airsystem_secondaryTextBox.Text;
                j.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
                j.oxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
                j.emergencyGas_divingBell = emergencyGas_divingBellTextBox.Text;
                j.emergencyGas_divingBasket = emergencyGas_divingBasketTextBox.Text;
                j.notes = notesTextBox.Text;

                Session["Journal_Id"] = j.Id;
                //må legge til changelog
                db.Journals.Add(j);
                db.SaveChanges();
                
                if (j.journalType == Models.JournalType.direct)
                {
                    var diver1 = new Models.Diver_Standard
                    {
                        //map data fra webform til diver_standard
                        JournalID = j.Id,
                        of_type = checkDropDownList(D1of_typeDropDownList),
                        direct = checkDropDownList(D1directDropDownList),
                        airType = checkDropDownList(D1AirTypeDropDownList),
                        nitroxType = D1NitroxPercentTextBox.Text,
                        repeatedAir = D1RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D1breathingGearTextBox.Text,
                        volume = D1volumeTextBox.Text,
                        pressure = D1pressureTextBox.Text,
                        plannedDepth = D1plannedDepthTextBox.Text,
                        plannedTime = D1plannedTimeTextBox.Text,
                        courseDive = D1courseDiveTextBox.Text,
                        leftSurface = D1LeftSurface.Text,
                        reachedBottom = D1reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D1isEverythingOKDropDownList),
                        arrived9m = D1arrived9m.Text,
                        arrived6m = D1arrived6m.Text,
                        arrived3m = D1arrived3m.Text,
                        reachedSurface = D1reachedSurface.Text,
                        ascensionTime = D1ascensionTime.Text
                    };
                    var diver2 = new Models.Diver_Standard
                    {
                        JournalID = j.Id,
                        of_type = checkDropDownList(D2of_typeDropDownList),
                        direct = checkDropDownList(D2directDropDownList),
                        airType = checkDropDownList(D2AirTypeDropDownList),
                        nitroxType = D2NitroxPercentTextBox.Text,
                        repeatedAir = D2RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D2breathingGearTextBox.Text,
                        volume = D2volumeTextBox.Text,
                        pressure = D2pressureTextBox.Text,
                        plannedDepth = D2PlannedDepthTextBox.Text,
                        plannedTime = D2PlannedTimeTextBox.Text,
                        courseDive = D2CourseDiveTextBox.Text,
                        leftSurface = D2LeftSurface.Text,
                        reachedBottom = D2reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D2isEverythingOKDropDownList),
                        arrived9m = D2arrived9m.Text,
                        arrived6m = D2arrived6m.Text,
                        arrived3m = D2arrived3m.Text,
                        reachedSurface = D2reachedSurface.Text,
                        ascensionTime = D2ascensionTime.Text
                    };
                    var diver3 = new Models.Diver_Standard
                    {
                        JournalID = j.Id,
                        of_type = checkDropDownList(D3of_typeDropDownList),
                        direct = checkDropDownList(D3directDropDownList),
                        airType = checkDropDownList(D3AirTypeDropDownList),
                        nitroxType = D3NitroxPercentTextBox.Text,
                        repeatedAir = D3RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D3breathingGearTextBox.Text,
                        volume = D3volumeTextBox.Text,
                        pressure = D3PressureTextBox.Text,
                        plannedDepth = D3PlannedDepthTextBox.Text,
                        plannedTime = D3PlannedTimeTextBox.Text,
                        courseDive = D3CourseDiveTextBox.Text,
                        leftSurface = D3LeftSurface.Text,
                        reachedBottom = D3reachedBottom.Text,
                        leftBottom_Depth = D3leftBottom_Depth.Text,
                        leftBottom_Time = D3leftBottom_Time.Text,
                        bottomTime = D3bottomTime.Text,
                        maxDepth = D3maxDepth.Text,
                        ELD = D3ELD.Text,
                        additionToBottomTime = D3additionToBottomTime.Text,
                        tableUsed_Meter = D3tableUsed_Meter.Text,
                        tableUsed_Minutes = D3tableUsed_Minutes.Text,
                        ascensionToFirstStop = D3ascensionToFirstStop.Text,
                        timeAtSafetyStop = D3timeAtSafetyStop.Text,
                        totalDivingTime = D3totalDivingTime.Text,
                        N2GroupAfterDive = D3N2GroupAfterDive.Text,
                        isEverythingOK = checkDropDownList(D3isEverythingOKDropDownList),
                        arrived9m = D3arrived9m.Text,
                        arrived6m = D3arrived6m.Text,
                        arrived3m = D3arrived3m.Text,
                        reachedSurface = D3reachedSurface.Text,
                        ascensionTime = D3ascensionTime.Text
                    };
                    db.Diver_Standards.Add(diver1);
                    db.Diver_Standards.Add(diver2);
                    db.Diver_Standards.Add(diver3);
                }
                else
                {
                    var diver1 = new Models.Diver_Compression
                    {
                        //map data fra webform til diver_standard
                        of_type = checkDropDownList(D1of_typeDropDownList),
                        direct = checkDropDownList(D1directDropDownList),
                        airType = checkDropDownList(D1AirTypeDropDownList),
                        nitroxType = D1NitroxPercentTextBox.Text,
                        repeatedAir = D1RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D1breathingGearTextBox.Text,
                        volume = D1volumeTextBox.Text,
                        pressure = D1pressureTextBox.Text,
                        plannedDepth = D1plannedDepthTextBox.Text,
                        plannedTime = D1plannedTimeTextBox.Text,
                        courseDive = D1courseDiveTextBox.Text,
                        leftSurface = D1LeftSurface.Text,
                        reachedBottom = D1reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D1isEverythingOKDropDownList),
                        left18m = D1left18m.Text,
                        left15m = D1left15m.Text,
                        left12m = D1left12m.Text,
                        time12_0m = D1time12_0m.Text,
                        reached15mInChamber = D1reached15mInChamber.Text,
                        o2_1 = D1o2_1.Text,
                        o2_2 = D1o2_2.Text,
                        o2_3 = D1o2_3.Text,
                        surfaceInterval = D1surfaceInterval.Text,
                        air_1 = D1air_1.Text,
                        air_2 = D1air_2.Text,
                        air_3 = D1air_3.Text,
                        left12mWithoutO2 = D1left12mWithoutO2.Text,
                        reachedSurface = D1reachedSurface.Text,
                        timeInChamber = D1timeInChamber.Text,
                        timeAtSea = D1timeAtSea.Text,
                        totalDecompression = D1totalDecompression.Text,
                    };
                    var diver2 = new Models.Diver_Compression
                    {
                        of_type = checkDropDownList(D2of_typeDropDownList),
                        direct = checkDropDownList(D2directDropDownList),
                        airType = checkDropDownList(D2AirTypeDropDownList),
                        nitroxType = D2NitroxPercentTextBox.Text,
                        repeatedAir = D2RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D2breathingGearTextBox.Text,
                        volume = D2volumeTextBox.Text,
                        pressure = D2pressureTextBox.Text,
                        plannedDepth = D2PlannedDepthTextBox.Text,
                        plannedTime = D2PlannedTimeTextBox.Text,
                        courseDive = D2CourseDiveTextBox.Text,
                        leftSurface = D2LeftSurface.Text,
                        reachedBottom = D2reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D2isEverythingOKDropDownList),
                        left18m = D2left18m.Text,
                        left15m = D2left15m.Text,
                        left12m = D2left12m.Text,
                        time12_0m = D2time12_0m.Text,
                        reached15mInChamber = D2reached15mInChamber.Text,
                        o2_1 = D2o2_1.Text,
                        o2_2 = D2o2_2.Text,
                        o2_3 = D2o2_3.Text,
                        surfaceInterval = D2surfaceInterval.Text,
                        air_1 = D2air_1.Text,
                        air_2 = D2air_2.Text,
                        air_3 = D2air_3.Text,
                        left12mWithoutO2 = D2left12mWithoutO2.Text,
                        reachedSurface = D2reachedSurface.Text,
                        timeInChamber = D2timeInChamber.Text,
                        timeAtSea = D2timeAtSea.Text,
                        totalDecompression = D2totalDecompression.Text,
                    };
                    var diver3 = new Models.Diver_Compression
                    {
                        of_type = checkDropDownList(D3of_typeDropDownList),
                        direct = checkDropDownList(D3directDropDownList),
                        airType = checkDropDownList(D3AirTypeDropDownList),
                        nitroxType = D3NitroxPercentTextBox.Text,
                        repeatedAir = D3RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D3breathingGearTextBox.Text,
                        volume = D3volumeTextBox.Text,
                        pressure = D3PressureTextBox.Text,
                        plannedDepth = D3PlannedDepthTextBox.Text,
                        plannedTime = D3PlannedTimeTextBox.Text,
                        courseDive = D3CourseDiveTextBox.Text,
                        leftSurface = D3LeftSurface.Text,
                        reachedBottom = D3reachedBottom.Text,
                        leftBottom_Depth = D3leftBottom_Depth.Text,
                        leftBottom_Time = D3leftBottom_Time.Text,
                        bottomTime = D3bottomTime.Text,
                        maxDepth = D3maxDepth.Text,
                        ELD = D3ELD.Text,
                        additionToBottomTime = D3additionToBottomTime.Text,
                        tableUsed_Meter = D3tableUsed_Meter.Text,
                        tableUsed_Minutes = D3tableUsed_Minutes.Text,
                        ascensionToFirstStop = D3ascensionToFirstStop.Text,
                        timeAtSafetyStop = D3timeAtSafetyStop.Text,
                        totalDivingTime = D3totalDivingTime.Text,
                        N2GroupAfterDive = D3N2GroupAfterDive.Text,
                        isEverythingOK = checkDropDownList(D3isEverythingOKDropDownList),
                        left18m = D3left18m.Text,
                        left15m = D3left15m.Text,
                        left12m = D3left12m.Text,
                        time12_0m = D3time12_0m.Text,
                        reached15mInChamber = D3reached15mInChamber.Text,
                        o2_1 = D3o2_1.Text,
                        o2_2 = D3o2_2.Text,
                        o2_3 = D3o2_3.Text,
                        surfaceInterval = D3surfaceInterval.Text,
                        air_1 = D3air_1.Text,
                        air_2 = D3air_2.Text,
                        air_3 = D3air_3.Text,
                        left12mWithoutO2 = D3left12mWithoutO2.Text,
                        reachedSurface = D3reachedSurface.Text,
                        timeInChamber = D3timeInChamber.Text,
                        timeAtSea = D3timeAtSea.Text,
                        totalDecompression = D3totalDecompression.Text,
                    };
                    db.Diver_Compressions.Add(diver1);
                    db.Diver_Compressions.Add(diver2);
                    db.Diver_Compressions.Add(diver3);
                }
                db.SaveChanges();
            } else //if pressurechamberButton is disabled = pressurechamber dive
            {
                //Map journal_pressurechamber
                
                pc.date = DateTextBox.Text;
                pc.location = LocationTextBox.Text;
                pc.purpose = PurposeTextBox.Text;
                pc.chamber = ChamberTextBox.Text;
                pc.divingchief = DivingchiefTextBox.Text;
                pc.divingleader = divingleader_teacherTextBox.Text;
                pc.chamberoperator = ChamberOperatorTextBox.Text;
                pc.chamberassistent = ChamberAssistantTextBox.Text;
                pc.doctor = DoctorTextBox.Text;

                pc.diver_1 = PCDiver1TextBox.Text;
                pc.diver_2 = PCDiver2TextBox.Text;
                pc.diver_3 = PCDiver3TextBox.Text;
                pc.diver_4 = PCDiver4TextBox.Text;
                pc.diver_5 = PCDiver5TextBox.Text;
                pc.diver_6 = PCDiver6TextBox.Text;
                pc.diver_7 = PCDiver7TextBox.Text;
                pc.diver_8 = PCDiver8TextBox.Text;

                pc.isChamberClear = isChamberClearCheckBox.Checked;
                pc.isOxygenClear = isOxygenClearCheckBox.Checked;
                pc.treatment = treatmentCheckBox.Checked;

                pc.airsystem_main = airsystem_mainTextBox.Text;
                pc.airsystem_secondary = airsystem_secondaryTextBox.Text;
                pc.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
                pc.oxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
                pc.notes = notesTextBox.Text;

                db.Journal_Pressurechambers.Add(pc);
                db.SaveChanges();
            }
            } 

        private void WriteToLocalDatabase()
        {
            DivingJournalContext db = new DivingJournalContext();
            jc.username = HttpContext.Current.Session["Username"].ToString();

            if (PressureChamberDiveButton.Enabled)
            {

                jc.subject = checkSubjectDropDownList();
                jc.transport = checkTransportCheckBoxes();
                jc.courseNumber = courseNumberTextBox.Text;
                jc.other = otherTextBox.Text;
                jc.date = DateTextBox.Text;
                jc.location = LocationTextBox.Text;
                jc.divingSpot = DivingSpotTextBox.Text;
                jc.divingchief = DivingchiefTextBox.Text;
                jc.divingleader_teacher = divingleader_teacherTextBox.Text;
                jc.divingleader_student = divingleader_studentTextBox.Text;
                jc.diver_1 = diver_1TextBox.Text;
                jc.diver_2 = diver_2TextBox.Text;
                jc.diver_3 = diver_3TextBox.Text;
                jc.lineman_1 = lineman_1TextBox.Text;
                jc.lineman_2 = lineman_2TextBox.Text;
                jc.helpman = helpmanTextBox.Text;
                jc.helpman_assisting = helpman_assistingTextBox.Text;
                jc.others = othersTextBox.Text;
                jc.airsystem_main = airsystem_mainTextBox.Text;
                jc.airsystem_secondary = airsystem_secondaryTextBox.Text;
                jc.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
                jc.oxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
                jc.emergencyGas_divingBell = emergencyGas_divingBellTextBox.Text;
                jc.emergencyGas_divingBasket = emergencyGas_divingBasketTextBox.Text;
                jc.notes = notesTextBox.Text;

                Session["Journal_Id"] = jc.Id;
                //må legge til changelog
                db.Journals.Add(j);
                db.SaveChanges();

                if (jc.journalType == Models.JournalType.direct)
                {
                    var diver1 = new Models.Diver_Standard
                    {
                        //map data fra webform til diver_standard
                        JournalID = jc.Id,
                        of_type = checkDropDownList(D1of_typeDropDownList),
                        direct = checkDropDownList(D1directDropDownList),
                        airType = checkDropDownList(D1AirTypeDropDownList),
                        nitroxType = D1NitroxPercentTextBox.Text,
                        repeatedAir = D1RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D1breathingGearTextBox.Text,
                        volume = D1volumeTextBox.Text,
                        pressure = D1pressureTextBox.Text,
                        plannedDepth = D1plannedDepthTextBox.Text,
                        plannedTime = D1plannedTimeTextBox.Text,
                        courseDive = D1courseDiveTextBox.Text,
                        leftSurface = D1LeftSurface.Text,
                        reachedBottom = D1reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D1isEverythingOKDropDownList),
                        arrived9m = D1arrived9m.Text,
                        arrived6m = D1arrived6m.Text,
                        arrived3m = D1arrived3m.Text,
                        reachedSurface = D1reachedSurface.Text,
                        ascensionTime = D1ascensionTime.Text
                    };
                    var diver2 = new Models.Diver_Standard
                    {
                        JournalID = jc.Id,
                        of_type = checkDropDownList(D2of_typeDropDownList),
                        direct = checkDropDownList(D2directDropDownList),
                        airType = checkDropDownList(D2AirTypeDropDownList),
                        nitroxType = D2NitroxPercentTextBox.Text,
                        repeatedAir = D2RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D2breathingGearTextBox.Text,
                        volume = D2volumeTextBox.Text,
                        pressure = D2pressureTextBox.Text,
                        plannedDepth = D2PlannedDepthTextBox.Text,
                        plannedTime = D2PlannedTimeTextBox.Text,
                        courseDive = D2CourseDiveTextBox.Text,
                        leftSurface = D2LeftSurface.Text,
                        reachedBottom = D2reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D2isEverythingOKDropDownList),
                        arrived9m = D2arrived9m.Text,
                        arrived6m = D2arrived6m.Text,
                        arrived3m = D2arrived3m.Text,
                        reachedSurface = D2reachedSurface.Text,
                        ascensionTime = D2ascensionTime.Text
                    };
                    var diver3 = new Models.Diver_Standard
                    {
                        JournalID = jc.Id,
                        of_type = checkDropDownList(D3of_typeDropDownList),
                        direct = checkDropDownList(D3directDropDownList),
                        airType = checkDropDownList(D3AirTypeDropDownList),
                        nitroxType = D3NitroxPercentTextBox.Text,
                        repeatedAir = D3RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D3breathingGearTextBox.Text,
                        volume = D3volumeTextBox.Text,
                        pressure = D3PressureTextBox.Text,
                        plannedDepth = D3PlannedDepthTextBox.Text,
                        plannedTime = D3PlannedTimeTextBox.Text,
                        courseDive = D3CourseDiveTextBox.Text,
                        leftSurface = D3LeftSurface.Text,
                        reachedBottom = D3reachedBottom.Text,
                        leftBottom_Depth = D3leftBottom_Depth.Text,
                        leftBottom_Time = D3leftBottom_Time.Text,
                        bottomTime = D3bottomTime.Text,
                        maxDepth = D3maxDepth.Text,
                        ELD = D3ELD.Text,
                        additionToBottomTime = D3additionToBottomTime.Text,
                        tableUsed_Meter = D3tableUsed_Meter.Text,
                        tableUsed_Minutes = D3tableUsed_Minutes.Text,
                        ascensionToFirstStop = D3ascensionToFirstStop.Text,
                        timeAtSafetyStop = D3timeAtSafetyStop.Text,
                        totalDivingTime = D3totalDivingTime.Text,
                        N2GroupAfterDive = D3N2GroupAfterDive.Text,
                        isEverythingOK = checkDropDownList(D3isEverythingOKDropDownList),
                        arrived9m = D3arrived9m.Text,
                        arrived6m = D3arrived6m.Text,
                        arrived3m = D3arrived3m.Text,
                        reachedSurface = D3reachedSurface.Text,
                        ascensionTime = D3ascensionTime.Text
                    };
                    db.Diver_Standards.Add(diver1);
                    db.Diver_Standards.Add(diver2);
                    db.Diver_Standards.Add(diver3);
                }
                else
                {
                    var diver1 = new Models.Diver_Compression
                    {
                        //map data fra webform til diver_standard
                        of_type = checkDropDownList(D1of_typeDropDownList),
                        direct = checkDropDownList(D1directDropDownList),
                        airType = checkDropDownList(D1AirTypeDropDownList),
                        nitroxType = D1NitroxPercentTextBox.Text,
                        repeatedAir = D1RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D1N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D1breathingGearTextBox.Text,
                        volume = D1volumeTextBox.Text,
                        pressure = D1pressureTextBox.Text,
                        plannedDepth = D1plannedDepthTextBox.Text,
                        plannedTime = D1plannedTimeTextBox.Text,
                        courseDive = D1courseDiveTextBox.Text,
                        leftSurface = D1LeftSurface.Text,
                        reachedBottom = D1reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D1isEverythingOKDropDownList),
                        left18m = D1left18m.Text,
                        left15m = D1left15m.Text,
                        left12m = D1left12m.Text,
                        time12_0m = D1time12_0m.Text,
                        reached15mInChamber = D1reached15mInChamber.Text,
                        surfaceInterval = D1surfaceInterval.Text,
                        left15mInChamber = D1left15mInChamber.Text,
                        reached12mInChamber = D1reached12mInChamber.Text,
                        o2_1 = D1o2_1.Text,
                        o2_2 = D1o2_2.Text,
                        o2_3 = D1o2_3.Text,
                        air_1 = D1air_1.Text,
                        air_2 = D1air_2.Text,
                        air_3 = D1air_3.Text,
                        left12mWithoutO2 = D1left12mWithoutO2.Text,
                        reachedSurface = D1reachedSurface.Text,
                        timeInChamber = D1timeInChamber.Text,
                        timeAtSea = D1timeAtSea.Text,
                        totalDecompression = D1totalDecompression.Text,
                    };
                    var diver2 = new Models.Diver_Compression
                    {
                        of_type = checkDropDownList(D2of_typeDropDownList),
                        direct = checkDropDownList(D2directDropDownList),
                        airType = checkDropDownList(D2AirTypeDropDownList),
                        nitroxType = D2NitroxPercentTextBox.Text,
                        repeatedAir = D2RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D2N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D2breathingGearTextBox.Text,
                        volume = D2volumeTextBox.Text,
                        pressure = D2pressureTextBox.Text,
                        plannedDepth = D2PlannedDepthTextBox.Text,
                        plannedTime = D2PlannedTimeTextBox.Text,
                        courseDive = D2CourseDiveTextBox.Text,
                        leftSurface = D2LeftSurface.Text,
                        reachedBottom = D2reachedBottom.Text,
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
                        isEverythingOK = checkDropDownList(D2isEverythingOKDropDownList),
                        left18m = D2left18m.Text,
                        left15m = D2left15m.Text,
                        left12m = D2left12m.Text,
                        time12_0m = D2time12_0m.Text,
                        reached15mInChamber = D2reached15mInChamber.Text,
                        left15mInChamber = D2left15mInChamber.Text,
                        reached12mInChamber = D2reached12mInChamber.Text,
                        o2_1 = D2o2_1.Text,
                        o2_2 = D2o2_2.Text,
                        o2_3 = D2o2_3.Text,
                        surfaceInterval = D2surfaceInterval.Text,
                        air_1 = D2air_1.Text,
                        air_2 = D2air_2.Text,
                        air_3 = D2air_3.Text,
                        left12mWithoutO2 = D2left12mWithoutO2.Text,
                        reachedSurface = D2reachedSurface.Text,
                        timeInChamber = D2timeInChamber.Text,
                        timeAtSea = D2timeAtSea.Text,
                        totalDecompression = D2totalDecompression.Text,
                    };
                    var diver3 = new Models.Diver_Compression
                    {
                        of_type = checkDropDownList(D3of_typeDropDownList),
                        direct = checkDropDownList(D3directDropDownList),
                        airType = checkDropDownList(D3AirTypeDropDownList),
                        nitroxType = D3NitroxPercentTextBox.Text,
                        repeatedAir = D3RepeatedCheckBox.Checked,
                        N2GroupBeforeDive = D3N2GroupBeforeDiveTextBox.Text,
                        breathingGear = D3breathingGearTextBox.Text,
                        volume = D3volumeTextBox.Text,
                        pressure = D3PressureTextBox.Text,
                        plannedDepth = D3PlannedDepthTextBox.Text,
                        plannedTime = D3PlannedTimeTextBox.Text,
                        courseDive = D3CourseDiveTextBox.Text,
                        leftSurface = D3LeftSurface.Text,
                        reachedBottom = D3reachedBottom.Text,
                        leftBottom_Depth = D3leftBottom_Depth.Text,
                        leftBottom_Time = D3leftBottom_Time.Text,
                        bottomTime = D3bottomTime.Text,
                        maxDepth = D3maxDepth.Text,
                        ELD = D3ELD.Text,
                        additionToBottomTime = D3additionToBottomTime.Text,
                        tableUsed_Meter = D3tableUsed_Meter.Text,
                        tableUsed_Minutes = D3tableUsed_Minutes.Text,
                        ascensionToFirstStop = D3ascensionToFirstStop.Text,
                        timeAtSafetyStop = D3timeAtSafetyStop.Text,
                        totalDivingTime = D3totalDivingTime.Text,
                        N2GroupAfterDive = D3N2GroupAfterDive.Text,
                        isEverythingOK = checkDropDownList(D3isEverythingOKDropDownList),
                        left18m = D3left18m.Text,
                        left15m = D3left15m.Text,
                        left12m = D3left12m.Text,
                        time12_0m = D3time12_0m.Text,
                        reached15mInChamber = D3reached15mInChamber.Text,
                        surfaceInterval = D3surfaceInterval.Text,
                        left15mInChamber=D3left15mInChamber.Text,
                        reached12mInChamber = D3reached12mInChamber.Text,
                        o2_1 = D3o2_1.Text,
                        o2_2 = D3o2_2.Text,
                        o2_3 = D3o2_3.Text,
                        air_1 = D3air_1.Text,
                        air_2 = D3air_2.Text,
                        air_3 = D3air_3.Text,
                        left12mWithoutO2 = D3left12mWithoutO2.Text,
                        reachedSurface = D3reachedSurface.Text,
                        timeInChamber = D3timeInChamber.Text,
                        timeAtSea = D3timeAtSea.Text,
                        totalDecompression = D3totalDecompression.Text,
                    };
                    db.Diver_Compressions.Add(diver1);
                    db.Diver_Compressions.Add(diver2);
                    db.Diver_Compressions.Add(diver3);
                }
                db.SaveChanges();
            }
            else //if pressurechamberButton is disabled = pressurechamber dive
            {
                //Map journal_pressurechamber

                pcc.date = DateTextBox.Text;
                pcc.location = LocationTextBox.Text;
                pcc.purpose = PurposeTextBox.Text;
                pcc.chamber = ChamberTextBox.Text;
                pcc.divingchief = DivingchiefTextBox.Text;
                pcc.divingleader = divingleader_teacherTextBox.Text;
                pcc.chamberoperator = ChamberOperatorTextBox.Text;
                pcc.chamberassistent = ChamberAssistantTextBox.Text;
                pcc.doctor = DoctorTextBox.Text;

                pcc.diver_1 = PCDiver1TextBox.Text;
                pcc.diver_2 = PCDiver2TextBox.Text;
                pcc.diver_3 = PCDiver3TextBox.Text;
                pcc.diver_4 = PCDiver4TextBox.Text;
                pcc.diver_5 = PCDiver5TextBox.Text;
                pcc.diver_6 = PCDiver6TextBox.Text;
                pcc.diver_7 = PCDiver7TextBox.Text;
                pcc.diver_8 = PCDiver8TextBox.Text;

                pcc.isChamberClear = isChamberClearCheckBox.Checked;
                pcc.isOxygenClear = isOxygenClearCheckBox.Checked;
                pcc.treatment = treatmentCheckBox.Checked;

                pcc.airsystem_main = airsystem_mainTextBox.Text;
                pcc.airsystem_secondary = airsystem_secondaryTextBox.Text;
                pcc.oxygenForChamber_inUse = oxygenForChamber_inUseTextBox.Text;
                pcc.oxygenForChamber_readyForUse = oxygenForChamber_readyForUseTextBox.Text;
                pcc.notes = notesTextBox.Text;

                db.Journal_Pressurechambers.Add(pc);
                db.SaveChanges();
            }

        }

        protected void BellAndBasket_CheckedChanged(object sender, EventArgs e)
        {
            if (DivingBasketCheckBox.Checked)
            {
                DivingBellCheckBox.Checked = false;
            }
            else
            {
                DivingBasketCheckBox.Checked = false;
            }

            if (DivingBasketCheckBox.Checked || DivingBellCheckBox.Checked)
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = true;
            }
            else
            {
                EmergencyGasRow1.Visible = EmergencyGasRow2.Visible = EmergencyGasRow3.Visible = false;
            }
        }

        protected void D1AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D1AirTypeDropDownList.SelectedValue == "0")
            {
                D1NitroxPercentCell1.Enabled = D1NitroxPercentCell2.Enabled = false;
                D1NitroxPercentTextBox.Text = "";
            }
            if (D1AirTypeDropDownList.SelectedValue == "1")
            {
                D1NitroxPercentCell1.Enabled = D1NitroxPercentCell2.Enabled = true;
            }

        }

        protected void D2AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D2AirTypeDropDownList.SelectedValue == "0")
            {
                D2NitroxPercentCell1.Enabled = D2NitroxPercentCell2.Enabled = false;
                D2NitroxPercentTextBox.Text = "";
            }
            if (D2AirTypeDropDownList.SelectedValue == "1")
            {
                D2NitroxPercentCell1.Enabled = D2NitroxPercentCell2.Enabled = true;
            }

        }

        protected void D3AirTypeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (D3AirTypeDropDownList.SelectedValue == "0")
            {
                D3NitroxPercentCell1.Enabled = D3NitroxPercentCell2.Enabled = false;
                D3NitroxPercentTextBox.Text = "";
            }
            if (D3AirTypeDropDownList.SelectedValue == "1")
            {
                D3NitroxPercentCell1.Enabled = D3NitroxPercentCell2.Enabled = true;
            }

        }

        public string checkSubjectDropDownList()
        {
            return SubjectDropDownList.SelectedValue;
        }

        public string checkTransportCheckBoxes()
        {
            if (DivingBellCheckBox.Checked) { return "Våtklokke"; }

            else if (DivingBasketCheckBox.Checked) { return "Dykkekurv"; }

            else { return ""; }
        }

        //If this method works, all dropdownlists can use it.
        public string checkDropDownList(DropDownList dropdown)
        {
            return dropdown.SelectedValue;
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

        //Makes datestamp. All datestamp buttons use this method. 
        protected void TimeButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (button.CommandArgument != null && button.CommandArgument != "")
            {
                TextBox textbox = (TextBox)FindControlRecursive(Page, button.CommandArgument);
                textbox.BackColor = System.Drawing.Color.FromArgb(229, 242, 255);
                textbox.Text = DateTime.Now.ToShortTimeString();
            }
        }

        protected void TimeButtonWithExtraFunction_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (button.CommandArgument != null && button.CommandArgument != "")
            {
                TextBox textbox = (TextBox)FindControlRecursive(Page, button.CommandArgument);
                textbox.Text = DateTime.Now.ToShortTimeString();
            } 

            //Iterate through all watches
            for (int i = 0; i < watchList.Count; i++) { 
                
            //if matches one watch's stopbutton: that watch.calculateTime()
            if (watchList[i].stopButton == button)
            {
                    if (watchList[i].startTextBox.Text != null && watchList[i].startTextBox.Text != "")
                    watchList[i].calculateTime();
            }
            }
        }


        protected void chamberSealedButton_Click(object sender, EventArgs e)
        {
            if (chamberSealedButton.Text == "Forsegle kammer")
            {
                chamberSealedButton.Text = "Kammer forseglet";
            }
            else
            {
                chamberSealedButton.Text = "Forsegle kammer";
            }

        }

        //If we find out that only one standby is allowed. Stands empty for now.
        protected void standbyCheckBox_CheckedChanged(object sender, EventArgs e)
        {

        }

        public void makeWatches()
        {
            Watch D1bottomTimeWatch = new Watch(D1leftBottom_TimeButton, D1LeftSurface, D1leftBottom_Time, D1bottomTime);
            Watch D1ascensionToFirstStopWatch = new Watch(D1ascensionToFirstStopButton, D1leftBottom_Time, D1ascensionToFirstStop, D1ascensionToFirstStop);
            Watch D1ascensionTimeWatch = new Watch(D1reachedSurfaceBtn, D1leftBottom_Time, D1reachedSurface, D1ascensionTime);
            Watch D1totalDivingTimeWatch = new Watch(D1reachedSurfaceBtn, D1LeftSurface, D1reachedSurface, D1totalDivingTime);


            watchList.Add(D1bottomTimeWatch);
            watchList.Add(D1totalDivingTimeWatch);
            watchList.Add(D1ascensionTimeWatch);

            Watch D2bottomTimeWatch = new Watch(D2leftBottom_TimeButton, D2LeftSurface, D2leftBottom_Time, D2bottomTime);
            Watch D2ascensionToFirstStopWatch = new Watch(D2ascensionToFirstStopButton, D2leftBottom_Time, D2ascensionToFirstStop, D2ascensionToFirstStop);
            Watch D2ascensionTimeWatch = new Watch(D2reachedSurfaceBtn, D2leftBottom_Time, D2reachedSurface, D2ascensionTime);
            Watch D2totalDivingTimeWatch = new Watch(D2reachedSurfaceBtn, D2LeftSurface, D2reachedSurface, D2totalDivingTime);


            watchList.Add(D2bottomTimeWatch);
            watchList.Add(D2totalDivingTimeWatch);
            watchList.Add(D2ascensionTimeWatch);

            Watch D3bottomTimeWatch = new Watch(D3leftBottom_TimeButton, D3LeftSurface, D3leftBottom_Time, D3bottomTime);
            Watch D3ascensionToFirstStopWatch = new Watch(D3ascensionToFirstStopButton, D3leftBottom_Time, D3ascensionToFirstStop, D3ascensionToFirstStop);
            Watch D3ascensionTimeWatch = new Watch(D3reachedSurfaceBtn, D3leftBottom_Time, D3reachedSurface, D3ascensionTime);
            Watch D3totalDivingTimeWatch = new Watch(D3reachedSurfaceBtn, D3LeftSurface, D3reachedSurface, D3totalDivingTime);


            watchList.Add(D3bottomTimeWatch);
            watchList.Add(D3totalDivingTimeWatch);
            watchList.Add(D3ascensionTimeWatch);

        }

        public Watch findWatch(Button stopButton)
        {
            Watch foundWatch = null;
            for (int i = 0; i < watchList.Count; i++)
            {
                if (stopButton == watchList[i].stopButton)
                {
                    foundWatch = watchList[i];
                }
            }
            return foundWatch;
        }

        protected void LocalSaveButton_Click(object sender, EventArgs e)
        {

        }

        protected void SaveToDatabaseButton_Click(object sender, EventArgs e)
        {

        }
    }

    public class Watch2
    {
        public DateTime startTime { get; set; }
        public DateTime stopTime { get; set; }
        public Button startButton { get; set; }
        public Button stopButton { get; set; }
        public TextBox startTextBox { get; set; }
        public TextBox stopTextBox { get; set; }
        public TextBox resultTextBox { get; set; }
        public TextBox resultTextBox2 { get; set; }
        public TextBox resultTextBox3 { get; set; }

        public Watch2(TextBox _startTextBox, TextBox _stopTextBox, TextBox _resultTextBox)
        {
            startTextBox = _startTextBox;
            stopTextBox = _stopTextBox;
            resultTextBox = _resultTextBox;
        }

        public Watch2(Button _stopButton, TextBox _startTextBox, TextBox _stopTextBox, TextBox _resultTextBox)
        {
            stopButton = _stopButton;
            startTextBox = _startTextBox;
            stopTextBox = _stopTextBox;
            resultTextBox = _resultTextBox;
        }

        public Watch2(Button _stopButton, TextBox _startTextBox, TextBox _stopTextBox, TextBox _resultTextBox, TextBox _resultTextBox2)
        {
            stopButton = _stopButton;
            startTextBox = _startTextBox;
            stopTextBox = _stopTextBox;
            resultTextBox = _resultTextBox;
            resultTextBox2 = _resultTextBox2;
        }

        public Watch2(Button _stopButton, TextBox _startTextBox, TextBox _stopTextBox, TextBox _resultTextBox, TextBox _resultTextBox2, TextBox _resultTextBox3)
        {
            stopButton = _stopButton;
            startTextBox = _startTextBox;
            stopTextBox = _stopTextBox;
            resultTextBox = _resultTextBox;
            resultTextBox2 = _resultTextBox2;
            resultTextBox3 = _resultTextBox3;
        }

        public void calculateTime()
        {
            TimeSpan startTimeSpan, stopTimeSpan;

            if (startTextBox != null && stopTextBox != null)

            {
                try
                {
                    if (startTextBox.Text == "")
                    {
                        startTextBox.Text = DateTime.Now.ToShortTimeString();
                    }

                    startTimeSpan = TimeSpan.Parse(startTextBox.Text);
                    stopTimeSpan = TimeSpan.Parse(stopTextBox.Text);
                    int mins = (int)stopTimeSpan.TotalMinutes + 1 - (int)startTimeSpan.TotalMinutes; //+1 here so it always rounds up
                    resultTextBox.Text = mins.ToString();
                }
                catch (FormatException)
                {
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Feil format. Kl som hh:mm')</SCRIPT>");

                }
                catch (OverflowException)
                {

                }
            }
        }

        public void calculateTimeWithSeconds()
        {
            TimeSpan startTimeSpan, stopTimeSpan;

            if (startTextBox != null && stopTextBox != null)

            {
                try
                {
                    if (startTextBox.Text == "")
                    {
                        startTextBox.Text = DateTime.Now.ToShortTimeString();
                    }

                    startTimeSpan = TimeSpan.Parse(startTextBox.Text);
                    stopTimeSpan = TimeSpan.Parse(stopTextBox.Text);
                    int mins = (int)stopTimeSpan.TotalMinutes + 1 - (int)startTimeSpan.TotalMinutes; //+1 here so it always rounds up
                    int secs = (int)stopTimeSpan.TotalSeconds - (int)startTimeSpan.TotalSeconds;
                    resultTextBox.Text = mins.ToString();
                }
                catch (FormatException)
                {
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Feil format. Kl som hh:mm')</SCRIPT>");

                }
                catch (OverflowException)
                {

                }

            }
        }
    }
}