/*
Navicat MySQL Data Transfer

Source Server         : my_bs
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2018-08-21 23:10:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `summary` varchar(400) DEFAULT NULL COMMENT '摘要',
  `releaseDate` datetime DEFAULT NULL COMMENT '更新时间',
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text COMMENT '内容',
  `typeId` int(11) DEFAULT NULL COMMENT '类型',
  `keyWord` varchar(200) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogType` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('40', '大学必须掌握的软件基础课程', ' 大学软件专业有很多课程，有些学生搞不清哪些是重点，以下是笔者根据多年经验，认真很重要的课程罗列下：1，C语言  很重要，作为学编程的入门语言，也是众多流行编程语言之父。2，数据结构和算法很重要，以后深入理解一些东西有帮助，即使是Java把很多数据结构都进行了封装，但是学习本课程，可以对性能有深入理解；3，计', '2016-02-02 12:41:52', '554', '11', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0013.gif\"/>&nbsp;大学软件专业有很多课程，有些学生搞不清哪些是重点，以下是笔者根据多年经验，认真很重要的课程罗列下：</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>1，C语言 &nbsp;</strong></span></p><p>很重要，作为学编程的入门语言，也是众多流行编程语言之父。</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>2，数据结构和算法</strong></span></p><p>很重要，以后深入理解一些东西有帮助，即使是Java把很多数据结构都进行了封装，但是学习本课程，可以对性能有深入理解；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>3，计算机组成原理</strong></span></p><p>一般，学习一下；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>4，编译原理</strong></span></p><p>一般，学习一下；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>5，数据库原理</strong></span></p><p>很重要，对以后系统的数据库设计有帮助，站的层次高；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>6，操作系统原理</strong></span></p><p>很重要，对以后技术提供，和层次有帮助；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>7，计算机网络</strong></span></p><p>一般，学习一下；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>8，软件工程</strong></span></p><p>非常重要，对整个软件开发体系的熟悉，直接可以影响到一个技术人员的职业生涯；</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>9，计算机英语</strong></span></p><p>非常重要，有一些屌丝不重视，这个真的很重要，以后学习一些新技术的时候，有时候中文资源比较少，这时候学习，基本是直接看官方英文文档，假如英语不行，会很苦逼；</p><p><br/></p><p><strong><span style=\"color: rgb(255, 0, 0);\">10，英语</span></strong></p><p>非常重要，这个和上面的计算机英语有区别，计算机英语主要是一些专业词汇的中文专业翻译；而英语的话，是更加广泛的概念，最少要达到4级，最好6级。大学时候通读基本英文技术书籍，我推荐 Head First系列，以及Thining in Java；</p><p><br/></p><p>以上是我认为比较重要的10个课程。大家可以参考下。。可以有遗漏，大家可以评论留言。讨论交流。</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong><br/></strong></span></p>', '4', '大学');
INSERT INTO `t_blog` VALUES ('42', 'Mysql中文乱码问题解决', '有些学员经常遇到 项目jdbc获取数据库数据，中文乱码；这里给出一些解决方案：第一种，修改Mysql数据库编码，改成utf-8，默认是latin1 （推荐）； 如图，找到mysql安装，点mysql实例配置  一直点next知道下面这个界面：记住，前面那个圈 一点要点。。下拉框选utf8继续next直到：写你', '2016-02-02 13:29:33', '332', '6', '<p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">有些学员经常遇到 项目jdbc获取数据库数据，中文乱码；</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">这里给出一些解决方案：</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><span style=\"color: rgb(255, 0, 0);\">第一种，修改Mysql数据库编码，改成utf-8，默认是latin1 （推荐）；</span></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><img alt=\"QQ鍥剧墖20160202132103.png\" src=\"/static/userImages/20160202/1454390480343030776.png\" title=\"1454390480343030776.png\"/> 如图，找到mysql安装，点mysql实例配置</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><img src=\"/static/userImages/20160202/1454390537171022264.jpg\" alt=\"1454390537171022264.jpg\"/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;一直点next知道下面这个界面：</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><img alt=\"QQ鍥剧墖20160202132310.png\" src=\"/static/userImages/20160202/1454390616812058607.png\" title=\"1454390616812058607.png\"/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">记住，前面那个圈 一点要点。。下拉框选utf8</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">继续next直到：</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><img alt=\"QQ鍥剧墖20160202132431.png\" src=\"/static/userImages/20160202/1454390692687028654.png\" title=\"1454390692687028654.png\"/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">写你原来的密码继续，然后继续Next:</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><img alt=\"QQ鍥剧墖20160202132517.png\" src=\"/static/userImages/20160202/1454390731515038389.png\" title=\"1454390731515038389.png\"/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">点击 执行</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><img alt=\"QQ鍥剧墖20160202132618.png\" src=\"/static/userImages/20160202/1454390793796097934.png\" title=\"1454390793796097934.png\"/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">这样就OK了；</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">这个执行完。记得要把原来导入的项目数据库删除，重新的导入下即可；<br/></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br/><span style=\"color: rgb(255, 0, 0);\"></span></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><span style=\"color: rgb(255, 0, 0);\">第二种，修改jdbc请求url 指定编码 （不推荐）<br/></span></p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">在jdbc url后面 加上 ?useUnicode=true&amp;characterEncoding=UTF8 指定下编码；</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">假如是在xml配置文件里 要转义下 搞成 ?useUnicode=true&amp;amp;characterEncoding=UTF-8 ；</p><p style=\"margin: 5px 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">比如在spring配置文件里：</p><pre class=\"brush:xml;toolbar:false\">&lt;!--&nbsp;配置数据源&nbsp;--&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;bean&nbsp;id=&quot;dataSource&quot;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;class=&quot;com.alibaba.druid.pool.DruidDataSource&quot;&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;property&nbsp;name=&quot;url&quot;&nbsp;value=&quot;jdbc:mysql://localhost:3306/db_blog?useUnicode=true&amp;amp;characterEncoding=UTF-8&quot;/&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;property&nbsp;name=&quot;username&quot;&nbsp;value=&quot;root&quot;/&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;property&nbsp;name=&quot;password&quot;&nbsp;value=&quot;123456&quot;/&gt;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/bean&gt;</pre><p><br/></p><p>推荐第一种；</p><p><br/></p>', '2', 'mysql 乱码');
INSERT INTO `t_blog` VALUES ('47', '什么是webservice?', '  webservice 有的人一看到这个，估计会认为这个是一种新技术，一种新框架。其实不是，严格的说，webservice是一种跨平台，跨语言的规范，用于不同平台，不同语言开发的应用之间的交互。  这里具体举个例子，比如在Windows Server服务器上有个C#.Net开发的应用A，在Linux上有个J', '2016-02-03 16:07:31', '452', '15', '<p>&nbsp; webservice 有的人一看到这个，估计会认为这个是一种新技术，一种新框架。<br/></p><p>其实不是，严格的说，webservice是一种跨平台，跨语言的规范，用于不同平台，不同语言开发的应用之间的交互。</p><p><br/></p><p>&nbsp; 这里具体举个例子，比如在Windows Server服务器上有个C#.Net开发的应用A，在Linux上有个Java语言开发的应用B，</p><p>B应用要调用A应用，或者是互相调用。用于查看对方的业务数据。</p><p>&nbsp; 再举个例子，天气预报接口。无数的应用需要获取天气预报信息；这些应用可能是各种平台，各种技术实现；而气象局的项目，估计也就一两种，要对外提供天气预报信息，这个时候，如何解决呢？</p><p><br/></p><p>&nbsp; webservice就是出于以上类似需求而定义出来的规范；</p><p>&nbsp;&nbsp;</p><p>&nbsp; 开发人员一般就是在具体平台开发webservice接口，以及调用webservice接口；每种开发语言都有自己的webservice实现框架。比如Java 就有&nbsp;Apache Axis1、Apache Axis2、Codehaus XFire、Apache CXF、Apache Wink、Jboss &nbsp;RESTEasyd等等...</p><p><br/></p><p><img src=\"/static/userImages/20160203/1454486847949023678.jpg\" title=\"1454486847949023678.jpg\" alt=\"20131203094415-1061627437.jpg\"/></p><p><br/></p><p><br/></p><p>&nbsp;&nbsp;</p>', '9', 'webservice java');
INSERT INTO `t_blog` VALUES ('50', '使用Jsoup解析出html中的img元素', 'jsoup 是一款Java 的HTML解析器，可直接解析某个URL地址、HTML文本内容。它提供了一套非常省力的API，可通过DOM，CSS以及类似于jQuery的操作方法来取出和操作数据。博客项目有个需求。展示博客列表的时候，显示一些博客里的图片，增强用户体验；这里的话，有两种方案，第一种 是在后台处理，把', '2016-02-14 12:52:43', '306', '7', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">jsoup 是一款Java 的HTML解析器，可直接解析某个URL地址、HTML文本内容。它提供了一套非常省力的API，可通过DOM，CSS以及类似于jQuery的操作方法来取出和操作数据。</span></p><p><img src=\"/static/userImages/20160214/1455425736515085353.jpg\" title=\"1455425736515085353.jpg\" alt=\"QQ鎴浘20160214125257.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">博客项目有个需求。展示博客列表的时候，显示一些博客里的图片，增强用户体验；</span></p><p>这里的话，有两种方案，第一种 是在后台处理，把解析好的图片存集合里，然后转发到页面，遍历显示；还有一种是把博客内容送到页面，用Jquery处理。</p><p>我考虑了下。还是在后台处理好比较好，因为项目本身用到了 cnd加速，所以在前端处理反而影响效率。</p><p>在后端处理，可以使用Jsoup，很方便；</p><p><br/></p><p>Jsoup主页：<a href=\"http://jsoup.org/\" target=\"_blank\" title=\"http://jsoup.org/\">http://jsoup.org/</a></p><p><br/></p><p>maven地址：</p><pre class=\"brush:xml;toolbar:false\">&lt;dependency&gt;\n		&lt;groupId&gt;org.jsoup&lt;/groupId&gt;\n		&lt;artifactId&gt;jsoup&lt;/artifactId&gt;\n		&lt;version&gt;1.8.3&lt;/version&gt;\n	&lt;/dependency&gt;</pre><p><br/></p><p><br/></p><p>这里给下关键代码：</p><pre class=\"brush:java;toolbar:false\">for(Blog&nbsp;blog:blogList){\n			List&lt;String&gt;&nbsp;imagesList=blog.getImagesList();\n			String&nbsp;blogInfo=blog.getContent();\n			Document&nbsp;doc=Jsoup.parse(blogInfo);\n			Elements&nbsp;jpgs=doc.select(&quot;img[src$=.jpg]&quot;);&nbsp;//　查找扩展名是jpg的图片\n			for(int&nbsp;i=0;i&lt;jpgs.size();i++){\n				Element&nbsp;jpg=jpgs.get(i);\n				imagesList.add(jpg.toString());\n				if(i==2){\n					break;\n				}\n			}\n		}</pre><p><br/></p><p>主要涉及到一些选择器。不难。大家可以参考下官方文档。或者百度很容易上手。</p><p><br/></p>', '10', 'jsoup java');

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogger
-- ----------------------------
INSERT INTO `t_blogger` VALUES ('1', 'java1234', '269445a31ab8ae63b866fb2cdb037ad9', '<p><br/></p><p><img src=\"http://img.baidu.com/hi/tsj/t_0009.gif\"/>&nbsp;从小学习努力，勤奋刻苦；</p><p><img src=\"http://img.baidu.com/hi/tsj/t_0013.gif\"/> &nbsp;功夫不负有心人；</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/> &nbsp;座右铭&nbsp;“知识改变命运，技术改变世界” ；</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '甲乙丙', '知识改变命运，技术改变世界', '20180501091643.jpg');

-- ----------------------------
-- Table structure for t_blogType
-- ----------------------------
DROP TABLE IF EXISTS `t_blogType`;
CREATE TABLE `t_blogType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogType
-- ----------------------------
INSERT INTO `t_blogType` VALUES ('2', 'Mysql', '2');
INSERT INTO `t_blogType` VALUES ('3', 'Tomcat', '3');
INSERT INTO `t_blogType` VALUES ('4', 'IT之路', '10');
INSERT INTO `t_blogType` VALUES ('5', '随心生活', '1');
INSERT INTO `t_blogType` VALUES ('7', 'shiro', '4');
INSERT INTO `t_blogType` VALUES ('9', 'webservice', '5');
INSERT INTO `t_blogType` VALUES ('10', 'jsoup', '7');
INSERT INTO `t_blogType` VALUES ('11', 'hibernate', '8');
INSERT INTO `t_blogType` VALUES ('12', 'maven', '9');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIp` varchar(50) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(200) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_link
-- ----------------------------
INSERT INTO `t_link` VALUES ('3', '小图标下载', 'http://www.easyicon.net/', '3');
INSERT INTO `t_link` VALUES ('4', 'Java贴吧', 'http://tieba.baidu.com/f?kw=java', '4');
