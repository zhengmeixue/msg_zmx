/*
SQLyog Enterprise - MySQL GUI
MySQL - 5.0.45-community-nt 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `message` (
	`messageId` double ,
	`author` varchar (60),
	`title` varchar (300),
	`content` varchar (1500),
	`face` varchar (30),
	`reply` varchar (600),
	`addTime` datetime 
); 
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('1','喝醉的大山','武术','天下武功，唯快不破','1.jpg','我是管理员','2019-01-01 00:00:00');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('2','奔跑的肥牛','吃饭','吃出一片天','2.jpg','吃肥牛捞饭','2019-02-02 00:00:00');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('3','睡觉的野鸡','放羊','睡醒了打鸣','3.jpg','略略略','2019-01-30 00:00:00');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('4','弯曲的公路','跳舞','在公路上跳舞','4.jpg','',NULL);
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('5','西红柿好吃','天安门','天安门种西红柿','5.jpg','','0000-00-00 00:00:00');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('6','绵延的饺子','过年','饺子吃韭菜鸡蛋的','6.jpg','','2019-11-02 16:02:08');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('14','author','title','content','8.jpg','890','2019-11-04 08:36:15');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('17','我去上学校','天天不迟到','我我我哦我欧文哦哦我哦我欧文噢噢','9.jpg','907','2019-11-04 08:42:05');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('31','tom','发布留言','第一条测试','1.jpg','','2019-11-07 15:36:50');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('32','武晓雪','祝你圣诞节快乐','有时间来火星玩','32.jpg','','2019-11-07 16:03:02');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('34','tom','123','123','5.jpg','','2019-11-07 16:10:28');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('38','fgg','ghjg','ghghjgjhgjh','1.jpg','','2019-11-07 16:31:39');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('39','ghghjgjh ','fghfyutuy','ytyutyujhvjhvnvbn','6.jpg','','2019-11-07 16:31:57');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('46','wqeqw','ewqe','ewqeqwe','1.jpg','','2019-11-07 16:35:23');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('48','dsada ','dsadasd','dsadasd','1.jpg','上山大老鼠','2019-11-07 16:43:32');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('53','无敌的天地','夕阳红','d\'sa\'d\'sa\'ddsd','1.jpg','','2019-11-07 16:49:09');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('55','打老虎','上山大老鼠','到底是打老虎还是大老鼠','1.jpg','','2019-11-11 13:47:15');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('56','小蜜蜂','去猜迷','去哪里才木啊','4.jpg','','2019-11-11 13:50:48');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('57','','','','1.jpg','','2019-11-11 22:15:10');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('58','','','','1.jpg','','2019-11-11 22:16:41');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('59','123','123','123','1.jpg','','2019-11-11 22:16:49');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('60','','','','1.jpg','','2019-11-11 22:19:53');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('61','','','','1.jpg','','2019-11-11 22:19:55');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('62','110','433','2899','1.jpg','','2019-11-11 22:20:16');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('64','问起我我','额为全额请问','而我却恶趣味','1.jpg','','2019-11-11 22:24:17');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('65','速度是','的撒的撒','的撒挨打','1.jpg','','2019-11-11 22:25:00');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('69','圣诞节快乐','居埃勒','快乐','1.jpg','','2019-11-11 22:33:02');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('72','向上的绵阳','牡蛎吧','没有人会为了你的未来买单，你要么努力向上爬，要么烂在社会最底层的泥淖里，这就是生活。','9.jpg','','2019-11-11 22:56:42');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('73','相助','小猪','我们总是喜欢拿“顺其自然”来敷衍人生道路上的荆棘坎坷，却很少承认，真正的顺其自然，其实是竭尽所能之后的不强求，而非两手一摊的不作为。','1.jpg','','2019-11-11 22:57:08');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('74','打老虎','大老虎','伤害你的不是对方的绝情；而是你心存幻想的坚持！','1.jpg','','2019-11-11 22:57:33');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('75','发黄的大侠','吃虾米','“晚安”这个词，好像变成了一种礼貌，睡不睡谁知道呢，反正话题是终止了。','28.jpg','','2019-11-11 22:58:06');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('76','成长的代价','是什么','成长也许就是越来越沉默，就是将哭声调成静音的过程，把情绪收到别人看不到的地方，一个人学会坚强。','1.jpg','','2019-11-11 23:00:13');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('77','黑主流','肥猪流','一个女人最好的嫁妆，就是一颗体贴温暖的心，一个男人最贵的聘礼，就是一生的迁就与疼爱。','16.jpg','祝你承担接快乐','2019-11-11 23:00:40');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('78','长城功','等争夺','别和往事过不去，因为它已经过去，别和现实过不去，因为你还要过下去。','29.jpg','','2019-11-11 23:02:36');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('79','健康最重要','喀喀喀','人，其实不需要太多的东西，只要健康的活着，真诚的爱着，也不失为一种富有。','31.jpg','','2019-11-11 23:03:04');
insert into `message` (`messageId`, `author`, `title`, `content`, `face`, `reply`, `addTime`) values('81','三巡酒','欢乐肠','人生苦短何必念念不忘','11.jpg','','2019-11-11 23:25:24');
