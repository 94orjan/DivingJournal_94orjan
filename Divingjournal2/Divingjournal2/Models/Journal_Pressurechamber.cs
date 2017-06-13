using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public class Journal_Pressurechamber
    {
        //PK
        public int Id { get; set; }

        public string date { get; set; }
        public string location { get; set; }
        public string chamber { get; set; }
        public string purpose { get; set; }

        public string divingchief { get; set; }
        public string divingleader { get; set; }
        public string chamberoperator { get; set; }
        public string chamberassistent { get; set; }
        public string doctor { get; set; }

        public string diver_1 { get; set; }
        public string diver_2 { get; set; }
        public string diver_3 { get; set; }
        public string diver_4 { get; set; }
        public string diver_5 { get; set; }
        public string diver_6 { get; set; }
        public string diver_7 { get; set; }
        public string diver_8 { get; set; }

        public bool isChamberClear { get; set; }
        public bool isOxygenClear { get; set; }
        public bool treatment { get; set; }

        public string airsystem_main { get; set; }
        public string airsystem_secondary { get; set; }
        public string oxygenForChamber_inUse { get; set; }
        public string oxygenForChamber_readyForUse { get; set; }

        public string plannedTable_Depth { get; set; }
        public string plannedTable_Time { get; set; }

        public string leftSurface { get; set; }
        public string reachedBottom { get; set; }
        public string leftBottom_Time { get; set; }
        public string bottomTime { get; set; }
        public string maxDepth { get; set; }

        public string reachedSurface { get; set; }
        public string totalDivingTime { get; set; }

        public string N2GroupAfterDive { get; set; }
        public string isEverythingOK { get; set; }

        public string notes { get; set; }
        public string changelog { get; set; }
    }
}