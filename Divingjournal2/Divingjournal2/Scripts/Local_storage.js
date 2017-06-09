
var storage = window.localStorage;

//Save data to LocalStorage
$(document).on("click", "#<%=Local_Save.ClientID %>", function (evt) {

    storage.setItem("subject", $("#<%=SubjectDropDownList.ClientID %>").val());
    storage.setItem("courseNumber", $("#<%=CourseNrTextBox.ClientID %>").val());
    storage.setItem("other", $("#<%=OtherTextBox.ClientID %>").val());
    storage.setItem("date", $("#<%=DateTextBox.ClientID %>").val());
    storage.setItem("location", $("#<%=LocationTextBox.ClientID %>").val());
    storage.setItem("divingSpot", $("#<%=DivingSpotTextBox.ClientID %>").val());
    storage.setItem("divingchief", $("#<%=DivingChiefTextBox.ClientID %>").val());
    storage.setItem("divingleader_teacher", $("#<%=Divingleader_teacherTextBox.ClientID %>").val());
    storage.setItem("divingleader_student", $("#<%=Divingleader_studentTextBox.ClientID %>").val());
    storage.setItem("diver_1", $("#<%=Diver_1TextBox.ClientID %>").val());
    storage.setItem("diver_2", $("#<%=Diver_2TextBox.ClientID %>").val());
    storage.setItem("standby", $("#<%=StandbyTextBox.ClientID %>").val());
    storage.setItem("lineman_1", $("#<%=Lineman_1TextBox.ClientID %>").val());
    storage.setItem("lineman_2", $("#<%=Lineman_2TextBox.ClientID %>").val());
    storage.setItem("helpman", $("#<%=HelpmanTextBox.ClientID %>").val());
    storage.setItem("helpman_assisting", $("#<%=Helpman_assistingTextBox.ClientID %>").val());
    storage.setItem("others", $("#<%=OthersTextBox.ClientID %>").val());
    storage.setItem("airsystem_main", $("#<%=airsystem_mainTextBox.ClientID %>").val());
    storage.setItem("airsystem_secondary", $("#<%=airsystem_secondaryTextBox.ClientID %>").val());
    storage.setItem("oxygenForChamber_inUse", $("#<%=oxygenForChamber_inUseTextBox.ClientID %>").val());
    storage.setItem("oxygenForChamber_readyForUse", $("#<%=oxygenForChamber_readyForUseTextBox.ClientID %>").val());
    storage.setItem("emergencyGas_divingBell", $("#<%=emergencyGas_divingBellTextBox.ClientID %>").val());
    storage.setItem("emergencyGas_divingBasket", $("#<%=emergencyGas_divingBasketTextBox.ClientID %>").val());
    storage.setItem("purpose", $("#<%=PurposeTextBox.ClientID %>").val());
    storage.setItem("chamberoperator", $("#<%=chamberoperatorTextBox.ClientID %>").val());
    storage.setItem("chamberassistent", $("#<%=chamberassistentTextBox.ClientID %>").val());
    storage.setItem("doctor", $("#<%=doctorTextBox.ClientID %>").val());

    //diver1 - Standard
    storage.setItem("of_type", $("#<%=D1OF_TypeDropDownList.ClientID %>").val());
    storage.setItem("direct", $("#<%=D1DirectDropDownList.ClientID %>").val());
    storage.setItem("airType", $("#<%=D1AirTypeDropDownList.ClientID %>").val());
    storage.setItem("nitroxType", $("#<%=D1NitroxPercentTextbox.ClientID %>").val());
    storage.setItem("repeatedAir", $("#<%=D1RepeatedAirCheckBox.ClientID %>").val());
    storage.setItem("N2GroupBeforeDive", $("#<%=D1N2GroupBeforeDiveTextBox.ClientID %>").val());
    storage.setItem("breathingGear", $("#<%=D1BreathingGearTextBox.ClientID %>").val());
    storage.setItem("volume", $("#<%=D1VolumeTextBox.ClientID %>").val());
    storage.setItem("pressure", $("#<%=D1PressureTextBox.ClientID %>").val());
    storage.setItem("plannedDepth", $("#<%=D1PlannedDepthTextBox.ClientID %>").val());
    storage.setItem("plannedTime", $("#<%=D1PlannedTimeTextBox.ClientID %>").val());
    storage.setItem("courseDive", $("#<%=D1CourseDiveTextBox.ClientID %>").val());
    storage.setItem("leftSurface", $("#<%=D1LeftSurface.ClientID %>").val());
    storage.setItem("reachedBottom", $("#<%=D1ReachedBottom.ClientID %>").val());
    storage.setItem("leftBottom_Depth", $("#<%=D1leftBottom_Depth.ClientID %>").val());
    storage.setItem("leftBottom_Time", $("#<%=D1leftBottom_Time.ClientID %>").val());
    storage.setItem("bottomTime", $("#<%=D1bottomTime.ClientID %>").val());
    storage.setItem("maxDepth", $("#<%=D1maxDepth.ClientID %>").val());
    storage.setItem("ELD", $("#<%=D1ELD.ClientID %>").val());
    storage.setItem("additionToBottomTime", $("#<%=D1additionToBottomTime.ClientID %>").val());
    storage.setItem("tableUsed_Meter", $("#<%=D1tableUsed_Meter.ClientID %>").val());
    storage.setItem("tableUsed_Minutes", $("#<%=D1tableUsed_Minutes.ClientID %>").val());
    storage.setItem("ascensionToFirstStop", $("#<%=D1ascensionToFirstStop.ClientID %>").val());
    storage.setItem("timeAtSafetyStop", $("#<%=D1timeAtSafetyStop.ClientID %>").val());
    storage.setItem("totalDivingTime", $("#<%=D1totalDivingTime.ClientID %>").val());
    storage.setItem("N2GroupAfterDive", $("#<%=D1N2GroupAfterDive.ClientID %>").val());
    storage.setItem("isEverythingOK", $("#<%=D1isEverythingOKDropDownList.ClientID %>").val());
    storage.setItem("arrived9m", $("#<%=D1arrived9m.ClientID %>").val());
    storage.setItem("arrived6m", $("#<%=D1arrived6m.ClientID %>").val());
    storage.setItem("arrived3m", $("#<%=D1arrived3m.ClientID %>").val());
    storage.setItem("left9m", $("#<%=D1left9m.ClientID %>").val());
    storage.setItem("left6m", $("#<%=D1left6m.ClientID %>").val());
    storage.setItem("left3m", $("#<%=D1left3m.ClientID %>").val());
    storage.setItem("reachedSurface", $("#<%=D1reachedSurface.ClientID %>").val());
    storage.setItem("ascensionTime", $("#<%=D1ascensionTime.ClientID %>").val());
});

