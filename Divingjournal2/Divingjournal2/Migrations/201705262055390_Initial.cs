namespace Divingjournal2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Diver_Compression_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Journal_CacheID = c.Int(nullable: false),
                        name = c.String(),
                        transport = c.Int(nullable: false),
                        of_type = c.Int(nullable: false),
                        direct = c.Int(nullable: false),
                        airType = c.Int(nullable: false),
                        nitroxType = c.String(),
                        repeatedAir = c.String(),
                        breathingGear = c.String(),
                        volume = c.String(),
                        pressure = c.String(),
                        plannedDepth = c.String(),
                        plannedTime = c.String(),
                        courseDive = c.String(),
                        leftSurface = c.String(),
                        reachedBottom = c.String(),
                        leftBottom_Depth = c.String(),
                        leftBottom_Time = c.String(),
                        bottomTime = c.String(),
                        maxDepth = c.String(),
                        ELD = c.String(),
                        additionToBottomTime = c.String(),
                        tableUsed_Meter = c.String(),
                        tableUsed_Minutes = c.String(),
                        ascensionToFirstStop = c.String(),
                        timeAtSafetyStop = c.String(),
                        isEverythingOK = c.String(),
                        left18m = c.String(),
                        left15m = c.String(),
                        left12m = c.String(),
                        time12_0m = c.String(),
                        reached15mInChamber = c.String(),
                        o2_1 = c.String(),
                        o2_2 = c.String(),
                        o2_3 = c.String(),
                        surfaceInterval = c.String(),
                        air_1 = c.String(),
                        air_2 = c.String(),
                        air_3 = c.String(),
                        left12mWithoutO2 = c.String(),
                        reachedSurface = c.String(),
                        timeInChamber = c.String(),
                        timeAtSea = c.String(),
                        totalDecompression = c.String(),
                        totalDivingTime = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_CacheID, cascadeDelete: true)
                .Index(t => t.Journal_CacheID);
            
            CreateTable(
                "dbo.Journal_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.Int(nullable: false),
                        subject = c.Int(nullable: false),
                        journalType = c.Int(nullable: false),
                        courseNumber = c.String(),
                        other = c.String(),
                        date = c.String(),
                        location = c.String(),
                        divingSpot = c.String(),
                        divingchief = c.String(),
                        divingleader_teacher = c.String(),
                        divingleader_student = c.String(),
                        diver_1 = c.String(),
                        diver_2 = c.String(),
                        standby = c.String(),
                        lineman_1 = c.String(),
                        lineman_2 = c.String(),
                        helpman = c.String(),
                        helpman_assisting = c.String(),
                        others = c.String(),
                        airsystem_main = c.String(),
                        airsystem_secondary = c.String(),
                        oxygenForChamber_inUse = c.String(),
                        oxygenForChamber_readyForUse = c.String(),
                        emergencyGas_divingBell = c.String(),
                        emergencyGas_divingBasket = c.String(),
                        notes = c.String(),
                        changelog = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.User", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Diver_Compression",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                        direct = c.Int(nullable: false),
                        airType = c.Int(nullable: false),
                        nitroxType = c.String(),
                        repeatedAir = c.Boolean(nullable: false),
                        N2GroupBeforeDive = c.String(),
                        breathingGear = c.String(),
                        volume = c.String(),
                        pressure = c.String(),
                        plannedDepth = c.String(),
                        plannedTime = c.String(),
                        courseDive = c.String(),
                        leftSurface = c.String(),
                        reachedBottom = c.String(),
                        leftBottom_Depth = c.String(),
                        leftBottom_Time = c.String(),
                        bottomTime = c.String(),
                        maxDepth = c.String(),
                        ELD = c.String(),
                        additionToBottomTime = c.String(),
                        tableUsed_Meter = c.String(),
                        tableUsed_Minutes = c.String(),
                        ascensionToFirstStop = c.String(),
                        timeAtSafetyStop = c.String(),
                        N2GroupAfterDive = c.String(),
                        isEverythingOK = c.Boolean(nullable: false),
                        left18m = c.String(),
                        left15m = c.String(),
                        left12m = c.String(),
                        time12_0m = c.String(),
                        reached15mInChamber = c.String(),
                        o2_1 = c.String(),
                        o2_2 = c.String(),
                        o2_3 = c.String(),
                        surfaceInterval = c.String(),
                        air_1 = c.String(),
                        air_2 = c.String(),
                        air_3 = c.String(),
                        left12mWithoutO2 = c.String(),
                        reachedSurface = c.String(),
                        timeInChamber = c.String(),
                        timeAtSea = c.String(),
                        totalDecompression = c.String(),
                        totalDivingTime = c.String(),
                        Journal_Cache_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_Cache_Id)
                .Index(t => t.JournalID)
                .Index(t => t.Journal_Cache_Id);
            
            CreateTable(
                "dbo.Journal",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        subject = c.Int(nullable: false),
                        journalType = c.Int(nullable: false),
                        transport = c.Int(nullable: false),
                        courseNumber = c.String(),
                        other = c.String(),
                        date = c.String(),
                        location = c.String(),
                        divingSpot = c.String(),
                        divingchief = c.String(),
                        divingleader_teacher = c.String(),
                        divingleader_student = c.String(),
                        diver_1 = c.String(),
                        diver_2 = c.String(),
                        standby = c.String(),
                        lineman_1 = c.String(),
                        lineman_2 = c.String(),
                        helpman = c.String(),
                        helpman_assisting = c.String(),
                        others = c.String(),
                        airsystem_main = c.String(),
                        airsystem_secondary = c.String(),
                        oxygenForChamber_inUse = c.String(),
                        oxygenForChamber_readyForUse = c.String(),
                        emergencyGas_divingBell = c.String(),
                        emergencyGas_divingBasket = c.String(),
                        notes = c.String(),
                        changelog = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Diver_Pressurechamber",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                        Journal_Cache_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_Cache_Id)
                .Index(t => t.JournalID)
                .Index(t => t.Journal_Cache_Id);
            
            CreateTable(
                "dbo.Diver_Standard",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                        direct = c.Int(nullable: false),
                        airType = c.Int(nullable: false),
                        nitroxType = c.String(),
                        repeatedAir = c.Boolean(nullable: false),
                        N2GroupBeforeDive = c.String(),
                        breathingGear = c.String(),
                        volume = c.String(),
                        pressure = c.String(),
                        plannedDepth = c.String(),
                        plannedTime = c.String(),
                        courseDive = c.String(),
                        leftSurface = c.String(),
                        reachedBottom = c.String(),
                        leftBottom_Depth = c.String(),
                        leftBottom_Time = c.String(),
                        bottomTime = c.String(),
                        maxDepth = c.String(),
                        ELD = c.String(),
                        additionToBottomTime = c.String(),
                        tableUsed_Meter = c.String(),
                        tableUsed_Minutes = c.String(),
                        ascensionToFirstStop = c.String(),
                        timeAtSafetyStop = c.String(),
                        isEverythingOK = c.Boolean(nullable: false),
                        arrived9m = c.String(),
                        left9m = c.String(),
                        arrived6m = c.String(),
                        left6m = c.String(),
                        arrived3m = c.String(),
                        left3m = c.String(),
                        reachedSurface = c.String(),
                        ascensionTime = c.String(),
                        totalDivingTime = c.String(),
                        N2GroupAfterDive = c.String(),
                        tes = c.String(),
                        Journal_Cache_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_Cache_Id)
                .Index(t => t.JournalID)
                .Index(t => t.Journal_Cache_Id);
            
            CreateTable(
                "dbo.User",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Diver_Pressurechamber_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Journal_CacheID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_CacheID, cascadeDelete: true)
                .Index(t => t.Journal_CacheID);
            
            CreateTable(
                "dbo.Diver_Standard_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Journal_CacheID = c.Int(nullable: false),
                        name = c.String(),
                        transport = c.Int(nullable: false),
                        of_type = c.Int(nullable: false),
                        direct = c.Int(nullable: false),
                        airType = c.Int(nullable: false),
                        nitroxType = c.String(),
                        repeatedAir = c.String(),
                        breathingGear = c.String(),
                        volume = c.String(),
                        pressure = c.String(),
                        plannedDepth = c.String(),
                        plannedTime = c.String(),
                        courseDive = c.String(),
                        leftSurface = c.String(),
                        reachedBottom = c.String(),
                        leftBottom_Depth = c.String(),
                        leftBottom_Time = c.String(),
                        bottomTime = c.String(),
                        maxDepth = c.String(),
                        ELD = c.String(),
                        additionToBottomTime = c.String(),
                        tableUsed_Meter = c.String(),
                        tableUsed_Minutes = c.String(),
                        ascensionToFirstStop = c.String(),
                        timeAtSafetyStop = c.String(),
                        isEverythingOK = c.String(),
                        arrived9m = c.String(),
                        left9m = c.String(),
                        arrived6m = c.String(),
                        left6m = c.String(),
                        arrived3m = c.String(),
                        left3m = c.String(),
                        reachedSurface = c.String(),
                        ascensionTime = c.String(),
                        totalDivingTime = c.String(),
                        N2GroupAfterDive = c.String(),
                        test = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_CacheID, cascadeDelete: true)
                .Index(t => t.Journal_CacheID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Diver_Standard_Cache", "Journal_CacheID", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Pressurechamber_Cache", "Journal_CacheID", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Compression_Cache", "Journal_CacheID", "dbo.Journal_Cache");
            DropForeignKey("dbo.Journal_Cache", "UserId", "dbo.User");
            DropForeignKey("dbo.Diver_Standard", "Journal_Cache_Id", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Pressurechamber", "Journal_Cache_Id", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Compression", "Journal_Cache_Id", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Standard", "JournalID", "dbo.Journal");
            DropForeignKey("dbo.Diver_Pressurechamber", "JournalID", "dbo.Journal");
            DropForeignKey("dbo.Diver_Compression", "JournalID", "dbo.Journal");
            DropIndex("dbo.Diver_Standard_Cache", new[] { "Journal_CacheID" });
            DropIndex("dbo.Diver_Pressurechamber_Cache", new[] { "Journal_CacheID" });
            DropIndex("dbo.Diver_Standard", new[] { "Journal_Cache_Id" });
            DropIndex("dbo.Diver_Standard", new[] { "JournalID" });
            DropIndex("dbo.Diver_Pressurechamber", new[] { "Journal_Cache_Id" });
            DropIndex("dbo.Diver_Pressurechamber", new[] { "JournalID" });
            DropIndex("dbo.Diver_Compression", new[] { "Journal_Cache_Id" });
            DropIndex("dbo.Diver_Compression", new[] { "JournalID" });
            DropIndex("dbo.Journal_Cache", new[] { "UserId" });
            DropIndex("dbo.Diver_Compression_Cache", new[] { "Journal_CacheID" });
            DropTable("dbo.Diver_Standard_Cache");
            DropTable("dbo.Diver_Pressurechamber_Cache");
            DropTable("dbo.User");
            DropTable("dbo.Diver_Standard");
            DropTable("dbo.Diver_Pressurechamber");
            DropTable("dbo.Journal");
            DropTable("dbo.Diver_Compression");
            DropTable("dbo.Journal_Cache");
            DropTable("dbo.Diver_Compression_Cache");
        }
    }
}
