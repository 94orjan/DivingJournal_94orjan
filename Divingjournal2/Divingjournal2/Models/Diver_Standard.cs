using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiverLibrary;
using System.ComponentModel.DataAnnotations.Schema;

namespace Divingjournal2.Models
{

    public enum OF_Type { OF_Heavy, OF_Light, scuba };
    public enum Direct { direct, d_Stopp, OD_O2 }
    public enum AirType { air, nitrox }
    public enum Transport { divingBasket, divingBell, noTransport }

    public class Diver_Standard
    {
        //PK
        public int Id { get; set; }

        //FK
        public int JournalID { get; set; }


        public string diver_name { get; set; }
        public OF_Type of_type { get; set; }
        public Direct direct { get; set; }
        public AirType airType { get; set; }
        public string nitroxType { get; set; }
        public bool repeatedAir { get; set; }
        public string N2GroupBeforeDive { get; set; }
        public string breathingGear { get; set; }
        public string volume { get; set; }
        public string pressure { get; set; }
        public string plannedDepth { get; set; }
        public string plannedTime { get; set; }
        public string courseDive { get; set; }
        public string leftSurface { get; set; }
        public string reachedBottom { get; set; }
        public string leftBottom_Depth { get; set; }
        public string leftBottom_Time { get; set; }
        public string bottomTime { get; set; }
        public string maxDepth { get; set; }
        public string ELD { get; set; }
        public string additionToBottomTime { get; set; }
        public string tableUsed_Meter { get; set; }
        public string tableUsed_Minutes { get; set; }
        public string ascensionToFirstStop { get; set; }
        public string timeAtSafetyStop { get; set; }
        public bool isEverythingOK { get; set; }

        public string arrived9m { get; set; }
        public string left9m { get; set; }
        public string arrived6m { get; set; }
        public string left6m { get; set; }
        public string arrived3m { get; set; }
        public string left3m { get; set; }

        public string reachedSurface { get; set; }
        public string ascensionTime { get; set; }
        public string totalDivingTime { get; set; }
        public string N2GroupAfterDive { get; set; }
        public string tes { get; set; }



        //Links - to one
        public virtual Journal Journal { get; set; }


    }
}