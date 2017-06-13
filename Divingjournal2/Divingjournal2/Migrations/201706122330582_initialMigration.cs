namespace Divingjournal2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initialMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Diver_Compression_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Journal_CacheID = c.Int(nullable: false),
                        diver_name = c.String(),
                        of_type = c.String(),
                        direct = c.String(),
                        airType = c.String(),
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
                        surfaceInterval = c.String(),
                        left15mInChamber = c.String(),
                        reached12mInChamber = c.String(),
                        o2_1 = c.String(),
                        o2_2 = c.String(),
                        o2_3 = c.String(),
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
                        journal_name = c.String(),
                        username = c.String(),
                        journalType = c.Int(nullable: false),
                        subject = c.String(),
                        transport = c.String(),
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
                        diver_3 = c.String(),
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
                "dbo.Diver_Compression",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        diver_name = c.String(),
                        of_type = c.String(),
                        direct = c.String(),
                        airType = c.String(),
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
                        isEverythingOK = c.String(),
                        left18m = c.String(),
                        left15m = c.String(),
                        left12m = c.String(),
                        time12_0m = c.String(),
                        reached15mInChamber = c.String(),
                        surfaceInterval = c.String(),
                        left15mInChamber = c.String(),
                        reached12mInChamber = c.String(),
                        o2_1 = c.String(),
                        o2_2 = c.String(),
                        o2_3 = c.String(),
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
                        username = c.String(),
                        journalType = c.Int(nullable: false),
                        subject = c.String(),
                        transport = c.String(),
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
                        diver_3 = c.String(),
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
                "dbo.Diver_Standard",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        diver_name = c.String(),
                        of_type = c.String(),
                        direct = c.String(),
                        airType = c.String(),
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
                        Journal_Cache_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_Cache_Id)
                .Index(t => t.JournalID)
                .Index(t => t.Journal_Cache_Id);
            
            CreateTable(
                "dbo.Diver_Standard_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Journal_CacheID = c.Int(nullable: false),
                        diver_name = c.String(),
                        of_type = c.String(),
                        direct = c.String(),
                        airType = c.String(),
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
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal_Cache", t => t.Journal_CacheID, cascadeDelete: true)
                .Index(t => t.Journal_CacheID);
            
            CreateTable(
                "dbo.Journal_Pressurechamber_Cache",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        date = c.String(),
                        location = c.String(),
                        chamber = c.String(),
                        purpose = c.String(),
                        divingchief = c.String(),
                        divingleader = c.String(),
                        chamberoperator = c.String(),
                        chamberassistent = c.String(),
                        doctor = c.String(),
                        diver_1 = c.String(),
                        diver_2 = c.String(),
                        diver_3 = c.String(),
                        diver_4 = c.String(),
                        diver_5 = c.String(),
                        diver_6 = c.String(),
                        diver_7 = c.String(),
                        diver_8 = c.String(),
                        isChamberClear = c.Boolean(nullable: false),
                        isOxygenClear = c.Boolean(nullable: false),
                        treatment = c.Boolean(nullable: false),
                        airsystem_main = c.String(),
                        airsystem_secondary = c.String(),
                        oxygenForChamber_inUse = c.String(),
                        oxygenForChamber_readyForUse = c.String(),
                        plannedTable_Depth = c.String(),
                        plannedTable_Time = c.String(),
                        leftSurface = c.String(),
                        reachedBottom = c.String(),
                        leftBottom_Time = c.String(),
                        bottomTime = c.String(),
                        maxDepth = c.String(),
                        reachedSurface = c.String(),
                        totalDivingTime = c.String(),
                        N2GroupAfterDive = c.String(),
                        isEverythingOK = c.String(),
                        notes = c.String(),
                        changelog = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Journal_Pressurechamber",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        date = c.String(),
                        location = c.String(),
                        chamber = c.String(),
                        purpose = c.String(),
                        divingchief = c.String(),
                        divingleader = c.String(),
                        chamberoperator = c.String(),
                        chamberassistent = c.String(),
                        doctor = c.String(),
                        diver_1 = c.String(),
                        diver_2 = c.String(),
                        diver_3 = c.String(),
                        diver_4 = c.String(),
                        diver_5 = c.String(),
                        diver_6 = c.String(),
                        diver_7 = c.String(),
                        diver_8 = c.String(),
                        isChamberClear = c.Boolean(nullable: false),
                        isOxygenClear = c.Boolean(nullable: false),
                        treatment = c.Boolean(nullable: false),
                        airsystem_main = c.String(),
                        airsystem_secondary = c.String(),
                        oxygenForChamber_inUse = c.String(),
                        oxygenForChamber_readyForUse = c.String(),
                        plannedTable_Depth = c.String(),
                        plannedTable_Time = c.String(),
                        leftSurface = c.String(),
                        reachedBottom = c.String(),
                        leftBottom_Time = c.String(),
                        bottomTime = c.String(),
                        maxDepth = c.String(),
                        reachedSurface = c.String(),
                        totalDivingTime = c.String(),
                        N2GroupAfterDive = c.String(),
                        isEverythingOK = c.String(),
                        notes = c.String(),
                        changelog = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Diver_Standard_Cache", "Journal_CacheID", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Compression_Cache", "Journal_CacheID", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Standard", "Journal_Cache_Id", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Compression", "Journal_Cache_Id", "dbo.Journal_Cache");
            DropForeignKey("dbo.Diver_Standard", "JournalID", "dbo.Journal");
            DropForeignKey("dbo.Diver_Compression", "JournalID", "dbo.Journal");
            DropIndex("dbo.Diver_Standard_Cache", new[] { "Journal_CacheID" });
            DropIndex("dbo.Diver_Standard", new[] { "Journal_Cache_Id" });
            DropIndex("dbo.Diver_Standard", new[] { "JournalID" });
            DropIndex("dbo.Diver_Compression", new[] { "Journal_Cache_Id" });
            DropIndex("dbo.Diver_Compression", new[] { "JournalID" });
            DropIndex("dbo.Diver_Compression_Cache", new[] { "Journal_CacheID" });
            DropTable("dbo.Journal_Pressurechamber");
            DropTable("dbo.Journal_Pressurechamber_Cache");
            DropTable("dbo.Diver_Standard_Cache");
            DropTable("dbo.Diver_Standard");
            DropTable("dbo.Journal");
            DropTable("dbo.Diver_Compression");
            DropTable("dbo.Journal_Cache");
            DropTable("dbo.Diver_Compression_Cache");
        }
    }
}
