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
INSERT INTO "LoyaltyProgram" VALUES(1,'Primary loyalty program for NTO','','True','NTO Insider','Active');
INSERT INTO "LoyaltyProgram" VALUES(2,'Extraction testing','','False','Test Loyalty Program','Active');
CREATE TABLE "LoyaltyProgramCurrency" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"CostperUnit" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"CurrencyType" VARCHAR(255), 
	"ExpiryPeriodFrequency" VARCHAR(255), 
	"ExpiryPeriodUnit" VARCHAR(255), 
	"ExpiryModel" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"HasEscrow" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramCurrency" VALUES(1,'True','0.05','Points','NonQualifying','2','Years','Fixed','None','False','True','1','');
INSERT INTO "LoyaltyProgramCurrency" VALUES(2,'True','','Tier Points','Qualifying','','','','','False','False','1','1');
INSERT INTO "LoyaltyProgramCurrency" VALUES(3,'True','0.01','test currency','NonQualifying','6','Months','Activity','','False','False','2','');
CREATE TABLE "LoyaltyTierGroup" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsHiddenToMembers" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"QpResetDate" VARCHAR(255), 
	"QpResetFrequency" VARCHAR(255), 
	"QpResetPeriod" VARCHAR(255), 
	"TierModel" VARCHAR(255), 
	"TierPeriodQuantity" VARCHAR(255), 
	"TierPeriodUnit" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierGroup" VALUES(1,'Tier members based on annual spend','None','True','False','True','Status Tier Group','2022-12-31','1','Years','Fixed','1','Years','1');
COMMIT;
