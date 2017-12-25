SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `szdk_action`;
CREATE TABLE `szdk_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '��ΪΨһ��ʶ',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '��Ϊ˵��',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '��Ϊ����',
  `rule` text NOT NULL COMMENT '��Ϊ����',
  `log` text NOT NULL COMMENT '��־����',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '����',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '״̬',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='ϵͳ��Ϊ��';

insert into `szdk_action`(`id`,`name`,`title`,`remark`,`rule`,`log`,`type`,`status`,`update_time`) values
('1','user_login','�û���¼','����+10��ÿ��һ��','table:member|field:score|condition:uid={$self} AND status>-1|rule:score+10|cycle:24|max:1;','[user|get_username]��[time|time_format]��¼�˺�̨','1','1','1387181220'),
('2','add_article','��������','����+5��ÿ������5��','table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max:5','','2','0','1380173180'),
('3','review','����','���ۻ���+1��������','table:member|field:score|condition:uid={$self}|rule:score+1','','2','1','1383285646'),
('4','add_document','�����ĵ�','����+10��ÿ������1��','table:member|field:score|condition:uid={$self}|rule:score+10|cycle:24|max:1','[user|get_username]��[time|time_format]������һƪ���¡�
��[model]����¼���[record]��','1','1','1493877089'),
('5','add_document_topic','��������','����+5��ÿ������10��','table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max:10','','2','0','1383285551'),
('6','update_config','��������','�������޸Ļ�ɾ������','','','1','1','1383294988'),
('7','update_model','����ģ��','�������޸�ģ��','','','1','1','1383295057'),
('8','update_attribute','��������','��������»�ɾ������','','','1','1','1383295963'),
('9','update_channel','���µ���','�������޸Ļ�ɾ������','','','1','1','1383296301'),
('10','update_menu','���²˵�','�������޸Ļ�ɾ���˵�','','','1','1','1383296392'),
('11','update_category','���·���','�������޸Ļ�ɾ������','','','1','1','1383296765');
DROP TABLE IF EXISTS  `szdk_action_log`;
CREATE TABLE `szdk_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '����',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '��Ϊid',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ִ���û�id',
  `action_ip` bigint(20) NOT NULL COMMENT 'ִ����Ϊ��ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '������Ϊ�ı�',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '������Ϊ������id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '��־��ע',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ִ����Ϊ��ʱ��',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='��Ϊ��־��';

