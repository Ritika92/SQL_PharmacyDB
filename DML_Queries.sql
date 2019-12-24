 INSERT INTO `SUPPLIER` VALUES ('1','ACME','666-222-9089','ACME@GMAIL.COM','213 Kelly Stream','Lorainefort','NewJersey','94088'),
('2','Kenneth','789-654-1324','KENNETH@GMAIL.COM','5374 Hartmann Knolls','New Crawfordland','Florida','97687'),
('3','GLAXO','897-289-1256','GLAXO@GMAIL.COM','913 Bashirian Lodge ','North Giovani','Idaho','77058'),
('4','CIPLA','123-453-3452','CIPLA@GMAIL.COM','35351 Langosh Ranch ','New Gretaland','Nebraska','66266'),
('5','Bernice','234-756-0987','BERNICE@GMAIL.COM','451 Hayley Bypass Su','Douglasborough','Hawaii','25422'),
('6','SOYLENT','654-987-1223','SOYLENT@GMAIL.COM','65314 Jakubowski Mal','Markland','Kansas','28912'),
('7','HOOZIE','875-4563-9876','HOOZIE@GMAIL.COM','00340 Feeney Junctio','South Jalen','Nebraska','58104'),
('8','VEHEMENT','542-765-9243','VEHEMENT@GMAIL.COM','6901 Brenna Springs','Elenorabury','Maine','58222'),
('9','XANDER','717-275-3369','XANDER@GMAIL.COM','650 Giovani Isle','Margarettville','NorthDakota','42227'),
('10','Darien','268-345-9753','DARIEN@GMAIL.COM','727 Sadie Brooks Apt','Christfurt','Missouri','40324'); 


 INSERT INTO `DRUG` VALUES ('1','Sanofi','Epzicom','Abacavir Sulfate and Lamivudine Tablets','39.97'),
('2','GSK','Tymlos','Abaloparatide Injection','123.33'),
('3','Gilead','Verzinio','Abemaciclib Tablets','45.76'),
('4','Johnson & Johnson','Campral','Acamprosate Calcium','293.25'),
('5','GSK','Tylenol','Acetaminophen TABLETS','322.31'),
('6','Novartis','Aclovate','Alclometasone Dipropionate Cream, Ointment','248.13'),
('7','Abbvie','Zyloprim','Allopurinol','198.33'),
('8','Novartis','Altace','Ramipril Tablets','305.00'),
('9','GSK','AndroGel','Testosterone Gel for Topical Use','148.81'),
('10','Johnson & Johnson','Asacol','Mesalamine Delayed-Release Tablets, Oral','244.25')
; 

INSERT INTO `DEPARTMENT` VALUES ('1','Nursing'),
('2','Pharmacy'),
('3','Purchase')
; 


INSERT INTO `EMPLOYEE` VALUES ('1','1','Matt','Lebron','730 Bednar Valley Suite 544','New Aishafurt','Kentucky','95018','186-293-8595',	'mattlebron@cavs.net','Nurse'),
('2','1','Susan','Martin','19818 Sauer Garden','Franeckimouth','Wisconsin','21659','204-564-9851','susan_martin5@gmail.com','Nurse'),
('3','2','Derek','Hill','0298 Gulgowski Falls','Algaeberg','Oklahoma','33426','962-856-7414','derek.hill@gmail.com','Pharmacist'),
('4','1','Angie','Stark','653 Cassin Lakes','Rathland','Maine','85621','235-968-7412','angie_stark@yahoo.com','Nurse'),
('5','1','Rossie','Tillman','0080 Aufderhar Harbors Suite 772','North Lisettestad','Florida','74196','408-741-1591','rossie_tillman@aol.com','Nurse'),
('6','2','Joel','Kreiger','2079 Alexandro Light Suite 587','Lake Elizabeth','Georgia','42697','502-852-9874','joel_kreiger@hotmail.com','Pharmacist'),
('7','2','Christine','Ortiz','5228 Maiya Ford','Keelingbury','Nebraska','63415','502-963-7854','christine_ortiz@gmail.com','Pharmacist'),
('8','2','Steph','Curt','940 Purdy Groves','Ikeland','NorthDakota','89423','321-327-6952','steph_curt@ymail.gov','Pharmacy Manager'),
('9','3','Curtis','Jackson','89157 Rogers Terrace Apt. 037','Lake Lindsay','Missouri','95521','598-741-002','curtis_jackson@fcent.rap','Purchase Manager'),
('10','2','Eric','Hunter','40985 Meagan Brooks Apt. 788','Ignatiusside','Maryland','72159','662-590-0431','eric_hunter@gmail.com','Pharmacist'); 


