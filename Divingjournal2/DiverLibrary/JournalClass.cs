using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiverLibrary
{
    public enum Subject { DYK600_Safety, DYK601_Facilities, DYK601_Plumbing, DYK601_Saving, RED110_Saving };
    public enum JournalType { direct, surfaceCompression, pressurechamber};

    public class Journal
    {


        int journalID;
        Subject subject;
        JournalType journalType;
        string courseNumber;
        string other;

        string date;
        string location;
        string divingSpot;

        string divingchief;
        string divingleader_teacher;
        string divingleader_student;

        string diver_1, diver_2, standby;

        string lineman_1, lineman_2, helpman, helpman_assisting, others;

        string airsystem_main, airsystem_secondary;
        string oxygenForChamber_inUse, oxygenForChamber_readyForUse;
        string emergencyGas_divingBell, emergencyGas_divingBasket;

        string notes;
        string changelog; //For changes made to the journal in the database. Not sure if this should be here

        public Journal(int _journalID)
        {
            journalID = _journalID;
        }


        public void test()
        {
            string s = other;
        }

        public int JournalID
        {
            get
            {
                return journalID;
            }

            set
            {
                journalID = value;
            }
        }

        public Subject Subject
        {
            get
            {
                return subject;
            }

            set
            {
                subject = value;
            }
        }

        public JournalType JournalType
        {
            get
            {
                return journalType;
            }

            set
            {
                journalType = value;
            }
        }

        public string CourseNumber
        {
            get
            {
                return courseNumber;
            }

            set
            {
                courseNumber = value;
            }
        }

        public string Other
        {
            get
            {
                return other;
            }

            set
            {
                other = value;
            }
        }

        public string Date
        {
            get
            {
                return date;
            }

            set
            {
                date = value;
            }
        }

        public string Location
        {
            get
            {
                return location;
            }

            set
            {
                location = value;
            }
        }

        public string DivingSpot
        {
            get
            {
                return divingSpot;
            }

            set
            {
                divingSpot = value;
            }
        }

        public string Divingchief
        {
            get
            {
                return divingchief;
            }

            set
            {
                divingchief = value;
            }
        }

        public string Divingleader_teacher
        {
            get
            {
                return divingleader_teacher;
            }

            set
            {
                divingleader_teacher = value;
            }
        }

        public string Divingleader_student
        {
            get
            {
                return divingleader_student;
            }

            set
            {
                divingleader_student = value;
            }
        }

        public string Diver_1
        {
            get
            {
                return diver_1;
            }

            set
            {
                diver_1 = value;
            }
        }

        public string Diver_2
        {
            get
            {
                return diver_2;
            }

            set
            {
                diver_2 = value;
            }
        }

        public string Standby
        {
            get
            {
                return standby;
            }

            set
            {
                standby = value;
            }
        }

        public string Lineman_1
        {
            get
            {
                return lineman_1;
            }

            set
            {
                lineman_1 = value;
            }
        }

        public string Lineman_2
        {
            get
            {
                return lineman_2;
            }

            set
            {
                lineman_2 = value;
            }
        }

        public string Helpman
        {
            get
            {
                return helpman;
            }

            set
            {
                helpman = value;
            }
        }

        public string Helpman_assisting
        {
            get
            {
                return helpman_assisting;
            }

            set
            {
                helpman_assisting = value;
            }
        }

        public string Others
        {
            get
            {
                return others;
            }

            set
            {
                others = value;
            }
        }

        public string Airsystem_main
        {
            get
            {
                return airsystem_main;
            }

            set
            {
                airsystem_main = value;
            }
        }

        public string Airsystem_secondary
        {
            get
            {
                return airsystem_secondary;
            }

            set
            {
                airsystem_secondary = value;
            }
        }

        public string OxygenForChamber_inUse
        {
            get
            {
                return oxygenForChamber_inUse;
            }

            set
            {
                oxygenForChamber_inUse = value;
            }
        }

        public string OxygenForChamber_readyForUse
        {
            get
            {
                return oxygenForChamber_readyForUse;
            }

            set
            {
                oxygenForChamber_readyForUse = value;
            }
        }

        public string EmergencyGas_divingBell
        {
            get
            {
                return emergencyGas_divingBell;
            }

            set
            {
                emergencyGas_divingBell = value;
            }
        }

        public string EmergencyGas_divingBasket
        {
            get
            {
                return emergencyGas_divingBasket;
            }

            set
            {
                emergencyGas_divingBasket = value;
            }
        }

        public string Notes
        {
            get
            {
                return notes;
            }

            set
            {
                notes = value;
            }
        }





    }
   
}