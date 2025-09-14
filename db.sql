/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - fake news detection
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fake news detection` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fake news detection`;

/*Table structure for table `ads` */

DROP TABLE IF EXISTS `ads`;

CREATE TABLE `ads` (
  `Ads_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_id` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `News` varchar(10000) DEFAULT NULL,
  `Details` varchar(10000) DEFAULT NULL,
  `Images` varchar(1000) DEFAULT NULL,
  `Date` varchar(1000) DEFAULT NULL,
  `Status` varchar(1000) DEFAULT NULL,
  `Amount` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Ads_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `ads` */

insert  into `ads`(`Ads_id`,`Category_id`,`User_id`,`News`,`Details`,`Images`,`Date`,`Status`,`Amount`) values 
(9,7,4,'Jain University MBA Degree','Get a prestigious MBA degree online','static/images/cd37e881-7ead-4df6-b521-61fd4eb7a6edhero.png','2024-02-24','paid','5000'),
(2,2,3,'We\'re trying not to expect too much from ourselves MI captain Harmanpreet','Bengaluru Feb 22 (PTI) Mumbai Indians skipper Harmanpreet Kaur said on Thursday that the defending champions have been trying to keep their own expectation level to a minimum and focus on the WPL opener against Delhi Capitals  Mumbai will face-off with Delhi here on Friday in a repeat of the last year\'s final which was held in Mumbai.','static/images/1c59835d-24a0-4172-8b22-2eb8b35bac96BB1iIClw.jpg','2024-02-23','accept','500'),
(3,2,3,'TOISA: Celebration of Indian sporting triumphs','UP CM Yogi Adityanath to felicitate sportspersons for bringing glory to the country  LUCKNOW: To celebrate India\'s sporting excellence, India\'s top sporting stars will be under one roof at the Times of India Sports Awards (TOISA) 2023, which will be held here on Friday.  TOISA 2023, which is being powered by the Govt of Uttar Pradesh, will pay tribute to the nation\'s top athletes who soared to new heights on the global stage.','static/images/caf120ad-6e73-4082-890c-b2fe93113097BB1iK629.jpg','2024-02-23','accept','500'),
(4,4,4,'Opening bell: Sensex starts in green, Nifty trading above 22,240','NEW DELHI: Equity benchmark indices on Friday started on positive note in early morning trade. BSE Sensex climbed marginally by 0.11% or 79.52 points to 73,237.76. Nifty as well was trading at 22,260.90, marking an increase of 43.45 points from its previous close.  32 shares in Nifty were trading in the green while 18 stocks climbed in Sensex, with Titan rising more than 1 per cent.','static/images/d5a2e1fa-537e-4833-821f-efed2126fe75BB1iKbFk.png','2024-02-23','paid','200'),
(5,5,4,'Logistics & Industrial leasing shows resilience, crosses 50 MSF for two straight years, says Cushman & Wakefield Report','Logistics and Industrial (L&I) leasing in India crossed 50 MSF mark in consecutive years (2022 and 2023), showcasing sustained momentum and growth, said Cushman & Wakefield’s annual Logistics and Industrial report. In 2023, it said, warehousing leasing dipped slightly by 7 per cent to 37.7 msf from 40.4 msf in 2022. According to the data, while warehouse leasing by e-commerce firms posted a decline in 2023, demand from 3PL operators, manufacturing and retail firms remained strong. This shift suggests a possible growing trend of e-commerce companies outsourcing their logistics and warehousing operations to 3PL specialists, allowing them to focus on their core business activities.','static/images/2ce7a567-44c2-4dcc-84d3-4d1f04c3f81aAA1lQ9Tt.jpg','2024-02-23','paid','200'),
(6,2,4,'Akash Deep\'s dream debut against Eng. Watch','As India lock horns with the three lions, England, for the fourth Test Match in Ranchi, debutant Akash deep bowled an absolute peach of a delivery to Zak Crawley. But excitement soon turned into dismay as the umpire signalled the delivery to be a \"No Ball\'.  It was the fifth delivery of the fourth over, where Deep bowled a good length ball, pitching outside off stump. It was pitched up and nips back to beat Crawley\'s leaden- footed defense and dismantles the off stump, sending it for a cartwheel.','static/images/8a754a8f-1139-4a74-9a1a-af71b64fba13BB1iKjMQ.jpg','2024-02-23','accept','900'),
(7,2,4,'Hawk-Eye admits to a game-changing error in Islamabad-Quetta PSL 2024 clash','Hawk-Eye has admitted to a game-changing error that allowed Rilee Rossouw to continue his innings upon review after being adjudged LBW in the PSL 2024 clash between Quetta Gladiators and Islamabad United on Thursday, February 22. It also apologized to the PCB in a letter after acknowledging the error.  The incident transpired in the final ball of the 11th over in the Gladiators\' run-chase. Their skipper Rossouw missed an attempted sweep and was adjudged LBW by on-field umpire Aleem Dar.','static/images/6dd30da1-6fbb-4b18-a966-55474ae844546b760-17087427141993-1920.webp','2024-02-24','accept','800'),
(8,3,5,'Skkily | Use Skill & Win','Brand Name: Skkily Category:Entertainment Ad Type:Image Description: This ad, Skkily | Use Skill & Win, was released by Skkily in the year 2022. This image ad was advertised on various digital platform. The language used was English.','static/images/24177035-c85d-4562-ba4b-18a895e58d45phonepe (1).webp','2024-02-24','accept','2000'),
(10,4,5,'Computer World','This site keeps the users updated with news related to the world of information technology about new technologies in the business arena. It is considered as one of the best tech websites among all technology sites.','static/images/426511b3-4b56-4504-9405-a44529b7eeceComputer-World.jpg','2024-02-25','accept','600'),
(11,4,5,'Interesting Cyber Security Industry Statistics','As our world continues to grow technologically dependent and more of our business and personal lives are uploaded onto the digital space, cyber security has risen as an incredibly important industry to invest into  To keep our online data safe, it is becoming more and more necessary for both individuals and businesses to invest in cyber security for their own digital protection.','static/images/ab2ffae4-4cbf-4030-88e7-11b674d4fc32Interesting-Cyber-Security-Industry-Statistics.jpg','2024-02-25','accept','800'),
(12,4,5,'E-Scooter Apps with Cutting-Edge Features & Revealing Development Costs','The world’s micro-mobility services and electric scooter apps are on the rocks. In the ever-evolving modern landscape, urban mobility has taken a thrilling leap forward with these sleek and eco-friendly vehicles. They provide a remarkable solution for traversing the bustling streets of cities with ease and efficiency. But what’s the secret sauce that makes these electric scooters commendably extraordinary? It’s the resourceful mobile applications that power them, transforming the way to ride. Electric scooter sharing apps empower users to seamlessly locate, unlock, and embark on exhilarating journeys. This information is embarking on a thrilling adventure with e-scooter apps. Uncovering the best absolute ones on the market and boasting exceptional features with exploring the exciting world of their development costs, get ready to be amazed!','static/images/f4213a71-0440-4dba-a2fa-6b87d96a7005E-Scooter-Apps.jpg','2024-02-25','accept','700'),
(13,2,6,'KCSMW Shuttle Badminton Tournament 2023','Welcome to the KCSMW Shuttle Badminton tournament  Date – Saturday, December 2 2023  Location – 21598 Atlantic Blvd, Suite#100, Sterling, VA 20166  Registration fee - $20/participant  For sponsoring opportunities, please contact sports@kcsmw.org  Tournament Agenda timeline  Registration deadline	Friday, December 1 ,2023 Tournament	Saturday, December 2 2023 from 5.30 PM Award Ceremony	TBD','static/images/da8685cd-e66b-4ec0-922c-07f69b2d8f22badminton.webp','2024-02-27','rejected','0'),
(14,7,6,'AFSA National High School Essay Contest','If you’re looking to help students take a deep dive into international relations, history, and writing, look no further than this essay contest. Winners receive full tuition to the Semester at Sea program as well as a trip to Washington, D.C., to meet with a leader at the Department of State','static/images/0c546561-9b8a-4468-886c-ef1422bd1726badminton.webp','2024-02-27','rejected','0'),
(15,7,2,'Millennium Post Anniversary Issue College Advertisement','Begum Rokeya Award from West Bengal Board of Madrasah Education, 2023  TIMES B-School Ranked #1 in West Bengal, Ranked #6 in India, 2023  The Economic Times Best Education Brand, 2023  ASSOCHAM Award Best Institute for Promoting Industry-Academia Linkage, 2023','static/images/93417721-4f19-44d3-8043-b5ef8266e20fScreenshot-2022-06-13-125133.png','2024-03-02','paid','10'),
(16,2,8,'From capturing heart-pounding victories to tear-jerking moments of pure inspiration, sports ads have the uncanny ability to bring some of the most memorable moments in sports history to life','Whether it’s captivating visuals or reliving unforgettable events in sporting history, adverts can carry a true sense of nostalgia. To take you down memory lane, we look at the most-loved sports commercials of all time and in the last decade','static/images/623b4f84-ca35-46b4-84c2-b68487e77bb702_Blog_banner_ea43c647dc.jpg.webp','2024-03-02','accept','90');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`C_ID`,`Category`) values 
(2,'sports'),
(3,'Entertainment'),
(4,'Tech & Gadget'),
(7,'Education');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `Complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Complaint` varchar(100) DEFAULT NULL,
  `Replay` varchar(100) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Complaint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`Complaint_id`,`User_id`,`Complaint`,`Replay`,`Date`) values 
