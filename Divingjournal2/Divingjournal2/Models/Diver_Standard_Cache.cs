using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
   

    public class Diver_Standard_Cache
    {
        //PK
        public int Id { get; set; }

        //FK
        public int Journal_CacheID { get; set; }

        public string diver_name { get; set; }
        public Transport transport { get; set; }
        public OF_Type of_type { get; set; }
        public Direct direct { get; set; }
        public AirType airType { get; set; }
        public string nitroxType { get; set; }
        public string repeatedAir { get; set; }
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
        public string isEverythingOK { get; set; }

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


        //Links - to one
        public virtual Journal_Cache Journal_Cache { get; set; }
    }
}