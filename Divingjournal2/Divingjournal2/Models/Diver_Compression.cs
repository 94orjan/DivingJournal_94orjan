using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiverLibrary;
using System.ComponentModel.DataAnnotations.Schema;

namespace Divingjournal2.Models
{


    public class Diver_Compression
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
        public string N2GroupAfterDive { get; set; }
        public bool isEverythingOK { get; set; }

        public string left18m { get; set; }
        public string left15m { get; set; }
        public string left12m { get; set; }
        public string time12_0m { get; set; }
        public string reached15mInChamber { get; set; }
        public string o2_1 { get; set; }
        public string o2_2 { get; set; }
        public string o2_3 { get; set; }
        public string surfaceInterval { get; set; }
        public string air_1 { get; set; }
        public string air_2 { get; set; }
        public string air_3 { get; set; }
        public string left12mWithoutO2 { get; set; }
        public string reachedSurface { get; set; }
        public string timeInChamber { get; set; }
        public string timeAtSea { get; set; }
        public string totalDecompression { get; set; }
        public string totalDivingTime { get; set; }



        //Links - to one
        public virtual Journal Journal { get; set; }
    }
}