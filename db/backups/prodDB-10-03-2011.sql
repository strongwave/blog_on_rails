-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: typo
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles_tags`
--

DROP TABLE IF EXISTS `articles_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_tags` (
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_tags`
--

LOCK TABLES `articles_tags` WRITE;
/*!40000 ALTER TABLE `articles_tags` DISABLE KEYS */;
INSERT INTO `articles_tags` VALUES (3,4),(3,2),(3,3),(3,5),(7,2),(7,5),(7,6),(9,5),(9,7),(9,8),(11,9),(11,8),(11,3),(11,10),(11,5),(14,11);
/*!40000 ALTER TABLE `articles_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci,
  `base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'---\ncanonical_server_url: \'\'\nblog_name: Strong Wave Tech Blog\ntheme: gray_style\nblog_subtitle: \'\'\nlang: en_US\nallow_signup: 0\nemail_from: typo@example.com\nadmin_display_elements: 10\ndate_format: ! \'%d/%m/%Y\'\ntime_format: ! \'%I:%M%p\'\nlimit_article_display: 10\nlimit_rss_display: 10\nhide_extended_on_rss: false\nfeedburner_url: \'\'\n','http://libomeyers.com');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'General',1,'general',NULL,NULL,NULL),(2,'Technical',2,'technical','Computer science, programming','Anything technical goes here',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorizations`
--

DROP TABLE IF EXISTS `categorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorizations`
--

LOCK TABLES `categorizations` WRITE;
/*!40000 ALTER TABLE `categorizations` DISABLE KEYS */;
INSERT INTO `categorizations` VALUES (1,NULL,2,NULL),(2,NULL,2,NULL),(3,NULL,2,NULL),(4,4,2,NULL),(5,NULL,2,NULL),(6,NULL,2,NULL),(7,NULL,2,NULL),(8,NULL,2,NULL),(9,NULL,2,NULL),(10,NULL,2,NULL),(11,NULL,2,NULL),(12,NULL,2,NULL),(13,NULL,2,NULL),(14,NULL,2,NULL),(15,NULL,2,NULL),(16,3,2,NULL),(17,7,2,NULL),(18,9,2,NULL),(19,NULL,2,NULL),(20,11,2,NULL),(21,14,2,NULL);
/*!40000 ALTER TABLE `categorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `extended` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `allow_pings` tinyint(1) DEFAULT NULL,
  `allow_comments` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `post_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'read',
  PRIMARY KEY (`id`),
  KEY `index_contents_on_published` (`published`),
  KEY `index_contents_on_text_filter_id` (`text_filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (3,'Article','How to Setup a Professional Blog in One Day Using Rails 3 + RVM + Passenger + Ngnix ','admin','<p>\r\n	So finally I got some time to setup a blog so that I can use it as a scratch book writting down things I&#39;ve learnt. It took me about a day. When I say &quot;Professional&quot;, I do not mean how pretty and fancy it is. I mean setting it up hard-core style from nothing. Not by just open an account on blogger or wordpress. Why? you may ask.</p>\r\n<h2>\r\n	<strong>Why do you need to setup your own blog with 100% control?<br />\r\n	</strong></h2>\r\n<ul>\r\n	<li>\r\n		You can control the code runs on your blog. Adding new features, play with plug ins etc. I do not mean only change theme like most blogging site allow you do.</li>\r\n	<li>\r\n		In your post, you can do whatever you like - support html5, javascript ...</li>\r\n	<li>\r\n		You own everything, back up, transfer, new cool stuff you want to do as a programmer.</li>\r\n</ul>\r\n<p>\r\n	<br />\r\n	Now next I will talk about the steps that involved</p>\r\n<h2>\r\n	Where to register a domain name?</h2>\r\n<p>\r\n	Whereever you go, do NOT do it with godaddy. Why? see the following</p>\r\n<ul>\r\n	<li>\r\n		expensive, about twice as others</li>\r\n	<li>\r\n		annoying, they call you, email you, and try to sell you the whole world</li>\r\n	<li>\r\n		may have problem in the future, I heard horrible stories</li>\r\n</ul>\r\n<p>\r\n	I would recommend you pick wherever you want to host your server, they usually have a good bundle price. If you are not registering with who you hosting, you need to go to your registration location and find DNS manager, then make sure the domain use your hosting server name server. there should be configuration for you.</p>\r\n<h2>\r\n	Where to host your server?</h2>\r\n<p>\r\n	Three choice: cloud (expensive, scallable), VPS (your own server setup from scratch, medium cost), or shared hosting (cheapest, but you need to share space, lots of constrains on what you can and cannot do).</p>\r\n<p>\r\n	For me I choose VPS hosting, since I like full control of the environment and no need to deal with a lot of scrtaching my head on shared host and try to figure out where to install mysql.</p>\r\n<p>\r\n	There are lots of reviews you can read online about this. At the end, I choose<a href=\"http://www.linode.com/\"> linode</a></p>\r\n<p>\r\n	The basic one node service cost me about $20 a month, but everything is super easy to setup - assuming you are a linux junky and programmer like me.</p>\r\n<h2>\r\n	Setting Up a Blog Service with Ngnix/Rails3/RVM/Passenger</h2>\r\n<p>\r\n	Now you have a box on Linode, the fun starts. During the box setup, you can choose your linux flavor, and of course you should choose the latest ubuntu, cause they are awesome and easy. Then you log in, do adduser stuff so that you can setup application user.</p>\r\n<p>\r\n	Install git</p>\r\n<pre>$ apt-get install git-core\r\n</pre>\r\n<p>\r\n	install rvm</p>\r\n<pre><em>$ bash &lt; &lt;(curl -s https://rvm.beginrescueend.com/install/rvm)</em></pre>\r\n<p>\r\n	Make sure rvm in command path</p>\r\n<pre><em>$ [[ -s &quot;/home/appuser/.rvm/scripts/rvm&quot; ]] &amp;&amp; source &quot;/home/appuser/.rvm/scripts/rvm&quot;</em></pre>\r\n<p>\r\n	Install Ruby</p>\r\n<pre><em>\r\n$ sudo apt-get update\r\n$ sudo apt-get install build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake\r\n$ rvm install 1.9.2\r\n</em></pre>\r\n<p>\r\n	Create Gemset</p>\r\n<p>\r\n	&nbsp;</p>\r\n<pre><em>$ rvm gemset create rails3010</em></pre>\r\n<p>\r\n	Now you need to drop your application to the folder you want to deploy and make sure it is setup and running<br />\r\n	There are many blog app for rails, I choose <a href=\"http://fdv.github.com/typo/\">typo</a> because it is light weight and can be customized easy. Latest one now is rails 3.0.10<br />\r\n	download the latest one and put into your folder</p>\r\n<pre><em>$ rvm use 1.9.2@rails3010\r\n\r\n$ rvm install rails -v 3.0.10\r\n</em></pre>\r\n<p>\r\n	Before bundle install, you need to make sure your system has all mysql stuff setup</p>\r\n<p>\r\n	&nbsp;</p>\r\n<pre><em>$ sudo apt-get install libmysql-ruby libmysqlclient-dev mysql-client</em></pre>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Make sure gem &#39;passenger&#39; is inside your Gemfile before run bundle install</p>\r\n<pre><em>$ bundle install\r\n$ rake db:create RAILS_ENV=&#39;production&#39;\r\n$ rake db:migrate RAILS_ENV=&#39;production&#39;\r\n</em></pre>\r\n<p>\r\n	Do a test run on your app without passenger and ngnix</p>\r\n<pre><em>$ rails s -p 3000 -e production</em></pre>\r\n<p>\r\n	<br />\r\n	If it runs, you are ready to move on, or else you need to go back to your typo app and see why won&#39;t it run, worst case, just create a new app and make sure environments are all ok</p>\r\n<p>\r\n	Now move onto Passenger + Ngnix</p>\r\n<p>\r\n	Since you already have rvm and passenger, all you need to do now is run</p>\r\n<pre><em>$ rvmsudo passenger-install-nginx-module</em></pre>\r\n<p>\r\n	It cost me 2 hr time by building things from source and try to get it run, if then I found I use rvmsudo, just follow instruction then everything is fine and danddy</p>\r\n<p>\r\n	After your nginx is installed, You need to configure the conf file at /opt/nginx/conf/nginx.conf, here is one example</p>\r\n<script src=\"https://gist.github.com/1234089.js\"> </script><p>\r\n	Then copy the following into file /etc/init.d/ngnix so that you can run start/stop/restart easily.</p>\r\n<script src=\"https://gist.github.com/1234067.js\"> </script><p>\r\n	Restart your ngnix, go visit your website, it should be up and running. If any questions on ngnix, there is no better source than offical one <a href=\"http://modrails.com/documentation/Users%20guide%20Nginx.html\">here</a></p>\r\n','','','2011-09-21 07:06:56','2011-09-23 20:06:11',1,'How to Setup a Professional Blog in One Day Using Rails 3 + RVM + Passenger + Ngnix ','99645d16-e557-493a-a37b-300070bd234a',1,NULL,NULL,1,0,1,'2011-09-21 21:41:00','published',NULL,'---\npassword: \'\'\n','read'),(6,'Article','Bootstrap - Best CSS Package Ever !','admin','<p>\n	Just spent a lot of time on github to do code socialing, and run into this. </p>\n<p>\n	<a href=\"http://twitter.github.com/bootstrap/\">http://twitter.github.com/bootstrap/<br />\n	</a></p>\n<p>\n	If I knew this 3 months ago, </p>\n','','','2011-09-23 05:09:59','2011-09-23 05:12:59',1,'bootstrap-best-css-package-ever','c80fbb0b-f0f9-49e9-83f3-98b72cbac9b1',1,NULL,NULL,0,0,1,NULL,'draft',NULL,'---\npassword: \'\'\n','read'),(7,'Article','Rails 3 App Deployment Using Capistrano + RVM','admin','<p>\r\n	If you are like me who has been using capistrano to deploy production server, but now switching to rvm for package management, all of a sudden, your deploy.rb file won\'t work. Took me a while to figure out why my cap deployment keep having problem loading enviornment.</p>\r\n<p>\r\n	You need to add the following line into the head of your deploy.rb file so that it gets which rvm environment to load. Note that you need to replace the value for <span class=\"ss\">:rvm_ruby_string with your own enviornment. </span></p>\r\n<script src=\"https://gist.github.com/1238482.js\"> </script>\r\n<p>\r\n	If you never used rvm before -- try it, it is great to develope multiple apps with each one has their own ruby/rails enviornment. Find details here <a href=\"http://beginrescueend.com/\">http://beginrescueend.com/</a></p>\r\n<p>\r\n	If you never used capistrano to deploy prod server, try it here<a href=\"https://github.com/capistrano/capistrano/wiki\"> https://github.com/capistrano/capistrano/wiki</a></p>\r\n','','','2011-09-23 21:24:40','2011-09-23 21:38:40',1,'rails-3-app-deployment-using-capistrano-rvm','632ff383-d893-4143-af3d-f559699b5d57',1,NULL,NULL,1,0,1,'2011-09-23 21:34:00','published',NULL,'---\npassword: \'\'\n','read'),(9,'Article','Control Your Rails Application with \'Bundle Pack\' with gems shipped along','admin','<p>\r\n	If you are developing locally, once in a while when you are deploying, you get something like &quot;Could not find [gem] locally or in a repository&quot; error. It bothers me when the gems I used for a certain application is not packaged together with the app, instead locating at <a href=\"http://rubygems.org\">rubygems.org</a>.</p>\r\n<p>\r\n	<br />\r\n	So it is good to know there is such a command</p>\r\n<pre>&gt;&gt; bundle pack</pre>\r\n<p>\r\n	you can run locally that will download all .gem files and pack them under RAILS_ROOT/vendor/cache. After you checked that into your source control, when deploy onto production, your server will get gems from vendor/cache instead of rubygems.org.</p>\r\n<p>\r\n	The other command</p>\r\n<pre>&gt;&gt; bundle install --path ./vendor \r\n</pre>\r\n<p>\r\n	will make sure all your gems are installed locally at current RAILS_ROOT/vendor</p>\r\n<p>\r\n	A very comprehensive cast that helped me idenfy this is at <a href=\"http://asciicasts.com/episodes/201-bundler\">http://asciicasts.com/episodes/201-bundler</a></p>\r\n<p>\r\n	However when you deploy using capistrano, you want to use</p>\r\n<pre>&gt;&gt;bundle install</pre>\r\n<p>\r\n	without specifying path, the magic automatically occured on production server -- it checks if there is any gems under vendor/cache, if there are gems, it will install from there. Because it is a production server, it actually install all the gems to RAILS_ROOT/../shared/bundle/ruby/RUBY_VERSION automatically.</p>\r\n','','','2011-09-27 23:29:46','2011-09-28 18:04:03',1,'control-your-rails-application-with-bundle-pack-with-gems-shipped-along','46c51eca-775b-401e-9055-0675b2650550',1,NULL,NULL,1,0,1,'2011-09-27 23:34:00','published',NULL,'---\npassword: \'\'\n','read'),(10,'Article','Draft article 10','admin',NULL,'','','2011-09-28 18:02:36','2011-09-28 18:03:06',1,'draft-article-10','d102b6e7-b7f3-4abb-baaf-1618d78dadd5',1,NULL,NULL,0,0,1,NULL,'draft',NULL,'---\npassword: \'\'\n','read'),(11,'Article','Install Ruby, Configure passenger / apache 2 with gem configuration','admin','<p>\r\n	I have a few old systems that was not using rvm, so once in a while I have to upgrade ruby and do some work from sctach. Here are the list of things that needs to be done on a production server</p>\r\n<p>\r\n	1) Install latest ruby package</p>\r\n<script src=\"https://gist.github.com/1248732.js\"> </script><p>\r\n	2) After that all your old gem is gone, no worries, in <a href=\"http://libomeyers.com/2011/09/27/control-your-rails-application-with-bundle-pack-with-gems-shipped-along\">last article</a> I mentioned how to package your application with the gems you needed to install and install it to production shared location.</p>\r\n<p>\r\n	To make sure you have the right enviornment for your gems, do a</p>\r\n<pre>&gt;&gt; gem env</pre>\r\n<p>\r\n	and make sure the GEM_HOME value is pointed to your shared folder. If not, you can either set this value (put in your bashrc file), then re-install your passenger apache module file so that it generate the file apache2 needed.</p>\r\n<script src=\"https://gist.github.com/1248817.js\"> </script><p>\r\n	This will generate a .so file for you also re-configure passenger for apache</p>\r\n<p>\r\n	4) Now you need to edit system apache file to make sure appache knows where passenger conf file is</p>\r\n<pre>&gt;&gt; sudo nano&nbsp; /etc/httpd/conf/httpd.conf&nbsp;</pre>\r\n<p>\r\n	Make sure the following lines are pointing to the right path.</p>\r\n<script src=\"https://gist.github.com/1248820.js\"> </script><p>\r\n	5) restart your apache, then your production is back up</p>\r\n<pre>&gt;&gt; sudo /etc/init.d/httpd restart\r\n</pre>','','','2011-09-28 18:17:29','2011-09-28 18:41:02',1,'install-ruby-configure-passenger-apache-2-with-gem-configuration','c09ba0a1-1adf-4674-a442-f9efc8172b55',1,NULL,NULL,1,0,1,'2011-09-28 18:15:00','published',NULL,'---\npassword: \'\'\n','read'),(13,'Page','About ',NULL,'<p>\r\n	Hi, I work as a software manager for a hig-htech company in Silicon Valley.<br />\r\n	My professional background can be found in my &lt;a href=&quot;http://www.linkedin.com/in/libomeyers&quot;&gt; linkedin profile&lt;/a&gt;<br />\r\n	&nbsp;</p>\r\n',NULL,NULL,'2011-09-28 23:13:09','2011-09-28 23:15:44',1,NULL,NULL,5,NULL,'about',0,NULL,NULL,'2011-09-28 23:13:09',NULL,NULL,'--- ! \'--- ! \"--- ! \'\'--- ! \'\'\'\'--- {}\\n\\n\\n  \'\'\'\'\\n\\n\'\'\\n\"\n\n\'\n','read'),(14,'Article','HTML5 Tutorial - 1','admin','<script type=\"text/javascript\">\r\nfunction testBrowserHtml5Support()\r\n{if (Modernizr.canvas) {\r\nalert(\"Your browser support html5 canvas tag!\")\r\n} else {\r\nalert(\"Your browser does NOT support html5 canvas tag!\")\r\n}\r\n}\r\n</script>\r\n<p>\r\n	If you want to learn html5, you need to read this book <a href=\"http://diveintohtml5.org\">Dive into HTML5</a> It is one of the best technical books I\'ve read so far. Even if you are not a programmer, read the first chapter and admire internet\'s envolvements.</p>\r\n<p>\r\n	This tutorial is basically saving your time to extract all the important technical details out so that you can finish it in a couple of hours, but also get all the essence of the book.</p>\r\n<p>\r\n	Q: How do you know if a page is written in html5 standard?</p>\r\n<p>\r\n	A: The page should be something like below, note the first line marks it as html5 standard</p>\r\n<script src=\"https://gist.github.com/1252214.js\"> </script><p>\r\n	Q: How to detect browser support for html5?</p>\r\n<p>\r\n	A: Use Modernizr library to detect html5 support for almost all html5 features, To use it, include the script tag at the top of your page.</p>\r\n<script src=\"https://gist.github.com/1252243.js\"> </script><p>\r\n	Q: Show me one example using modernizr for html5 support detection</p>\r\n<p>\r\n	A: The button below will trigger a demo telling your current brower html5 support</p>\r\n<p>\r\n	<button onclick=\"testBrowserHtml5Support()\" type=\"button\">Test My Browser Html5 Support</button></p>\r\n<p>\r\n	Code used as below</p>\r\n<script src=\"https://gist.github.com/1252325.js\"> </script>','','','2011-09-29 23:10:13','2011-09-30 00:58:08',1,'html5-tutorial-1','2f0a7e6b-8ccf-4e5f-8727-6f1a2327f976',1,NULL,NULL,1,0,1,'2011-09-29 23:09:00','published',NULL,'---\npassword: \'\'\n','read');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text COLLATE utf8_unicode_ci,
  `article_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_confirmed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feedback_on_article_id` (`article_id`),
  KEY `index_feedback_on_text_filter_id` (`text_filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_caches`
--

DROP TABLE IF EXISTS `page_caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_caches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_caches_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_caches`
--

LOCK TABLES `page_caches` WRITE;
/*!40000 ALTER TABLE `page_caches` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pings`
--

DROP TABLE IF EXISTS `pings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pings_on_article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pings`
--

LOCK TABLES `pings` WRITE;
/*!40000 ALTER TABLE `pings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_types`
--

DROP TABLE IF EXISTS `post_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_types`
--

LOCK TABLES `post_types` WRITE;
/*!40000 ALTER TABLE `post_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nicename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modules` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'admin','Typo administrator','---\n- :dashboard\n- :articles\n- :pages\n- :media\n- :feedback\n- :themes\n- :sidebar\n- :users\n- :settings\n- :profile\n- :seo\n'),(2,'publisher','Blog publisher','---\n- :dashboard\n- :articles\n- :media\n- :pages\n- :feedback\n- :profile\n'),(3,'contributor','Contributor','---\n- :dashboard\n- :profile\n');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_rights`
--

DROP TABLE IF EXISTS `profiles_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_rights` (
  `profile_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_rights`
--

LOCK TABLES `profiles_rights` WRITE;
/*!40000 ALTER TABLE `profiles_rights` DISABLE KEYS */;
INSERT INTO `profiles_rights` VALUES (1,1),(1,2),(2,2),(1,3),(2,3),(1,4),(2,4),(1,5),(2,5),(1,6),(2,6),(1,7),(2,7),(1,8),(2,8),(1,9),(2,9),(1,10),(2,10),(1,11),(2,11),(3,11),(1,12),(2,12),(3,12),(1,13),(2,13),(3,13),(1,14),(2,14),(3,14),(1,15),(2,15),(3,15),(1,16),(1,17),(1,18),(2,18),(3,18),(1,19);
/*!40000 ALTER TABLE `profiles_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirections`
--

DROP TABLE IF EXISTS `redirections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `redirect_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirections`
--

LOCK TABLES `redirections` WRITE;
/*!40000 ALTER TABLE `redirections` DISABLE KEYS */;
INSERT INTO `redirections` VALUES (1,3,1),(2,2,2),(3,3,3),(4,7,4),(5,9,5),(6,11,6),(7,13,7),(8,14,8);
/*!40000 ALTER TABLE `redirections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
INSERT INTO `redirects` VALUES (1,'yl19oh','http://libomeyers.com/2011/09/21/test-blog-new',NULL),(3,'X5sjr4','http://libomeyers.com/2011/09/21/How%20to%20Setup%20a%20Professional%20Blog%20in%20One%20Day%20Using%20Rails%203%20+%20RVM%20+%20Passenger%20+%20Ngnix%20',NULL),(4,'lnMAIn','http://libomeyers.com/2011/09/23/rails-3-app-deployment-using-capistrano-rvm',NULL),(5,'bXdrqt','http://libomeyers.com/2011/09/27/control-your-rails-application-with-bundle-pack-with-gems-shipped-along',NULL),(6,'6VziIO','http://libomeyers.com/2011/09/28/install-ruby-configure-passenger-apache-2-with-gem-configuration',NULL),(7,'Tfqiwe','http://libomeyers.com/pages/about',NULL),(8,'s4YRdJ','http://libomeyers.com/2011/09/29/html5-tutorial-1',NULL);
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `itunes_metadata` tinyint(1) DEFAULT NULL,
  `itunes_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_duration` int(11) DEFAULT NULL,
  `itunes_summary` text COLLATE utf8_unicode_ci,
  `itunes_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itunes_explicit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rights`
--

DROP TABLE IF EXISTS `rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rights`
--

LOCK TABLES `rights` WRITE;
/*!40000 ALTER TABLE `rights` DISABLE KEYS */;
INSERT INTO `rights` VALUES (1,'admin','Global administration'),(2,'content_create','Create article'),(3,'content_edit','Edit article'),(4,'content_delete','Delete article'),(5,'category_create','Create a category'),(6,'category_edit','Edit a category'),(7,'category_delete','Delete a category'),(8,'page_create','Create a category'),(9,'page_edit','Edit a category'),(10,'page_delete','Delete a category'),(11,'feedback_create','Add a comment'),(12,'feedback_self_edit','Edit self comments'),(13,'feedback_edit','Edit any comment'),(14,'feedback_self_delete','Delete self comments'),(15,'feedback_delete','Delete any comment'),(16,'user_create','Create users'),(17,'user_edit','Edit users'),(18,'user_self_edit','Edit self account'),(19,'user_delete','Delete users');
/*!40000 ALTER TABLE `rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('100'),('101'),('102'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('29'),('3'),('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('4'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebars`
--

DROP TABLE IF EXISTS `sidebars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidebars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_position` int(11) DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci,
  `staged_position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebars`
--

LOCK TABLES `sidebars` WRITE;
/*!40000 ALTER TABLE `sidebars` DISABLE KEYS */;
INSERT INTO `sidebars` VALUES (2,1,'---\ncount: true\nempty: false\n',1,'CategorySidebar'),(3,3,'---\nshow_count: true\ncount: \'10\'\n',2,'ArchivesSidebar'),(4,4,'---\ntitle: Links\nbody: ! \"<ul>\\n  <li><a href=\\\"http://rubyonrails.org/\\\">Ruby on Rails</a></li>\\n\n  \\ <li><a href=\\\"http://railscasts.com/\\\">RailsCasts</a></li>\\n  <li><a href=\\\"http://asciicasts.com\\\">AsciiCasts</a></li>\\n</ul>\\n\"\n',3,'StaticSidebar'),(6,0,'---\ntitle: Search\n',NULL,'LivesearchSidebar'),(7,2,'---\nmaximum_tags: \'20\'\n',NULL,'TagSidebar');
/*!40000 ALTER TABLE `sidebars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitealizer`
--

DROP TABLE IF EXISTS `sitealizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitealizer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitealizer`
--

LOCK TABLES `sitealizer` WRITE;
/*!40000 ALTER TABLE `sitealizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitealizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'rails3','2011-09-21 21:44:56','2011-09-21 21:44:56','rails3'),(2,'rvm','2011-09-21 21:44:56','2011-09-21 21:44:56','RVM'),(3,'passenger','2011-09-21 21:45:12','2011-09-21 21:45:12','passenger'),(4,'ngnix','2011-09-21 21:45:12','2011-09-21 21:45:12','Ngnix'),(5,'rails','2011-09-23 21:33:40','2011-09-23 21:33:40','Rails'),(6,'capistrano','2011-09-23 21:34:04','2011-09-23 21:34:04','capistrano'),(7,'bundler','2011-09-27 23:29:46','2011-09-27 23:29:46','bundler'),(8,'gem','2011-09-27 23:29:46','2011-09-27 23:29:46','gem'),(9,'apache2','2011-09-28 18:41:00','2011-09-28 18:41:00','apache2'),(10,'ruby','2011-09-28 18:41:00','2011-09-28 18:41:00','ruby'),(11,'html5','2011-09-30 00:58:08','2011-09-30 00:58:08','html5');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_filters`
--

DROP TABLE IF EXISTS `text_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `markup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filters` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_filters`
--

LOCK TABLES `text_filters` WRITE;
/*!40000 ALTER TABLE `text_filters` DISABLE KEYS */;
INSERT INTO `text_filters` VALUES (1,'none','None','none','--- []\n','--- {}\n'),(2,'markdown','Markdown','markdown','--- []\n','--- {}\n'),(3,'smartypants','SmartyPants','none','---\n- :smartypants\n','--- {}\n'),(4,'markdown smartypants','Markdown with SmartyPants','markdown','---\n- :smartypants\n','--- {}\n'),(5,'textile','Textile','textile','--- []\n','--- {}\n');
/*!40000 ALTER TABLE `text_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggers`
--

DROP TABLE IF EXISTS `triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pending_item_id` int(11) DEFAULT NULL,
  `pending_item_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `trigger_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triggers`
--

LOCK TABLES `triggers` WRITE;
/*!40000 ALTER TABLE `triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `notify_via_email` tinyint(1) DEFAULT NULL,
  `notify_on_new_articles` tinyint(1) DEFAULT NULL,
  `notify_on_comments` tinyint(1) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `text_filter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'active',
  `last_connection` datetime DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','3f116202864f66b4d29470f61e95623590281b3a','libocao@gmail.com','admin',0,0,0,1,'f67ca92667bb002c4fc8a562ffb7ec74d772ac78','2011-10-13 00:45:31','1','active','2011-09-28 21:23:28','---\n! \'---editor\': visual\neditor: visual\nfirstname: \'\'\nlastname: \'\'\nnickname: \'\'\nurl: \'\'\nshow_url: false\nmsn: \'\'\nshow_msn: false\nyahoo: \'\'\nshow_yahoo: false\njabber: \'\'\nshow_jabber: false\naim: \'\'\nshow_aim: false\ntwitter: \'\'\nshow_twitter: false\ndescription: \'\'\n');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-03 14:15:48