(1,1,'this site is too slow','i will check it','2024-02-02'),
(2,4,'sometimes this site is to slow','sorry for the inconvinence, we will check it','2024-02-24'),
(3,6,'some fake news are founded on this site','sorry i will check it','2024-02-27'),
(4,6,'hhhssss','pending','2024-02-28'),
(5,2,'Some times this site is too slow','pending','2024-03-02'),
(6,8,'poor site','pending','2024-03-02');

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `Image_id` int(11) NOT NULL AUTO_INCREMENT,
  `News_id` int(11) DEFAULT NULL,
  `Images` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `images` */

insert  into `images`(`Image_id`,`News_id`,`Images`) values 
(1,1,'static/images/713c9202-2b15-48f3-835d-3716a561946cWhatsApp Image 2023-09-18 at 9.47.36 PM.jpeg'),
(2,4,'static/images/d79e3434-38a0-40ba-b9c6-e23d91984c9fBB1iKjMQ.jpg'),
(3,5,'static/images/0f2e3df4-03b9-49b4-93bb-c08f339adaadBB1iNgzG.jpg'),
(4,6,'static/images/f1cbbff4-05b6-446f-a5f7-e91a87da04adBB1iNqx0.jpg'),
(5,7,'static/images/46c8d4ca-4b26-434c-a522-a0f4a4822901BB1iNgzY.jpg'),
(6,8,'static/images/9c2d4a9e-b8b8-4ac7-8033-b6018d0a184aBB1iNKHV.jpg'),
(7,9,'static/images/382fc4d1-0542-43b0-bbd3-95108121107dBB1iRayO.png'),
(8,10,'static/images/7a60066f-b5da-4105-94df-c3b4f5ad1990BB1iRaVm.jpg'),
(9,11,'static/images/e6c539b8-d07e-47b9-b7a4-1a0ed3fec541BB1iXReF.jpg'),
(10,13,'static/images/855cac5d-c9e9-49de-98a8-843cf3aee2d8BB1iXLom.jpg'),
(11,14,'static/images/f11fc9cd-eaba-4d1c-8d62-4663e0cb8f22AA1kAaAz.jpg'),
(12,15,'static/images/c973d22d-26a5-4acf-84b1-883be4130606BB1iXPeH.jpg'),
(13,16,'static/images/7ef4e4f9-726b-4cc5-bad6-ba9631ac6785blast-blast-5col.avif');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `Login_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Login_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`Login_ID`,`User_Name`,`Password`,`user_type`) values 
(1,'admin','admin','admin'),
(2,'fathi','2003','newsagent'),
(3,'amrithapredeep06@gmail.com','Chinnu@123','user'),
(4,NULL,NULL,NULL),
(5,'mariya@gmail.com','Mariya@22','user'),
(6,'ak@gmail.com','Anakha@.gh&*98','user'),
(7,'anu','Anu12#$','newsagent'),
(8,'albyanil@gmail.com','Achu@12#4','user'),
(9,'ross12@gmail.com','Ross@123j','user'),
(10,'joo','Jo@23l','newsagent'),
(11,'anjali@gmail.com','Anjali12@3','user'),
(13,'appu3@gmail.com','Appu@32.','user'),
(14,'amritha','Alk@jj','newsagent'),
(15,'amal@gmail.com','Ama@3@@65','user');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `News_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Agent_ID` int(11) DEFAULT NULL,
  `News` varchar(10000) DEFAULT NULL,
  `Details` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`News_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `news` */

