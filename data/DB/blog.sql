--����ע��������ʱ���ã����ڵ���
-------------
---- user �û���
-------------
--CREATE TABLE user (
-- user_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '�û�ID',
-- group_id mediumint(8) NOT NULL COMMENT '�û���ID',
-- user_name varchar(32) NOT NULL COMMENT '�û���',
-- user_pwd varchar(32) NOT NULL COMMENT '�û�����',
-- user_phone int(12) NOT NULL COMMENT '�û��ֻ�����',
-- user_sex varchar(6) NOT NULL COMMENT '�û��Ա�',
-- user_qq mediumint(9) NOT NULL COMMENT '�û�QQ����',
-- user_email varchar(64) NOT NULL COMMENT '�û�EMAIL��ַ',
-- user_address varchar(255) NOT NULL COMMENT '�û���ַ',
-- user_mark mediumint(9) NOT NULL COMMENT '�û�����',
-- user_rank_id tinyint(3) NOT NULL COMMENT '�û��ȼ�',
-- user_last_login_ip varchar(15) NOT NULL COMMENT '�û���һ�ε�¼IP��ַ',
--
-- user_birthday int(13) NOT NULL COMMENT '�û�����',
-- user_description varchar(255) NOT NULL COMMENT '��������',
-- user_image_url varchar(255) NOT NULL COMMENT '�û�ͷ��洢·��',
-- user_school varchar(255) NOT NULL COMMENT '��ҵѧУ',
-- user_register_time int(13) NOT NULL COMMENT '�û�ע��ʱ��',
-- user_register_ip varchar(15) NOT NULL COMMENT '�û�ע��ʱIP��ַ',
-- user_last_update_time int(13) NOT NULL COMMENT '�û��ϴθ��²���ʱ��',
-- user_weibo varchar(255) NOT NULL COMMENT '�û�΢��',
-- user_blood_type char(3) NOT NULL COMMENT '�û�Ѫ��',
-- user_says varchar(255) NOT NULL COMMENT '�û���¼',
-- user_lock tinyint(3) NOT NULL COMMENT '�Ƿ�������0Ϊ��������1Ϊ����',
-- user_freeze tinyint(3) NOT NULL COMMENT '�Ƿ񶳽ᣬ0Ϊ�����ᣬ1Ϊ����',
-- user_power varchar(255) NOT NULL COMMENT 'ӵ��Ȩ��',
-- PRIMARY KEY (user_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
-------------------
---- user_rank �û�Ȩ�ޱ�
-------------------
--CREATE TABLE user_rank (
-- rank_id mediumint(5) NOT NULL AUTO_INCREMENT COMMENT '����ID',
-- user_rank_id smallint(5) NOT NULL COMMENT '�ȼ�ID',
-- rank_mark mediumint(6) NOT NULL COMMENT '�ȼ�����',
-- rank_name varchar(32) NOT NULL COMMENT '�ȼ�����',
-- PRIMARY KEY (rank_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
------------------
----user_group �û����
------------------
--CREATE TABLE user_group (
-- g_id tinyint(3) NOT NULL AUTO_INCREMENT COMMENT '����ID��',
-- group_id tinyint(3) NOT NULL COMMENT '�û���ID',
-- group_name varchar(20) NOT NULL COMMENT '�û�����',
-- group_power varchar(20) NOT NULL COMMENT '�û�Ȩ��',
-- PRIMARY KEY (g_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--------------------
---- power_list ����Ȩ�ޱ�
--------------------
--CREATE TABLE power_list (
-- p_id int(10) NOT NULL AUTO_INCREMENT COMMENT '����ID',
-- power_id int(10) NOT NULL COMMENT 'Ȩ��ID',
-- power_name varchar(36) NOT NULL COMMENT 'Ȩ������',
-- PRIMARY KEY (p_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
---------------------
----friend ���ѱ�
---------------------
--CREATE TABLE friend (
-- f_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '����ID',
-- user_id mediumint(8) NOT NULL COMMENT '�û�ID',
-- friend_id mediumint(8) NOT NULL COMMENT '����ID',
-- PRIMARY KEY (f_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
------------------------
----user_attention �û���ע��
------------------------
--CREATE TABLE user_attention (
-- a_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '����ID',
-- user_id mediumint(8) NOT NULL COMMENT '�û�ID',
-- attention_id mediumint(8) NOT NULL COMMENT '��עID',
-- PRIMARY KEY (a_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
-------------------------
----secret_message �û�˽�ű�
-------------------------
--CREATE TABLE secret_message (
-- secret_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '����˽��ID',
-- send_id mediumint(8) NOT NULL COMMENT '������ID',
-- receive_id mediumint(8) NOT NULL COMMENT '������ID',
-- message_topic varchar(64) NOT NULL COMMENT '˽�ű���',
-- message_content varchar(255) NOT NULL COMMENT '˽������',
-- PRIMARY KEY (secret_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
--------------------------
----system_message ϵͳ֪ͨ��
--------------------------
--CREATE TABLE system_message (
-- system_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT 'ϵͳ֪ͨID',
-- send_id mediumint(8) NOT NULL COMMENT '������ID',
-- group_id tinyint(3) NOT NULL COMMENT '�û���ID',
-- send_default mediumint(8) NOT NULL COMMENT '1ʱ���������û���0ʱ�򲻲���',
-- system_topic varchar(60) NOT NULL COMMENT '֪ͨ����',
-- system_content varchar(255) NOT NULL COMMENT '֪ͨ����',
-- PRIMARY KEY (system_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
----------------------------
----friendly_link ��������
----------------------------
--CREATE TABLE friendly_link (
-- link_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '������������ID',
-- link_name varchar(60) NOT NULL COMMENT '������������',
-- link_url varchar(255) NOT NULL COMMENT '���ӵ�ַ',
-- link_logo varchar(255) NOT NULL COMMENT 'LOGOͼƬ',
-- show_order tinyint(3) NOT NULL COMMENT '��ҳ����ʾ��˳��',
-- PRIMARY KEY (link_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
----------------------------
----ad ����
----------------------------
--CREATE TABLE ad (
-- ad_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '����ID',
-- position_id smallint(5) NOT NULL COMMENT '0,վ����;��1��ʼ������Ǹù�������Ĺ��λ,ͬ��ad_postition�е��ֶ�position_id��ֵ',
-- media_type tinyint(3) NOT NULL DEFAULT 0 COMMENT '�������,0ͼƬ;1flash;2����3����',
-- ad_name varchar(60) NOT NULL COMMENT '��������¼�Ĺ������',
-- ad_link varchar(255) NOT NULL COMMENT '������ӵ�ַ',
-- ad_code text NOT NULL COMMENT '������ӵı���,���ֹ��������ֻ�ͼƬ��flash�������ǵĵ�ַ',
-- start_time int(13) NOT NULL DEFAULT 0 COMMENT '��濪ʼʱ��',
-- end_time int(13) NOT NULL DEFAULT 0 COMMENT '������ʱ��',
-- link_man varchar(60) NOT NULL COMMENT '�����ϵ��',
-- link_email varchar(60) NOT NULL COMMENT '�����ϵ�˵�����',
-- link_phone varchar(60) NOT NULL COMMENT '�����ϵ�˵õ绰',
-- click_count mediumint(8) NOT NULL DEFAULT 0 COMMENT '���������',
-- enabled tinyint(3) NOT NULL DEFAULT 1 COMMENT '�ù���Ƿ�ر�;1����; 0�ر�; �رպ��潫������Ч',
-- PRIMARY KEY (ad_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
----------------------
----stay_message �û����Ա�
----------------------
--CREATE TABLE stay_message (
-- stay_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '���Ա�����ID',
-- user_id mediumint(8) NOT NULL COMMENT '�û�ID',
-- stay_user_id mediumint(8) NOT NULL COMMENT '������ID',
-- message_content varchar(255) NOT NULL COMMENT '��������',
-- stay_user_ip varchar(15) NOT NULL COMMENT '�����û���IP��ַ',
-- message_stay_time int(13) NOT NULL COMMENT '����ʱ��',
-- place varchar(64) NOT NULL COMMENT '����',
-- PRIMARY KEY (stay_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
------------------------
----about_blog ������Ϣ��
------------------------
--CREATE TABLE about_blog (
-- blog_id mediumint(8) NOT NULL  COMMENT '�û�ID',
-- blog_keyword varchar(255) NOT NULL COMMENT '���͹ؼ���',
-- blog_description varchar(255) NOT NULL COMMENT '��������',
-- blog_name varchar(36) NOT NULL COMMENT '��������',
-- blog_title varchar(128) NOT NULL COMMENT '���ͱ���',
-- PRIMARY KEY (blog_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
--------------------------
----visitor ����ÿͱ�
--------------------------
--CREATE TABLE visitor (
-- v_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '�ÿͼ�¼ID',
-- visitor_id mediumint(8) NOT NULL COMMENT '�ÿ�ID',
-- visitor_time int(13) NOT NULL COMMENT '����ʱ��',
-- user_id mediumint(8) NOT NULL COMMENT '�����û�ID',
-- visitor_ip varchar(15) NOT NULL COMMENT '�ÿ�IP��ַ',
-- type_id int(3) NOT NULL COMMENT '���ʰ��ID',
-- where_id mediumint(8) NOT NULL COMMENT '�鿴ĳ����ĳ������Ŀ����鿴�����ĵ�3����ᣬ��ID��Ӧ������ID��',
-- PRIMARY KEY (v_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
---------------------------
----shuoshuo �û�����˵˵��
---------------------------
--CREATE TABLE shuoshuo (
-- shuo_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '˵˵��¼ID',
-- user_id mediumint(8) NOT NULL COMMENT '�û�ID',
-- shuo_time int(13) NOT NULL DEFAULT 0 COMMENT '����ʱ��',
-- shuo_ip varchar(15) NOT NULL COMMENT '˵˵����ʱ��IP��ַ',
-- shuoshuo varchar(255) NOT NULL COMMENT '˵˵����',
-- type_id tinyint(3) NOT NULL DEFAULT 3 COMMENT '��ĿID,Ĭ��Ϊ3',
-- PRIMARY KEY (shuo_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
---------------------------
----photo_sort ��Ƭ�����
---------------------------
--CREATE TABLE photo_sort (
-- sort_img_id mediumint(8) NOT NULL  AUTO_INCREMENT COMMENT '���ID',
-- sort_img_name varchar(20) NOT NULL COMMENT '�����',
-- sort_img_type varchar(20) NOT NULL COMMENT 'չʾ��ʽ 0->�����˿ɼ�,1->�������뼴�ɲ鿴,2->�������ܲ鿴,3->�ش����⼴�ɲ鿴',
-- img_password varchar(32) NOT NULL COMMENT '�鿴����',
-- user_id mediumint(8) NOT NULL COMMENT '�����û�ID',
-- img_sort_question varchar(255) NOT NULL COMMENT '��������',
-- img_sort_answer varchar(128) NOT NULL COMMENT '��������Ĵ�',
-- type_id int(3) NOT NULL DEFAULT 1 COMMENT 'Ĭ��1��ʾ�����',
-- top_pic_src mediumint(8) NOT NULL COMMENT '����ͼƬ��·��',
-- PRIMARY KEY (sort_img_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
---------------------------
----photos ��Ƭ��
---------------------------
--CREATE TABLE photos (
-- photo_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '��ƬID',
-- photo_name varchar(255) NOT NULL COMMENT '��Ƭ����',
-- photo_src varchar(255) NOT NULL COMMENT 'ͼƬ·��',
-- photo_description varchar(255) NOT NULL COMMENT 'ͼƬ����',
-- user_id mediumint(8) NOT NULL COMMENT '�����û�ID',
-- sort_id mediumint(8) NOT NULL COMMENT '�������ID',
-- upload_time int(13) NOT NULL COMMENT 'ͼƬ�ϴ�ʱ��',
-- upload_ip varchar(15) NOT NULL COMMENT 'ͼƬ�����ϴ�IP��ַ',
-- PRIMARY KEY (photo_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
--
-----------------------------
----article_sort ���·����
-----------------------------
--CREATE TABLE article_sort (
-- sort_article_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '��������ID',
-- user_id mediumint(8) NOT NULL COMMENT '�÷��������û�',
-- sort_article_name varchar(60) NOT NULL COMMENT '��������',
-- PRIMARY KEY (sort_article_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
------------------------------
----article ���±�
------------------------------
--CREATE TABLE article (
-- article_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '��־����ID��',
-- article_name varchar(128) NOT NULL COMMENT '��������',
-- article_time int(13) NOT NULL COMMENT '����ʱ��',
-- article_ip varchar(15) NOT NULL COMMENT '����IP',
-- article_click int(10) NOT NULL COMMENT '�鿴����',
-- sort_article_id mediumint(8) NOT NULL COMMENT '��������',
-- user_id mediumint(8) NOT NULL COMMENT '�����û�ID',
-- type_id tinyint(3) NOT NULL DEFAULT 1 COMMENT '��ĿID',
-- article_type int(13) NOT NULL DEFAULT 1 COMMENT '���µ�ģʽ:0Ϊ˽�У�1Ϊ������2Ϊ�����Ѳ鿴',
-- article_content text NOT NULL COMMENT '��������',
-- article_up tinyint(3) NOT NULL DEFAULT 0 COMMENT '�Ƿ��ö�:0Ϊ��1Ϊ��',
-- article_support tinyint(3) NOT NULL DEFAULT 0 COMMENT '�Ƿ����Ƽ�:0Ϊ��1Ϊ��',
-- PRIMARY KEY (article_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
--
------------------------------
----user_comment �û����۱�
------------------------------
--CREATE TABLE user_comment (
-- c_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '��������ID��',
-- user_id mediumint(8) NOT NULL COMMENT '�յ����۵��û�ID',
-- type_id tinyint(3) NOT NULL COMMENT '������ĿID',
-- commit_id mediumint(8) NOT NULL COMMENT '�������ݵ�ID',
-- commit_content varchar(255) NOT NULL COMMENT '��������',
-- commit_user_id mediumint(8) NOT NULL COMMENT '������ID',
-- commit_time int(13) NOT NULL COMMENT '����ʱ��',
-- commit_ip varchar(15) NOT NULL COMMENT '����ʱ��IP��ַ',
-- PRIMARY KEY (c_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;
--
--
--
--------------------------------
----phone_message ���ż�¼��
--------------------------------
--CREATE TABLE phone_message (
-- phone_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '����ID��',
-- phone_num varchar(12) NOT NULL COMMENT '�û��ֻ�����',
-- contents varchar(255) NOT NULL COMMENT '��������',
-- send_time int(13) NOT NULL COMMENT '����ʱ��',
-- user_id mediumint(8) NOT NULL COMMENT '�û�ID',
-- PRIMARY KEY (phone_id)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;


--------
--����Ա��
--------
create TABLE admin(
    admin_id mediumint(8) not null auto_increment COMMENT '����ԱID',
    admin_name varchar(32) not null COMMENT '����Ա����',
    admin_account varchar(64) not null COMMENT '����Ա�˺�',
    admin_password varchar(32) not null COMMENT '����Ա����',
    admin_email varchar(128) not null COMMENT '����Ա����',
    admin_login_ip varchar(15) not null COMMENT '����Ա�ϴε�¼ip��ַ',
    admin_login_last_time datetime not null COMMENT '����Ա���һ�ε�¼ʱ��',
    primary key(admin_id)
)engine=InnoDB default charset=utf8;

--------
--����ԱȨ�ޱ�  ��ʱ����
--------
--create table admin_rank(
--
--)engine=InnoDB default charset=utf8;

create table module(
module_id mediumint(8) not null auto_increment COMMENT 'ģ��ID',
module_name varchar(32) not null COMMENT 'ģ������',
create_date datetime not null COMMENT 'ģ�鴴��ʱ��',
primary key(module_id)
)engine=InnoDB default charset=utf8;

---------------------------
-- article_sort ���·����
---------------------------
CREATE TABLE article_sort (
 sort_article_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '���·���ID',
 sort_article_name varchar(60) NOT NULL COMMENT '��������',
 PRIMARY KEY (sort_article_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;



----------------------------
-- article ���±�
----------------------------
CREATE TABLE article (
 article_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '��־����ID',
 article_name varchar(128) NOT NULL COMMENT '��������',
 article_time int(13) NOT NULL COMMENT '����ʱ��',
 article_ip varchar(15) NOT NULL COMMENT '����IP',
 article_click int(10) NOT NULL COMMENT '�鿴����',
 sort_article_id mediumint(8) NOT NULL COMMENT '��������',
 type_id tinyint(3) NOT NULL DEFAULT 1 COMMENT '��ĿID',
 article_type int(13) NOT NULL DEFAULT 1 COMMENT '���µ�ģʽ:0Ϊ˽�У�1Ϊ������2Ϊ�����Ѳ鿴',
 article_content text NOT NULL COMMENT '��������',
 article_up tinyint(3) NOT NULL DEFAULT 0 COMMENT '�Ƿ��ö�:0Ϊ��1Ϊ��',
-- article_support tinyint(3) NOT NULL DEFAULT 0 COMMENT '�Ƿ����Ƽ�:0Ϊ��1Ϊ��',
 PRIMARY KEY (article_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

----------------------------
-- article_file ���¸�����
----------------------------

create table article_file(
article_file_id mediumint(8) not null auto_increment COMMENT '���¸���id',
article_file_name varchar(128) not null COMMENT '��������',
article_file_size bigint(11) not null COMMENT '�ļ���С ��λΪkb',
article_file_path varchar(255) not null COMMENT '�ļ�·��',
article_id smallint(5) not null COMMENT '�������µ�id',
primary key(artcle_file_id)
)engine=InnoDB default charset=utf8;