//Retreive data from LocalStorage
$(document).on("click", "#<%=AJAX_Button.ClientID %>", function (evt) {
    $("#<%=SubjectDropDownList.ClientID %>").val(storage.getItem("subject"));
    $("#<%=CourseNrTextBox.ClientID %>").val(storage.getItem("courseNumber"));
    $("#<%=OtherTextBox.ClientID %>").val(storage.getItem("other"));
    $("#<%=DateTextBox.ClientID %>").val(storage.getItem("date"));
    $("#<%=LocationTextBox.ClientID %>").val(storage.getItem("location"));
    $("#<%=DivingSpotTextBox.ClientID %>").val(storage.getItem("divingSpot"));
    $("#<%=DivingChiefTextBox.ClientID %>").val(storage.getItem("divingchief"));
    $("#<%=Divingleader_teacherTextBox.ClientID %>").val(storage.getItem("divingleader_teacher"));
    $("#<%=Divingleader_studentTextBox.ClientID %>").val(storage.getItem("divingleader_student"));
    $("#<%=Diver_1TextBox.ClientID %>").val(storage.getItem("diver_1"));
    $("#<%=Diver_2TextBox.ClientID %>").val(storage.getItem("diver_2"));
    $("#<%=StandbyTextBox.ClientID %>").val(storage.getItem("standby"));
    $("#<%=Lineman_1TextBox.ClientID %>").val(storage.getItem("lineman_1"));
    $("#<%=Lineman_2TextBox.ClientID %>").val(storage.getItem("lineman_2"));
    $("#<%=HelpmanTextBox.ClientID %>").val(storage.getItem("helpman"));
    $("#<%=Helpman_assistingTextBox.ClientID %>").val(storage.getItem("helpman_assisting"));
    $("#<%=OthersTextBox.ClientID %>").val(storage.getItem("others"));
    $("#<%=airsystem_mainTextBox.ClientID %>").val(storage.getItem("airsystem_main"));
    $("#<%=airsystem_secondaryTextBox.ClientID %>").val(storage.getItem("airsystem_secondary"));
    $("#<%=oxygenForChamber_inUseTextBox.ClientID %>").val(storage.getItem("oxygenForChamber_inUse"));
    $("#<%=oxygenForChamber_readyForUseTextBox.ClientID %>").val(storage.getItem("oxygenForChamber_readyForUse"));
    $("#<%=emergencyGas_divingBellTextBox.ClientID %>").val(storage.getItem("emergencyGas_divingBell"));
    $("#<%=emergencyGas_divingBasketTextBox.ClientID %>").val(storage.getItem("emergencyGas_divingBasket"));
    $("#<%=PurposeTextBox.ClientID %>").val(storage.getItem("purpose"));
    $("#<%=chamberoperatorTextBox.ClientID %>").val(storage.getItem("chamberoperator"));
    $("#<%=chamberassistentTextBox.ClientID %>").val(storage.getItem("chamberassistent"));
    $("#<%=doctorTextBox.ClientID %>").val(storage.getItem("doctor"));

    //diver1 - Standard


    $("#<%=D1OF_TypeDropDownList.ClientID %>").val(storage.getItem("of_type"));
    $("#<%=D1DirectDropDownList.ClientID %>").val(storage.getItem("direct"));
    $("#<%=D1AirTypeDropDownList.ClientID %>").val(storage.getItem("airType"));
    $("#<%=D1NitroxPercentTextbox.ClientID %>").val(storage.getItem("nitroxType"));
    $("#<%=D1RepeatedAirCheckBox.ClientID %>").val(storage.getItem("repeatedAir"));
    $("#<%=D1N2GroupBeforeDiveTextBox.ClientID %>").val(storage.getItem("N2GroupBeforeDive"));
    $("#<%=D1BreathingGearTextBox.ClientID %>").val(storage.getItem("breathingGear"));
    $("#<%=D1VolumeTextBox.ClientID %>").val(storage.getItem("volume"));
    $("#<%=D1PressureTextBox.ClientID %>").val(storage.getItem("pressure"));
    $("#<%=D1PlannedDepthTextBox.ClientID %>").val(storage.getItem("plannedDepth"));
    $("#<%=D1PlannedTimeTextBox.ClientID %>").val(storage.getItem("plannedTime"));
    $("#<%=D1CourseDiveTextBox.ClientID %>").val(storage.getItem("courseDive"));
    $("#<%=D1LeftSurface.ClientID %>").val(storage.getItem("leftSurface"));
    $("#<%=D1ReachedBottom.ClientID %>").val(storage.getItem("reachedBottom"));
    $("#<%=D1leftBottom_Depth.ClientID %>").val(storage.getItem("leftBottom_Depth"));
    $("#<%=D1leftBottom_Time.ClientID %>").val(storage.getItem("leftBottom_Time"));
    $("#<%=D1bottomTime.ClientID %>").val(storage.getItem("bottomTime"));
    $("#<%=D1maxDepth.ClientID %>").val(storage.getItem("maxDepth"));
    $("#<%=D1ELD.ClientID %>").val(storage.getItem("ELD"));
    $("#<%=D1additionToBottomTime.ClientID %>").val(storage.getItem("additionToBottomTime"));
    $("#<%=D1tableUsed_Meter.ClientID %>").val(storage.getItem("tableUsed_Meter"));
    $("#<%=D1tableUsed_Minutes.ClientID %>").val(storage.getItem("tableUsed_Minutes"));
    $("#<%=D1ascensionToFirstStop.ClientID %>").val(storage.getItem("ascensionToFirstStop"));
    $("#<%=D1timeAtSafetyStop.ClientID %>").val(storage.getItem("timeAtSafetyStop"));
    $("#<%=D1totalDivingTime.ClientID %>").val(storage.getItem("totalDivingTime"));
    $("#<%=D1N2GroupAfterDive.ClientID %>").val(storage.getItem("N2GroupAfterDive"));
    $("#<%=D1isEverythingOKDropDownList.ClientID %>").val(storage.getItem("isEverythingOK"));
    $("#<%=D1arrived9m.ClientID %>").val(storage.getItem("arrived9m"));
    $("#<%=D1arrived6m.ClientID %>").val(storage.getItem("arrived6m"));
    $("#<%=D1arrived3m.ClientID %>").val(storage.getItem("arrived3m"));
    $("#<%=D1left9m.ClientID %>").val(storage.getItem("left9m"));
    $("#<%=D1left6m.ClientID %>").val(storage.getItem("left6m"));
    $("#<%=D1left3m.ClientID %>").val(storage.getItem("left3m"));
    $("#<%=D1reachedSurface.ClientID %>").val(storage.getItem("reachedSurface"));
    $("#<%=D1ascensionTime.ClientID %>").val(storage.getItem("ascensionTime"));

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