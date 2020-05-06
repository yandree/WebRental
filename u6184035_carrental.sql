-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2020 at 09:55 AM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6184035_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '4709f737d9be9317b92e744283a8279e', '2020-03-12 05:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'yandre1804@gmail.com', 7, '2019-09-04', '2019-09-05', NULL, 1, '2019-09-03 18:51:10'),
(5, 'yandre1804@gmail.com', 7, '2019-09-04', '2019-09-05', NULL, 1, '2019-09-04 12:57:33'),
(6, 'yandre1804@gmail.com', 15, '2020-04-21', '2020-04-22', NULL, 2, '2020-04-21 04:36:43'),
(7, 'yandre1804@gmail.com', 15, '2020-05-05', '2020-05-07', NULL, 2, '2020-05-05 07:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Daihatsu', '2019-09-02 08:05:54', NULL),
(9, 'Toyota', '2019-09-02 08:06:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Perumah Buana Bukit Permata blok Ruby no. 20', 'yakup@arcarental.com', '+62 812-7723-3044');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Bonita Cook', 'noreply@thewordpressclub2454.info', '67 113 72 3', 'Hi There,\r\n\r\nAre you presently working with Wordpress/Woocommerce or do you want to work with it as time goes on ? We currently provide more than 2500 premium plugins and also themes completely free to get : http://ckurl.xyz/uCjTE\r\n\r\nThank You,\r\n\r\nBonita', '2019-09-13 17:08:15', NULL),
(3, 'Averybinue', 'averyblobekiz@gmail.com', '81515747198', 'Good day!  arcarental.com \r\n \r\nHave you ever heard of sending messages via contact forms? \r\n \r\nThink of that your letter will be readseen by hundreds of thousands of your future customerscustomers. \r\nYour message will not go to the spam folder because people will send the message to themselves. As an example, we have sent you our offer  in the same way. \r\n \r\nWe have a database of more than 35 million sites to which we can send your letter. Sites are sorted by country. Unfortunately, you can only select a country when sending a message. \r\n \r\nThe cost of one million messages 49 USD. \r\nThere is a discount program when you purchase  more than two million message packages. \r\n \r\n \r\nFree proof mailing of 50,000 messages to any country of your choice. \r\n \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - feedbackform@make-success.com', '2019-10-12 00:16:40', NULL),
(4, 'Erika Kaleski', 'noreply@gplforest5003.space', '(03) 5327 3', 'Hi,\r\n\r\nAre you currently utilizing Wordpress/Woocommerce or maybe do you actually want to use it as time goes on ? We currently provide much more than 2500 premium plugins and themes absolutely free to get : http://splate.xyz/2EgFH\r\n\r\nRegards,\r\n\r\nErika', '2019-10-12 22:38:17', NULL),
(5, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-320', 'Hey,\r\n\r\nYou have a website arcarental.com, right?\r\n\r\nOf course you do. I am looking at your website now.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says: Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nTalkWithCustomer makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive to find out how.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\nEMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - P MontesDeOca.\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=arcarental.com\r\n', '2019-10-13 13:26:42', NULL),
(6, 'JosephDerge', 'af.antocrespo@consultant.com', '83317271744', 'Dear friend, \r\n \r\nMy names are Mr. Razali Rubin Nawawi, a Malaysian lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$9.2 Million left behind by my late client before his tragic death. \r\n \r\nHowever, I am contacting you once again because after going through your profile, I strongly believe that you will be in a better position to execute this business transaction with me. Please if you are interested to proceed with me, kindly respond to my email urgently for more detail. \r\n \r\nThis transaction is 100% risk free and I Look forward to your response. \r\n \r\nRegards, \r\nMr. Razali Rubin Nawawi \r\nEmail: info@razalinawawiassociates.com-my.com \r\nTelephone: 011 601 760 41 490', '2019-10-24 09:43:40', NULL),
(7, 'RazaliDerge', 'af.antocrespo@consultant.com', '81871429556', 'Sorry, I realized my typical error in the email I sent to you. Please my correct email is Email: infomatinj@gmail.com \r\nMaybe you must have tried to write me and it bounce back as failure delivery. Once again my names are Mr. Razali Rubin Nawawi, a Malaysian lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$9.2 Million left behind by my late client before his tragic death. \r\n \r\nHowever, I am contacting you once again because after going through your profile, I strongly believe that you will be in a better position to execute this business transaction with me. Please if you are interested to proceed with me, kindly respond to my email urgently for more detail. \r\n \r\nThis transaction is 100% risk free and I Look forward to your response. \r\n \r\nRegards, \r\nMr. Razali Rubin Nawawi \r\nEmail Address: infomatinj@gmail.com \r\nTelephone: 011 601 760 41 490', '2019-10-24 19:33:08', NULL),
(8, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-320', 'Hi,\r\n\r\nMy name is Eric and I was looking at a few different sites online and came across your site arcarental.com.  I must say - your website is very impressive.  I am seeing your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithCustomer is a widget which captures a website visitor’s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website — while they\'re hot! Best feature of all, International Long Distance Calling is included!\r\n  \r\nTry TalkWithCustomer Live Demo now to see exactly how it works.  Visit http://www.talkwithcustomer.com\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We have a 14 days trial.  Visit http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nThanks and Best Regards,\r\nEric\r\n\r\nIf you\'d like to unsubscribe go to http://liveserveronline.com/talkwithcustomer.aspx?d=arcarental.com\r\n', '2019-11-13 02:32:10', NULL),
(9, 'MatthewFlelf', 'af.antocrespo@consultant.com', '89314963855', 'Dear friend, \r\n \r\nMy names are Mr. Razali Rubin Nawawi, a Malaysian lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$9.2 Million left behind by my late client before his tragic death. \r\n \r\nHowever, I am contacting you once again because after going through your profile, I strongly believe that you will be in a better position to execute this business transaction with me. Please if you are interested to proceed with me, kindly respond to my email urgently for more detail. \r\n \r\nThis transaction is 100% risk free and I Look forward to your response. \r\n \r\nRegards, \r\n \r\nMr. Razali Rubin Nawawi \r\nEmail: infomatinj@gmail.com \r\nTelephone: 011 601 760 41 490', '2019-11-14 12:00:02', NULL),
(10, 'Ramonrub', 'rodgerhew@outlook.com', '89582895728', 'Having related backlinks is a must in today`s SEO world \r\n \r\nSo, we are able to provide you with this great service at a mere price \r\nhttps://www.monkeydigital.co/product/related-backlinks/ \r\n \r\nYou will receive full report within 15 days \r\n500 to 1000 related backlinks will be provided in this service \r\n \r\n \r\nthanks and regards \r\nMonkey Digital Team \r\nsupport@monkeydigital.co', '2019-11-27 01:47:37', NULL),
(11, 'StephenUnero', 'stephenfek@gmail.com', '86496362661', 'hi there \r\nI have just checked %domain% for the ranking keywords and to see your SEO metrics and found that you website could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart boosting your business sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2019-12-02 18:10:47', NULL),
(12, 'AntonioMusty', 'yourmail@gmail.com', '84914426199', 'Hello. And Bye.', '2019-12-07 16:47:41', NULL),
(13, 'http://bit.ly/2DcNQht', 'network.diaspora.ch@gmail.com', '86333666947', 'There is niceoffer for you. http://bit.ly/2KSZTEJ', '2019-12-09 02:39:42', NULL),
(14, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-320', 'Hello,\r\n\r\nYou know it’s true…\r\n\r\nYour competition just can’t hold a candle to the way you DELIVER real solutions to your customers on your website arcarental.com.\r\n\r\nBut it’s a shame when good people who need what you have to offer wind up settling for second best or even worse.\r\n\r\nNot only do they deserve better, you deserve to be at the top of their list.\r\n \r\nTalkWithCustomer can reliably turn your website arcarental.com into a serious, lead generating machine.\r\n\r\nWith TalkWithCustomer installed on your site, visitors can either call you immediately or schedule a call for you in the future.\r\n \r\nAnd the difference to your business can be staggering – up to 100X more leads could be yours, just by giving TalkWithCustomer a FREE 14 Day Test Drive.\r\n \r\nThere’s absolutely NO risk to you, so CLICK HERE http://www.talkwithcustomer.com to sign up for this free test drive now.  \r\n\r\nTons more leads? You deserve it.\r\n\r\nSincerely,\r\nEric\r\nPS:  Odds are, you won’t have long to wait before seeing results:\r\nThis service makes an immediate difference in getting people on the phone right away before they have a chance to turn around and surf off to a competitor\'s website. D Traylor, Traylor Law  \r\nWhy wait any longer?  \r\nCLICK HERE http://www.talkwithcustomer.com to take the FREE 14-Day Test Drive and start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=arcarental.com\r\n', '2019-12-11 14:09:07', NULL),
(15, 'RE: MAKE $200,000 IN PASSIVE INCOME! TRUE STORY. How I make $10000 per month through Passive Income:', 'riem@ipact.nl', '#file_links', 'Fwd: $ 10,000 success story per week. Passive Income Idea 2020: $10000/month: https://sms.i-link.us/makemoney500365', '2019-12-19 19:51:13', NULL),
(16, 'Dating f?r s?x | ?ado?: https://ecuadortenisclub.com/adultdating796531', 'laurent.beauchesne@gmail.com', '#file_links', 'Adult dating sites e?st lond?n: http://www.nuratina.com/go/adultdatingsex737429', '2019-12-28 21:31:40', NULL),
(17, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-320', 'Hello arcarental.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve checked out your website arcarental.com.\r\n- NOT with a form letter style email that looks like it was written by a bot.\r\n- NOT with a robocall that could come at any time out of the blue.\r\n\r\nTalkWithCustomer connects you to that person within seconds of THEM asking to hear from YOU.\r\n\r\nThey kick off the conversation.\r\n\r\nThey take that first step.\r\n\r\nThey ask to hear from you regarding what you have to offer and how it can make their life better. \r\n\r\nAnd it happens almost immediately. In real time. While they’re still looking over your website arcarental.com, trying to make up their mind whether you are right for them.\r\n\r\nWhen you connect with them at that very moment it’s the ultimate in Perfect Timing – as one famous marketer put it, “you’re entering the conversation already going on in their mind.”\r\n\r\nYou can’t find a better opportunity than that.\r\n\r\nAnd you can’t find an easier way to seize that chance than TalkWithCustomer. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive and see what a difference “Perfect Timing” can make to your business.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS:  If you’re wondering whether NOW is the perfect time to try TalkWithCustomer, ask yourself this:\r\nWill doing what I’m already doing now produce up to 100X more leads?\r\nBecause those are the kinds of results we know TalkWithCustomer can deliver.  \r\nIt shouldn’t even be a question, especially since it will cost you ZERO to give it a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start your free 14-day test drive today.\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=arcarental.com\r\n', '2019-12-31 15:56:42', NULL),
(18, '?dult american d?ting websites ?nlin?: https://jtbtigers.com/bestsexygirls688747', 'wherman@prodigy.net', '#file_links', 'S?x dating in ??nad? | Girls for s?x in C?n?da: https://frama.link/bestsexygirls217070', '2020-01-01 08:38:43', NULL),
(19, 'KennethVer', 'raphaeblobekiz@gmail.com', '82345995126', 'Hello!  arcarental.com \r\n \r\nDid you know that it is possible to send letter completely legit? \r\nWe suggest a new way of sending commercial offer through feedback forms. Such forms are located on many sites. \r\nWhen such proposals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through contact Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis offer is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - feedbackform@make-success.com', '2020-01-09 10:11:16', NULL),
(20, 'Erf?lgsg?schicht? der p?ssiven Ein?omm?nsstrategien. S? g?nerieren Si? ein ?assiv?s Ein??mmen v?n 10', 'g_panarello@epost.de', '#file_links', '??ssives Ein?omm?n ??in? Erf?lgsg?s?hicht? in 1 M?n?t. V?rdien?n Sie $ 10000 ?assives ?ink?mm?n ?r? ??nat im J?hr 2020: https://frama.link/passiveincome319454', '2020-01-09 11:21:19', NULL),
(21, 'Beautiful wom?n for se? in ?our town ??n?d?: https://vae.me/MUhl', 'brentf5@hotmail.com', '#file_links', 'Dating sit? for s?? with girls in S?ain: https://links.wtf/o0HE', '2020-01-11 09:04:53', NULL),
(22, 'Th? best wom?n for se? in y?ur town USA: https://ecuadortenisclub.com/sexywoman510571', 'klowe@diamondmasonry.net', '#file_links', '?dult free d?ting sites in ?ast lond?n: https://bogazicitente.com/sexygirls815155', '2020-01-12 22:41:04', NULL),
(23, 'Dating sit? f?r s?x with girls in S?ain: https://jtbtigers.com/sexywoman358300', 'rectitude67@lycos.de', '#file_links', 'D?ting f?r se? | Great Britain: https://klurl.nl/?u=ydYMOTI', '2020-01-17 15:39:18', NULL),
(24, 'HilkomMoize', 'no-reply@hilkom-digital.de', '86993546655', 'hi there \r\nI have just checked arcarental.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2020-01-17 23:07:28', NULL),
(25, 'Adult #1 fre? d?ting a??: http://freeurlredirect.com/adultdating843878', 'fischertwins@t-online.de', '#file_links', '?dult zoos? 1 d?ting a?p itun?s: http://freeurlforwarder.com/datingsexygirlsinyourcity996477', '2020-01-26 21:25:43', NULL),
(26, 'Dating sit? f?r s?x with girls from S?ain https://ecuadortenisclub.com/adultdating711997', 'ela198410@hotmail.com', '81344922452', '?e?utiful girls f?r se? in ?our ?it? USA: https://jtbtigers.com/datingsexygirlsinyourcity987421', '2020-01-31 01:37:54', NULL),
(27, 'D?ting site f?r se? with girls in ??nad? http://jircu.uccbydje.xyz/65', 'josera83@hotmail.com', '86725528154', '?dult d?ting ?t 35 ??ars old: http://hmmr.thehomecomer.com/a03', '2020-02-02 16:08:44', NULL),
(28, 'Invest in mining ?ry?tocurren?y $ 5000 once and get ?assive income of $ 70000 per m?nth: https://jtb', 'smoth.heart12@gmail.com', '#file_links', 'Inv?st in Bitcoin ?nd e?rn fr?m $ 3000 ??r day: http://xsle.net/makemoney854319', '2020-02-04 07:46:41', NULL),
(29, 'Brianfam', 'no-reply@hilkom-digital.de', '88557531382', 'hi there \r\nI have just checked arcarental.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2020-02-12 11:18:29', NULL),
(30, 'Bernd Boggs', 'noreply@papawp2126.site', '427 8322', 'Hi,\r\n\r\nDo you know that your Wordpress site arcarental.com is very slow to load and that you lose visitors, leads and customers every day?\r\n\r\nWe have already optimized more than 2000 sites since 2015, why not yours? : http://urlds.xyz/t7jxi\r\n\r\nBest Regards,\r\n\r\nBernd', '2020-02-12 17:46:33', NULL),
(31, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-320', '\r\nHi,\r\n\r\nYou know it’s true…\r\n\r\nYour competition just can’t hold a candle to the way you DELIVER real solutions to your customers on your website arcarental.com.\r\n\r\nBut it’s a shame when good people who need what you have to offer wind up settling for second best or even worse.\r\n\r\nNot only do they deserve better, you deserve to be at the top of their list.\r\n \r\nTalkWithCustomer can reliably turn your website arcarental.com into a serious, lead generating machine.\r\n\r\nWith TalkWithCustomer installed on your site, visitors can either call you immediately or schedule a call for you in the future.\r\n \r\nAnd the difference to your business can be staggering – up to 100X more leads could be yours, just by giving TalkWithCustomer a FREE 14 Day Test Drive.\r\n \r\nThere’s absolutely NO risk to you, so CLICK HERE http://www.talkwithcustomer.com to sign up for this free test drive now.  \r\n\r\nTons more leads? You deserve it.\r\n\r\nSincerely,\r\nEric\r\nPS:  Odds are, you won’t have long to wait before seeing results:\r\nThis service makes an immediate difference in getting people on the phone right away before they have a chance to turn around and surf off to a competitor\'s website. D Traylor, Traylor Law  \r\nWhy wait any longer?  \r\nCLICK HERE http://www.talkwithcustomer.com to take the FREE 14-Day Test Drive and start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=arcarental.com\r\n\r\n', '2020-02-18 07:59:33', NULL),
(32, 'Inv?st $ 5,000 in ?r??tocurr?ncy on?e and g?t $ 70,000 ?assive inc?m? ?er m?nth: https://links.wtf/A', 'm0rph2011@yahoo.fr', '82374286373', 'F?rex + ?it??in = $ 8822 ?er w?ek: http://freeurlredirect.com/makemoney734096', '2020-02-18 10:47:18', NULL),
(33, 'H?w t? m?ke $3000 a d?y: https://ecuadortenisclub.com/earnmoney40705', 'cnybayton@yahoo.co.uk', '#file_links', 'If ??u invested $1,000 in bitcoin in 2011, now y?u h?v? $4 million: https://bogazicitente.com/getmoney834548', '2020-02-20 14:29:00', NULL),
(34, 'Anthonytoots', 'raphaeblobekiz@gmail.com', '87532145365', 'Hi!  arcarental.com \r\n \r\nDo you know the best way to talk about your products or services? Sending messages exploitation contact forms will permit you to easily enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that may be sent through it\'ll find yourself within the mailbox that\'s intended for such messages. Causing messages using Contact forms isn\'t blocked by mail systems, which implies it\'s sure to reach the client. You\'ll be able to send your offer to potential customers who were previously untouchable because of spam filters. \r\nWe offer you to check our service for complimentary. We are going to send up to 50,000 message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nEmail - make-success@mail.ru', '2020-02-22 16:12:57', NULL),
(35, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-320', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - arcarental.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across arcarental.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=arcarental.com\r\n', '2020-02-24 07:39:10', NULL),
(36, '?l?y ?nly th? ??st ?nlin? ?asin? G?mes - $897 B?nus + 422 Free Speens: http://zlnfjmr.tajmahalblackt', 'ecd6@hotmail.com', '#file_links', '??st ?nlin? ?asino in G?rm?n? - $955 ?onus + 523 Fr?e Spe?ns: http://tvervkxj.success-building.com/a32f', '2020-02-26 11:11:50', NULL),
(37, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-320', '\r\nHi,\r\n\r\nYou know it’s true…\r\n\r\nYour competition just can’t hold a candle to the way you DELIVER real solutions to your customers on your website arcarental.com.\r\n\r\nBut it’s a shame when good people who need what you have to offer wind up settling for second best or even worse.\r\n\r\nNot only do they deserve better, you deserve to be at the top of their list.\r\n \r\nTalkWithCustomer can reliably turn your website arcarental.com into a serious, lead generating machine.\r\n\r\nWith TalkWithCustomer installed on your site, visitors can either call you immediately or schedule a call for you in the future.\r\n \r\nAnd the difference to your business can be staggering – up to 100X more leads could be yours, just by giving TalkWithCustomer a FREE 14 Day Test Drive.\r\n \r\nThere’s absolutely NO risk to you, so CLICK HERE http://www.talkwithcustomer.com to sign up for this free test drive now.  \r\n\r\nTons more leads? You deserve it.\r\n\r\nSincerely,\r\nEric\r\nPS:  Odds are, you won’t have long to wait before seeing results:\r\nThis service makes an immediate difference in getting people on the phone right away before they have a chance to turn around and surf off to a competitor\'s website. D Traylor, Traylor Law  \r\nWhy wait any longer?  \r\nCLICK HERE http://www.talkwithcustomer.com to take the FREE 14-Day Test Drive and start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=arcarental.com\r\n', '2020-03-06 05:43:18', NULL),
(38, 'Williameramn', 'no-reply@ghostdigital.co', '84571138738', 'Increase your arcarental.com ranks with quality web2.0 Article links. \r\nGet 500 permanent web2.0 for only $39. \r\n \r\nMore info about our new service: \r\nhttps://www.ghostdigital.co/web2/', '2020-03-10 21:31:00', NULL),
(39, 'Kevinjub', 'info@arcarental.com', '85599865455', 'Hi there \r\n \r\nBuy all models of Gucci Belts only 19.99 dollars. Please check our site: topbuy.online \r\n \r\nMany Thanks, \r\n \r\nCarForYou - Responsive Car Dealer HTML5 Template - arcarental.com', '2020-03-12 17:48:27', NULL),
(40, 'Lashonda Arevalo', 'arevalo.lashonda@hotmail.com', '0349 953742', 'Hi,\r\n\r\nWe\'re wondering if you\'ve ever considered taking the content from arcarental.com and converting it into videos to promote on Youtube using Content Samurai? You simply add the text and it converts it into scenes that make up a full video. No special skills are needed, and there\'s access to over 1 million images/clips that can be used.\r\n\r\nYou can read more about the software here: https://turntextintovideo.com - there\'s also a link to a totally free guide called the \'Youtube SEO Cheat Sheet\', full of fantastic advice on how to help your site rank higher in Youtube and in Google.\r\n\r\nKind Regards,\r\nLashonda', '2020-03-15 19:06:42', NULL),
(41, 'Marla Ryan', 'expiry@arcarental.com', '', 'ATTN: arcarental.com / CarForYou - Responsive Car Dealer HTML5 Template SERVICE\r\nThis notice EXPIRES ON: Mar 20, 2020.\r\n\r\nWe tried to contact you but were unable to reach you.\r\n\r\nPlease Visit: https://bit.ly/38ZJ9Vm ASAP.\r\n\r\nFor information and to make a discretionary payment for arcarental.com services.\r\n\r\n\r\n\r\n03202020204719.\r\n', '2020-03-21 00:47:22', NULL),
(42, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-320', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found arcarental.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=arcarental.com\r\n', '2020-03-24 19:08:36', NULL),
(43, 'JerryGooda', 'no-replyblobekiz@gmail.com', '87932844198', 'Good day!  arcarental.com \r\n \r\nDid you know that it is possible to send commercial offer absolutely legally? \r\nWe offer a new legitimate method of sending appeal through contact forms. Such forms are located on many sites. \r\nWhen such proposals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through feedback Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - feedbackform@make-success.com', '2020-03-29 13:33:14', NULL),
(44, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-320', 'Hey, this is Eric and I ran across arcarental.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=arcarental.com\r\n', '2020-04-01 19:35:58', NULL),
(45, 'Barbara Atyson', 'barbaratysonhw@yahoo.com', '60 617 63 1', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site arcarental.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\nhttps://www.youtube.com/watch?v=Ut6Wq3cjRys\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n0-1 minutes = $159\r\n1-2 minutes = $285\r\n2-3 minutes = $419\r\n\r\n*All prices include a custom video, full script and a voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nKind Regards,\r\nBarbara', '2020-04-06 14:29:29', NULL),
(46, 'Rickey Silverman', 'rickey.silverman@hotmail.com', '483 22 644', 'Hi,\r\n\r\nWe\'re wondering if you\'ve ever considered taking the content from arcarental.com and converting it into videos to promote on Youtube using Content Samurai? You simply add the text and it converts it into scenes that make up a full video. No special skills are needed, and there\'s access to over 1 million images/clips that can be used.\r\n\r\nYou can read more about the software here: https://turntextintovideo.com - there\'s also a link to a totally free guide called the \'Youtube SEO Cheat Sheet\', full of fantastic advice on how to help your site rank higher in Youtube and in Google.\r\n\r\nKind Regards,\r\nRickey', '2020-04-08 08:39:34', NULL),
(47, 'Rene Isaac', 'isaac.rene81@gmail.com', '929 54 930', 'Do you want more people to visit your website? Get tons of keyword targeted visitors directly to your site. Boost your profits fast. Start seeing results in as little as 48 hours. For additional information Check out: http://www.trafficmasters.xyz', '2020-04-09 20:32:04', NULL),
(48, 'Betty Pack', 'betty.pack17@msn.com', '940-996-505', '\r\nTired of paying for clicks and getting lousy results? Now you can post your ad on 10,000 advertising websites and it\'ll only cost you one flat fee per month. Get unlimited traffic forever! \r\n\r\nGet more info by visiting: http://www.adpostingrobot.xyz', '2020-04-12 23:00:06', NULL),
(49, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-320', 'Hi, my name is Eric and I’m betting you’d like your website arcarental.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at arcarental.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=arcarental.com\r\n', '2020-04-17 05:36:10', NULL),
(50, 'Lance Degotardi', 'expiry@arcarental.com', '02.99.55.88', 'ATTN: arcarental.com / Arca Rental  WEB SITE SERVICES\r\nThis notice RUNS OUT ON: Apr 19, 2020\r\n\r\nWe have not gotten a settlement from you.\r\nWe\'ve attempted to call you yet were incapable to reach you.\r\n\r\nPlease Browse Through:  https://bit.ly/3coDhY1 ASAP.\r\n\r\nFor details and also to make a optional settlement for solutions.\r\n\r\n\r\n04192020113052.\r\n', '2020-04-19 15:30:55', NULL),
(51, 'Kirsten Armit', 'kirsten.armit@yahoo.com', '0386 242350', 'Greetings, I was just taking a look at your site and filled out your feedback form. The contact page on your site sends you messages like this via email which is why you are reading my message at this moment correct? That\'s half the battle with any type of advertising, getting people to actually READ your advertisement and I did that just now with you! If you have something you would like to blast out to lots of websites via their contact forms in the US or anywhere in the world send me a quick note now, I can even focus on your required niches and my costs are very low. Send a message to: trinitybeumer@gmail.com\r\n\r\nIn the event that you would like to be deleted from our list please go to: https://bit.ly/3cvHuJC', '2020-04-19 19:11:42', NULL),
(52, 'Claudia Clement', 'claudiauclement@yahoo.com', '06564 88 87', 'Hi, We are wondering if you would be interested in our service, where we can provide you with a dofollow link from Amazon (DA 96) back to arcarental.com?\r\n\r\nThe price is just $77 per link, via Paypal.\r\n\r\nTo explain what DA is and the benefit for your website, along with a sample of an existing link, please read here: https://justpaste.it/6jp87\r\n\r\nIf you\'d be interested in learning more, reply to this email but please make sure you include the word INTERESTED in the subject line field, so we can get to your reply sooner.\r\n\r\nKind Regards,\r\nClaudia', '2020-04-23 00:13:29', NULL),
(53, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-320', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found arcarental.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=arcarental.com\r\n', '2020-04-23 05:07:18', NULL),
(54, 'Jorg Dunshea', 'jorg.dunshea@gmail.com', '06-63096622', 'Greetings, I was just checking out your website and filled out your feedback form. The contact page on your site sends you messages like this via email which is why you are reading through my message at this moment correct? This is the holy grail with any type of advertising, getting people to actually READ your ad and this is exactly what you\'re doing now! If you have an ad message you would like to blast out to tons of websites via their contact forms in the U.S. or anywhere in the world send me a quick note now, I can even target specific niches and my costs are super reasonable. Send a reply to: Trinitybeumer@gmail.com\r\n\r\ndiscontinue seeing these ad messages https://bit.ly/2VzubCe', '2020-04-29 11:49:45', NULL),
(55, 'Kiara Cheyne', 'kiara.cheyne@outlook.com', '477 1298', '\r\nTired of paying for clicks and getting lousy results? Now you can post your ad on 5000 advertising websites and it\'ll cost you less than $40. These ads stay up forever, this is a continual supply of organic visitors! \r\n\r\nTake a look at: http://bit.ly/adpostingrobot', '2020-05-02 07:17:01', NULL),
(56, 'Tracey Maness', 'info@arcarental.com', '', 'Hey there\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.99 each.  If interested, please visit our site: pharmacyusa.online\r\n\r\nThank You,\r\n\r\nCarForYou - Responsive Car Dealer HTML5 Template - arcarental.com', '2020-05-03 21:53:11', NULL),
(57, 'Xavier Bannan', 'bannan.xavier81@gmail.com', '06-14320971', 'Interested in advertising that costs less than $50 every month and delivers thousands of people who are ready to buy directly to your website? For details visit: http://www.trafficmasters.xyz \r\n\r\n', '2020-05-05 20:07:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(128) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Yandre', 'yandre1804@gmail.com', '4709f737d9be9317b92e744283a8279e', '081275003464', NULL, NULL, NULL, NULL, '2019-09-02 20:04:47', '2020-03-12 05:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` varchar(128) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(15, 'Xenia', 8, NULL, '250.000', 'BP 1379 AJ', 2018, 6, 'xenia1.jpg', 'xenia1.jpg', 'xenia1.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-06 06:27:37', '2019-09-07 15:42:27'),
(16, 'Xenia', 8, NULL, '250.000', 'BP 1410 MA', 2017, 6, 'xenia1.jpg', 'xenia1.jpg', 'xenia1.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-06 06:29:32', '2019-09-06 06:30:07'),
(17, 'Xenia', 8, NULL, '250.000', 'BP 1302 MO', 2018, 6, 'xenia3.jpg', 'xenia4.jpg', 'xenia3.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-06 06:31:23', NULL),
(18, 'Avanza', 9, NULL, '250.000', 'BP 1401 JD', 2016, 6, 'avan4.png', 'avan5.png', 'avan6.png', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-06 06:35:52', NULL),
(19, 'Calya', 9, NULL, '250.000', 'BP 1408 MO', 2018, 6, 'calya.png', 'calya2.png', 'calya.png', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-06 06:41:09', NULL),
(20, 'Avanza', 9, NULL, '250.000', 'BP 1786 JE', 2016, 6, 'ava7.jpg', 'ava7.jpg', 'ava7.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-06 06:46:09', NULL),
(21, 'Xenia', 8, NULL, '300.000', 'BP 1083 DG', 2019, 6, 'xenia6.1.jpg', 'xenia7.1.jpg', 'xenia6.2.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-07 16:14:10', NULL),
(22, 'Xenia', 8, NULL, '250.000', 'BP 1338 MQ', 2018, 6, 'xenia3.jpg', 'xenia4.jpg', 'xenia3.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-07 16:19:33', NULL),
(23, 'Sigra', 8, NULL, '250.000', 'BP 1581 MF', 2018, 6, 'sigra1.png', 'sigra.png', 'sigra1.1.png', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-07 16:23:58', NULL),
(24, 'Terios', 8, NULL, '250.000', 'BP 1234 DF', 2015, 6, 'terios1.jpg', 'terios2.jpg', 'terios1.1.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-07 16:28:38', NULL),
(25, 'Innova', 9, NULL, '250.000', 'BP 1807 JA', 2011, 6, 'kijang.jpg', 'kijang1.jpg', 'kijang2.jpg', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, '2019-09-07 16:31:54', NULL),
(26, 'Terios', 8, NULL, '250.000', 'BP 1743 HI', 2015, 6, 'terios5.png', 'terios6.png', 'terios5.1.png', NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2019-09-07 16:34:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
