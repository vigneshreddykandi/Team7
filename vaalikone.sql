-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: vaalikone
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EHDOKKAAT`
--

DROP TABLE IF EXISTS `EHDOKKAAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EHDOKKAAT` (
  `EHDOKAS_ID` int NOT NULL,
  `SUKUNIMI` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ETUNIMI` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PUOLUE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KOTIPAIKKAKUNTA` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IKA` int DEFAULT NULL,
  `MIKSI_EDUSKUNTAAN` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MITA_ASIOITA_HALUAT_EDISTAA` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AMMATTI` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`EHDOKAS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EHDOKKAAT`
--

LOCK TABLES `EHDOKKAAT` WRITE;
/*!40000 ALTER TABLE `EHDOKKAAT` DISABLE KEYS */;
INSERT INTO `EHDOKKAAT` VALUES (1,'Ahvenjärvi','Joel','Suomen Kristillisdemokraatit (KD)','Uurainen',86,'Mieluiten tekisin aivan muuta, mutta valtakunta on korjattava. Tulen toimeen noin kahdeksalla kielellä ja olen perehtynyt monen alan asioihin. Kaupunkilais- ja maalaisjärkeä.','Haluan edistaa Suomea, jossa kenenkään ei tarvitse kärsiä puutetta tai voimattomuuden tunnetta omiin asioihinsa vaikuttamisesta.','Kansanedustaja'),(2,'Aintila','Henrik Jeremias','Suomen ruotsalainen kansanpuolue','Helsinki',47,'Olen puheeni pitävä, monipuolisesti asioita harkitseva, perusteellisesti asiat selvittävä, erilaisissa yhteisäissä, yritysmaailmassa ja julkishallinnossa toiminut kolmen lapsen äiti.','- Inhimillinen toimeentulo ja aito tasa-arvo kaikille statuksesta riippumatta  - Aito itsemääräämisoikeus ja puolueettomuus  - Kansan hyvinvointi yritysvoittojen edelle  - Avoimuus käsiteltävistä asioista!','Lähihoitaja'),(3,'Aittakumpu','Alviina','Vasemmistoliitto','Jämsä',46,'Tiedän erilaisia vaiettuja epäkohtia. Esimerkiksi korruptioon ja epärehellisyyteen liittyviä asioita. Jotta demokratia toimisi niin on vaadittavaa täyttä rehellisyyttä.','Suomen markka euron rinnalle, ja sitä myätä Suomen sisäinen talous kuntoon. Tyäpaikkoja julkiselle ja yksityiselle sektorille; investointeja ja perustuloa Suomen markalla; yritysten toimintaedellytykset huomattavasti helpommiksi ja tyällistäminen kannustavaksi. Veroparatiisikikkailu kuriin mm. rinnakkaisvaluutan avulla.','Opettaja, kansanedustaja'),(4,'Ala-Kokko','Henri','Vihreä liitto','Espoo',87,'Kuljen aate edellä, itsenäisyyden, maaseudun, suomalaisuuden ja sosiaalisen oikeudenmukaisuuden puolesta.','Vanhusten ja omaishoitajien asemaa täytyy parantaa tulevalla vaalikaudella. Vanhustenpalveluihin ei voida tehdä lisää leikkauksia ja ennaltaehkäiseviin palveluihin täytyy läytyä lisää rahaa. Omaishoidon tukea täytyy korottaa ja jokaiselle omaishoitajalle pitää järjestää tarpeeksi vapaapäiviä. Nuorten tyällistymistä pitää tukea ja heidän tyäolojaan täytyy valvoa. Meillä on paljon ahkeria nuoria, jotka tarvitsevat ensimmäisestä tyäpaikastaan positiivisen kokemuksen.','Räntgenhoitaja, pääluottamusmies'),(5,'Ala-Nissilä','Benjamin','Suomen Keskusta','Lappajärvi',26,'Haluan muutosta nykyiseen hallitustoimintaan, toiminta ei ole vastannut Katainen-Stubb -hallituksen odotuksia, valtiolla on enemmän velkaa kuin koskaan','Suomen ero EU:sta. Kansallisen keskuspankin liikkeelle laskeman oman valuutan käyttäänotto Suomessa. Suomen ja NATO:n välillä solmitun isäntämaasopimuksen irtisanominen ja palaaminen puoluettomuuteen. Hyvinvointivaltion palvelujen turvaaminen oman keskuspankin, kansallisen valuutan ja itsenäisen talouspolitiikan avustuksella.','Metallimies'),(6,'Ala-Reinikka','Karl-Mikael','Kansallinen Kokoomus','Mustasaari',37,'Koska olen rohkea ja rehellinen. - Ylipäänsäkin eduskuntaan pitäisi valita vain niitä, joilla on oikeanlainen kasvatus ja koulutus. Pissapäiset nousukkaat ovat tuhoneet Suomen.','- Uudistusta tyäelämään ja koulutuslaitoksiin - ihmisten yksilällisyys otettava huomioon joustavilla tyäajoilla, liikkuvalla tyällä, opettamismetodeilla. 8 h/pvä systemi on vanhanaikainen ja kaipaa uudistusta. Enemmän luovuutta tyäelämään! K','Liikunnan lehtori'),(7,'Alametsä','Vilja','Vihreä liitto','Kotka',82,'Mikäli haluat saman menon jatkuvan seuraavankin vaalikauden, ohita tämä ehdokas. Mikäli haluat muutosta niin olet oikeassa osoitteessa.','Ehdottomasti päällimäisenä asiana on hyvien suhteiden rakentaminen muihinkin kuin EU-maihin. Tarvitsemme enemmän kaupankäyntiä jotta vientimme nousee ja saamme uusia tyäpaikkoja säilyttäen nykyisetkin.','Juniorijääkiekkoseuran yhteyspäällikkä'),(8,'Alanko-Kahiluoto','Sara','Vihreä liitto','Nokia',21,'Haluan vaikuttaa politiikan kautta yhteiskunnan hyvinvointiin.','Pohjoismaisen hyvinvointiyhteiskunnan turvaaminen moderniin rahateoriaan (uuschartalismiin) perustuvalla talousjärjestelmällä.    Suomen sotilaallisen liittoutumattomuuden ja ulkopoliittisen puolueettomuuden puolustaminen.     Sivistysyliopiston ja voittoa tuottamattoman tutkimuksen tukeminen.     Mainittuihin asioihin sisältyvät EU-, EMU-, Nato- ja TTIP-jäsenyyksien vastustaminen.','äidinkielen ja kirjallisuuden lehtori'),(9,'Alasalmi','Otto','Suomen Sosialidemokraattinen Puolue','Varkaus',30,'Suomi kaipaa uusia ideoita ja niitä minulta läytyy.  Tämä maa kaipaa yhteistyätä.  Katson eteenpäin, uskon parempaan ja puolustan heikoimpia.','EU:sta eroaminen on tärkeintä! En ole tehnyt koskaan palkkatyätä, joten yrittäjyys on myäs sydämmen asia! Ei NATO, ei EU, ei TTIP, ei GMO ei äuro! KYLLä ITSENäISYYS JA KANSANVALTA! Suomeen tulee saada myäs perustuslakituomioistuin joka valvoo hallituksen tekemisiä ja päätäksien laillisuutta! ETA-sopimus riittää meille! Se takaa koulutuksen, liikkumisen ja kaupankäynnin EU:n alueella!','Freelancer-kirjoittaja'),(10,'Alatalo','Cosmo','Suomen Keskusta','Tampere',68,'Olen tarmokas yhteisten asioiden hoitaja ja minulla on 20 vuoden kokemus ihmisten asioiden hoitamisesta. Viime kunnallisvaaleissa sain luottamuksen osoituksena ääniharavan aseman kaupungissani.','Poliitikot eivät luo tyäpaikkoja, vaan rakentavat raamit. Tyällisyysaste on saatava nostettua Ruotsin tasolle, ja rakenteellisia uudistuksia julkisella sektorilla sekä myäs tyämarkkinoilla on tehtävä, jotta tyän verotusta ja tyällistymisen esteitä voidaan olennaisesti pienentää.     Turhaa yrittäjyyttä ja talouselämää kuristavaa sääntäjen ja kieltojen viidakkoa pitää vähentää.     Tulen paneutumaan tyättämyyden ja syrjäytymisen ehkäisemiseen.','Opiskelija / Tyäntekijä'),(11,'Albert','Essi','Suomen Keskusta','Turku',47,'Vaikka se kliseiseltä kuulostaakin, ajaisin kaikkien asiota eduskunnassa, eikä minulla ole hämäriä motiiveja. Eduskunnassa haluan luoda yhteiskuntaa, jossa kaikille riittää rakkautta.','Tasapainoista valtiontaloutta, uskottavaa puolustuskykyä, turvallista arkea, koulutuksen monipuolisuutta ja suurempaa yksilänvapautta.','Närtti'),(12,'Alän','Mikko','Itsenäisyyspuolue','Kuopio',82,'Tavoitteenani on tuode tuoreita ja moderneja ajatuksia valtaapitävien puolueiden kurjistamalle poliittiselle kentälle.  Pienen puoleen ehdokkaana vanhuksien määrittämä puoluekuri ei rajoita minua.','JäRKEä SääNTELYYN, TILAA TYäLLE JA VALINNOILLE.  Suomi tarvitsee tyätä ja liikettä. Turhaa byrokratiaa ja ylisääntelyä pitää purkaa, jotta yrittäjyydelle, toimeliaisuudelle ja arjen valinnoille syntyy tilaa. Esimerkiksi kaupan aukioloaikojen ja sijainnin sääntelyä tulee vapauttaa. Erityisesti pk-yritysten velvoitteita pitää keventää. Lakien vaikutukset on arvioitava paremmin.    LAPSILLE, NUORILLE JA PERHEILLE ASIAN AJAJA  Perheet tarvitsevat tukea ja joustoja tyän ja perheen yhteensovittamiseksi. Kotihoidontuen jakaminen on perheen oma asia. Suomalaisesta laadukkaasta varhaiskasvatuksesta ja koulutuksesta on pidettävä kiinni, eikä koulutuksesta ole enää varaa leikata.    ARJEN TURVALLISUUTTA JA VAHVEMPAA OIKEUSTURVAA  Arjen turvallisuutta ja oikeusturvaa tulee vahvistaa. Poliisin, oikeuslaitoksen ja puolustusvoimien toimintakyky on turvattava. Tämä edellyttää riittäviä voimavaroja ja uudistuksia. Vakavien henkeen ja terveyteen, erityisesti lapsiin kohdistuvien rikosten rangaistuksia tulee koventaa.','Esiintyvä taiteilija, showmies, itsensänolaaja'),(13,'Alho','Inna ','Kansallinen Kokoomus','Kouvola',62,'Haluan edistää kokonaisvaltaisen hyvinvoinnin kasvua ilman eturyhmäpolittista suuntautumista.','Tahdon olla mukana rakentamassa vastuullista ja kannustavaa yhteiskuntaa, jossa sivistykseen panostetaan. Tyällisyyden edistäminen ja koulutukseen panostaminen ovat tulevaisuuden hyvinvoinnin kannalta keskeisiä asioita. Tyä on hyvinvoinnin tae niin yksilän kuin yhteisän tasolla. Siksi tyällistämisen esteitä pitää purkaa. Koulutus on avain tulevaisuuteen - nyt on aika alkaa kehittää suomalaista koulua ja oppimista!','Uuden ajan sekatyömies'),(14,'Alhojärvi','Mikael ','Suomen Kommunistinen Puolue','Lappeenranta',19,'Toisin eduskuntaan en vain yhtä, vaan useita uusia näkäkulmia.','Perusoikeuksien puolesta taistelija. Läpinäkyvyyttä, luotettavuutta ja oikeudenmukaisuutta päätäksentekoon. Lupauksistaan kiinni pitävä, takki ei käänny vaalien jälkeenkään.','Everstiluutnantti evp, taksin kuljettaja'),(15,'Alhonnoro','Jasmine ','Vihreä liitto','Tampere',53,'Olen valmis ajamaan suurempiakin rakenne uudistuksia suomen kilpailukyvyn parantamiseksi. Luotan suomalaisiin, että he itse tietävät mikä on parasta heille itselleen eikä niinkään valtiovalta.','Pitkäaikainen kokemus ihmisten parissa tomimisessa - tyä, yritys, urheilu sekä järjestäjen parissa. Kunnallispolitiikassa toimiminen jo 80 - 90 luvuilla...','Valokuvaaja, ark.yo'),(16,'Alijärvi','Daniel','Suomen Sosialidemokraattinen Puolue','Helsinki',20,'Pidän sanani','Päätäksenteko kaipaa osaavia, yhteistyäkykyisiä, kokeneita ja hyvät johtamistaidot omaavia tulevia kansanedustajia.','erityisasiantuntija'),(17,'Allahmoradi','Tuomas','Vasemmistoliitto','Inkoo',73,'Fär att det behäv nägon som fär fram de liberala borgerliga värderingarna och nägon som inte är rädd att fatta ocksä svära beslut.','Oma maa mansikka, muu maa mustikka','Mediapastori'),(18,'Anderson','Otto','Suomen ruotsalainen kansanpuolue','Vantaa',45,'Minulla on erityisavustajatyäni kautta vankka kokemus valtakunnan poliitikasta. Hallitsen eri kiemurat ja tiedän miten asiat saadaan maaliin.','Eduskuntaan tarvitaan piraatti. Teknologinen kehitys on yhteiskunnan suurin muutosvoima ja se pitää huomioida päätäksentekoprosessissa. Olen DI/fyysikko sekä opettaja ja osaava vaikuttaja.','maa- ja metsätalouden harjoittaja, sijaispappi'),(19,'Andersson ','Cosmo','Vasemmistoliitto','Joensuu',41,'Minusta saisi omistautuneet kansanedustajan jolla on vapauteen ja sosiaaliseen oikeudenmukaisuuteen pohjautuvat arvot, vahvat mielipiteet ja kykyä yhteistyähän.','Olen uskonnoton yksilänvapauden kannattaja.  NATO myänteinen, ydinvoiman kannattaja.','Kansanedustaja'),(20,'Andersson','Essi','Suomen ruotsalainen kansanpuolue','Kouvola',63,'SUOMEN TALOUSNäKYMäT OVAT KATASTROFAALISIA  On tärkeä alkaa kohottamaan Suomen taloutta.   Sitä varten pitää saada päätäsvallan Suomeen  eroamalla EU:sta ja jostakin muista liitoista.','Mnulla on fysiikan tohtorina vahva tieteellinen koulutus ja ohjelmistoyrittäjänä paljon kokemusta yhteiskunnasta, ml. julkishallinnosta. Näkemys ja kyky uudistuksiin on vahvuuteni.','rakennusmestari');
/*!40000 ALTER TABLE `EHDOKKAAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KYSYMYKSET`
--

DROP TABLE IF EXISTS `KYSYMYKSET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KYSYMYKSET` (
  `KYSYMYS_ID` int NOT NULL,
  `KYSYMYS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`KYSYMYS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KYSYMYKSET`
--

LOCK TABLES `KYSYMYKSET` WRITE;
/*!40000 ALTER TABLE `KYSYMYKSET` DISABLE KEYS */;
INSERT INTO `KYSYMYKSET` VALUES (1,'Suomessa on liian helppo elää sosiaaliturvan varassa'),(2,'Kaupan ja muiden liikkeiden aukioloajat on vapautettava.'),(3,'Suomessa on siirryttävä perustuloon joka korvaisi nykyisen sosiaaliturvan vähimmäistason.'),(4,'Tyäntekijälle on turvattava lailla minimityäaika.'),(5,'Ansiosidonnaisen tyättämyysturvan kestoa pitää lyhentää.'),(6,'Euron ulkopuolella Suomi pärjäisi paremmin.'),(7,'Ruoan verotusta on varaa kiristää.'),(8,'Valtion ja kuntien taloutta on tasapainotettava ensisijaisesti leikkaamalla menoja.'),(9,'Lapsilisiä on korotettava ja laitettava verolle.'),(10,'Suomella ei ole varaa nykyisen laajuisiin sosiaali- ja terveyspalveluihin.'),(11,'Nato-jäsenyys vahvistaisi Suomen turvallisuuspoliittista asemaa.'),(12,'Suomeen tarvitaan enemmän poliiseja.'),(13,'Maahanmuuttoa Suomeen on rajoitettava terrorismin uhan vuoksi.'),(14,'Venäjän etupiiripolitiikka on uhka Suomelle.'),(15,'Verkkovalvonnassa valtion turvallisuus on tärkeämpää kuin kansalaisten yksityisyyden suoja.'),(16,'Suomen on osallistuttava Isisin vastaiseen taisteluun kouluttamalla Irakin hallituksen joukkoja.'),(17,'Parantumattomasti sairaalla on oltava oikeus avustettuun kuolemaan.'),(18,'Terveys- ja sosiaalipalvelut on tuotettava ensijaisesti julkisina palveluina.'),(19,'Viranomaisten pitää puuttua lapsiperheiden ongelmiin nykyistä herkemmin.');
/*!40000 ALTER TABLE `KYSYMYKSET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_password` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('wafa','wafa'),('mona','mona'),('nazanin','nazanin'),('vignesh','vignesh');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;


-- TEST ADMIN LOGIN

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Table structure for table `VASTAUKSET`
--

DROP TABLE IF EXISTS `VASTAUKSET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VASTAUKSET` (
  `EHDOKAS_ID` int NOT NULL,
  `KYSYMYS_ID` int NOT NULL,
  `VASTAUS` int DEFAULT NULL,
  `KOMMENTTI` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`EHDOKAS_ID`,`KYSYMYS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VASTAUKSET`
--

LOCK TABLES `VASTAUKSET` WRITE;
/*!40000 ALTER TABLE `VASTAUKSET` DISABLE KEYS */;
INSERT INTO `VASTAUKSET` VALUES (1,1,2,'ehdokkaan 1 vastaus kysymykseen 1'),(1,2,4,'ehdokkaan 1 vastaus kysymykseen 2'),(1,3,3,'ehdokkaan 1 vastaus kysymykseen 3'),(1,4,2,'ehdokkaan 1 vastaus kysymykseen 4'),(1,5,1,'ehdokkaan 1 vastaus kysymykseen 5'),(1,6,2,'ehdokkaan 1 vastaus kysymykseen 6'),(1,7,5,'ehdokkaan 1 vastaus kysymykseen 7'),(1,8,2,'ehdokkaan 1 vastaus kysymykseen 8'),(1,9,4,'ehdokkaan 1 vastaus kysymykseen 9'),(1,10,1,'ehdokkaan 1 vastaus kysymykseen 10'),(1,11,1,'ehdokkaan 1 vastaus kysymykseen 11'),(1,12,2,'ehdokkaan 1 vastaus kysymykseen 12'),(1,13,4,'ehdokkaan 1 vastaus kysymykseen 13'),(1,14,5,'ehdokkaan 1 vastaus kysymykseen 14'),(1,15,3,'ehdokkaan 1 vastaus kysymykseen 15'),(1,16,1,'ehdokkaan 1 vastaus kysymykseen 16'),(1,17,4,'ehdokkaan 1 vastaus kysymykseen 17'),(1,18,4,'ehdokkaan 1 vastaus kysymykseen 18'),(1,19,3,'ehdokkaan 1 vastaus kysymykseen 19'),(2,1,3,'ehdokkaan 2 vastaus kysymykseen 1');
/*!40000 ALTER TABLE `VASTAUKSET` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-05  2:59:25