insert  into `news`(`News_ID`,`Agent_ID`,`News`,`Details`) values 
(4,2,'Trinamool snubs Congress alliance efforts, to contest all Lok Sabha seats in Bengal','Trinamool Congress leader Derek O\' Brien on Friday reiterated his party\'s stand to go solo in the upcoming Lok Sabha elections in West Bengal. The TMC leader said that there has been ‘no change’ in the party\'s stand of contesting all 42 Lok Sabha seats in West Bengal, a few in Assam and one seat in Meghalaya. The remark came amid reports that the Congress party had revived talks with the Mamata Banerjee-led TMC for an alliance in the stat'),
(5,2,'Farmers to continue protests, decision on next course of action on February 29','Protesting farmers will stay put on the Punjab-Haryana border until February 29, when their next announcement about the agitation will be made. Today, the farmers are set to hold a candle march, while seminars have been planned for Sunday.Â   The farmers also plan to burn the effigies of the World Trade Organization and the Centre on February 26. They also said SKM (Non-Political) and KMM will hold several meetings over the next two days. On Wednesday (February 21), the farmers put the \'Delhi Chalo\' march on hold for two days after a protester was killed and about 12 police personnel were injured in clashes at Khanauri'),
(6,2,'US Imposes 500 New Sanctions On Russia; President Biden Vows To Increase Pressure Amidst Ukraine War Anniversary','Washington: The US has hit Russia with 500 new sanctions on Friday over the death of jailed Opposition leader Aleksey Navalny and the ongoing war against Ukraine, with the goal of further constricting its energy earnings that fuel and sustain the war effort.  The United States on Friday imposed extensive sanctions against Russia, targeting more than 500 people and entities to mark the second anniversary of invasion of Ukraine and retaliate for the death of Russian opposition leader Alexei Navalny.'),
(7,2,'Macron, Rishi, Biden Vow Unwavering Support for Ukraine on Second Anniversary of War','French President Emmanuel Macron warned his Russian counterpart Vladimir Putin early Saturday not to “count on any fatigue from Europeans” over the war in Ukraine, pledging that France’s support for Kyiv “will not waver”.  “Battered and bruised, but still standing. Ukraine is fighting for itself, for its ideals, for our Europe. Our commitment at its side will not waver,” he wrote in a message on X marking the second anniversary of Russia’s invasion, which falls on Saturday.'),
(8,2,'India reacts after US cop gets off scot-free in Jaahnavi Kandula death case','Amid reports of a US police officer not facing any criminal charges in the death of Indian student Jaahnavi Kandula, the Consulate General of India in Seattle said it has strongly raised the matter with the local authorities.  Jaahnavi Kandula, 23, was struck and killed by Officer Kevin Dave\'s patrol vehicle as she crossed a street in Seattle on January 23. The officer was reportedly responding to a drug overdose call, travelling at a speed of 74 mph, according to reports. Kandula was thrown 100 feet upon impact.'),
(9,2,'INLD\'s Haryana unit president Nafe Singh Rathee shot dead in Jhajjar','NEW DELHI: The president of the Haryana unit of the Indian National Lok Dal, Nafe Singh Rathee, was shot dead by unidentified attackers in Jhajjar district.  Rathee was in an SUV when the assailants, who were in a car, targeted him in Bahadurgarh town. Rathee who suffered serious injuries was rushed to a hospital for treatment'),
(10,2,'PM Modi Offers Underwater Pooja To Submerged City Of Dwarka- Watch','PM Modi on Sunday dived into the Arabian Sea off the coast of Gujarat to offer worship to the submerged city of Shri Krishna’s Dwarka. PM shared his pictures of performing underwater pooja in scuba gear on the social media platform, X. In the shared photos, he can be seen diving into the waters to offer prayers at a site rich in historical and spiritual importance.  '),
(11,3,'Supreme Court issues contempt notice to Patanjali, restrains firm from issuing misleading ads','The Supreme Court on Tuesday restrained Patanjali Ayurveda Limited from advertising its medicinal products and issued a contempt of court notice to its managing director Acharya Balakrishna for violating its November order.  \"We issue notice to show cause to Ramdev and Acharya Balakrishnan] as to why contempt of court proceedings should not be initiated against them. Ld counsel accepts notice on their behalf. Reply within 2 weeks. List for consideration thereafter. We are dispensing with their personal presence for now.”'),
(12,3,'Modi’s Kerala promise: ‘Will win double-digit seats in Lok Sabha’','Prime Minister Narendra Modi said in Thiruvananthapuram on Tuesday that the BJP would win double-digit seats from Kerala in the upcoming Lok Sabha elections. Modi was addressing a rally of BJP workers to mark the conclusion of a month-long, state-wide padayatra led by party state president K Surendran.'),
(13,3,'Rajya Sabha Election: Akhilesh Yadav Says Third Seat Bid Was \'Test\' To Identify Rebels','At least five legislators from the Samajwadi Party (SP) reportedly engaged in cross-voting during the Rajya Sabha elections on Tuesday. The aftermath of the political maneuvering saw party chief Akhilesh Yadav addressing the situation by revealing that the party\'s decision to nominate a third candidate was, in fact, a strategic \"test\".'),
(14,3,'MHA Likely To Notify CAA Rules Before Model Code of Conduct Is Implemented: Sources','The Ministry Of Home Affairs could notify the rules for the Citizenship (Amendment) Act of 2019 (CAA) before the implementation of Model Code of Conduct, said sources.  Sources said that CAA would ensure processing of Indian citizenship applications from persecuted minorities in Afghanistan, Pakistan and Bangladesh.  Last month, news agency PTI had cited sources in the government and said that rules for CAA will be notified “much before” the announcement of the Lok Sabha elections. The Bill for the law was cleared by the Parliament in December 2019.  “We are going to issue the rules for the CAA soon. Once the rules are issued, the law can be implemented and those eligible can be granted Indian citizenship,” the functionary was quoted as saying. “The rules are ready and the online portal is also in place and the entire process will be online. The applicants will have to declare the year when they entered India without travel documents. No document will be sought from the applicants,” the functionary added.                                                                         '),
(15,2,'AAP announces Lok Sabha candidates for Delhi, Haryana','The Aam Aadmi Party (AAP) on Tuesday named four Lok Sabha candidates for Delhi and Haryana three days after it announced a seat-sharing pact with the Congress under which it will contest four of the three seats in the national capital.  Kuldeep Kumar, a legislator from Kondli, will be the party’s candidate for East Delhi Lok Sabha seat. Somnath Bharti, who represents Malviya Nagar in the assembly, has been fielded from New Delhi.'),
(16,3,'Bengaluru café blast: Dy CM D K Shivakumar points to similarities with Mangaluru-Shivamogga blasts','There is a link between the Mangaluru incident and this one. This is what our police officers are saying. The material that was inside is similar. There is a link through the materials like the timer and other things. The police from Mangaluru and Shivamogga are here with the investigation. It is a low intensity blast with local materials,” Shivakumar, who is also the Bengaluru in-charge minister, said.  The detonating system, the timer, the batteries for the timer used in the IED at the Rameshwaram Cafe were all very similar to the ones used for the Mangaluru blast');

