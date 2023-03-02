BEGIN TRANSACTION;
CREATE TABLE "LoyaltyProgram" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EscrowPeriod" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgram" VALUES(1,'Primary loyalty program for NTO','','False','NTO Insider 2','Active');
INSERT INTO "LoyaltyProgram" VALUES(2,'','','False','Sample Program 2','Active');
CREATE TABLE "LoyaltyTierGroup" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"IsHiddenToMembers" VARCHAR(255), 
	"TierPeriodUnit" VARCHAR(255), 
	"TierPeriodQuantity" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"QpResetDate" VARCHAR(255), 
	"QpResetFrequency" VARCHAR(255), 
	"QpResetPeriod" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"TierModel" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierGroup" VALUES(1,'True','','None','False','Months','12','False','2023-03-30','2','Years','Tier One 1','Fixed','2');
INSERT INTO "LoyaltyTierGroup" VALUES(2,'True','Tier members based on annual spend','None','False','Years','1','True','2022-12-31','1','Years','Status Tier Group 1','Fixed','1');
COMMIT;
