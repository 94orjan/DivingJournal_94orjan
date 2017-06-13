using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

using Divingjournal2.Models;

namespace Divingjournal2.DAL
{
    
    public class DivingJournalContext : DbContext
    {
       
        public DivingJournalContext () : base("DivingJournalContext")
            {
          
            }
        public DbSet<Journal> Journals { get; set; }
        public DbSet<Diver_Standard> Diver_Standards { get; set; }
        public DbSet<Diver_Compression> Diver_Compressions { get; set; }
        public DbSet<Journal_Pressurechamber> Journal_Pressurechambers { get; set; }

        //Cache
       
        public DbSet<Journal_Cache> Journal_Caches { get; set; }
        public DbSet<Diver_Standard_Cache> Diver_Standard_Caches { get; set; }
        public DbSet<Diver_Compression_Cache> Diver_Compression_Caches { get; set; }
        public DbSet<Journal_Pressurechamber_Cache> Journal_Pressurechamber_Caches { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();



        }

    }
}