/*Table structure for table `news_agent` */

DROP TABLE IF EXISTS `news_agent`;

CREATE TABLE `news_agent` (
  `Agent_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Login_ID` int(11) DEFAULT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `Place` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Agent_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `news_agent` */

insert  into `news_agent`(`Agent_ID`,`Login_ID`,`Fname`,`Lname`,`Place`,`Phone`,`Email`) values 
(1,2,'fathima','ameer','pathanamthitta','9526856821','fmeerak777@gmail.com'),
(2,7,'Anu','Joseph','pulikunnu','9874563214','anu@gmail.com'),
(3,10,'Josiya','Chacko','kakkanadu','9875641236','joo@gmail.com'),
(5,14,'amritha','predeep','55555555555','09778368952','amrithapredeep06@gmail.com');

/*Table structure for table `news_check` */

DROP TABLE IF EXISTS `news_check`;

CREATE TABLE `news_check` (
  `Newscheck_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Details` varchar(1000) DEFAULT NULL,
  `out` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Newscheck_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `news_check` */

insert  into `news_check`(`Newscheck_id`,`User_id`,`Details`,`out`,`date`,`type`,`link`) values 
(1,1,'Gold, silver price today, February 2, 2024: Yellow metal records dip, silver trades higher on MCX| Check latest rates here','Real','2024-02-03','upload_news','0'),
(16,4,'Cong Seals 3-Seat Deal in Delhi, Bags Bigger Share in Haryana, Gujarat: LS Poll Seat-sharing Done with AAP, No Pact for Punjab','The news is Fake','2024-02-24','upload_news','0'),
(15,4,'Trinamool Crushes Congress\' Hope in Bengal, Says \'Will Contest All 42 LS Seats','The news is Fake','2024-02-24','upload_news','0'),
(10,4,'Trinamool Crushes Congress\' Hope in Bengal, Says \'Will Contest All 42 LS Seats\'','The news is Fake','2024-02-24','upload_news','0'),
(11,4,'Donald Trump has said he supports the availability of IVF treatment, joining a growing number of Republicans who are seeking to distance themselves from an Alabama court ruling on the issue.','The news is Fake','2024-02-24','upload_news','0'),
(12,4,'Trinamool Crushes Congress\' Hope in Bengal, Says \'Will Contest All 42 LS Seats','The news is Fake','2024-02-24','upload_news','0'),
(13,4,'Assam MLA says Himanta Sarma\'s law repeal move targets Muslims, makes \'UCC\' dare',' The news is Real','2024-02-24','upload_news','0'),
(14,4,'Assam MLA says Himanta Sarma\'s law repeal move targets Muslims, makes \'UCC\' dare',' The news is Real','2024-02-24','upload_news','0'),
(17,4,'Ukraine counts cost of two years of war as aid slows, Russia gains','The news is Fake','2024-02-24','upload_news','0'),
(18,4,'Major Accident in Kasganj: On Way to Bathe in Ganja, 20 Devotees from UP Killed as Tractor-Trolley Falls in Pond',' The news is Real','2024-02-24','upload_news','0'),
(19,4,'Major Accident in Kasganj: On Way to Bathe in Ganja, 20 Devotees from UP Killed as Tractor-Trolley Falls in Pond',' The news is Real','2024-02-24','upload_news','0'),
(20,4,'Major Accident in Kasganj: On Way to Bathe in Ganja, 20 Devotees from UP Killed as Tractor-Trolley Falls in Pond',' The news is Real','2024-02-24','upload_news','0'),
(21,4,'Major Accident in Kasganj: On Way to Bathe in Ganja, 20 Devotees from UP Killed as Tractor-Trolley Falls in Pond',' The news is Real','2024-02-24','upload_news','0'),
(22,4,'Major Accident in Kasganj: On Way to Bathe in Ganja, 20 Devotees from UP Killed as Tractor-Trolley Falls in Pond',' The news is Real','2024-02-24','upload_news','0'),
(23,4,'Major Accident in Kasganj: On Way to Bathe in Ganja, 20 Devotees from UP Killed as Tractor-Trolley Falls in Pond',' The news is Real','2024-02-24','upload_news','0'),
(24,5,'After Haldwani violence, Uttarakhand to bring Bill to recover damage caused during protests',' The news is Real','2024-02-25','upload_news','0'),
(25,6,'BJP Likely To Bring No-Trust Motion Against Cong Govt In Himachal After Cross-Voting In RS Polls','The news is Fake','2024-02-27','upload_news','0'),
(26,6,'Lok Sabha elections: AAP announces candidates for 4 Delhi seats, one in Haryana',' The news is Real','2024-02-27','upload_news','0'),
(27,6,'Supreme Court issues contempt notice to Patanjali, restrains firm from issuing misleading ads',' The news is Real','2024-02-27','upload_news','0'),
(28,6,'Himachal Pradesh Political Crisis LIVE: Stung by RS Poll Defeat, Congress Aims to Disqualify Rebels; BJP Seeks No-trust Vote',' The news is Real','2024-02-28','upload_news','0'),
(29,6,'modhi is died','The news is Fake','2024-02-28','upload_news','0'),
(30,2,'In a first in Kerala, Kochi city has been declared as a member of the global network of ‘age-friendly cities’ by the World Health Organization (WHO). Such cities share and promote the values and principles of WHO’s age-friendly approach and are committed to create age-friendly environments. However, organisations working with senior citizen groups are unimpressed and said the city lacks basic age-friendly amenities.',' The news is Real','2024-03-02','upload_news','0'),
(31,2,'A customs inspector who tried to tighten the noose around gold smugglers operating via Kochi International airport faced a setback as he was transfer...\r\n\r\nRead more at: https://english.mathrubhumi.com/news/kerala/customs-inspector-kochi-airport-transferred-1.9371974',' The news is Real','2024-03-02','upload_news','0'),
(32,2,'kohili was died','The news is Fake','2024-03-02','upload_news','0'),
(33,2,'prime minister narendra modhi came to kerala',' The news is Real','2024-03-02','upload_news','0'),
(34,2,'today narendra modhi came to kerala','The news is Fake','2024-03-02','upload_news','0'),
(35,8,'Himachal political crisis: CM Sukhu calls rebel MLAs \'black snakes\' as rifts in party persist',' The news is Real','2024-03-02','upload_news','0'),
(36,8,'Many animals are going extinct - they make us humane. We need compassion to save them','The news is Fake','2024-03-02','upload_news','0'),
(37,8,'Taken up the case strongly, following up probe: Indian consulate on Bengal dancer\'s death in US',' The news is Real','2024-03-02','upload_news','0');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ads_id` int(11) DEFAULT NULL,
  `Amout` int(100) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`Payment_id`,`Ads_id`,`Amout`,`Date`) values 
(1,4,200,'2024-02-24'),
(2,9,200,'2024-02-27'),
(3,15,10,'2024-03-02');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Login_ID` int(11) DEFAULT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `Place` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`User_ID`,`Login_ID`,`Fname`,`Lname`,`Place`,`Phone`,`Email`) values 
(1,3,'amritha','predeep','thiruvalla','9778368952','amrithapredeep06@gmail.com'),
(2,5,'mariya','joseph','alappuzha','9274546058','mariya@gmail.com'),
(3,6,'anakha','reji','pathanamthitta','9874563214','ak@gmail.com'),
(4,8,'Albin','anil','Edathuva','9874563251','albyanil@gmail.com'),
(5,9,'rosin','joseph','kollam','8794563214','ross12@gmail.com'),
(6,11,'Anjali','Anilkumar','pathanamthitta','9564782364','anjali@gmail.com'),
(7,13,'appu','jos','kollam','9874563257','appu3@gmail.com'),
(8,15,'Amal ','Xavier','veliyanadu','9074546058','amal@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