insert into `szdk_action_log`(`id`,`action_id`,`user_id`,`action_ip`,`model`,`record_id`,`remark`,`create_time`) values
('129','1','1','2130706433','member','1','admin��2017-06-26 09:52��¼�˺�̨','1498441977'),
('128','1','1','2130706433','member','1','admin��2017-06-26 08:19��¼�˺�̨','1498436342'),
('127','1','1','2130706433','member','1','admin��2017-06-23 16:11��¼�˺�̨','1498205480'),
('126','1','1','2130706433','member','1','admin��2017-06-21 17:57��¼�˺�̨','1498039079'),
('125','1','1','2130706433','member','1','admin��2017-06-21 14:42��¼�˺�̨','1498027366'),
('124','1','1','2130706433','member','1','admin��2017-06-21 11:08��¼�˺�̨','1498014516'),
('130','1','1','2130706433','member','1','admin��2017-06-26 12:44��¼�˺�̨','1498452253'),
('132','1','1','2130706433','member','1','admin��2017-06-27 17:58��¼�˺�̨','1498557531'),
('131','1','1','2130706433','member','1','admin��2017-06-27 17:07��¼�˺�̨','1498554473'),
('139','1','1','2130706433','member','1','admin��2017-07-05 13:35��¼�˺�̨','1499232934'),
('138','1','1','2130706433','member','1','admin��2017-07-04 17:04��¼�˺�̨','1499159048'),
('137','1','2','2130706433','member','2','ken678��2017-07-04 13:49��¼�˺�̨','1499147342'),
('136','1','1','2130706433','member','1','admin��2017-07-04 11:47��¼�˺�̨','1499140079'),
('135','1','2','2130706433','member','2','ken678��2017-07-04 10:02��¼�˺�̨','1499133722'),
('149','1','1','0','member','1','admin��2017-07-15 11:33��¼�˺�̨','1500089606'),
('148','1','1','0','member','1','admin��2017-07-09 18:39��¼�˺�̨','1499596773'),
('152','1','1','0','member','1','admin��2017-07-16 11:25��¼�˺�̨','1500175515'),
('151','1','1','0','member','1','admin��2017-07-15 21:03��¼�˺�̨','1500123837'),
('150','1','1','0','member','1','admin��2017-07-15 20:58��¼�˺�̨','1500123499'),
('114','1','1','2130706433','member','1','admin��2017-06-16 16:13��¼�˺�̨','1497600812'),
('115','1','1','2130706433','member','1','admin��2017-06-19 16:43��¼�˺�̨','1497861801'),
('116','1','1','2130706433','member','1','admin��2017-06-19 17:17��¼�˺�̨','1497863876'),
('117','1','1','2130706433','member','1','admin��2017-06-20 08:48��¼�˺�̨','1497919721'),
('118','1','1','2130706433','member','1','admin��2017-06-20 09:19��¼�˺�̨','1497921542'),
('119','1','1','2130706433','member','1','admin��2017-06-20 09:21��¼�˺�̨','1497921664'),
('120','1','1','2130706433','member','1','admin��2017-06-20 09:34��¼�˺�̨','1497922482'),
('121','1','1','2130706433','member','1','admin��2017-06-20 09:51��¼�˺�̨','1497923477'),
('122','1','1','2130706433','member','1','admin��2017-06-20 09:58��¼�˺�̨','1497923917'),
('123','1','1','2130706433','member','1','admin��2017-06-20 17:41��¼�˺�̨','1497951692'),
('133','1','1','2130706433','member','1','admin��2017-06-30 17:16��¼�˺�̨','1498814207'),
('134','1','1','2130706433','member','1','admin��2017-07-03 11:09��¼�˺�̨','1499051379'),
('140','1','1','2130706433','member','1','admin��2017-07-05 16:34��¼�˺�̨','1499243664'),
('141','1','1','2130706433','member','1','admin��2017-07-06 07:55��¼�˺�̨','1499298911'),
('142','1','1','2130706433','member','1','admin��2017-07-06 09:07��¼�˺�̨','1499303235'),
('143','1','1','2130706433','member','1','admin��2017-07-06 12:34��¼�˺�̨','1499315668'),
('144','1','1','0','member','1','admin��2017-07-06 22:06��¼�˺�̨','1499349992'),
('145','1','1','2130706433','member','1','admin��2017-07-07 22:52��¼�˺�̨','1499439158'),
('146','1','1','2130706433','member','1','admin��2017-07-07 22:57��¼�˺�̨','1499439475'),
('147','1','1','0','member','1','admin��2017-07-08 17:26��¼�˺�̨','1499506011'),
('153','1','1','0','member','1','admin��2017-07-24 11:42��¼�˺�̨','1500867736'),
('154','1','6','1968383226','member','6','qianqian��2017-07-24 14:29��¼�˺�̨','1500877788'),
('155','1','6','1968383226','member','6','qianqian��2017-07-24 14:45��¼�˺�̨','1500878734'),
('156','1','1','1968383226','member','1','admin��2017-07-24 14:51��¼�˺�̨','1500879078'),
('157','1','6','1968383226','member','6','qianqian��2017-07-24 15:07��¼�˺�̨','1500880070'),
('158','1','6','1968383226','member','6','qianqian��2017-07-24 15:33��¼�˺�̨','1500881628'),
('159','1','1','1968383226','member','1','admin��2017-07-24 15:58��¼�˺�̨','1500883138'),
('160','1','1','0','member','1','admin��2017-07-24 16:15��¼�˺�̨','1500884126'),
('161','1','6','1968383226','member','6','qianqian��2017-07-24 16:24��¼�˺�̨','1500884671'),
('162','1','6','1968383226','member','6','qianqian��2017-07-24 16:51��¼�˺�̨','1500886313'),
('163','1','1','1968383226','member','1','admin��2017-07-24 16:52��¼�˺�̨','1500886367'),
('164','1','6','1968383226','member','6','qianqian��2017-07-24 17:02��¼�˺�̨','1500886971'),
('165','1','6','0','member','6','qianqian��2017-07-24 21:10��¼�˺�̨','1500901834'),
('166','1','1','1968355750','member','1','admin��2017-07-30 21:24��¼�˺�̨','1501421060'),
('167','1','1','986876354','member','1','admin��2017-09-05 20:16��¼�˺�̨','1504613803'),
('168','1','1','986876354','member','1','admin��2017-09-09 14:44��¼�˺�̨','1504939465');
DROP TABLE IF EXISTS  `szdk_admin`;
CREATE TABLE `szdk_admin` (
  `userid` smallint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '�û�ID',
  `username` varchar(20) DEFAULT NULL COMMENT '�����˺�',
  `password` varchar(40) DEFAULT NULL COMMENT '��������',
  `roleid` tinyint(4) unsigned DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL COMMENT '��������',
  `nickname` char(16) NOT NULL COMMENT '�ǳ�',
  `last_login_time` int(10) unsigned DEFAULT '0' COMMENT '����¼ʱ��',
  `last_login_ip` bigint(20) unsigned DEFAULT '0' COMMENT '����¼IP',
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='����Ա��';

insert into `szdk_admin`(`userid`,`username`,`password`,`roleid`,`encrypt`,`nickname`,`last_login_time`,`last_login_ip`,`email`) values
('1','admin','4459f1e16266d94ab6436a6743c838d97e9dca1f','1','Wo0bAa','��լ��','1504939465','986876354','530765310@qq.com'),
('6','qianqian','177a8e01663f1d72b6c827c72c755a2fc1473af5','1','Gck37K','','1500901835','0','');
DROP TABLE IF EXISTS  `szdk_admin_panel`;
CREATE TABLE `szdk_admin_panel` (
  `menuid` mediumint(8) unsigned NOT NULL COMMENT '�˵�ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '����ԱID',
  `name` char(32) DEFAULT NULL COMMENT '�˵�����',
  `url` char(255) DEFAULT NULL COMMENT '�˵�·��',
  UNIQUE KEY `userid` (`userid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='����Ա��ݲ˵�';

insert into `szdk_admin_panel`(`menuid`,`userid`,`name`,`url`) values
('19','1','Ȩ������','Admin/AuthManager/index'),
('17','1','���ݿⱸ��','Admin/database/index');
DROP TABLE IF EXISTS  `szdk_article`;
CREATE TABLE `szdk_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `posid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '�������',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '����',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '���յ����',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '���ܷ�����',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '���·���',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '���������ʱ��',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into `szdk_article`(`id`,`catid`,`title`,`style`,`thumb`,`keywords`,`description`,`url`,`listorder`,`status`,`sysadd`,`islink`,`username`,`inputtime`,`updatetime`,`posid`,`prefix`,`tags`,`views`,`yesterdayviews`,`dayviews`,`weekviews`,`monthviews`,`viewsupdatetime`) values
('1','21','�����ɱ���̵���ԭ�򣺷����Ա� �ױ�������£','','http://www.yzncms.com/demo/file/2013/06/51c51df81df14.jpg','����,����Ͱ�,�Ա���,����˵,����','д��ǰ��Ļ���������Ͱ���ٶȹؼ��֣���ɱ����˵��Ģ����֮ʱ��˭�����ǵã���ʱ�����ﻹ��������˵��Ģ���ֵ�����ͷ�á���ʲôԭ��ʹ��...','/index.php?a=shows&catid=21&id=1','0','99','1','0','admin','1371872761','1371872761','1','','����','0','0','0','0','0','0'),
('2','21','�����꽫��5%Ӫҵ˰ �Ա�����һ����˰400��','','http://www.yzncms.com/demo/file/2013/06/51c51ef3aaeca.jpg','�����˰,�Ա������˰,���꽫��5%Ӫҵ˰','ɽ����������¥�� 5��30�գ�ҵ�紫���������꽫������5%Ӫҵ˰����Ϣ���ڵ��̽�����������һ��ԭ�ӵ��� ��ǰ����ÿ�վ������š����߾ʹ����Ⱥ�����ҹ����ܾ��г�˾˾����������������������ѧ�о��������ֿ���������������ѧ�о�������������ϣ����֤����������ڻ���','/index.php?a=shows&catid=21&id=2','0','99','1','0','admin','1371873012','1371873012','1','','�Ա�','0','0','0','0','0','0'),
('3','21','���ƣ����������Ƕ���ᡢδ���о�η֮��','','http://www.yzncms.com/demo/file/2013/06/51c51f2eefb83.jpg','����,����,��������','���˿Ƽ�Ѷ 5��28��������Ϣ���ɰ���Ͱͼ���ǣͷ��������Ŀ�й����ܹǸ��������CSN��������������ʽ�����������ڻ��ϱ�ʾ����γ�����������ν�ĸ���������Ϊ��ʵ��������ǰ���뷨��ֻ�ǽ���ѡ��������㣬����ĳ�̨��������һ���˵����롢���롣 ����ͬʱ������Ϊ','/index.php?a=shows&catid=21&id=3','0','99','1','0','admin','1371873071','1371873071','1','','����','0','0','0','0','0','0'),
('4','22','Ϊʲô����΢����������������������ջ������','','http://www.yzncms.com/demo/file/2013/06/51c52009459ad.jpg','ʲô,����,΢��,���,����,����,����,�����,����,����,��Ϊ','����������Ϊ�٣����ڻ�����Ϊ�ף���仰���罻����Ĺ����ͬ�����á�������΢���Ͷ��꣬��ῴ�����ַ����ȫ��ͬ�Ĺ�棬��������ó�һЩ�Աȡ� ǰ��Ϊ����΢���ϵ��ƹ��棬����Ϊ�����ϵ�Ӳ���ƹ㡣���ߵĲ�����벻�ö��������˰ɡ����˶��ߵĹ�棬�����','/index.php?a=shows&catid=22&id=4','0','99','1','0','admin','1371873289','1371873289','1','','����΢��','0','0','0','0','0','0'),
('5','22','���ڵ������⡰�ڡ��֣���ҳ��ת����è','','http://www.yzncms.com/demo/file/2013/06/51c52313391d9.jpg','���ڵ���,���ڵ������ڿ͹���,��ҳ��ת����è','�����賿���ܶ���ڵ��������û���¼��վʱ�����޷�����ҳ��ȡ����֮����һ��д��QQ�ŵĵ����������ת����èҳ�棬����һЩ�ڵ������Ź�����ɹ����û����������ڶ��û��׷��²۴˴���վ�����¼�����QQ��ָ��ĺڿ�helen�����������Ϊ��','/index.php?a=shows&catid=22&id=5','0','99','1','0','admin','1371874073','1371874073','1','','���ڵ���','0','0','0','0','0','0'),
('6','22','��������������վ ��Ȩ�����ѽ�','','http://www.yzncms.com/demo/file/2013/06/51c5236ccba0e.jpg','��������,������վ,��Ȩ����','���Ѻ�IT��Ϣ����С�5��2����Ϣ��������������������ͣgougou.com��վ���񣬾���ԭ��δ֪����Ȩ��������������ѽ�֮ʹ�� �����������ṩӰ�Ӿ硢�����顢������������ص��������棬2004������ѧ�贴�죬������׾�100�������Ͷ�ʣ�2007�걻����Ѹ�ס�','/index.php?a=shows&catid=22&id=6','0','99','1','0','admin','1371874160','1371874160','1','','�������� Ѹ��','0','0','0','0','0','0'),
('7','22','������Ѹ ��������һ������','','http://www.yzncms.com/demo/file/2013/06/51c523a819ded.jpg','��Ѹ ���� һ������','һ������ ���ٴ�һ�����ͷ��񣬽�ʵ������Сʱ��Ʒ�ʹ��֮ǰ��211��ʱ�������� һ������ ���϶���������2ʱ֮ǰ�ʹ���綩��������6ʱ֮ǰ�ʹ��䶩��������10ʱ֮ǰ�ʹ� �̼۸�ս��һ�Ե��� ԩ�Ҷ�ͷ��������Ѹ�ֽ������Ľ����׼���������ٶ��ϡ�','/index.php?a=shows&catid=22&id=7','0','99','1','0','admin','1371874216','1371874216','1','','��Ѹ ����','0','0','0','0','0','0'),
('8','16','������β�͹���������jquery����ͼЧ��','','http://www.yzncms.com/demo/file/2013/06/51c52a921a436.jpg','����������ͼ,ʱ���ό��ͼ,jquery����ͼ,jquery���','������β�͹���������jquery����ͼЧ�� Ч��������jquery����ͼ�������������ť����������ʱ���ᣬ֧���Զ��л������뵭�����л�Ч��','/index.php?a=shows&catid=16&id=8','0','99','1','0','admin','1371875986','1371875986','0','','jQuery','0','0','0','0','0','0'),
('9','16','jqueryǰ��ͼƬԤ������ͼЧ��','','http://www.yzncms.com/demo/file/2013/06/51c52ad03bc3f.jpg','jquery����ͼ,���ҹ����õ�Ƭ,ǰ��ͼƬԤ������ͼ,jquery���','jqueryǰ��ͼƬԤ������ͼЧ�� Ч��������jquery����ͼЧ������꾭���������߰�͸��������ʾ���Ҽ�ͷ��������ҹ����л���֧���Զ��л���','/index.php?a=shows&catid=16&id=9','0','99','1','0','admin','1371876048','1371876048','0','','jQuery','0','0','0','0','0','0'),
('10','16','jqueryȫ������Ԥ������ͼ����','','http://www.yzncms.com/demo/file/2013/06/51c52b189fa73.jpg','ȫ������ͼ,jquery�õ�Ƭ,���Ҽ�ͷ����ͼ,jquery����ͼ','jqueryȫ������Ԥ������ͼ���� Ч��������jqueryȫ������ͼ����ͼƬǰ��ͼƬԤ��Ч������꾭���������߰�͸��������ʾ���Ҽ�ͷ����������ť��֧���Զ��л���','/index.php?a=shows&catid=16&id=10','0','99','1','0','admin','1371876121','1371876121','0','','jQuery','0','0','0','0','0','0'),
('11','17','zTree һ�����jquery�ĳ�ǿ���β˵�','','http://www.yzncms.com/demo/file/2013/06/51c52e859571e.jpg','zTree,���β˵�,��״�˵�,jquery���β˵�','zTree һ�����jquery�ĳ�ǿ���β˵���֧�����޼�����չ����API˵���������� v3.5.12 ���޸ļ�¼��  * ���޸ġ����� jquery 1.9 ...','/index.php?a=shows&catid=17&id=11','0','99','1','0','admin','1371876998','1371876998','0','','zTree','0','0','0','0','0','0'),
('16','10','��ѧ�ؿ���html+cssС�ܽ�','','','html+cssС�ܽ�,html+css�̳�,div+css','��ѧ�ؿ���html+cssС�ܽᾭ��̳̣�','/index.php?a=shows&catid=10&id=16','0','99','1','0','admin','1371881631','1371881631','0','','','1','0','1','1','1','1403154346'),
('17','10','���IE�汾��if���ʽ','','','���,�汾,���ʽ,TML,ע��,��ʽ,HTML,����,һЩ','TML ��ע�͸�ʽ�� �� IE ��HTMLע������һЩ��չ��ʹ֮����֧�������жϱ��ʽ������þ�̬HTML�����ڲ�ͬIE�汾��ʾ��ͬ���ݣ��ͱ��...','/index.php?a=shows&catid=10&id=17','0','99','1','0','admin','1371881683','1371881683','0','','','0','0','0','0','0','0'),
('18','10','����input��ǩ��һЩС֪ʶ�ͼ���','','','����,input,��ǩ,ЩС,֪ʶ,����,����,һЩ,����,����,input,','����һЩ��������input�ķ�������������Ҳ��һЩ����Ҫ�õģ�����Ҳ��һЩ��ֵ��ѧϰ�ģ�1.ȡ����ť����ʱ�����߿�,��input���������ֵ h...','/index.php?a=shows&catid=10&id=18','0','99','1','0','admin','1371881732','1371881732','0','','','0','0','0','0','0','0'),
('19','10','5��ʵ��ҳ����ת��ָ���ĵ�ַ�ķ���','','','JSʵ��ҳ����ת,htmlʵ��ҳ����ת,ʵ��ҳ����ת�ķ���','�������������������ϸ˵�����⼸�����ӵ���Ҫ�����ǣ���5����Զ���ת��ͬĿ¼�µ�hello.html�������Լ���Ҫ�����޸ģ��ļ���1) html...','/index.php?a=shows&catid=10&id=19','0','99','1','0','admin','1371881773','1371881773','0','','','0','0','0','0','0','0'),
('20','10','htmlע���������!--[if IE]...![endif]--ʹ����ϸ����','','','htmlע�����,����ע��,html�̳�,[if IE]','��������: ��������δ��룬ֻ��ʹ��IEʱ����97zzw...','/index.php?a=shows&catid=10&id=20','0','99','1','0','admin','1371881819','1371881819','0','','','0','0','0','0','0','0'),
('25','10','Nofollow��ǩ��ʲô��˼','','http://www.yzncms.com/demo/file/2013/06/51c551df1213e.jpg','Nofollow,html��ǩ,html�̳�,ʲô��Nofollow','nofollow ��һ��HTML��ǩ������ֵ�������ǩ�������Ǹ�����������&quot;��Ҫ׷�ٴ���ҳ�ϵ�����&quot;��&quot;��Ҫ׷�ٴ��ض����ӡ�����nofollow��顡��n...','/index.php?a=shows&catid=10&id=25','0','99','1','0','admin','1371886048','1371886048','0','','','0','0','0','0','0','0'),
('21','11','DreamWeaver�ļ�����ʱ��ʾ����������Υ��������������������','','http://www.yzncms.com/demo/file/2013/06/51c5419d2489e.png','�ļ�����,����Υ��,dreamweaver','�������������DreamWeaver�ļ�����ʱ����ʾ����������&quot;��������Υ��&quot;��������ͼ���޸�HTML�ļ��󣬾��Ǳ��治�ˣ�һ�������ʾ&quot;·��+ʱ��...','/index.php?a=shows&catid=11&id=21','0','99','1','0','admin','1371881885','1371881885','0','','dreamweaver','0','0','0','0','0','0'),
('22','11','DreamWeaver���������ɾ����������','','http://www.yzncms.com/demo/file/2013/06/51c541d5c23ae.jpg','DreamWeaver,���,����,ɾ��,��������,����,��','��������������ʴ��������ʣ�����ר��DreamWeaver 8���������ɾ����������?   ������Ӳ��Ӧ�����ش𣺽���취�����δ�DreamWeaver...','/index.php?a=shows&catid=11&id=22','0','99','1','0','admin','1371881942','1371881942','0','','DreamWeaver','0','0','0','0','0','0'),
('23','12','����ǰ�˿���JavaScript�г��õ�ʹ��С�������','','http://www.yzncms.com/demo/file/2013/06/51c543b70c703.jpg','JavaScript���,js����,ǰ�˿���,js�̳�,js�������','ǰ�����Ƿ����ǰ��С���ɺ�JavaScriptˢ��ҳ�漰��ܣ�����Ҳʱ��ʱ���ᵽJavaScript���ռ���һЩJavaScriptС���ɽű����롣JavaScript��...','/index.php?a=shows&catid=12&id=23','0','99','1','0','admin','1371882423','1371882423','0','','','0','0','0','0','0','0'),
('24','14','PS���AI�������������ģ�ͽ̳�','','http://www.yzncms.com/demo/file/2013/06/51c5445ee39c5.jpg','PS�̳�,PS������������,PS���AI�̳�,psʵ��','�̳���Ȼ�õ�AI���������ƵĽ����߸弰�򵥵�ɫ�飬û������������ȫ������PS����ɡ���߹��첢�����ӣ������ʸв��ֿ̻��Ƚ��鷳����ʡ...','/index.php?a=shows&catid=14&id=24','0','99','1','0','admin','1371882593','1371882593','0','','','2','0','1','1','1','1435332393'),
('29','10','5��ʵ��ҳ����ת��ָ���ĵ�ַ�ķ���','','','JSʵ��ҳ����ת,htmlʵ��ҳ����ת,ʵ��ҳ����ת�ķ���','�������������������ϸ˵�����⼸�����ӵ���Ҫ�����ǣ���5����Զ���ת��ͬĿ¼�µ�hello.html�������Լ���Ҫ�����޸ģ��ļ���1) html...','/index.php?a=shows&catid=10&id=29','0','99','1','0','admin','1371907845','1371907845','0','','','0','0','0','0','0','0'),
('30','10','alt���Ժ�title���Ե����������','','','alt,����,title,�Ե�,����,����,alt,����','alt����    Ϊ������ʾͼ�񡢴����applets���û�����UA����alt��������ָ���滻���֡��滻���ֵ�������lang����ָ������Դ��How to...','/index.php?a=shows&catid=10&id=30','0','99','1','0','admin','1371907945','1371907945','0','','','0','0','0','0','0','0'),
('34','24','Digital Atelier������վ������������վ����','','http://www.yzncms.com/demo/file/2013/06/51c5b06e7462d.jpg','Digital Atelier,jquery��վ,�����վ,������ƿ�վ','Digital studio focused on web, mobile and facebook development','/index.php?a=shows&catid=24&id=34','0','99','1','0','admin','1371910261','1371910261','0','','','1','0','1','1','1','1435332417');
DROP TABLE IF EXISTS  `szdk_auth_group`;
CREATE TABLE `szdk_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '�û���id,��������',
  `module` varchar(20) NOT NULL COMMENT '�û�������ģ��',
  `type` tinyint(4) NOT NULL COMMENT '������',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '�û�����������',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '������Ϣ',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '�û���״̬��Ϊ1������Ϊ0����,-1Ϊɾ��',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '�û���ӵ�еĹ���id��������� , ����',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Ȩ�����';

insert into `szdk_auth_group`(`id`,`module`,`type`,`title`,`description`,`status`,`rules`) values
('2','admin','1','�����û�','���ֵͼ�Ȩ��','1','2,4,5,6,8,10,11,12,13,14,15,19,20,28,29'),
('1','admin','1','��������Ա','ӵ������Ȩ��','1','2,3,4,5,6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,24,25,26,28,29,30,31,32');
DROP TABLE IF EXISTS  `szdk_auth_rule`;
CREATE TABLE `szdk_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '����id,��������',
  `module` varchar(20) NOT NULL COMMENT '��������module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-���˵�',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '����ΨһӢ�ı�ʶ',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '������������',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '�Ƿ���Ч(0:��Ч,1:��Ч)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '���򸽼�����',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='�����';

insert into `szdk_auth_rule`(`id`,`module`,`type`,`name`,`title`,`status`,`condition`) values
('1','Admin','1','Admin/Setting/index','����','1',''),
('2','Admin','1','Admin/Manager/index','����Ա','1',''),
('3','Admin','1','Admin/Manager/add','��ӹ���Ա','1',''),
('4','Admin','1','Admin/database/index','Ӧ��','1',''),
('5','Admin','1','Admin/database/repair_list','���ݿ�ָ�','1',''),
('6','Admin','2','Admin/Setting/index','����','1',''),
('7','Admin','2','Admin/Content/index','����','-1',''),
('8','Admin','1','Admin/Config/index','վ������','1',''),
('9','Admin','1','Admin/Manager/edit','�༭����Ա','1',''),
('10','Admin','1','Admin/AuthManager/index','Ȩ������','1',''),
('11','Admin','1','Admin/Config/extend','��չ����','1',''),
('12','Admin','1','Admin/Action/actionlog','������־','1',''),
('13','Admin','1','Admin/database/optimize','�Ż���','1',''),
('14','Admin','1','Admin/database/repair','�޸���','1',''),
('15','Admin','1','Admin/database/downfile','���ر�','1',''),
('16','Admin','1','Admin/database/del','ɾ����','1',''),
('17','Admin','1','Admin/database/import','��ԭ��','1',''),
('18','Admin','1','Admin/Manager/del','ɾ������Ա','1',''),
('19','Admin','2','Admin/index/index','��ҳ','1',''),
('20','Admin','1','Admin/Action/get_xml','���������־','1',''),
('21','Admin','1','Admin/Action/remove','ɾ��������־','1',''),
('22','Admin','1','Admin/AuthManager/writeGroup','�༭/����Ȩ����','1',''),
('23','Admin','1','Admin/AuthManager/changeStatus','Ȩ����״̬�޸�','-1',''),
('24','Admin','1','Admin/AuthManager/access','������Ȩ','1',''),
('25','Admin','1','Admin/Menu/index','��̨�˵�','1',''),
('26','Admin','1','Admin/AuthManager/deleteGroup','ɾ��Ȩ����','1',''),
('27','Content','1','Content/Content/index','���ݹ���','1',''),
('28','Content','1','Content/Category/index','��Ŀ�б�','1',''),
('29','Content','2','Content/index/index','����','1',''),
('30','Content','1','Content/Models/index','ģ�͹���','1',''),
('31','Admin','1','Admin/Customer/index','�ͻ���������','1',''),
('32','Admin','1','Admin/Customer/delete','�ͻ�����ɾ��','1','');
DROP TABLE IF EXISTS  `szdk_cache`;
CREATE TABLE `szdk_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` char(100) NOT NULL DEFAULT '' COMMENT '����KEYֵ',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '����',
  `module` char(20) NOT NULL DEFAULT '' COMMENT 'ģ������',
  `model` char(30) NOT NULL DEFAULT '' COMMENT 'ģ������',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '������',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '�Ƿ�ϵͳ',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='�����жӱ�';

insert into `szdk_cache`(`id`,`key`,`name`,`module`,`model`,`action`,`system`) values
('1','Model','ģ���б�','Content','Models','model_cache','0'),
('2','Category','��Ŀ����','Content','Category','category_cache','0');
DROP TABLE IF EXISTS  `szdk_category`;
CREATE TABLE `szdk_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '��ĿID',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '����ģ��',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '���',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'ģ��ID',
  `domain` varchar(200) NOT NULL DEFAULT '' COMMENT '��Ŀ������',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '��ID',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '���и�ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '�Ƿ��������Ŀ��1����',
  `arrchildid` mediumtext COMMENT '��������ĿID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '��Ŀ����',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '��ĿͼƬ',
  `description` mediumtext COMMENT '��Ŀ����',
  `parentdir` varchar(100) NOT NULL DEFAULT '' COMMENT '��Ŀ¼',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '��ĿĿ¼',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '���ӵ�ַ',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '��Ŀ�����',
  `setting` mediumtext COMMENT '���������Ϣ',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '����',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '�Ƿ���ʾ',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '�Ƿ����ɾ�̬',
  `letter` varchar(30) NOT NULL DEFAULT '' COMMENT '��Ŀƴ��',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='��Ŀ��';

insert into `szdk_category`(`catid`,`module`,`type`,`modelid`,`domain`,`parentid`,`arrparentid`,`child`,`arrchildid`,`catname`,`image`,`description`,`parentdir`,`catdir`,`url`,`hits`,`setting`,`listorder`,`ismenu`,`sethtml`,`letter`) values
('1','content','0','1','','0','0','1','1,10,11','��ҳ�̳�','','��ҳ�̳�-��ҳ��ƻ����̳�DIV+CSS','','jiaocheng','/index.php?a=lists&catid=1','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','1','1','0','wangyejiaocheng'),
('2','content','0','1','','0','0','1','2,12,13','ǰ�˿���','','ǰ�˿���-ѧϰ����ǰ�˿�������','','qianduan','/index.php?a=lists&catid=2','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','2','1','0','qianduankaifa'),
('3','content','0','1','','0','0','1','3,14,15','PS�̳�','','PS�̳�-ѧϰPS����,��Ƹ��õ�ҳ��','','ps','/index.php?a=lists&catid=3','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','3','1','0','psjiaocheng'),
('4','content','0','1','','0','0','1','4,16,17','��ҳ��Ч','','�ṩ������ҳЧ��,�������ҳ������','','texiao','/index.php?a=lists&catid=4','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:17:"category_heng.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','4','1','0','wangyetexiao'),
('5','content','0','3','','0','0','1','5,18,19','��վ�ز�','','��վ�ز�-�ṩ��ҳ��Ʊر��ز�','','sucai','/index.php?a=lists&catid=5','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:17:"category_heng.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','5','1','0','jianzhansucai'),
('6','content','0','1','','0','0','1','6,20,21','��վ��Ӫ','','������Ӫ֪ʶ����,��վ��һ��֮��','','yunying','/index.php?a=lists&catid=6','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','6','1','0','wangzhanyunying'),
('7','content','0','1','','0','0','1','7,22,23','վ����̸','','վ����̸-�˽⻥������һ����Ѷ','','zatan','/index.php?a=lists&catid=7','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:12:"category.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','7','1','0','zhanchangzatan'),
('8','content','0','1','','0','0','1','8,24,25','�������','','�������-Ѱ��������������ˮƽ','','sheji','/index.php?a=lists&catid=8','0','a:12:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:17:"category_template";s:17:"category_heng.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";N;}','8','1','0','shejixinshang'),
('9','content','0','2','','0','0','0','9','�������','','','','software','/index.php?a=lists&catid=9','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:17:"list_software.php";s:13:"show_template";s:17:"show_download.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','9','1','0','changyongruanjian'),
('10','content','0','1','','1','0,1','0','10,30','HTML/XHTML','','','jiaocheng/','html','/index.php?a=lists&catid=10','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','10','1','0','html/xhtml'),
('11','content','0','1','','1','0,1','0','11','Dreamweaver','','','jiaocheng/','dw','/index.php?a=lists&catid=11','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','11','1','0','dreamweaver'),
('12','content','0','1','','2','0,2','0','12','javascript�̳�','','','qianduan/','js','/index.php?a=lists&catid=12','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','12','1','0','javascriptjiaocheng'),
('13','content','0','1','','2','0,2','0','13','jquery�̳�','','','qianduan/','jq','/index.php?a=lists&catid=13','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','13','1','0','jqueryjiaocheng'),
('14','content','0','1','','3','0,3','0','14','PS��ҳ����','','','ps/','psweb','/index.php?a=lists&catid=14','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','14','1','0','pswangyezhizuo'),
('15','content','0','1','','3','0,3','0','15','PS��ť����','','','ps/','psbtn','/index.php?a=lists&catid=15','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','15','1','0','psanniuzhizuo'),
('16','content','0','1','','4','0,4','0','16','JS�õ�Ƭ','','','texiao/','adjs','/index.php?a=lists&catid=16','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','16','1','0','jshuandengpian'),
('17','content','0','1','','4','0,4','0','17','�����˵�','','','texiao/','nav','/index.php?a=lists&catid=17','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','17','1','0','daohangcaidan'),
('18','content','0','3','','5','0,5','0','18','PNGͼ��','','','sucai/','png','/index.php?a=lists&catid=18','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:14:"show_image.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','18','1','0','pngtubiao'),
('19','content','0','3','','5','0,5','0','19','GIFСͼ��','','','sucai/','gif','/index.php?a=lists&catid=19','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:14:"show_image.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','19','1','0','gifxiaotubiao'),
('20','content','0','1','','6','0,6','0','20','SEO��վ�Ż�','','','yunying/','seo','/index.php?a=lists&catid=20','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','20','1','0','seowangzhanyouhua'),
('21','content','0','1','','6','0,6','0','21','����Ӫ��','','','yunying/','yingxiao','/index.php?a=lists&catid=21','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','21','1','0','wangluoyingxiao'),
('22','content','0','1','','7','0,7','0','22','��������Ѷ','','','zatan/','zixun','/index.php?a=lists&catid=22','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','22','1','0','hulianwangzixun'),
('23','content','0','1','','7','0,7','0','23','�����̸','','','zatan/','fangtan','/index.php?a=lists&catid=23','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:8:"show.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','23','1','0','renwufangtan'),
('24','content','0','1','','8','0,8','0','24','��վ����','','','sheji/','web','/index.php?a=lists&catid=24','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:11:"show_da.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','24','1','0','kuzhanxinshang'),
('25','content','0','1','','8','0,8','0','25','��־LOGO','','','sheji/','logo','/index.php?a=lists&catid=25','0','a:14:{s:6:"seturl";s:0:"";s:12:"generatehtml";s:1:"1";s:12:"generatelish";s:1:"0";s:10:"meta_title";s:0:"";s:13:"meta_keywords";s:0:"";s:16:"meta_description";s:0:"";s:13:"list_template";s:8:"list.php";s:13:"show_template";s:11:"show_da.php";s:19:"list_customtemplate";s:0:"";s:6:"ishtml";s:1:"0";s:9:"repagenum";s:2:"10";s:14:"content_ishtml";s:1:"0";s:15:"category_ruleid";s:1:"1";s:11:"show_ruleid";s:1:"4";}','25','1','0','biaozhilogo');
DROP TABLE IF EXISTS  `szdk_config`;
CREATE TABLE `szdk_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '��������',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '����˵��',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '���÷���',
  `value` text NOT NULL COMMENT '����ֵ',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '����',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='��վ���ñ�';

insert into `szdk_config`(`id`,`name`,`title`,`type`,`value`,`sort`) values
('1','site_title','��վ����','1','Yzncms���ݹ����� - Powered by Yzncms','1'),
('2','site_keyword','��վ�ؼ���','1','ThinkPHP,tp5.0,yzncms,���ݹ���ϵͳ','2'),
('3','site_description','��վ����','1','Yzncms���ݹ�����,һ�׼򵥣����ã����򿪷��ߵ����ݹ����,����TP5.0��ܿ���','3'),
('4','site_name','��վ����','1','Yzncms���ݹ�����','0'),
('5','icp','icp','2','��ICP��15017030','0'),
('6','close','�ر�վ��','2','1','0');
DROP TABLE IF EXISTS  `szdk_config_field`;
CREATE TABLE `szdk_config_field` (
  `fid` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '�ֶ���',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '���ñ�����',
  `setting` mediumtext COMMENT '��������',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='��վ��չ���ñ�';

insert into `szdk_config_field`(`fid`,`fieldname`,`type`,`setting`,`createtime`) values
('1','icp','input','a:4:{s:5:"title";s:3:"icp";s:4:"tips";s:9:"������";s:5:"style";s:0:"";s:6:"option";s:24:"ѡ������1|ѡ��ֵ1";}','1492738742'),
('2','close','select','a:4:{s:5:"title";s:12:"�ر�վ��";s:4:"tips";s:0:"";s:5:"style";s:0:"";s:6:"option";a:2:{i:0;a:2:{s:5:"title";s:6:"�ر�";s:5:"value";s:2:"0";}i:1;a:2:{s:5:"title";s:6:"����";s:5:"value";s:1:"1";}}}','1492741857');
DROP TABLE IF EXISTS  `szdk_customer`;
CREATE TABLE `szdk_customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '�ͻ���',
  `phone` char(80) NOT NULL DEFAULT '' COMMENT '�ͻ��绰',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='�ͻ���';

insert into `szdk_customer`(`id`,`name`,`phone`) values
('60','¬����','18862314569'),
('61','¬����','18862314569'),
('62','¬����','18862314569'),
('63','¬����','18862314569'),
('64','¬����','18862314569'),
('65','¬����','18862314569'),
('66','¬����','18862314569'),
('67','¬����','18862314569'),
('68','¬����','18862314569'),
('69','¬����','18862314569'),
('70','¬����','18862314569'),
('71','¬����','18862314569'),
('72','¬����','18862314569'),
('73','¬����','18862314569'),
('74','¬����','18862314569'),
('75','¬����','18862314569'),
('76','¬����','18862314569'),
('77','¬����','18862314569'),
('78','¬����','18862314569'),
('79','¬����','18862314569'),
('80','¬����','18862314569'),
('81','¬����','18862314569'),
('82','¬����','18862314569'),
('83','¬����','18862314569'),
('84','¬����','18862314569'),
('85','¬����','18862314569'),
('86','¬����','18862314569'),
('87','¬����','18862314569'),
('88','¬����','18862314569'),
('89','¬����','18862314569'),
('90','¬����','18862314569'),
('91','¬����','18862314569'),
('92','¬����','18862314569'),
('93','¬����','18862314569'),
('94','¬����','18862314569'),
('95','¬����','18862314569'),
('96','¬����','18862314569'),
('97','¬����','18862314569'),
('98','¬����','18862314569'),
('99','¬����','18862314569'),
('100','¬����','18862314569'),
('101','��ٻٻ','13952412600');
DROP TABLE IF EXISTS  `szdk_menu`;
CREATE TABLE `szdk_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�˵�ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '����',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�ϼ�����ID',
  `app` char(20) NOT NULL DEFAULT '' COMMENT 'Ӧ�ñ�ʶ',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '��������ʶ',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '������ʶ',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '���Ӳ���',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '״̬',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '��ʾ',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '�Ƿ񿪷��߿ɼ�',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '����ID',
  PRIMARY KEY (`id`),
  KEY `pid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='��̨�˵���';

insert into `szdk_menu`(`id`,`title`,`parentid`,`app`,`controller`,`action`,`parameter`,`status`,`tip`,`is_dev`,`listorder`) values
('1','����','0','Admin','Setting','index','','1','','0','1'),
('2','����','0','Content','index','index','','1','','0','2'),
('5','վ������','10','Admin','Config','index','','1','','0','1'),
('6','����Ա','1','Admin','Manager','index','','1','','0','1'),
('9','��չ����','5','Admin','Config','extend','','1','','0','5'),
('10','����','1','Admin','Setting','index','','1','','0','0'),
('12','����Ա����','6','Admin','Manager','index','','1','','0','0'),
('13','��ӹ���Ա','12','Admin','Manager','add','','0','','0','0'),
('14','�༭����Ա','12','Admin','Manager','edit','','0','','0','1'),
('15','������־','10','Admin','Action','actionlog','','1','','0','10'),
('16','Ӧ��','1','Admin','database','index','','1','','0','3'),
('17','���ݿⱸ��','16','Admin','database','index','','1','','0','0'),
('18','���ݿ�ָ�','17','Admin','database','repair_list','','1','','0','0'),
('19','Ȩ������','10','Admin','AuthManager','index','','1','','0','3'),
('20','�Ż���','17','Admin','database','optimize','','0','','0','0'),
('21','�޸���','17','Admin','database','repair','','0','','0','0'),
('22','���ر�','17','Admin','database','downfile','','0','','0','0'),
('23','ɾ����','17','Admin','database','del','','0','','0','0'),
('24','��ԭ��','17','Admin','database','import','','0','','0','0'),
('25','ɾ������Ա','12','Admin','Manager','del','','0','','0','0'),
('26','��ҳ','0','Admin','index','index','','1','','0','0'),
('27','���������־','15','Admin','Action','get_xml','','0','','0','0'),
('28','ɾ��������־','15','Admin','Action','remove','','0','','0','0'),
('29','�鿴Ȩ����','19','Admin','AuthManager','index','','0','','0','0'),
('31','ɾ��Ȩ����','19','Admin','AuthManager','deleteGroup','','0','','0','0'),
('30','�༭/����Ȩ����','19','Admin','AuthManager','writeGroup','','0','','0','0'),
('32','������Ȩ','19','Admin','AuthManager','access','','0','','0','0'),
('33','��̨�˵�','10','Admin','Menu','index','','1','','0','10'),
('34','���ݹ���','2','Content','Content','index','','1','','0','0'),
('35','�������','2','Content','Category','index','','1','','0','0'),
('36','��Ŀ�б�','35','Content','Category','index','','1','','0','0'),
('37','ģ�͹���','35','Content','Models','index','','1','','0','0'),
('41','�ͻ�����','26','Admin','Customer','index','','1','','0','0'),
('42','�ͻ���������','41','Admin','Customer','index','p=1','1','','0','0'),
('43','�ͻ�����ɾ��','41','Admin','Customer','delete','','0','','0','0');
DROP TABLE IF EXISTS  `szdk_model`;
CREATE TABLE `szdk_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '' COMMENT 'ģ������',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '����',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '����',
  `setting` text COMMENT '������Ϣ',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '���ʱ��',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '��Ϣ��',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '�Ƿ���ȫվ����',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '�Ƿ���� 1����',
  `default_style` char(30) NOT NULL DEFAULT '' COMMENT '���',
  `category_template` char(30) NOT NULL DEFAULT '' COMMENT '��Ŀģ��',
  `list_template` char(30) NOT NULL DEFAULT '' COMMENT '�б�ģ��',
  `show_template` char(30) NOT NULL DEFAULT '' COMMENT '����ģ��',
  `js_template` varchar(30) NOT NULL DEFAULT '' COMMENT 'JSģ��',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '����',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ģ���ʶ',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='����ģ���б�';

insert into `szdk_model`(`modelid`,`name`,`description`,`tablename`,`setting`,`addtime`,`items`,`enablesearch`,`disabled`,`default_style`,`category_template`,`list_template`,`show_template`,`js_template`,`sort`,`type`) values
('1','����ģ��','����ģ��','article','','1403150253','0','1','0','','','','','','0','0'),
('2','����ģ��','����ģ��','download','','1403153866','0','1','0','','','','','','0','0'),
('3','ͼƬģ��','ͼƬģ��','photo','','1403153881','0','1','0','','','','','','0','0');
SET FOREIGN_KEY_CHECKS = 1;

