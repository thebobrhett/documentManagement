# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 Richmond
# Database:             docmgt
# Server version:       5.0.51a-community-log
# Server OS:            redhat-linux-gnu
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'docmgt'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "docmgt" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "docmgt";


#
# Table structure for table 'vendors'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "vendors" (
  "vendor_id" int(10) NOT NULL,
  "name" varchar(50) default NULL,
  PRIMARY KEY  ("vendor_id"),
  UNIQUE KEY "id" ("vendor_id"),
  KEY "id_2" ("vendor_id")
) AUTO_INCREMENT=1039 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'vendors'
#

LOCK TABLES "vendors" WRITE;
/*!40000 ALTER TABLE "vendors" DISABLE KEYS;*/
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2131,'3E Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2729,'3R of Charleston, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2304,'A & E Engineering, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(44,'A C Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(287,'A-1 Locksmith');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(392,'AAA Cooper Transportation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1842,'ABB, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1507,'ABN AMRO Bank NV');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(395,'ABS Consulting Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(397,'AC Controls Co. Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(401,'ADP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(403,'AEA Technology Engineering Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2857,'AKSA - BB&T Charges');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2856,'AKSA - FSA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2855,'AKSA - HSA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1647,'AKSA Bushy Park');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2164,'AL BILTON FORD-MERCURY, INC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(501,'APV Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(612,'AT&T Mobility');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(517,'ATG-CSAV & Libra Lines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(393,'Abernathy Thomas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(394,'Able Electrical Construction');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(396,'Absolutely Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(398,'Access Portable Toilets, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(399,'Accratec Engineering, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3230,'Accusort (Credit card ONLY)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(400,'Ace USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2293,'Action Locksmith Service');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2129,'Advanced Computing Solutions, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1926,'Advanced Handling Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2035,'Advanced Technology Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(402,'Advantec Global Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(553,'Aero Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(404,'Aero Service Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(405,'Aetna Life Insurance Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(406,'Air Centers of South Carolina, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(407,'Air Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(408,'Airgas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1079,'Airgas National Welders');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(409,'Airstar');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(410,'Akzo Nobel Functional Chemicals LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(411,'Albahealth');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(473,'Alexim Trading (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(474,'Alfa Laval c/o Custom Equipment Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(476,'Alfa Lavall');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3316,'Alianca Lines, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(478,'All Coast Intermodal Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(479,'All Hands Fire Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(480,'Allen and Webb Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(481,'Allied Electronics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(482,'Allied Steel Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(484,'Alston & Bird LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(485,'Altex Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(486,'Altyn Sales Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2349,'American Cancer Society');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1984,'American Express Bank Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(488,'American Fiber Association');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(489,'American Lewa, INC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2406,'American Pensions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(490,'American Petroleum Institute');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(491,'American Pipe, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1815,'American President Lines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(493,'American Steamship');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1901,'American United Life Insurance Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2388,'American Wiping Rags');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2134,'Andover Coated Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(495,'Ann Voit Language School');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(496,'Aon Risk Services Inc of Georgia');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(497,'Apartment & Corporate Relocation Service');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(499,'Applebee-Church, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1680,'Applied Engineering, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(500,'Applied Industrial Tech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1834,'Aquilex HydroChem, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(504,'Aramark Uniform Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(505,'Arbil Safety');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(506,'Arizona Instrument LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2342,'Asahi Chemical Hong Kong');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1429,'Asahi Kasei America, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3163,'Asahi Kasei Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(508,'Asahi Kasei Engineering Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(509,'Asahi Kasei Fibers Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(416,'Asahi Kasei Spandex Europe GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(391,'Asahi Kasei Trading Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(511,'Ashland Specialty Chemical Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(518,'Atlan-Tec Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(519,'Atlantic Coast Steel');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1551,'Atlantic Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2846,'Atlantic Packaging Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2043,'Atlantic Process Controls, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3177,'Automatic Controls Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3184,'Automation Integration Services LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2001,'Averitt Express Inc.  (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1967,'B & D Boilers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(523,'B & D Marine & Industrial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(525,'B.W. Clark');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(425,'BASF Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(536,'BAX Global');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2100,'BB&T of South Carolina');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2341,'BFA S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1795,'BPIC 25 Year Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(565,'BSI Management Systems America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(526,'Babst, Caland, Clements and Zomnir');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2326,'Bank of Tokyo-Mitsubishi UFJ, Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(531,'Barker Air & Hydraulics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(532,'Barloworld Handling Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1552,'Barnett-Hornberg Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2467,'Bartlett Controls, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(535,'Batteries Plus - 231');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(538,'Bayer Corp & Business Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2217,'Bayer Heritage FCU');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(415,'Bayer Material Science');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(540,'Bayer SA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(541,'Bayer Thai Co., Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(543,'Bearing Distributors, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1733,'Belcan Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3283,'Berger Transfer & Storage');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2837,'Berkeley/Dorchester V R Center');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(550,'Berlitz (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(551,'Bertelkamp Automation, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(43,'Bestway');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(552,'Billings Freight Systems (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(554,'Bircher America Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(555,'Blaze Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(556,'Blue Cross Blue Shield of SC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1852,'BlueChoice HealthPlan');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3235,'Boasso America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(558,'Boot Jack');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(412,'Brenntag');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(559,'Bridge Terminal Transport (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(562,'Brinkmann Instruments Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1598,'Brodie Meter c/o Robert S. Hudgins Comapny');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(563,'Brookfield Engineering Lab, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(564,'Brooks Instrumentation Division (see Robert S. Hud');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2233,'Bryan, Truesdale, Adkins & Williams, PA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(567,'Busak and Shamban');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(568,'C M Marketing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(569,'C.H. Robinson Worldwide (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2160,'CAMH Star Forwarding Agency, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(592,'CCNI (Norton Lilly Int''l)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(593,'CDI Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1709,'CEM');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2040,'CIMTEC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1917,'CMMC Machine');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1846,'COBRAsource, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(648,'CPI Graphics, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1774,'CRX laboratories L.L.C');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1694,'CSAV');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(654,'CSC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(655,'CSI Automation & Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1847,'CT Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3001,'CWFC Farris');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1575,'Cabot Cove Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2790,'Calgon Carbon Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(572,'Cannon Instrument Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1553,'Caraustar');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(574,'Cardinal Container Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1768,'Carlton-Bates Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(577,'Carolina Chemical Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(578,'Carolina Chillers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(579,'Carolina Controls Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2848,'Carolina Elevator Service Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(580,'Carolina Filters, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(581,'Carolina Fluid Components');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(790,'Carolina Fluidair');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2184,'Carolina Industry Technical Services Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(582,'Carolina Mobile Storage Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(583,'Carolina Office System');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(586,'Carolina RX Labs LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2810,'Carolina Waste Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2121,'Carolyn M. Umphlett');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(588,'Caroplast');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(589,'Carotek, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(591,'Carrington Engineering');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1925,'Central Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(645,'Century 21 Properties Plus, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1898,'Century Fasteners');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(595,'CeramTec N.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(594,'Ceramco Printech');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1703,'Champion Trading Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2471,'Chandler''s Reed Hooks');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2029,'Charleston Metro Chamber of Commerce');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(600,'Charleston Rubber and Gasket');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(601,'Charleston Sign & Banner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(602,'Charleston Women in International Trade');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2096,'Charlestowne Engineering LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(604,'Cheetah Transportation Inc LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(605,'Chem-Dry');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2365,'ChemPoint');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1915,'Chemcentral');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(606,'Chemineer Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(597,'Chemineer Inc. c/o Chapman Associates, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2350,'Chemson');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(422,'Chemtura');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3234,'Chromalox (PO''s must be issued/e-mailed to Applebe');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(608,'Chromalox - South Carolina');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(610,'Chubb Group of Insurance Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(613,'Cintas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2148,'CintasCorporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(616,'Circle Environmental (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2462,'Circle Int. Inc. DBA EGL Global Brokerage');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(618,'Cirrus Tech');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2738,'City Electric Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(624,'Clean Earth Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(625,'Clean Harbors Environmental Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(627,'Clear Mountain Spring Water');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(631,'Coastal Hydraulics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(634,'Columbia Fluid System (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2340,'Columbiana De Comercio S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(635,'Combotronics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1740,'Comfort Suites');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(641,'Computer Plus');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1490,'Continental Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1874,'Continuum Trasportation Services, LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(642,'Control Corporation of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(644,'Conway Transportation Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3207,'Cooper River Partners, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2640,'Core One Properties, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(647,'Corporate Express');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2113,'Cramer Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(649,'Cranston Trucking Company (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(652,'Cross Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(657,'Cuno Filtration Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1787,'Curd Enterprises');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(659,'Customs + Exports Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1780,'Cyclops Industries Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(414,'Cytec Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(662,'D & B');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(663,'D and S International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3329,'DBR Associates, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2102,'DHEC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3049,'DHL - (USA Chicago)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(687,'DHL Danzas Air & Ocean');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(691,'DHL Express');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2460,'DHL Express (USA - Atlanta)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3007,'DHL Express (USA - California), Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2391,'DHL Express (USA), Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2482,'DHL Express (USA-Boston)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1692,'DINOX Handels-GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2258,'DP Warnecki Enterprise, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(665,'Danner MOC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(669,'Datacolor');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(673,'Davis Vision');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(674,'Davison Publishing Co, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(675,'Day & Zimmerman International, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(677,'Dayton Freight Lines, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2268,'DeSales Trading Company, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2128,'Delaware Division of Revenue');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(680,'Dell Computer Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(681,'Dell Financial (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(682,'Dell Financial Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(683,'Dell Marketing L.P.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2107,'Dell Service Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(684,'Deloitte Tax LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1686,'Delta Dental of Missouri');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(685,'Department of Revenue Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(686,'Deringer');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2031,'Diamond Springs Water');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(694,'Dienes Apparatus, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(697,'Dillon Supply Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(699,'Diners Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2414,'Docugraphics, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(700,'Dodson Brothers Exterminating');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(424,'Dow Corning Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2398,'Doyle & Roth Manufacturing Co. Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3232,'DuPont');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1813,'Duncan - Parnell');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(707,'Dunn & Bradd Street (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(708,'Duratech Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(709,'Dynisco Instruments');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(710,'E.M.E.S.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(713,'E=MC4I,Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(714,'ECK Supply Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(743,'ERD Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1945,'Eagle Systems Trucking Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2445,'Eastern Electric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3270,'Easy Way Insulation Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1923,'Eaton Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3022,'Echo Industry Limited');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(716,'Eclectic Chef');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(718,'Econocaribe Consolidators (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(720,'Edwards Wood Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(721,'Edwards Wood Products - Scotland');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(723,'Ekato Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2272,'Electrical Reliability Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(728,'Embassy Suites Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(982,'Emerson Network Power, Liebert Services Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(730,'Emerson Process Management');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(731,'Emil Broell GmbH & Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(732,'Emory Wilson');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2742,'Emory Wilson Process, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1646,'Emotron');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2786,'Employ+ Ability, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(734,'Endress & Hauser, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(735,'Enecon Southeast');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2710,'Engineered Lifting Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(736,'Englewood Company, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(737,'Enka Technica, GMBH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(738,'Enterprise Technologies, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1893,'Enterprise Transportation Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(739,'Entivity');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2151,'Environmental Engineering Sciences, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(740,'Environmental Resource Center (remi');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(741,'Equipment & Controls Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2364,'Errol Thomas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(745,'Estanit GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(746,'Estes Express Lines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(748,'Evergreen America Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1885,'Everlight USA, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(749,'Excel Apparatus Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2277,'Excel, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(751,'Exel Global (Logistics)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(753,'Exel Global Logistics (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2175,'Express Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1784,'FCX Performance');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(778,'FKI Logistex (Alvey)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(777,'FKI Logistix (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(781,'FLIR Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(797,'FS Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3079,'FSL');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2930,'Fastenal');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(756,'Faulkner/Haynes Associates, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(762,'FedEx Custom Critical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2701,'FedEx Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(757,'Federal Express (Pri - 10:30)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(758,'Federal Express (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(759,'Federal Express 2nd day');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(760,'Federal Express Saver (Pkg)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(764,'Feirwerkbau A. Hammer');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(766,'Fennell Container Company, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(767,'Festo Corp C/O Bertelkamp Automatio');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(776,'Fi-Tech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(769,'Fike c/o Met-Tric Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(770,'Filtration Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(772,'Fisher Controls International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(773,'Fisher Scientific');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(780,'Flex-Kleen Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1789,'Flexible Corporate Plans, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(783,'Flotech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(784,'Flowserve US (Duriron)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(787,'Fluid Flow Products, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(788,'Fluid Power of the Carolinas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(791,'Fluidair (of Chas) (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(792,'Food Service, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2186,'Ford Motor Credit Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2133,'Forschungsinstitut Hohenstein');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1714,'Fragomen, Del Rey, bernsen & Loewy, LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2179,'Franchise Tax Board');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1804,'Frischkorn Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(798,'Fuji America, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1586,'Fuji Filter Manufacturing Co. LTD.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3178,'Furniture Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(801,'G.Frey GMBH & Company KG');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(809,'GE Corporate Card Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(417,'GE Silicones');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1173,'GEA Renzmann & Grunewald GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(812,'GEL Engineering, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(833,'GXS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(803,'Gai-Tronics Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(804,'Galbraith Laboratories');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3075,'Gantrade Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(807,'Gaston Fabrication');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2221,'Gemworth Financial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2920,'General Laboratory Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2696,'Genworth Financial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(813,'George E.Missbach & Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(817,'Global Exchange Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2332,'Global Fil');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3183,'Godshall and Godshall');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(819,'Gold Toe Brands Attn: Chappel Whitt');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(820,'Good Earth');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(821,'Goodfellow Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(822,'Goodman Factors');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2032,'Goodway');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(421,'Goulston Technologies');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2200,'Graphic Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2270,'Gray Contracting LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2821,'Greg Hearn');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(825,'Gregory Poole Equipment Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(826,'Groth Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2480,'Groth Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(829,'Groz-Beckert Canada');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(830,'Groz-Beckert USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(831,'Grr! Giant Resource Recovery Co, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(834,'H P small-medium business machines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(835,'H.C. Warner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(836,'H.C. Warner (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3303,'HANGZHOU CORENSO HUALUN PAPER CORE CO.,LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1573,'HSA Bank');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(837,'Hagemeyer North America Electrical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(839,'Hahn-Mason Air Systems, inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(841,'Hamburg Sud');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3281,'Hangzhou Asahikasei Spandex Co., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(843,'Hanjin Shipping');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1855,'Hank Kearse, M.D.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2111,'Hankyu Int''l Transport (USA) Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(845,'Hapag Lloyd America (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(847,'Haskell International, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(849,'Haver & Boecker');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(850,'Haynsworth Sinkler Boyd, P.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3138,'Heat Transfer Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(851,'Heavenly Ham');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1879,'Hellmann Worldwide Logistics, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2132,'Henderson Machinery');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2211,'Heritage Transformer Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(856,'Heute + Comp GmbH + Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(857,'Hewlett Packard Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(859,'Hewlett-Packard (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(860,'Hobgood Electric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(862,'Hohenstein Institute America, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(863,'Holox/Linde Gas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1712,'Home Telephone co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(865,'HomeWood Suites');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(866,'Honor Equipment Company LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2321,'Hookset Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2383,'Horai Co., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1942,'I & M Industrials');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(871,'IBM Direct');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2259,'IDEA LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3244,'INDA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2282,'IPS Packaging');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2310,'ITOCHU CHEMICAL FRONTIER Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2835,'ITOCHU Chemicals America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2804,'ITW Shippers Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2632,'Idea Global');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2921,'IndSpec Systems Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2692,'Industrial Concepts, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(877,'Industrial Container Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2086,'Industrial Electronics Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(880,'Inform, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(430,'Innovative Packaging, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(882,'Inspect Tech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(883,'Instrument & Valve Services Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(884,'Instrument & Valve Services Co (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2339,'Insumtex LTDA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3241,'Integrated Power Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1503,'Interflow (T.C.S.) Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(886,'Intergraph Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(888,'Intermodal Bridge Transport (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2158,'Internal Revenue Service');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(890,'International Crystal Labs');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(891,'International Data Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1788,'International Machinery Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(426,'International Paper');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2464,'Intertek Group plc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1887,'Intex DIY, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(896,'Invensys Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(899,'Ishihara Electric Heater MFG');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(901,'J & J Mid-South');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3290,'J C Pallet');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(903,'J.E.  Teske CHB');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(904,'J.E. Merit Constructors (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(905,'J.E. Merit Constructors, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(906,'J.K.Brooks & Associates, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(910,'JB Systems (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2815,'JBB Enterprises,Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(915,'JMS Southeast Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2198,'JUMO');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(927,'JW Rew');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2202,'Jacobs');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1609,'Jamco International Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2110,'Jarrard, Nowell & Russell, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(908,'Jauregui, Navarrete, Nader Y Rojas,');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3095,'Jerry Reeves');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(912,'Jerry Stafford Public Relations');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(919,'Johnson Controls (parts only)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(920,'Johnson Controls (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(921,'Johnson Controls (service only)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1540,'Jones Management LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(941,'K-Line America Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(932,'KDP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(933,'KDP  remit (was Intex-Legg & Platt)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(934,'KEP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(935,'KEP (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(928,'Kano Laboratories');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2386,'Kansai USA Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(930,'Kasen International Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(931,'Kawajyu Shoji Co. Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2403,'Kellett Enterprises');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1992,'Ken Clary & Co., LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2429,'Keyence');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3305,'Kiln Direct, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2137,'Kimberly-Clark Administrative Center (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(938,'King Media Associate');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2337,'Kinob Traders S.A. de C.V.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(939,'Kinsmen Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(940,'Kinsmen Corp (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2078,'Klaus Union, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(942,'Kluber Lubrication');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(943,'Kluber Lubrication (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1785,'Koch-Glitsch LP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(944,'Kolene Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(946,'Kone, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(947,'Kone, Inc (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2376,'Kuehne & Nagel, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(418,'Kyowa Chemicals');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1744,'Kyuasa Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(950,'L & R Manufacturing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(951,'L.R.Gorrell');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2014,'LIST USA Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(989,'LLR Engineers & Surveyor Board');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(994,'LXE (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(952,'Lab Safety Supply, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(953,'Lab Safety Supply, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2214,'LabelMaster');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2333,'Lacotex');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(956,'Landmark Construction');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(957,'Landstar Ranger / Express (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(958,'Lanxess (PTY) LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(959,'Lanxess (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(960,'Lanxess Brazil SA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(413,'Lanxess Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(962,'Lanxess Deutschland GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(963,'Lanxess Distribution (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(964,'Lanxess Distribution GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(965,'Lanxess India Private Limited');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(961,'Lanxess de Mexico S.A. de C.V.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2395,'Laredo Becnel Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(967,'Laser Perfect Imaging Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(969,'Lawson-Hemphill');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(970,'Lawson-Hemphill (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(971,'Leggemann Machinery');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(972,'Leistritz Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(973,'Lemco Mills');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(974,'Leschaco, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(975,'Leschaco, Inc (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(976,'Leslie C. Turner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1197,'Lewis-Goetz & Co., Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3087,'LexisNexis');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(977,'Lexisnexis Peoplewise');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(978,'Liberty Fire Protection, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(979,'Liberty Fire Protection, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(980,'Lidorr Chemical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(981,'Liebert Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2336,'Lima Bremen E.I.R.L.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(983,'Limehouse & Sons');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(984,'Linden Bulk');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(985,'Liquid Dynamics, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(986,'Liquid Dynamics, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2265,'Livingston & Haven');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(990,'Lockwood Greene');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(991,'Lockwood Greene (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1980,'Louisiana Chemical Equipment Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1858,'Low Country Medical Claims and Billing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1856,'Low Country Urology Clinics, P.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(992,'Lowcountry Regional EMS Council, In');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(995,'Lykes Lines LTD LLC (Remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(996,'M & P Machinery (formerly Leggemann');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2335,'M.W. Mercosul Represetacoes Commerciais LTDA.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1595,'MC Schroeder Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2139,'MCS Environmental Labratory');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3214,'MG Trust');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1047,'MHNet');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3272,'MS Sales Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1069,'MSC Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2065,'MSDS Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1071,'MTM Recognition (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1077,'MUSC Executive Health Program');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(997,'Maag Pump Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(999,'Machinist, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1002,'Maersk-Sealand (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1003,'Magnatex');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(789,'Magnatex Pumps c/o Fluid Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1004,'Magnetrol Intl');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1005,'Magnetrol Intl (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1006,'Magnum Freight (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1007,'Majemac Enterprises, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1008,'Malden Mills Creditor Trust');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1009,'Malvern Instruments, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1010,'Malvern Instruments, Inc. (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2116,'Management Dynamics Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1011,'Management Dynamics, inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2436,'Management Recruiters of East Hempfield');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1708,'Manufacturas Voila SA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2103,'Maplewood Mobile Home Resellers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1013,'Marc Workshop , Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1014,'Marian de Ruyter');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2400,'Marketing Technology Service, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2358,'Marlena Fass');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1016,'Marsh USA Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1017,'Martor USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1019,'Massey Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1020,'Master Sheet Metal, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1021,'Matcon USA, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(423,'Matsumoto Yushi-Seyaku Co., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1022,'Maverick Technologies (formerly GEA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1000,'Mayer Electric Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1023,'Mayer Textile Machine Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1025,'McJunkin Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1027,'McMaster Carr Supply Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1029,'McNair Law Firm');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1031,'McNaughton-McKay Electric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1032,'McNichols Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1033,'McNichols Co. (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1034,'Measured Solutions, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1747,'Mec-Tric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2069,'Mediterranean Shipping Co. (USA)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1036,'Mediterranean Shipping MSC S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1037,'Meisei & Company, Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2412,'Meisei Chemical works, Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1038,'Mellon Bank');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1039,'Menardi LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1040,'Menardi LLC (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1041,'Mennes GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1042,'Meridian Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1044,'Metro Electric, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1045,'Mettler Toledo');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1046,'Mettler-Toledo (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2240,'Meyers Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1052,'Micro Motion Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1053,'Micro Motion Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1054,'Microgenics Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1055,'Midac Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1056,'Mighty Lube');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2185,'Mike Finley');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2021,'Mill-Rose Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1723,'Mineral & Pigment Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1057,'Minuteman Press');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1058,'Misc. Package Carrier');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2017,'Mitsui Bussan Textile Co., LTD (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1059,'Mitternight (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2839,'Mizuho Corporate Bank Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1060,'Mobile Communications of Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1062,'Mohn Media Kalender');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1545,'Momentive Performance Mtls.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1063,'Monarch');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1907,'Moore Industries-Int., Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1065,'Moroil');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2699,'Mosaic Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1067,'Motion Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1070,'Mt Zion AME Church (Education fund)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2316,'Mueller Steam Specialty');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1072,'Multi-Coatings Co, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1073,'Multiplastics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1074,'Munters Corporation - ME Division');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1075,'Murata');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2311,'Murata Machinery Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3257,'NCBFAA Educational Institute Director');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2775,'NCO Financial Systems, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1081,'NCO Financial-Commercial Div');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1082,'NCS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1837,'NICCA USA Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2058,'NISHIYAMA CORPORATION OF AMERICA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2854,'NSCSA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2338,'NYARA Projects');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1078,'National Textile Association');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1084,'Netsuite');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1086,'Netzsch Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1088,'Neuville Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1089,'New Century Transport (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1090,'New Pig');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1091,'Nexsen-Pruet');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2275,'Nippon Express USA, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1092,'Noble Distribution / RFT (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1093,'Nordson Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1095,'North Charleston Fluid System Tech');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1097,'Northern Safeco Inc. (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1096,'Northern Safety');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1191,'Northern Safety Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1098,'Norton Lilly');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2230,'OCS Checkweighers, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1820,'OOCL');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1100,'Office Depot Corporate Support Cent');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3324,'Ohno E Oshikiri Advogados');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1101,'Old Dominion Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1102,'Olsten');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1599,'Olympus Industrial America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1103,'Omega Engineering, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1105,'Omegasonics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1106,'One Stop Seafood Shop');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1107,'OneSource LLC (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2688,'Onen & Kalac Law Office');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1108,'Overhead Door Co of Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1109,'Overnite Transportation (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1110,'P & O Nedlloyd (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1111,'P.A.C.E. (Marley)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1112,'PA Dept of Revenue');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3280,'PAF Sales, L.L.C');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1119,'PAM Trading Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1120,'PAM Trading Corp (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3262,'PAM Trading Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1137,'PGC, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2455,'PROTERM, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1160,'PRP International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1161,'PST Charleston, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1164,'PVM GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1113,'Pacific Data Marketing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1114,'Pacific Express');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1115,'Pacific Toxicology Laboratories');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2826,'Packaging Corporation of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1116,'Palmetto Consulting Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1117,'Palmetto Equipment & Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2393,'Palmetto Outfitters');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1118,'Palmetto Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3161,'Palmetto State Property Mgt.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2173,'Palmetto State Transportation Co. Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1121,'Panalpina - Chas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1122,'Panametrics Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1123,'Panametrics Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1124,'Panther II Transportation (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2415,'Parameter Generation & Control, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1125,'Parker Instrument Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1127,'Patriots Plaza');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1128,'Patt Fitration');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2231,'Patty''s Custom Leather & Canvas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1149,'Pawling Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1131,'Penn Bottle & Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1132,'Penn Bottle & Supply (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1133,'Pepper Moon Catering');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1134,'Permik Industrial Supply, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1135,'PetroLiance');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1136,'PetroLiance (ex Lubricants Technonology) (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1754,'Philadelphia Mixing Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1138,'Phillips Industrial Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1829,'Piedmont Instruments & Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1139,'Piedmont Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1140,'Pitney Bowes Credit Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1142,'Pittsfield Plastics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1143,'Plantation Florist & Gifts');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1145,'Pnucor (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1144,'Pnucor, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1146,'Pomeroy IT Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1147,'Pomeroy IT Solutions (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1148,'Postage By Phone');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2698,'Power Plus International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1805,'Power Technology Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1150,'PricewaterhouseCoopers LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1151,'Prime Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1152,'Prime Industries (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1153,'Prime Technology Group LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1154,'Prime Technology Group LLC (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1155,'Printerm Datascribe, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1156,'Printerm Datascribe, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1159,'ProPart Quality Pump Parts');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1157,'Process Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1158,'Process Technical Sales Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3258,'Progressive Business Publications');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1162,'Puersan Pigment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1862,'Pumps, Parts & Service, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1163,'Purolator E.F.P.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(949,'Pye Barker');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2261,'Qingdao Taiji Packing Co.  LTD.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1902,'Quality Carriers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3279,'Quality International Cartage, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1165,'Quantum');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1166,'R A Moore Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1167,'R A Moore Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1169,'RCC (Radio Communications of Chas)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1172,'REM Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1180,'REM Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1462,'RHDC International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2120,'Ramsey Mfg. Co, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1170,'Regional Material Handling');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1171,'Rehabilitation Centers of Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1174,'Repack Industrie - Verpackungs GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1810,'Residence Inn-Mt Pleasant');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1760,'Resolution Management Consultants');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1175,'Restaurant Equipment Rental');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1176,'Restek Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1177,'Restek Corp (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1178,'Richard P.Joblove, P.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1179,'Roadway Express (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1892,'Robert E Mason & Associates');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1181,'Robert Half Finance & Accounting (r');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1183,'Robert S. Hudgins Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1184,'Rockhurst University');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1185,'Rockwell Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1186,'Rosemount Analytical Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1187,'Rosemount Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1188,'Rosemount Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1189,'Roto-Rooter, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3323,'Rush Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2055,'Rutherford Pump Systems Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2771,'S.C. Toyota Tsusho Do Brasil Ltda');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1190,'S.I.T.INDEVA, INC (ex Scaglia)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2180,'SC Department of Revenue');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1204,'SC Dept of Labor, Licensing & Reg');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1207,'SDT North America Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1208,'SDV (USA) Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1215,'SENKO CO., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2071,'SOR c/o Criterion');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1705,'SSI Schaefer Systems Int., Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1277,'SWS Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1193,'Safety-Kleen Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1194,'Safety-Kleen Systems, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2243,'Sage Software');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1195,'Saint-Gobain');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1196,'Sam''s Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1199,'Santee Industrial Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1200,'Sapona Mfg. Co Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1201,'Sapona Mfg.Co. Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1202,'Saurer Inc (Barmag) remit');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1203,'Saurer Inc (Barmag) repairs only');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1205,'Schuetz Container System, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1206,'Scientific Technologies, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1209,'Seaco Industries, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1210,'Seafront Law Office, Suite 1008B');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1212,'Secretary of State Corporate Div');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1213,'Secretary of the State');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1853,'Security Life Ins. co. of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1214,'Seltrol');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1920,'Sensonetics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2060,'Service Industrial Supply Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1216,'Service Solutions Inc  SSC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1217,'Service Transfer, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1218,'Service Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3179,'Shanghai Acoustics Laboratory');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1219,'Shanghai Kelee Industry Co. Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1541,'Shanghai Myfair Industry Co. Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1800,'Shannon Systems, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2727,'Shealy Electrical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1220,'Sheer Delight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1221,'Shipco LCL');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1222,'Shipco LCL (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2359,'Shipping Digest');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1223,'Siemens Energy & Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1224,'Siemens Energy & Automation (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1225,'Siemens Water Technologies Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1226,'Siemens Water Technologies Corp. (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1227,'Sigma-Aldrich Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1229,'Sikes Radio');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2301,'Simmons & Simmons');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1230,'Simplex Grinnell');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1231,'Sisson Scale & Equipment Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1232,'SkillPath Seminars (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1233,'Slay Transportation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1234,'Slot-Nankai Company Limited');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3064,'Smalley Steel Ring Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1934,'Smartware Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2251,'Smurfit-Stone Container Enterprises, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1235,'Smurph Express (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1236,'Snap Trucking Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1237,'Society for Human Resource Mgmt');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1238,'Software Projects Consulting');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1239,'Soil Consultants, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(427,'Sonoco Products Ind Div');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2709,'Sonoco Recycling');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1241,'South Carolina Fire Academy');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1851,'South Carolina Health Insurance Pool');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1242,'Southeast Industrial Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1243,'Southeastern Dock & Door');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1244,'Southeastern Freight Lines (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1245,'Southern Elevator');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1246,'Southern Loom Reed');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1247,'Southern Management, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1248,'Southern Optical (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1249,'Southern Pump & Tank');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1250,'Southern Substation Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1251,'SpandexOne LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1252,'Sprint PCS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1253,'Square D Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1254,'Squire-Cogswell/Aeros');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1263,'St-Gobain-Zirpro');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1255,'Stallings Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1256,'Standard Coffee Service Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1257,'Standard Corp Integrated Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1258,'Staples');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1751,'Staples -- Remit');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1261,'Steve Ray');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1262,'Stevens Roofing Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1264,'Stier, Kent & Canady, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1265,'Stolt-Nielsen Transportation Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(472,'Store Tax Agency');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1266,'Stretchline UK Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2451,'Subway dba Kilgore Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(419,'Sud-Chemie Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1267,'Sullivan and Associates');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1268,'Sulzer Chemtech USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1269,'Summer Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1270,'Sun Chemical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1272,'Sunbelt Scanning Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2222,'Superior Technical Ceramics Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1273,'Supreme Elastic Corp (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1275,'Swisslog Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1276,'Swisslog Warehouse (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1278,'Symbol');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1279,'Symtech, Inc (SSM)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1280,'Syndicon Group Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1539,'Systech (Shanghai) Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1281,'T & T Sports');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2207,'T.Q.Abrasive Machining');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2093,'TABY America, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2334,'TAS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1681,'TCI America Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1318,'TLV');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2083,'TMT MACHINERY, INC.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1319,'TNT Logistics (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1950,'TTI Instruments');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1336,'TYR Packaging');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1282,'Tape Resources');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1283,'Taylor Data Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2992,'Taylor Pallets and Recycling Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1284,'Team Industrial Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1285,'Tech Depot');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1286,'Technical Associates of Charlotte,');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1287,'Technical Consulting International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1288,'Teikoku USA c/o Process Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2689,'Teikoku USA, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1289,'Tencarva (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1290,'Tencarva U.S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2048,'Terminal Trucking Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1293,'Texas Processs Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1294,'Textile');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2229,'The Austin Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1295,'The Balancing System Group Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1296,'The Carpet Shop');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1297,'The Corporation Trust Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1298,'The Foxboro Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1299,'The Hartford');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1300,'The Home Telephone Co, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1301,'The Hoove, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1302,'The Hosiery Association');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2713,'The Journal of Commerce');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1303,'The Mill-Rose Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1304,'The Mills House Hotel');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1888,'The New York Blower Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1305,'The Post and Courier (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1306,'The Pump Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1307,'The Underfashion Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1308,'Thermo Cahn Corp (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1309,'Thermo Electron (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1310,'Thermo Electron (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1542,'Thermo Electron NA LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1311,'Thermo Neslab Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1312,'Thermon Heat Tracing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1313,'Third Party Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1315,'Thornley Oil');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1316,'Tiger Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1317,'Tips, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2759,'Titan Transport LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1321,'Toyota Motor Credit');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2215,'Trane');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1322,'Trane Comfort Solutions, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1323,'Trans-America Storage & Forwarding');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1324,'Transatlantic Connection, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1325,'Transcat');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1326,'Transport Service Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1327,'Transportation Alliance Bank, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1738,'Tranter Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1328,'Travaini Vacuum Pumps');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1329,'Travers Tool Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1330,'Tri Star Freight Systems Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1331,'Triad Mechanical Contractors');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1332,'Trident Technical College');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1333,'Trident United Way');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1983,'Trimac Transportation South Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1334,'Troemer');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1335,'Tuscatube inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1337,'U.S. Filter Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1880,'U.S. Security Associates, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1338,'U.S. Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1339,'UCO Fabrics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3043,'UE Systems Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1343,'UPS - Ground');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1344,'UPS - Next Day Air');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1345,'UPS - Third Day');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2440,'UPS -- Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1346,'UPS Customhouse Brokerage, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1347,'UPS Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1348,'UPS Supply Chain');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1349,'UPS Supply Chain Solutions (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1350,'US Filter');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3307,'US Transportation, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3285,'USF Holland Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1351,'USF Red Star');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2421,'Ulrich Ebbinghaus');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1340,'Unifi');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1341,'Unisource');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2702,'United Concordia');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1342,'United Refrigeration Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3319,'United States Treasury');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2324,'United Way of Southern Kentucky');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2281,'Univar USA - ChemCare');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(420,'Univar USA Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1352,'Vaisala');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1353,'Valve and Filter Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1354,'Van De Wiele Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2145,'Vanguard');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1650,'Vashaw Scientific Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1758,'VeeArc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1737,'Verizon Wireless');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1358,'Vi-Cas Manufacturing Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1356,'Vibration Institute');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1357,'Vibration Institute Piedmont Chapte');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1359,'View Engineering, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(587,'Virginia R. Hamilton');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1360,'Vital Records Control of SC Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3221,'Vitec Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(695,'Vnetek Communications');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1361,'W R Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1387,'W. W. Grainger, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1362,'W.Fritz Mezger, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2714,'W.J. Turpish and Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1363,'W.P.Law.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1364,'W.S. Oshea');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1365,'W.S. Tyler');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1371,'WCDC Private Truck');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1764,'Wacker Silicones');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1366,'Waco Instruments');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1368,'Warren Fastenings South, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1369,'Washington Consular Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1370,'Waste Management');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1373,'Weber Marking Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1372,'Weber Marking Systems, inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2418,'Webster Rogers LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1374,'Welco Technologies');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1375,'Wells Fargo Financial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1376,'White Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1377,'Wholesale Industrial Electronics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1378,'Wicker Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1379,'Willard Termite & Pest Control');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1380,'William F.Bland Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1382,'Williams Machine & tool Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1383,'Wilson');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3326,'Wilson Trucking Corporation (WTVA)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1099,'Windstream Communications');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1384,'Winthrop Couchot Professional Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2106,'Winyah Community Hospice Care');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1385,'World Textile Publications Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1386,'Wulftec');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3321,'Wuxi Taiji Paper Industry Co., Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1388,'Xerox');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(428,'Xpedx');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2747,'YRC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1389,'Yangming America Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1390,'Yellow Freight Lines (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1391,'Yellow Transportation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1392,'Yokogawa Corp of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1393,'Young Clement Rivers LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1394,'Zenith (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1395,'Zenith Pumps');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1396,'Zim-American Israeli Shipping Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3067,'an epicurean feast, inc.');
/*!40000 ALTER TABLE "vendors" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