INSERT INTO `NURSING_STATION` VALUES ('1','1','2018-06-28 07:30:48','2020-06-03 14:52:50'),
('2','2','2005-08-12 01:25:44','2019-05-14 13:08:47'),
('3','4','2016-12-10 12:47:56','2021-01-21 14:55:51'),
('4','5','2009-09-06 15:31:03','2019-01-29 13:39:02')
; 

INSERT INTO `PURCHASE_ORDER` VALUES ('1','10','2','2018-04-01 21:52:04','2018-04-02 09:42:21','9','8','2018-04-03 06:28:19','Delivered'),
('2','5','10','2018-04-04 16:48:00','2018-04-05 16:29:17','9','8','2018-04-06 05:19:18','Delivered'),
('3','3','9','2018-04-07 07:42:45','2018-04-08 22:22:33','9','8','2018-04-09 13:59:25','Delivered'),
('4','8','6','2018-04-10 15:01:57','2018-04-11 05:15:05','9','8','2018-04-12 19:50:48','Delivered'),
('5','9','3','2018-04-13 05:03:15','2018-04-14 19:08:26','9','8','2018-04-15 01:11:57','Delivered'),
('6','2','4','2018-04-16 21:28:34','2018-04-17 13:03:34','9','8','2018-04-18 10:16:55','Delivered'),
('7','4','8','2018-04-19 04:29:24','2018-04-20 14:34:32','9','8','2018-04-21 09:17:36','Delivered'),
('8','1','1','2018-04-22 14:11:36','2018-04-23 15:24:09','9','8','2018-04-24 08:11:57','Delivered'),
('9','7','7','2018-04-25 09:33:54','2018-04-26 04:19:49','9','8','2018-04-27 08:36:58','Delivered'),
('10','6','5','2018-04-28 14:45:38','2018-04-29 05:51:59','9','8','2018-04-30 10:50:49','Delivered'); 


INSERT INTO `BATCH` VALUES ('1','2','1','524','300','224','2020-04-03 05:05:16','123.33'),
('2','10','2','657','657','0','2020-04-06 01:00:25','244.25'),
('3','9','3','2355','1260','1095','2020-04-09 04:47:34','167.2'),
('4','6','4','1450','780','670','2020-04-12 17:49:30','248.13'),
('5','3','5','210','55','155','2020-04-15 21:24:49','40.76'),
('6','4','6','531','368','163','2020-04-18 19:06:25','293.25'),
('7','8','7','468','236','232','2020-04-21 16:02:13','305'),
('8','1','8','147','94','53','2020-04-24 23:50:59','39.97'),
('9','7','9','986','873','113','2020-04-27 19:49:53','198.33'),
('10','5','10','741','520','221','2020-04-30 17:59:03','23.5'); 


INSERT INTO `SUPPLIER_RETURN_ORDER` VALUES ('21','7','2018-04-23 14:16:20','32','Damaged','Accepted'),
('22','4','2018-04-23 17:33:43','60','Damaged','Accepted'),
('23','5','2018-06-01 06:04:21','129','Discontinued','Rejected'),
('24','7','2018-06-02 22:13:57','170','Expired','Placed');


INSERT INTO `PATIENT_ADMISSION` (`PATIENT_ADMIT_ID`, `PT_ID`) VALUES (5, 5);
INSERT INTO `PATIENT_ADMISSION` (`PATIENT_ADMIT_ID`, `PT_ID`) VALUES (6, 4);
INSERT INTO `PATIENT_ADMISSION` (`PATIENT_ADMIT_ID`, `PT_ID`) VALUES (7, 6);
INSERT INTO `PATIENT_ADMISSION` (`PATIENT_ADMIT_ID`, `PT_ID`) VALUES (8, 3);
INSERT INTO `PATIENT_ADMISSION` (`PATIENT_ADMIT_ID`, `PT_ID`) VALUES (9, 3);
INSERT INTO `PATIENT_ADMISSION` (`PATIENT_ADMIT_ID`, `PT_ID`) VALUES (10, 8);


