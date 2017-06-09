using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Divingjournal2.Models
{
    public class Journal_Cache
    {
        //PK
        public int Id { get; set; }

        public string journal_name { get; set; }
        public string username { get; set; }
        public Subject subject { get; set; }
        public JournalType journalType { get; set; }
        public Transport transport { get; set; }
        public string courseNumber { get; set; }
        public string other { get; set; }
        public string date { get; set; }
        public string location { get; set; }
        public string divingSpot { get; set; }
        public string divingchief { get; set; }
        public string divingleader_teacher { get; set; }
        public string divingleader_student { get; set; }
        public string diver_1 { get; set; }
        public string diver_2 { get; set; }
        public string standby { get; set; }
        public string lineman_1 { get; set; }
        public string lineman_2 { get; set; }
        public string helpman { get; set; }
        public string helpman_assisting { get; set; }
        public string others { get; set; }
        public string airsystem_main { get; set; }
        public string airsystem_secondary { get; set; }
        public string oxygenForChamber_inUse { get; set; }
        public string oxygenForChamber_readyForUse { get; set; }
        public string emergencyGas_divingBell { get; set; }
        public string emergencyGas_divingBasket { get; set; }
        public string notes { get; set; }
        public string changelog { get; set; }


        //Links - to many
        public virtual ICollection<Diver_Standard> Diver_Standard_Caches { get; set; }
        public virtual ICollection<Diver_Compression> Diver_Compression_Caches { get; set; }
        public virtual ICollection<Diver_Pressurechamber> Diver_Pressurechambers_Caches { get; set; }
    }
}