INSERT INTO `PRESCRIPTION` VALUES ('1','Inventore eos sunt consectetur quisquam assumenda. Ut reiciendis at dolor incidunt. Placeat autem ipsum aut est modi veniam. Dolore officiis dolorem q','5'),
('2','Quod dolor repellendus sint quos enim. Reiciendis accusantium non aut eaque et. Officiis enim voluptates qui incidunt quo mollitia ut. Omnis qui persp','6'),
('3','Mollitia ratione qui omnis ducimus blanditiis. Ut incidunt minus iusto ut. Ut pariatur consequatur illo eum ullam dolore. Nihil in velit id enim sequi','7'),
('4','Eligendi consectetur expedita tenetur consequuntur. Voluptas id iusto id nam commodi quos nulla est. Odit ab laboriosam non quod. Perspiciatis aut vol','8'),
('5','Illo accusantium ratione quo voluptatum voluptatem. Ea cumque rerum dolores quibusdam modi. Est laborum nulla quis itaque dolores sit.','7'),
('6','Doloremque distinctio debitis enim quaerat. Rem deserunt minus velit maxime incidunt magnam enim. Sint eveniet quis a sint. Dolores rerum beatae eius','6'),
('7','Assumenda hic aut dolor non. Praesentium eum et ut harum vel possimus voluptas veritatis.','5'),
('8','Inventore perspiciatis consectetur pariatur ad et dolor. Distinctio aspernatur recusandae est est blanditiis quasi. Aperiam adipisci minus ut temporib','6'),
('9','Minima vitae vel suscipit repellendus qui aut quas. Nihil reprehenderit tempore officia sed. Eius enim voluptas iure.','10'),
('10','Quas possimus qui et qui nihil rerum. Velit et eveniet id accusamus accusantium. Laboriosam cupiditate nostrum aut tempore. Excepturi omnis consequatu','8'); 


INSERT INTO `PHARMACY_ORDER` VALUES ('1','2','1','10','2018-05-02 20:44:21','2018-05-02 20:58:21','2018-05-02 21:44:21','FULFILLED',NULL,'PRESCRIPTION_ORDER'),
('2','2','1','6','2018-05-02 21:34:21','2018-05-02 21:34:21',NULL,'IN PROGRESS','1','PRESCRIPTION_ORDER'),
('3',NULL,'5','10','2018-05-02 22:44:28','2018-05-02 23:04:20','2018-05-02 00:44:21','FULFILLED',NULL,'CABINET_ORDER'),
('4','1','4','6','2018-05-03 04:15:21','2018-05-03 04:55:21','2018-05-03 05:55:21','FULFILLED',NULL,'PRESCRIPTION_ORDER'),
('5','3','2','3','2018-05-03 05:34:21','2018-05-03 06:04:21','2018-05-03 06:34:21','FULFILLED',NULL,'PRESCRIPTION_ORDER'),
('6','7','5','7','2018-05-03 10:44:21','2018-05-03 11:05:21','2018-05-03 12:54:21','FULFILLED',NULL,'PRESCRIPTION_ORDER'),
('7',NULL,'4','6','2018-05-04 11:35:21','2018-05-04 11:55:21','2018-05-04 12:35:21','FULFILLED',NULL,'CABINET_ORDER'),
('8','6','1','7','2018-05-04 12:35:21','2018-05-04 01:05:21','2018-05-04 01:55:21','FULFILLED',NULL,'PRESCRIPTION_ORDER'),
('9','1','5','10','2018-05-05 02:35:21','2018-05-05 02:55:21','2018-05-05 04:15:29','FULFILLED',NULL,'PRESCRIPTION_ORDER'),
('10','8','2','3','2018-05-05 05:20:22','2018-05-05 05:50:26','2018-05-05 07:45:21','FULFILLED',NULL,'PRESCRIPTION_ORDER')
; 


 INSERT INTO `ORDER_ITEM` VALUES
 ('1','1','2','1','8','8','123.33','986.64'),
('2','1','10','2','10','2','244.25','488.5'),
('3','2','10',NULL,'2',NULL,'244.25','0'),
('4','3','6','4','5','2','248.13','496.26'),
('5','3','3','5','8','9','40.66','366.84'),
('6','4','4','6','11','10','293.25','2932.5'),
('7','5','8','7','12','7','305','2135'),
('8','5','1','8','5','2','39.97','79.94'),
('9','6','7','9','8','3','198.33','594.99'),
('10','7','5','10','4','4','323.5','94'),
('11','8','8','7','7','7','305','2135'),
('12','9','6','4','2','2','248.12','496.26'),
('13','10','1','8','2','2','39.97','79.94'); 


