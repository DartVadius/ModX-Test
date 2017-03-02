-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 01 2017 г., 17:15
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `modx`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `sid` varchar(32) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data about last user action.';

--
-- Дамп данных таблицы `modx_active_users`
--

INSERT INTO `modx_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('47csk7larj91aoh3ca9umcg4a7', 1, 'adminko', 1488134962, '78', 36),
('pp3nf5lbpa4kd011nmj29vaip7', 1, 'adminko', 1488135249, '8', NULL),
('q85eseb1s5o91ai1c86urfa807', 1, 'adminko', 1488135548, '8', NULL),
('a8c9p45u4riqj0gd2p2e187381', 1, 'adminko', 1488135536, '8', NULL),
('5lsde0tk1gsmfg8ehnsmortmb7', 1, 'adminko', 1488376958, '2', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_user_locks`
--

CREATE TABLE `modx_active_user_locks` (
  `id` int(10) NOT NULL,
  `sid` varchar(32) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data about locked elements.';

--
-- Дамп данных таблицы `modx_active_user_locks`
--

INSERT INTO `modx_active_user_locks` (`id`, `sid`, `internalKey`, `elementType`, `elementId`, `lasthit`) VALUES
(671, '5lsde0tk1gsmfg8ehnsmortmb7', 1, 7, 7, 1488374683),
(648, '5lsde0tk1gsmfg8ehnsmortmb7', 1, 7, 5, 1488374211);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_user_sessions`
--

CREATE TABLE `modx_active_user_sessions` (
  `sid` varchar(32) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data about valid user sessions.';

--
-- Дамп данных таблицы `modx_active_user_sessions`
--

INSERT INTO `modx_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('5lsde0tk1gsmfg8ehnsmortmb7', 1, 1488377739, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(45) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Categories to be used snippets,tv,chunks, etc';

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `category`) VALUES
(1, 'Demo Content'),
(2, 'Js'),
(3, 'Manager and Admin'),
(4, 'Search'),
(5, 'Navigation'),
(6, 'Content'),
(7, 'Forms'),
(8, 'Login'),
(9, 'System'),
(10, 'Header'),
(11, 'Slider'),
(12, 'Footer'),
(13, 'TV'),
(14, 'MainPage'),
(15, 'Shared Content'),
(16, 'Contact Page'),
(17, 'About Page'),
(18, 'News Page'),
(19, 'News List');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_event_log`
--

CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Stores event and error logs';

--
-- Дамп данных таблицы `modx_event_log`
--

INSERT INTO `modx_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(1, 0, 1487942657, 3, 1, 0, 'SQL Query / Execution of a query to the database f', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'modx.us.sid\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT *, count(au.sid) AS count FROM `modx`.`modx_active_user_sessions` us LEFT JOIN `modx`.`modx_active_users` au ON au.internalKey=us.internalKey GROUP BY au.sid HAVING au.action <> \'8\'  ORDER BY username ASC, au.sid ASC </span></div>\n<table class=\"grid\">\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/manager/index.php?a=2</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Manager action</td>\n		<td>2 - Viewing home page/ online users</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-24 16:24:17</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0392 s (16 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.7264 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.7656 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>4.1305541992188 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>include_once</strong>(string $var1)<br />manager/index.php on line 295</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->select</strong>(string $var1, string $var2, \'\', string $var4)<br />manager/actions/welcome.static.php on line 175</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 161</td>\n	</tr>\n</table>\n'),
(2, 0, 1488278512, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : syntax error, unexpected \'if\' (T_IF), expecting variable (T_VARIABLE) or \'$\'</div><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'if\' (T_IF), expecting variable (T_VARIABLE) or \'$\' in <b>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</b> on line <b>5</b><br />\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>PARSING ERROR[4]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>5</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>Snippet</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 13:41:52</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0036 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1240 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1276 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2605438232422 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n</table>\n'),
(3, 0, 1488280036, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : Illegal string offset \'name\'</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>3</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 14:07:16</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0128 s (3 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0677 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0805 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2605438232422 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n</table>\n'),
(4, 0, 1488280093, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : Illegal string offset \'modal\'</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>2</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 14:08:13</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0190 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1155 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1345 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2637252807617 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n</table>\n'),
(5, 0, 1488280113, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : Illegal string offset \'modal\'</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>2</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 14:08:33</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0049 s (3 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0505 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0554 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2633743286133 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n</table>\n'),
(6, 0, 1488280140, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : Illegal string offset \'modal\'</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>2</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 14:09:00</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0038 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0721 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0759 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2633743286133 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n</table>\n'),
(7, 0, 1488283211, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : Illegal string offset \'name\'</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>3</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modx/\" target=\"_blank\">Главная</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 15:00:11</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0153 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1691 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1844 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2618560791016 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n</table>\n'),
(8, 0, 1488288078, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mail() expects parameter 1 to be string, array given</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>17</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 16:21:18</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0049 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1471 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1520 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2596740722656 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mail</strong>(array $var1, string $var2, string $var3, string $var4)<br />manager/includes/document.parser.class.inc.php(1360) : eval()\'d code on line 17</td>\n	</tr>\n</table>\n'),
(9, 0, 1488288084, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mail() expects parameter 1 to be string, array given</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>17</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 16:21:24</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0024 s (3 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0372 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0396 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2596740722656 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mail</strong>(array $var1, string $var2, string $var3, string $var4)<br />manager/includes/document.parser.class.inc.php(1360) : eval()\'d code on line 17</td>\n	</tr>\n</table>\n'),
(10, 0, 1488288134, 3, 0, 1, 'Snippet - SendMail / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mail() expects parameter 1 to be string, array given</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OS\\OpenServer\\domains\\ModX\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>17</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>SendMail</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[4] <a href=\"http://modx/contacts\" target=\"_blank\">Контакты</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modx/contacts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2017-02-28 16:22:14</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0039 s (3 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0456 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0495 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2596740722656 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'SendMail\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mail</strong>(array $var1, string $var2, string $var3, string $var4)<br />manager/includes/document.parser.class.inc.php(1360) : eval()\'d code on line 17</td>\n	</tr>\n</table>\n');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_keyword_xref`
--

CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Cross reference bewteen keywords and content';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_estonian_ci DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) COLLATE utf8_estonian_ci DEFAULT '0',
  `itemname` varchar(255) COLLATE utf8_estonian_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains a record of user interaction.';

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1, 1487942561, 1, 'adminko', 58, '-', 'MODX', 'Logged in'),
(2, 1487942563, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(3, 1487942572, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(4, 1487942655, 1, 'adminko', 30, '-', '-', 'Saving settings'),
(5, 1487942968, 1, 'adminko', 76, '-', '-', 'Element management'),
(6, 1487942991, 1, 'adminko', 16, '4', 'MODX startup - Bootstrap', 'Editing template'),
(7, 1487943006, 1, 'adminko', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(8, 1487943012, 1, 'adminko', 76, '-', '-', 'Element management'),
(9, 1487943096, 1, 'adminko', 16, '3', 'Minimal Template', 'Editing template'),
(10, 1487943105, 1, 'adminko', 20, '3', 'Minimal Template', 'Saving template'),
(11, 1487943105, 1, 'adminko', 76, '-', '-', 'Element management'),
(12, 1487943107, 1, 'adminko', 16, '3', 'Minimal Template', 'Editing template'),
(13, 1487943268, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(14, 1487943269, 1, 'adminko', 76, '-', '-', 'Element management'),
(15, 1487943289, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(16, 1487943297, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(17, 1487943297, 1, 'adminko', 76, '-', '-', 'Element management'),
(18, 1487943305, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(19, 1487943326, 1, 'adminko', 76, '-', '-', 'Element management'),
(20, 1487943363, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(21, 1487943393, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(22, 1487943393, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(23, 1487943561, 1, 'adminko', 76, '-', '-', 'Element management'),
(24, 1487943566, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(25, 1487943743, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(26, 1487943743, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(27, 1487944403, 1, 'adminko', 76, '-', '-', 'Element management'),
(28, 1487944415, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(29, 1487944518, 1, 'adminko', 76, '-', '-', 'Element management'),
(30, 1487944522, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(31, 1487944731, 1, 'adminko', 79, '-', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(32, 1487944731, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(33, 1487944738, 1, 'adminko', 76, '-', '-', 'Element management'),
(34, 1487944748, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(35, 1487944775, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(36, 1487944775, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(37, 1487944873, 1, 'adminko', 76, '-', '-', 'Element management'),
(38, 1487944879, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(39, 1487944919, 1, 'adminko', 79, '-', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(40, 1487944919, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(41, 1487944949, 1, 'adminko', 76, '-', '-', 'Element management'),
(42, 1487944955, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(43, 1487944975, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(44, 1487944975, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(45, 1487945011, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(46, 1487945011, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(47, 1487945100, 1, 'adminko', 79, '-', 'SLIDER', 'Saving Chunk (HTML Snippet)'),
(48, 1487945101, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(49, 1487945122, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(50, 1487945123, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(51, 1487946931, 1, 'adminko', 79, '-', 'SERVICES', 'Saving Chunk (HTML Snippet)'),
(52, 1487946931, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(53, 1487946955, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(54, 1487946955, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(55, 1487947082, 1, 'adminko', 79, '-', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(56, 1487947083, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(57, 1487947113, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(58, 1487947113, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(59, 1487947159, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(60, 1487947160, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(61, 1487947227, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(62, 1487947227, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(63, 1487947355, 1, 'adminko', 79, '-', 'BENEFITS', 'Saving Chunk (HTML Snippet)'),
(64, 1487947355, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(65, 1487947376, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(66, 1487947376, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(67, 1487947547, 1, 'adminko', 79, '-', 'FOOTER', 'Saving Chunk (HTML Snippet)'),
(68, 1487947548, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(69, 1487947560, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(70, 1487947560, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(71, 1487948014, 1, 'adminko', 79, '-', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(72, 1487948014, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(73, 1487948042, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(74, 1487948042, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(75, 1487948111, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(76, 1487948111, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(77, 1487948751, 1, 'adminko', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(78, 1487948778, 1, 'adminko', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(79, 1487948865, 1, 'adminko', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(80, 1487949135, 1, 'adminko', 5, '1', 'Test ModX', 'Saving resource'),
(81, 1487949135, 1, 'adminko', 27, '1', 'Test ModX', 'Editing resource'),
(82, 1487949142, 1, 'adminko', 3, '1', 'Test ModX', 'Viewing data for resource'),
(83, 1487949173, 1, 'adminko', 27, '1', 'Test ModX', 'Editing resource'),
(84, 1487949229, 1, 'adminko', 5, '1', 'Test ModX', 'Saving resource'),
(85, 1487949230, 1, 'adminko', 3, '1', 'Test ModX', 'Viewing data for resource'),
(86, 1487949254, 1, 'adminko', 27, '1', 'Test ModX', 'Editing resource'),
(87, 1487949389, 1, 'adminko', 5, '1', 'Test ModX index', 'Saving resource'),
(88, 1487949391, 1, 'adminko', 3, '1', 'Test ModX index', 'Viewing data for resource'),
(89, 1487949419, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(90, 1487949425, 1, 'adminko', 5, '-', 'xzcz', 'Saving resource'),
(91, 1487949427, 1, 'adminko', 3, '2', 'xzcz', 'Viewing data for resource'),
(92, 1487949439, 1, 'adminko', 6, '2', 'xzcz', 'Deleting resource'),
(93, 1487949441, 1, 'adminko', 3, '2', 'xzcz', 'Viewing data for resource'),
(94, 1487949468, 1, 'adminko', 64, '-', '-', 'Removing deleted content'),
(95, 1487950830, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(96, 1487956893, 1, 'adminko', 27, '1', 'Test ModX index', 'Editing resource'),
(97, 1487956958, 1, 'adminko', 31, '-', '-', 'Using file manager'),
(98, 1487957029, 1, 'adminko', 102, '9', 'TransAlias', 'Edit plugin'),
(99, 1487957147, 1, 'adminko', 27, '1', 'Test ModX index', 'Editing resource'),
(100, 1487957172, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(101, 1487957239, 1, 'adminko', 5, '-', 'Test ModX about', 'Saving resource'),
(102, 1487957240, 1, 'adminko', 3, '3', 'Test ModX about', 'Viewing data for resource'),
(103, 1487957243, 1, 'adminko', 27, '3', 'Test ModX about', 'Editing resource'),
(104, 1487957248, 1, 'adminko', 5, '3', 'Test ModX about', 'Saving resource'),
(105, 1487957249, 1, 'adminko', 3, '3', 'Test ModX about', 'Viewing data for resource'),
(106, 1487957255, 1, 'adminko', 27, '3', 'Test ModX about', 'Editing resource'),
(107, 1487957401, 1, 'adminko', 27, '1', 'Test ModX index', 'Editing resource'),
(108, 1487957404, 1, 'adminko', 27, '3', 'Test ModX about', 'Editing resource'),
(109, 1487957413, 1, 'adminko', 5, '3', 'Test ModX About', 'Saving resource'),
(110, 1487957415, 1, 'adminko', 3, '3', 'Test ModX About', 'Viewing data for resource'),
(111, 1487957418, 1, 'adminko', 27, '3', 'Test ModX About', 'Editing resource'),
(112, 1487957435, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(113, 1487957468, 1, 'adminko', 102, '9', 'TransAlias', 'Edit plugin'),
(114, 1487957479, 1, 'adminko', 103, '9', 'TransAlias', 'Saving plugin'),
(115, 1487957479, 1, 'adminko', 76, '-', '-', 'Element management'),
(116, 1487957489, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(117, 1487957494, 1, 'adminko', 27, '3', 'Test ModX About', 'Editing resource'),
(118, 1487957571, 1, 'adminko', 5, '3', 'Test ModX О нас', 'Saving resource'),
(119, 1487957573, 1, 'adminko', 3, '3', 'Test ModX О нас', 'Viewing data for resource'),
(120, 1487957578, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(121, 1487957609, 1, 'adminko', 5, '-', 'Test ModX Контакты', 'Saving resource'),
(122, 1487957611, 1, 'adminko', 3, '4', 'Test ModX Контакты', 'Viewing data for resource'),
(123, 1487957628, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(124, 1487957661, 1, 'adminko', 5, '-', 'Test ModX Новости', 'Saving resource'),
(125, 1487957662, 1, 'adminko', 3, '5', 'Test ModX Новости', 'Viewing data for resource'),
(126, 1487957671, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(127, 1487957711, 1, 'adminko', 5, '-', 'Test ModX Новость', 'Saving resource'),
(128, 1487957712, 1, 'adminko', 3, '6', 'Test ModX Новость', 'Viewing data for resource'),
(129, 1487957733, 1, 'adminko', 27, '1', 'Test ModX index', 'Editing resource'),
(130, 1487957756, 1, 'adminko', 5, '1', 'Test ModX Главная', 'Saving resource'),
(131, 1487957757, 1, 'adminko', 3, '1', 'Test ModX Главная', 'Viewing data for resource'),
(132, 1487957764, 1, 'adminko', 27, '5', 'Test ModX Новости', 'Editing resource'),
(133, 1487957852, 1, 'adminko', 76, '-', '-', 'Element management'),
(134, 1487958099, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(135, 1487958109, 1, 'adminko', 27, '3', 'Test ModX О нас', 'Editing resource'),
(136, 1487958148, 1, 'adminko', 5, '3', 'Test ModX О нас', 'Saving resource'),
(137, 1487958150, 1, 'adminko', 3, '3', 'Test ModX О нас', 'Viewing data for resource'),
(138, 1487958157, 1, 'adminko', 27, '4', 'Test ModX Контакты', 'Editing resource'),
(139, 1487958163, 1, 'adminko', 5, '4', 'Test ModX Контакты', 'Saving resource'),
(140, 1487958165, 1, 'adminko', 3, '4', 'Test ModX Контакты', 'Viewing data for resource'),
(141, 1487958167, 1, 'adminko', 27, '5', 'Test ModX Новости', 'Editing resource'),
(142, 1487958176, 1, 'adminko', 5, '5', 'Test ModX Новости', 'Saving resource'),
(143, 1487958177, 1, 'adminko', 3, '5', 'Test ModX Новости', 'Viewing data for resource'),
(144, 1487958179, 1, 'adminko', 27, '1', 'Test ModX Главная', 'Editing resource'),
(145, 1487958225, 1, 'adminko', 27, '6', 'Test ModX Новость', 'Editing resource'),
(146, 1487958231, 1, 'adminko', 5, '6', 'Test ModX Новость', 'Saving resource'),
(147, 1487958233, 1, 'adminko', 3, '6', 'Test ModX Новость', 'Viewing data for resource'),
(148, 1487958327, 1, 'adminko', 27, '6', 'Test ModX Новость', 'Editing resource'),
(149, 1487958333, 1, 'adminko', 5, '6', 'Test ModX Новость', 'Saving resource'),
(150, 1487958335, 1, 'adminko', 3, '6', 'Test ModX Новость', 'Viewing data for resource'),
(151, 1487958466, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(152, 1487958498, 1, 'adminko', 20, '3', 'Basic Template', 'Saving template'),
(153, 1487958498, 1, 'adminko', 76, '-', '-', 'Element management'),
(154, 1487959000, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(155, 1487959154, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(156, 1487959154, 1, 'adminko', 76, '-', '-', 'Element management'),
(157, 1487959179, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(158, 1487959291, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(159, 1487959291, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(160, 1487959327, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(161, 1487959327, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(162, 1487959344, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(163, 1487959344, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(164, 1487959760, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(165, 1487959760, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(166, 1487959798, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(167, 1487959798, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(168, 1487959822, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(169, 1487959822, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(170, 1487959849, 1, 'adminko', 27, '3', 'Test ModX О нас', 'Editing resource'),
(171, 1487959860, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(172, 1487959861, 1, 'adminko', 3, '3', 'О нас', 'Viewing data for resource'),
(173, 1487959863, 1, 'adminko', 27, '4', 'Test ModX Контакты', 'Editing resource'),
(174, 1487959867, 1, 'adminko', 5, '4', 'Контакты', 'Saving resource'),
(175, 1487959869, 1, 'adminko', 3, '4', 'Контакты', 'Viewing data for resource'),
(176, 1487959871, 1, 'adminko', 27, '5', 'Test ModX Новости', 'Editing resource'),
(177, 1487959877, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(178, 1487959879, 1, 'adminko', 3, '5', 'Новости', 'Viewing data for resource'),
(179, 1487959885, 1, 'adminko', 27, '1', 'Test ModX Главная', 'Editing resource'),
(180, 1487959891, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(181, 1487959893, 1, 'adminko', 3, '1', 'Главная', 'Viewing data for resource'),
(182, 1487959895, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(183, 1487959900, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(184, 1487959902, 1, 'adminko', 3, '1', 'Главная', 'Viewing data for resource'),
(185, 1487959903, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(186, 1487959907, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(187, 1487959909, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(188, 1487959912, 1, 'adminko', 27, '6', 'Test ModX Новость', 'Editing resource'),
(189, 1487959930, 1, 'adminko', 5, '6', 'Новость', 'Saving resource'),
(190, 1487959931, 1, 'adminko', 3, '6', 'Новость', 'Viewing data for resource'),
(191, 1487960055, 1, 'adminko', 76, '-', '-', 'Element management'),
(192, 1487960062, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(193, 1487960077, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(194, 1487960077, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(195, 1487960125, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(196, 1487960126, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(197, 1487960146, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(198, 1487960146, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(199, 1487960283, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(200, 1487960283, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(201, 1487960299, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(202, 1487960300, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(203, 1487960320, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(204, 1487960321, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(205, 1487960437, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(206, 1487960443, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(207, 1487960445, 1, 'adminko', 3, '3', 'О нас', 'Viewing data for resource'),
(208, 1487960447, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(209, 1487960453, 1, 'adminko', 5, '4', 'Контакты', 'Saving resource'),
(210, 1487960454, 1, 'adminko', 3, '4', 'Контакты', 'Viewing data for resource'),
(211, 1487960455, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(212, 1487960465, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(213, 1487960466, 1, 'adminko', 3, '5', 'Новости', 'Viewing data for resource'),
(214, 1487960502, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(215, 1487960515, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(216, 1487960515, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(217, 1487960531, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(218, 1487960531, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(219, 1487960601, 1, 'adminko', 26, '-', '-', 'Refreshing site'),
(220, 1487960610, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(221, 1487960625, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(222, 1487960637, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(223, 1487960637, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(224, 1487960666, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(225, 1487960666, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(226, 1487960689, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(227, 1487960702, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(228, 1487960703, 1, 'adminko', 3, '1', 'Главная', 'Viewing data for resource'),
(229, 1487960728, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(230, 1487960758, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(231, 1487960758, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(232, 1487960892, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(233, 1487960892, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(234, 1487960937, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(235, 1487960943, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(236, 1487960944, 1, 'adminko', 3, '3', 'О нас', 'Viewing data for resource'),
(237, 1487960945, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(238, 1487960953, 1, 'adminko', 5, '4', 'Контакты', 'Saving resource'),
(239, 1487960954, 1, 'adminko', 3, '4', 'Контакты', 'Viewing data for resource'),
(240, 1487960955, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(241, 1487960962, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(242, 1487960964, 1, 'adminko', 3, '5', 'Новости', 'Viewing data for resource'),
(243, 1487960968, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(244, 1487960984, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(245, 1487960984, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(246, 1487961019, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(247, 1487961019, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(248, 1487961107, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(249, 1487961107, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(250, 1487961129, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(251, 1487961130, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(252, 1487961146, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(253, 1487961146, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(254, 1487961175, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(255, 1487961175, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(256, 1487961207, 1, 'adminko', 27, '6', 'Новость', 'Editing resource'),
(257, 1487961214, 1, 'adminko', 5, '6', 'Новость', 'Saving resource'),
(258, 1487961215, 1, 'adminko', 3, '6', 'Новость', 'Viewing data for resource'),
(259, 1487961221, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(260, 1487961244, 1, 'adminko', 27, '6', 'Новость', 'Editing resource'),
(261, 1487961264, 1, 'adminko', 5, '6', 'Новость', 'Saving resource'),
(262, 1487961266, 1, 'adminko', 3, '6', 'Новость', 'Viewing data for resource'),
(263, 1487961271, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(264, 1487961283, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(265, 1487961283, 1, 'adminko', 76, '-', '-', 'Element management'),
(266, 1487961287, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(267, 1487961340, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(268, 1487961714, 1, 'adminko', 51, '3', 'О нас', 'Moving resource'),
(269, 1487961721, 1, 'adminko', 52, '3', 'О нас', 'Moved resource'),
(270, 1487961726, 1, 'adminko', 51, '4', 'Контакты', 'Moving resource'),
(271, 1487961729, 1, 'adminko', 52, '4', 'Контакты', 'Moved resource'),
(272, 1487961733, 1, 'adminko', 51, '5', 'Новости', 'Moving resource'),
(273, 1487961736, 1, 'adminko', 52, '5', 'Новости', 'Moved resource'),
(274, 1487961742, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(275, 1487961758, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(276, 1487961758, 1, 'adminko', 76, '-', '-', 'Element management'),
(277, 1487961881, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(278, 1487961900, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(279, 1487961900, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(280, 1487961963, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(281, 1487961964, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(282, 1487961988, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(283, 1487961989, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(284, 1487962128, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(285, 1487962128, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(286, 1487962220, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(287, 1487962220, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(288, 1487962245, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(289, 1487962251, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(290, 1487962253, 1, 'adminko', 3, '1', 'Главная', 'Viewing data for resource'),
(291, 1487962356, 1, 'adminko', 6, '6', 'Новость', 'Deleting resource'),
(292, 1487962357, 1, 'adminko', 3, '6', 'Новость', 'Viewing data for resource'),
(293, 1487962373, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(294, 1487962379, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(295, 1487962389, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(296, 1487962391, 1, 'adminko', 3, '3', 'О нас', 'Viewing data for resource'),
(297, 1487962392, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(298, 1487962396, 1, 'adminko', 5, '4', 'Контакты', 'Saving resource'),
(299, 1487962398, 1, 'adminko', 3, '4', 'Контакты', 'Viewing data for resource'),
(300, 1487962399, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(301, 1487962403, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(302, 1487962404, 1, 'adminko', 3, '5', 'Новости', 'Viewing data for resource'),
(303, 1487962416, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(304, 1487962443, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(305, 1487962461, 1, 'adminko', 51, '3', 'О нас', 'Moving resource'),
(306, 1487962464, 1, 'adminko', 52, '3', 'О нас', 'Moved resource'),
(307, 1487962468, 1, 'adminko', 51, '4', 'Контакты', 'Moving resource'),
(308, 1487962470, 1, 'adminko', 52, '4', 'Контакты', 'Moved resource'),
(309, 1487962477, 1, 'adminko', 51, '4', 'Контакты', 'Moving resource'),
(310, 1487962480, 1, 'adminko', 52, '4', 'Контакты', 'Moved resource'),
(311, 1487962484, 1, 'adminko', 51, '3', 'О нас', 'Moving resource'),
(312, 1487962486, 1, 'adminko', 52, '3', 'О нас', 'Moved resource'),
(313, 1487962491, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(314, 1487962500, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(315, 1487962508, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(316, 1487962508, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(317, 1487962527, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(318, 1487962527, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(319, 1487962896, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(320, 1487962929, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(321, 1487962930, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(322, 1487963041, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(323, 1487963045, 1, 'adminko', 5, '4', 'Контакты', 'Saving resource'),
(324, 1487963047, 1, 'adminko', 3, '4', 'Контакты', 'Viewing data for resource'),
(325, 1487963050, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(326, 1487963053, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(327, 1487963055, 1, 'adminko', 3, '5', 'Новости', 'Viewing data for resource'),
(328, 1487963223, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(329, 1487963279, 1, 'adminko', 76, '-', '-', 'Element management'),
(330, 1487963284, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(331, 1487963331, 1, 'adminko', 79, '-', 'MENU', 'Saving Chunk (HTML Snippet)'),
(332, 1487963331, 1, 'adminko', 76, '-', '-', 'Element management'),
(333, 1487963343, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(334, 1487963408, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(335, 1487963408, 1, 'adminko', 76, '-', '-', 'Element management'),
(336, 1487963412, 1, 'adminko', 78, '17', 'MENU', 'Editing Chunk (HTML Snippet)'),
(337, 1487963419, 1, 'adminko', 79, '17', 'MENU', 'Saving Chunk (HTML Snippet)'),
(338, 1487963419, 1, 'adminko', 76, '-', '-', 'Element management'),
(339, 1487963484, 1, 'adminko', 78, '17', 'MENU', 'Editing Chunk (HTML Snippet)'),
(340, 1487963499, 1, 'adminko', 79, '17', 'MAIN_MENU', 'Saving Chunk (HTML Snippet)'),
(341, 1487963500, 1, 'adminko', 76, '-', '-', 'Element management'),
(342, 1487963502, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(343, 1487963512, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(344, 1487963512, 1, 'adminko', 76, '-', '-', 'Element management'),
(345, 1487963625, 1, 'adminko', 16, '3', 'Basic Template', 'Editing template'),
(346, 1487963664, 1, 'adminko', 20, '3', 'Главная', 'Saving template'),
(347, 1487963664, 1, 'adminko', 76, '-', '-', 'Element management'),
(348, 1487963778, 1, 'adminko', 112, '1', 'Doc Manager', 'Execute module'),
(349, 1487967488, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(350, 1488009978, 1, 'adminko', 76, '-', '-', 'Element management'),
(351, 1488009985, 1, 'adminko', 19, '-', 'Новый шаблон', 'Creating a new template'),
(352, 1488010131, 1, 'adminko', 20, '-', 'О нас', 'Saving template'),
(353, 1488010131, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(354, 1488010165, 1, 'adminko', 76, '-', '-', 'Element management'),
(355, 1488010175, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(356, 1488010193, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(357, 1488010259, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(358, 1488010259, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(359, 1488010297, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(360, 1488010302, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(361, 1488010307, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(362, 1488010308, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(363, 1488010345, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(364, 1488010375, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(365, 1488010376, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(366, 1488010480, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(367, 1488010480, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(368, 1488010501, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(369, 1488030763, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(370, 1488030816, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(371, 1488030890, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(372, 1488030890, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(373, 1488031160, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(374, 1488031172, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(375, 1488031188, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(376, 1488031224, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(377, 1488031225, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(378, 1488031289, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(379, 1488031289, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(380, 1488032169, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(381, 1488032171, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(382, 1488032174, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(383, 1488032243, 1, 'adminko', 79, '-', 'PAGETITLE', 'Saving Chunk (HTML Snippet)'),
(384, 1488032243, 1, 'adminko', 78, '18', 'PAGETITLE', 'Editing Chunk (HTML Snippet)'),
(385, 1488032262, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(386, 1488032262, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(387, 1488032337, 1, 'adminko', 79, '18', 'PAGETITLE', 'Saving Chunk (HTML Snippet)'),
(388, 1488032337, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(389, 1488032431, 1, 'adminko', 79, '-', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(390, 1488032431, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(391, 1488032490, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(392, 1488032708, 1, 'adminko', 79, '-', 'ABOUT', 'Saving Chunk (HTML Snippet)'),
(393, 1488032708, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(394, 1488032719, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(395, 1488032719, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(396, 1488032885, 1, 'adminko', 79, '-', 'MISSION', 'Saving Chunk (HTML Snippet)'),
(397, 1488032885, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(398, 1488032896, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(399, 1488032896, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(400, 1488032928, 1, 'adminko', 78, '21', 'MISSION', 'Editing Chunk (HTML Snippet)'),
(401, 1488032977, 1, 'adminko', 78, '20', 'ABOUT', 'Editing Chunk (HTML Snippet)'),
(402, 1488032981, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(403, 1488033175, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(404, 1488033356, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(405, 1488033485, 1, 'adminko', 79, '-', 'BENEFITS_BLOCK_LIST', 'Saving Chunk (HTML Snippet)'),
(406, 1488033485, 1, 'adminko', 78, '22', 'BENEFITS_BLOCK_LIST', 'Editing Chunk (HTML Snippet)'),
(407, 1488033535, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(408, 1488033535, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(409, 1488033581, 1, 'adminko', 79, '14', 'BENEFITS', 'Saving Chunk (HTML Snippet)'),
(410, 1488033581, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(411, 1488033678, 1, 'adminko', 79, '22', 'BENEFITS_BLOCK_LIST', 'Saving Chunk (HTML Snippet)'),
(412, 1488033678, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(413, 1488033772, 1, 'adminko', 79, '-', 'BENEFITS_BLOCK_FOOTER', 'Saving Chunk (HTML Snippet)'),
(414, 1488033772, 1, 'adminko', 78, '23', 'BENEFITS_BLOCK_FOOTER', 'Editing Chunk (HTML Snippet)'),
(415, 1488033796, 1, 'adminko', 79, '14', 'BENEFITS', 'Saving Chunk (HTML Snippet)'),
(416, 1488033796, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(417, 1488033830, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(418, 1488033830, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(419, 1488033893, 1, 'adminko', 79, '23', 'BENEFITS_BLOCK_FOOTER', 'Saving Chunk (HTML Snippet)'),
(420, 1488033893, 1, 'adminko', 78, '23', 'BENEFITS_BLOCK_FOOTER', 'Editing Chunk (HTML Snippet)'),
(421, 1488033898, 1, 'adminko', 79, '23', 'BENEFITS_BLOCK_FOOTER', 'Saving Chunk (HTML Snippet)'),
(422, 1488033898, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(423, 1488033984, 1, 'adminko', 79, '-', 'BENEFITS_ABOUT_PAGE', 'Saving Chunk (HTML Snippet)'),
(424, 1488033984, 1, 'adminko', 78, '24', 'BENEFITS_ABOUT_PAGE', 'Editing Chunk (HTML Snippet)'),
(425, 1488033997, 1, 'adminko', 79, '24', 'BENEFITS_ABOUT_PAGE', 'Saving Chunk (HTML Snippet)'),
(426, 1488033997, 1, 'adminko', 78, '24', 'BENEFITS_ABOUT_PAGE', 'Editing Chunk (HTML Snippet)'),
(427, 1488034019, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(428, 1488034020, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(429, 1488034146, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(430, 1488034176, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(431, 1488034200, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(432, 1488034228, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(433, 1488034250, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(434, 1488034272, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(435, 1488034286, 1, 'adminko', 78, '24', 'BENEFITS_ABOUT_PAGE', 'Editing Chunk (HTML Snippet)'),
(436, 1488034306, 1, 'adminko', 76, '-', '-', 'Element management'),
(437, 1488034309, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(438, 1488034351, 1, 'adminko', 76, '-', '-', 'Element management'),
(439, 1488034357, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(440, 1488034361, 1, 'adminko', 76, '-', '-', 'Element management'),
(441, 1488034380, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(442, 1488034421, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(443, 1488034588, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(444, 1488034588, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(445, 1488034629, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(446, 1488035123, 1, 'adminko', 78, '17', 'MAIN_MENU', 'Editing Chunk (HTML Snippet)'),
(447, 1488035138, 1, 'adminko', 79, '17', 'MAIN_MENU', 'Saving Chunk (HTML Snippet)'),
(448, 1488035138, 1, 'adminko', 78, '17', 'MAIN_MENU', 'Editing Chunk (HTML Snippet)'),
(449, 1488035789, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(450, 1488035848, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(451, 1488035881, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(452, 1488048031, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(453, 1488048073, 1, 'adminko', 78, '20', 'ABOUT', 'Editing Chunk (HTML Snippet)'),
(454, 1488048084, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(455, 1488048099, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(456, 1488048203, 1, 'adminko', 79, '-', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(457, 1488048203, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(458, 1488048231, 1, 'adminko', 79, '25', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(459, 1488048231, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(460, 1488048258, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(461, 1488048258, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(462, 1488048282, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(463, 1488048305, 1, 'adminko', 19, '-', 'Новый шаблон', 'Creating a new template'),
(464, 1488048347, 1, 'adminko', 20, '-', 'Контакты', 'Saving template'),
(465, 1488048347, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(466, 1488048420, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(467, 1488048420, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(468, 1488048428, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(469, 1488048433, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(470, 1488048451, 1, 'adminko', 5, '4', 'Контакты', 'Saving resource'),
(471, 1488048451, 1, 'adminko', 27, '4', 'Контакты', 'Editing resource'),
(472, 1488048483, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(473, 1488048505, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(474, 1488048569, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(475, 1488048609, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(476, 1488048609, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(477, 1488048745, 1, 'adminko', 78, '18', 'PAGETITLE', 'Editing Chunk (HTML Snippet)'),
(478, 1488048759, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(479, 1488048785, 1, 'adminko', 79, '25', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(480, 1488048786, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(481, 1488048834, 1, 'adminko', 79, '-', 'CONTACT_PAGETITLE', 'Saving Chunk (HTML Snippet)'),
(482, 1488048834, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(483, 1488048848, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(484, 1488048848, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(485, 1488048937, 1, 'adminko', 79, '-', 'MAP', 'Saving Chunk (HTML Snippet)'),
(486, 1488048938, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(487, 1488048953, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(488, 1488048953, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(489, 1488049085, 1, 'adminko', 79, '-', 'CONTACT_MAIN', 'Saving Chunk (HTML Snippet)'),
(490, 1488049085, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(491, 1488049136, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(492, 1488049136, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(493, 1488049178, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(494, 1488049178, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(495, 1488049231, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(496, 1488049231, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(497, 1488049280, 1, 'adminko', 78, '28', 'CONTACT_MAIN', 'Editing Chunk (HTML Snippet)'),
(498, 1488049383, 1, 'adminko', 79, '-', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(499, 1488049383, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(500, 1488049397, 1, 'adminko', 79, '28', 'CONTACT_MAIN', 'Saving Chunk (HTML Snippet)'),
(501, 1488049397, 1, 'adminko', 78, '28', 'CONTACT_MAIN', 'Editing Chunk (HTML Snippet)'),
(502, 1488049423, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(503, 1488049423, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(504, 1488049486, 1, 'adminko', 79, '-', 'ADDRESS', 'Saving Chunk (HTML Snippet)'),
(505, 1488049486, 1, 'adminko', 78, '30', 'ADDRESS', 'Editing Chunk (HTML Snippet)'),
(506, 1488049497, 1, 'adminko', 79, '28', 'CONTACT_MAIN', 'Saving Chunk (HTML Snippet)'),
(507, 1488049497, 1, 'adminko', 78, '28', 'CONTACT_MAIN', 'Editing Chunk (HTML Snippet)'),
(508, 1488049696, 1, 'adminko', 19, '-', 'Новый шаблон', 'Creating a new template'),
(509, 1488049894, 1, 'adminko', 20, '-', 'Новости', 'Saving template'),
(510, 1488049894, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(511, 1488049913, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(512, 1488049919, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(513, 1488049924, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(514, 1488049924, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(515, 1488049941, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(516, 1488049961, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(517, 1488049961, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(518, 1488050006, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(519, 1488050006, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(520, 1488050029, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(521, 1488050029, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(522, 1488050034, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(523, 1488050034, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(524, 1488050076, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(525, 1488050092, 1, 'adminko', 78, '11', 'SLIDER', 'Editing Chunk (HTML Snippet)'),
(526, 1488050108, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(527, 1488050179, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(528, 1488050179, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(529, 1488050280, 1, 'adminko', 79, '30', 'ADDRESS', 'Saving Chunk (HTML Snippet)'),
(530, 1488050280, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(531, 1488050353, 1, 'adminko', 79, '-', 'NEWS_PAGE_TITLE', 'Saving Chunk (HTML Snippet)'),
(532, 1488050353, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(533, 1488050369, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(534, 1488050369, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(535, 1488096245, 1, 'adminko', 79, '-', 'WARNING', 'Saving Chunk (HTML Snippet)'),
(536, 1488096246, 1, 'adminko', 78, '32', 'WARNING', 'Editing Chunk (HTML Snippet)'),
(537, 1488096270, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(538, 1488096270, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(539, 1488096275, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(540, 1488096292, 1, 'adminko', 20, '3', 'Главная', 'Saving template'),
(541, 1488096292, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(542, 1488096299, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(543, 1488096315, 1, 'adminko', 20, '6', 'Контакты', 'Saving template'),
(544, 1488096316, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(545, 1488096319, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(546, 1488096322, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(547, 1488096325, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(548, 1488096329, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(549, 1488096346, 1, 'adminko', 20, '5', 'О нас', 'Saving template'),
(550, 1488096347, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(551, 1488096358, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(552, 1488096361, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(553, 1488096368, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(554, 1488096552, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(555, 1488096599, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(556, 1488096599, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(557, 1488096945, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(558, 1488096957, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(559, 1488097030, 1, 'adminko', 79, '13', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(560, 1488097030, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(561, 1488097037, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(562, 1488097048, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(563, 1488097065, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(564, 1488097065, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(565, 1488097170, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(566, 1488097181, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(567, 1488097187, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(568, 1488097203, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(569, 1488097210, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(570, 1488097222, 1, 'adminko', 78, '20', 'ABOUT', 'Editing Chunk (HTML Snippet)'),
(571, 1488097280, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(572, 1488097290, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(573, 1488097392, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(574, 1488097402, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(575, 1488097410, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(576, 1488097534, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(577, 1488097572, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(578, 1488097580, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(579, 1488097591, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(580, 1488097602, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(581, 1488097602, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(582, 1488097615, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(583, 1488097621, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(584, 1488097631, 1, 'adminko', 79, '13', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(585, 1488097631, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(586, 1488097727, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(587, 1488097750, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(588, 1488097822, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(589, 1488097913, 1, 'adminko', 79, '32', 'WARNING', 'Saving Chunk (HTML Snippet)'),
(590, 1488097914, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(591, 1488098006, 1, 'adminko', 79, '-', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(592, 1488098006, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(593, 1488098019, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(594, 1488098019, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(595, 1488098049, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(596, 1488098049, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(597, 1488098090, 1, 'adminko', 79, '-', 'PAGINATION', 'Saving Chunk (HTML Snippet)'),
(598, 1488098090, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(599, 1488098103, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(600, 1488098103, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(601, 1488098371, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(602, 1488098399, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(603, 1488098399, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(604, 1488098535, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(605, 1488098583, 1, 'adminko', 79, '9', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(606, 1488098583, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(607, 1488098656, 1, 'adminko', 79, '9', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(608, 1488098656, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(609, 1488098774, 1, 'adminko', 79, '9', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(610, 1488098774, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(611, 1488098942, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(612, 1488098952, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(613, 1488098964, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(614, 1488098972, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(615, 1488099029, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(616, 1488099752, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(617, 1488099956, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(618, 1488100354, 1, 'adminko', 5, '-', 'С чего начать поиск работы 1 ', 'Saving resource'),
(619, 1488100354, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(620, 1488100453, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(621, 1488100454, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(622, 1488100485, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(623, 1488100490, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(624, 1488100503, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(625, 1488100508, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(626, 1488100629, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(627, 1488100893, 1, 'adminko', 5, '-', 'С чего начать поиск работы 2', 'Saving resource'),
(628, 1488100894, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(629, 1488100907, 1, 'adminko', 94, '8', 'Копия С чего начать поиск работы 2', 'Duplicate resource'),
(630, 1488100907, 1, 'adminko', 3, '9', 'Копия С чего начать поиск работы 2', 'Viewing data for resource'),
(631, 1488100911, 1, 'adminko', 27, '9', 'Копия С чего начать поиск работы 2', 'Editing resource'),
(632, 1488100938, 1, 'adminko', 27, '9', 'Копия С чего начать поиск работы 2', 'Editing resource'),
(633, 1488100991, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(634, 1488100992, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(635, 1488101002, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(636, 1488101007, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource');
INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(637, 1488101012, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(638, 1488101014, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(639, 1488101086, 1, 'adminko', 94, '9', 'Копия С чего начать поиск работы 3', 'Duplicate resource'),
(640, 1488101086, 1, 'adminko', 3, '10', 'Копия С чего начать поиск работы 3', 'Viewing data for resource'),
(641, 1488101090, 1, 'adminko', 27, '10', 'Копия С чего начать поиск работы 3', 'Editing resource'),
(642, 1488101121, 1, 'adminko', 27, '10', 'Копия С чего начать поиск работы 3', 'Editing resource'),
(643, 1488101182, 1, 'adminko', 5, '10', 'Копия С чего начать поиск работы 4', 'Saving resource'),
(644, 1488101183, 1, 'adminko', 27, '10', 'Копия С чего начать поиск работы 4', 'Editing resource'),
(645, 1488101189, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(646, 1488101190, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(647, 1488101195, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(648, 1488101196, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(649, 1488101218, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(650, 1488101218, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(651, 1488101224, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(652, 1488101235, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(653, 1488101244, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(654, 1488101245, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(655, 1488101330, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(656, 1488101330, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(657, 1488101332, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(658, 1488101349, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(659, 1488101351, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(660, 1488101352, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(661, 1488101363, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(662, 1488101364, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(663, 1488101366, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(664, 1488101397, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(665, 1488101450, 1, 'adminko', 96, '7', 'Новости Копия', 'Duplicate Template'),
(666, 1488101451, 1, 'adminko', 16, '8', 'Новости Копия', 'Editing template'),
(667, 1488101587, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(668, 1488101587, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(669, 1488101601, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(670, 1488101692, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(671, 1488101692, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(672, 1488101712, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(673, 1488101714, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(674, 1488101771, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(675, 1488101783, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(676, 1488101784, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(677, 1488101903, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(678, 1488101944, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(679, 1488101984, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(680, 1488101984, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(681, 1488102081, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(682, 1488102099, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(683, 1488102107, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(684, 1488102117, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(685, 1488102156, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(686, 1488102174, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(687, 1488102191, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(688, 1488102203, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(689, 1488102203, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(690, 1488102211, 1, 'adminko', 78, '34', 'PAGINATION', 'Editing Chunk (HTML Snippet)'),
(691, 1488102221, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(692, 1488102229, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(693, 1488102284, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(694, 1488102284, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(695, 1488102722, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(696, 1488102726, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(697, 1488102730, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(698, 1488102732, 1, 'adminko', 3, '7', 'С чего начать поиск работы 1 ', 'Viewing data for resource'),
(699, 1488102733, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(700, 1488102737, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(701, 1488102740, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(702, 1488102741, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(703, 1488102743, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(704, 1488102747, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(705, 1488102749, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(706, 1488102751, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(707, 1488102753, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(708, 1488102756, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(709, 1488102758, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(710, 1488102760, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(711, 1488102784, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(712, 1488119243, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(713, 1488119286, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(714, 1488119286, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(715, 1488119318, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(716, 1488119319, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(717, 1488119345, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(718, 1488119345, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(719, 1488119385, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(720, 1488119385, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(721, 1488119413, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(722, 1488119413, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(723, 1488119452, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(724, 1488119452, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(725, 1488119469, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(726, 1488119469, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(727, 1488119484, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(728, 1488119485, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(729, 1488119521, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(730, 1488119533, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(731, 1488119533, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(732, 1488119546, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(733, 1488119557, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(734, 1488119559, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(735, 1488119560, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(736, 1488119569, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(737, 1488119571, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(738, 1488119572, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(739, 1488119580, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(740, 1488119582, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(741, 1488119593, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(742, 1488119605, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(743, 1488119628, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(744, 1488119733, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(745, 1488119734, 1, 'adminko', 3, '7', 'С чего начать поиск работы 1 ', 'Viewing data for resource'),
(746, 1488119735, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(747, 1488119744, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(748, 1488119750, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(749, 1488119779, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(750, 1488119780, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(751, 1488119792, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(752, 1488119800, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(753, 1488119818, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(754, 1488119818, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(755, 1488119821, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(756, 1488119827, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(757, 1488119847, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(758, 1488119854, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(759, 1488119866, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(760, 1488119867, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(761, 1488119881, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(762, 1488119915, 1, 'adminko', 93, '-', '-', 'Backup Manager'),
(763, 1488119928, 1, 'adminko', 95, '-', '-', 'Importing resources from HTML'),
(764, 1488119930, 1, 'adminko', 83, '-', '-', 'Exporting a resource to HTML'),
(765, 1488119933, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(766, 1488120282, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(767, 1488120290, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(768, 1488120306, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(769, 1488120307, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(770, 1488120323, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(771, 1488120329, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(772, 1488120342, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(773, 1488120344, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(774, 1488120345, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(775, 1488120350, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(776, 1488120363, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(777, 1488120364, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(778, 1488120365, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(779, 1488120370, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(780, 1488120380, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(781, 1488120382, 1, 'adminko', 3, '7', 'С чего начать поиск работы 1 ', 'Viewing data for resource'),
(782, 1488120388, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(783, 1488120396, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(784, 1488120396, 1, 'adminko', 76, '-', '-', 'Element management'),
(785, 1488121286, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(786, 1488121321, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(787, 1488121425, 1, 'adminko', 79, '-', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(788, 1488121426, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(789, 1488121469, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(790, 1488121477, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(791, 1488121484, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(792, 1488121530, 1, 'adminko', 78, '31', 'NEWS_PAGE_TITLE', 'Editing Chunk (HTML Snippet)'),
(793, 1488121536, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(794, 1488121543, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(795, 1488121554, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(796, 1488121560, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(797, 1488121577, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(798, 1488121589, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(799, 1488121589, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(800, 1488121615, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(801, 1488121615, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(802, 1488123073, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(803, 1488123085, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(804, 1488123095, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(805, 1488123108, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(806, 1488123123, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(807, 1488123123, 1, 'adminko', 76, '-', '-', 'Element management'),
(808, 1488126546, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(809, 1488126549, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(810, 1488126566, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(811, 1488126612, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(812, 1488127927, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(813, 1488127935, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(814, 1488127957, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(815, 1488127963, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(816, 1488128309, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(817, 1488128429, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(818, 1488128429, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(819, 1488128526, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(820, 1488128526, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(821, 1488128566, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(822, 1488128566, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(823, 1488128592, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(824, 1488128592, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(825, 1488128612, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(826, 1488128622, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(827, 1488128641, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(828, 1488128641, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(829, 1488128694, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(830, 1488128709, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(831, 1488128710, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(832, 1488128733, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(833, 1488128754, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(834, 1488128760, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(835, 1488128777, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(836, 1488128783, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(837, 1488128788, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(838, 1488128794, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(839, 1488128814, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(840, 1488128833, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(841, 1488128909, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(842, 1488128918, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(843, 1488128948, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(844, 1488128967, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(845, 1488128967, 1, 'adminko', 76, '-', '-', 'Element management'),
(846, 1488129307, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(847, 1488129313, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(848, 1488129357, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(849, 1488129357, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(850, 1488129449, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(851, 1488129449, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(852, 1488129534, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(853, 1488129535, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(854, 1488129572, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(855, 1488129573, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(856, 1488129834, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(857, 1488129834, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(858, 1488130017, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(859, 1488130029, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(860, 1488130030, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(861, 1488130128, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(862, 1488130245, 1, 'adminko', 79, '-', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(863, 1488130246, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(864, 1488130253, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(865, 1488130269, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(866, 1488130270, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(867, 1488131267, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(868, 1488131282, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(869, 1488131298, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(870, 1488131395, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(871, 1488131395, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(872, 1488131619, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(873, 1488131646, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(874, 1488131646, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(875, 1488131674, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(876, 1488131777, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(877, 1488131777, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(878, 1488132768, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(879, 1488132768, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(880, 1488132828, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(881, 1488132828, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(882, 1488132971, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(883, 1488132971, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(884, 1488133219, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(885, 1488133219, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(886, 1488133241, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(887, 1488133254, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(888, 1488133265, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(889, 1488133279, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(890, 1488133279, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(891, 1488133347, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(892, 1488133347, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(893, 1488133369, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(894, 1488133377, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(895, 1488133384, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(896, 1488133388, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(897, 1488133396, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(898, 1488133531, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(899, 1488133537, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(900, 1488133544, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(901, 1488133909, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(902, 1488133940, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(903, 1488133973, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(904, 1488134113, 1, 'adminko', 78, '34', 'PAGINATION', 'Editing Chunk (HTML Snippet)'),
(905, 1488134291, 1, 'adminko', 79, '34', 'PAGINATION', 'Saving Chunk (HTML Snippet)'),
(906, 1488134291, 1, 'adminko', 78, '34', 'PAGINATION', 'Editing Chunk (HTML Snippet)'),
(907, 1488134308, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(908, 1488134314, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(909, 1488134319, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(910, 1488134388, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(911, 1488134388, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(912, 1488134455, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(913, 1488134455, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(914, 1488134573, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(915, 1488134599, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(916, 1488134599, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(917, 1488134963, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(918, 1488135101, 1, 'adminko', 58, '-', 'MODX', 'Logged in'),
(919, 1488135249, 1, 'adminko', 8, '-', '-', 'Logged out'),
(920, 1488135272, 1, 'adminko', 58, '-', 'MODX', 'Logged in'),
(921, 1488135296, 1, 'adminko', 10, '-', '-', 'Viewing/ composing messages'),
(922, 1488135313, 1, 'adminko', 10, '-', '-', 'Viewing/ composing messages'),
(923, 1488135318, 1, 'adminko', 26, '-', '-', 'Refreshing site'),
(924, 1488135325, 1, 'adminko', 26, '-', '-', 'Refreshing site'),
(925, 1488135329, 1, 'adminko', 78, '30', 'ADDRESS', 'Editing Chunk (HTML Snippet)'),
(926, 1488135335, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(927, 1488135346, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(928, 1488135358, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(929, 1488135384, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(930, 1488135387, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(931, 1488135395, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(932, 1488135398, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(933, 1488135403, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(934, 1488135413, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(935, 1488135416, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(936, 1488135464, 1, 'adminko', 58, '-', 'MODX', 'Logged in'),
(937, 1488135536, 1, 'adminko', 8, '-', '-', 'Logged out'),
(938, 1488135542, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(939, 1488135547, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(940, 1488135548, 1, 'adminko', 8, '-', '-', 'Logged out'),
(941, 1488135590, 1, 'adminko', 58, '-', 'MODX', 'Logged in'),
(942, 1488135607, 1, 'adminko', 99, '-', '-', 'Manage Web Users'),
(943, 1488135613, 1, 'adminko', 75, '-', '-', 'User/ role management'),
(944, 1488135624, 1, 'adminko', 12, '1', 'adminko', 'Editing user'),
(945, 1488135669, 1, 'adminko', 12, '1', 'adminko', 'Editing user'),
(946, 1488135709, 1, 'adminko', 12, '1', 'adminko', 'Editing user'),
(947, 1488135732, 1, 'adminko', 67, '-', '-', 'Removing locks'),
(948, 1488135735, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(949, 1488135748, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(950, 1488136525, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(951, 1488136525, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(952, 1488136553, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(953, 1488136553, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(954, 1488136640, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(955, 1488136640, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(956, 1488136844, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(957, 1488136844, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(958, 1488136931, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(959, 1488136932, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(960, 1488136944, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(961, 1488136944, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(962, 1488136976, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(963, 1488136976, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(964, 1488137051, 1, 'adminko', 78, '34', 'PAGINATION', 'Editing Chunk (HTML Snippet)'),
(965, 1488137265, 1, 'adminko', 79, '34', 'PAGINATION_PREV', 'Saving Chunk (HTML Snippet)'),
(966, 1488137266, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(967, 1488137306, 1, 'adminko', 79, '-', 'PAGINATION_NEXT', 'Saving Chunk (HTML Snippet)'),
(968, 1488137307, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(969, 1488137512, 1, 'adminko', 79, '-', 'PAGINATION_CURRENT', 'Saving Chunk (HTML Snippet)'),
(970, 1488137512, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(971, 1488137523, 1, 'adminko', 78, '38', 'PAGINATION_CURRENT', 'Editing Chunk (HTML Snippet)'),
(972, 1488137532, 1, 'adminko', 79, '38', 'PAGINATION_CURRENT', 'Saving Chunk (HTML Snippet)'),
(973, 1488137532, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(974, 1488137661, 1, 'adminko', 79, '-', 'PAGINATION_PAGE', 'Saving Chunk (HTML Snippet)'),
(975, 1488137661, 1, 'adminko', 76, '-', '-', 'Element management'),
(976, 1488137665, 1, 'adminko', 78, '38', 'PAGINATION_CURRENT', 'Editing Chunk (HTML Snippet)'),
(977, 1488137672, 1, 'adminko', 78, '37', 'PAGINATION_NEXT', 'Editing Chunk (HTML Snippet)'),
(978, 1488137678, 1, 'adminko', 78, '39', 'PAGINATION_PAGE', 'Editing Chunk (HTML Snippet)'),
(979, 1488137685, 1, 'adminko', 78, '34', 'PAGINATION_PREV', 'Editing Chunk (HTML Snippet)'),
(980, 1488137699, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(981, 1488137707, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(982, 1488137732, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(983, 1488137733, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(984, 1488137886, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(985, 1488137886, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(986, 1488137918, 1, 'adminko', 78, '37', 'PAGINATION_NEXT', 'Editing Chunk (HTML Snippet)'),
(987, 1488137928, 1, 'adminko', 78, '34', 'PAGINATION_PREV', 'Editing Chunk (HTML Snippet)'),
(988, 1488138015, 1, 'adminko', 78, '37', 'PAGINATION_NEXT', 'Editing Chunk (HTML Snippet)'),
(989, 1488138020, 1, 'adminko', 78, '39', 'PAGINATION_PAGE', 'Editing Chunk (HTML Snippet)'),
(990, 1488138032, 1, 'adminko', 78, '38', 'PAGINATION_CURRENT', 'Editing Chunk (HTML Snippet)'),
(991, 1488138051, 1, 'adminko', 79, '38', 'PAGINATION_CURRENT', 'Saving Chunk (HTML Snippet)'),
(992, 1488138052, 1, 'adminko', 78, '38', 'PAGINATION_CURRENT', 'Editing Chunk (HTML Snippet)'),
(993, 1488138138, 1, 'adminko', 79, '38', 'PAGINATION_CURRENT', 'Saving Chunk (HTML Snippet)'),
(994, 1488138139, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(995, 1488138237, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(996, 1488138307, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(997, 1488138307, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(998, 1488138344, 1, 'adminko', 78, '38', 'PAGINATION_CURRENT', 'Editing Chunk (HTML Snippet)'),
(999, 1488138359, 1, 'adminko', 78, '37', 'PAGINATION_NEXT', 'Editing Chunk (HTML Snippet)'),
(1000, 1488138369, 1, 'adminko', 78, '38', 'PAGINATION_CURRENT', 'Editing Chunk (HTML Snippet)'),
(1001, 1488138406, 1, 'adminko', 79, '38', 'PAGINATION_CURRENT', 'Saving Chunk (HTML Snippet)'),
(1002, 1488138406, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1003, 1488138475, 1, 'adminko', 79, '-', 'PAGINATION_OFF', 'Saving Chunk (HTML Snippet)'),
(1004, 1488138475, 1, 'adminko', 78, '40', 'PAGINATION_OFF', 'Editing Chunk (HTML Snippet)'),
(1005, 1488138483, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1006, 1488138505, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1007, 1488138505, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1008, 1488138567, 1, 'adminko', 78, '40', 'PAGINATION_OFF', 'Editing Chunk (HTML Snippet)'),
(1009, 1488138586, 1, 'adminko', 79, '40', 'PAGINATION_OFF', 'Saving Chunk (HTML Snippet)'),
(1010, 1488138586, 1, 'adminko', 78, '40', 'PAGINATION_OFF', 'Editing Chunk (HTML Snippet)'),
(1011, 1488138629, 1, 'adminko', 79, '40', 'PAGINATION_NEXT_OFF', 'Saving Chunk (HTML Snippet)'),
(1012, 1488138629, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1013, 1488138653, 1, 'adminko', 79, '-', 'PAGINATION_PREV_OFF', 'Saving Chunk (HTML Snippet)'),
(1014, 1488138653, 1, 'adminko', 78, '41', 'PAGINATION_PREV_OFF', 'Editing Chunk (HTML Snippet)'),
(1015, 1488138662, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1016, 1488138680, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1017, 1488138680, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1018, 1488138692, 1, 'adminko', 78, '41', 'PAGINATION_PREV_OFF', 'Editing Chunk (HTML Snippet)'),
(1019, 1488138698, 1, 'adminko', 79, '41', 'PAGINATION_PREV_OFF', 'Saving Chunk (HTML Snippet)'),
(1020, 1488138698, 1, 'adminko', 76, '-', '-', 'Element management'),
(1021, 1488138809, 1, 'adminko', 76, '-', '-', 'Element management'),
(1022, 1488138816, 1, 'adminko', 23, '-', 'Новый сниппет', 'Creating a new Snippet'),
(1023, 1488139006, 1, 'adminko', 24, '-', 'dittoSplitPagination', 'Saving Snippet'),
(1024, 1488139006, 1, 'adminko', 76, '-', '-', 'Element management'),
(1025, 1488139015, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1026, 1488139049, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1027, 1488139049, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1028, 1488139064, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1029, 1488139064, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1030, 1488193005, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1031, 1488193100, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1032, 1488193100, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1033, 1488195293, 1, 'adminko', 76, '-', '-', 'Element management'),
(1034, 1488195325, 1, 'adminko', 101, '-', 'Новый плагин', 'Create new plugin'),
(1035, 1488195628, 1, 'adminko', 23, '-', 'Новый сниппет', 'Creating a new Snippet'),
(1036, 1488195683, 1, 'adminko', 24, '-', 'Untitled snippet', 'Saving Snippet'),
(1037, 1488195683, 1, 'adminko', 76, '-', '-', 'Element management'),
(1038, 1488195687, 1, 'adminko', 23, '-', 'Новый сниппет', 'Creating a new Snippet'),
(1039, 1488195702, 1, 'adminko', 22, '19', 'Untitled snippet', 'Editing Snippet'),
(1040, 1488195709, 1, 'adminko', 25, '19', 'Untitled snippet', 'Deleting Snippet'),
(1041, 1488195709, 1, 'adminko', 76, '-', '-', 'Element management'),
(1042, 1488195719, 1, 'adminko', 23, '-', 'Новый сниппет', 'Creating a new Snippet'),
(1043, 1488195740, 1, 'adminko', 24, '-', 'SendMail', 'Saving Snippet'),
(1044, 1488195741, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1045, 1488196297, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1046, 1488196297, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1047, 1488196798, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1048, 1488196798, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1049, 1488198671, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1050, 1488198671, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1051, 1488198687, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1052, 1488198687, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1053, 1488198706, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(1054, 1488198716, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(1055, 1488198842, 1, 'adminko', 79, '9', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(1056, 1488198843, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(1057, 1488198865, 1, 'adminko', 79, '9', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(1058, 1488198866, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(1059, 1488198870, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1060, 1488200497, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1061, 1488200497, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1062, 1488200507, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1063, 1488200771, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1064, 1488200771, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1065, 1488200801, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1066, 1488200837, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1067, 1488200837, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1068, 1488201120, 1, 'adminko', 78, '28', 'CONTACT_MAIN', 'Editing Chunk (HTML Snippet)'),
(1069, 1488201131, 1, 'adminko', 78, '26', 'CONTACT_PAGETITLE', 'Editing Chunk (HTML Snippet)'),
(1070, 1488201230, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1071, 1488201324, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1072, 1488201324, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1073, 1488201329, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1074, 1488201364, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1075, 1488201364, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1076, 1488201948, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1077, 1488202382, 1, 'adminko', 76, '-', '-', 'Element management'),
(1078, 1488202413, 1, 'adminko', 300, '-', 'Новый параметр (TV)', 'Create Template Variable'),
(1079, 1488207428, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(1080, 1488272136, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1081, 1488272151, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(1082, 1488272161, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(1083, 1488272431, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1084, 1488272448, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1085, 1488272449, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1086, 1488272457, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1087, 1488272471, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1088, 1488272471, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1089, 1488272985, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1090, 1488272985, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1091, 1488272990, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1092, 1488273003, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1093, 1488273003, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1094, 1488274235, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1095, 1488274299, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1096, 1488274299, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1097, 1488274371, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1098, 1488274411, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1099, 1488274411, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1100, 1488274419, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1101, 1488274453, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1102, 1488274453, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1103, 1488274623, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1104, 1488274680, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1105, 1488274680, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1106, 1488275624, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1107, 1488275645, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1108, 1488275645, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1109, 1488275940, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1110, 1488276239, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1111, 1488276263, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1112, 1488276263, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1113, 1488277337, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1114, 1488277374, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1115, 1488277374, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1116, 1488277407, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1117, 1488277426, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1118, 1488277426, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1119, 1488277756, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1120, 1488277777, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1121, 1488277778, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1122, 1488277781, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1123, 1488277870, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1124, 1488277870, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1125, 1488277875, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1126, 1488277908, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1127, 1488277908, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1128, 1488277968, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1129, 1488278504, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1130, 1488278505, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1131, 1488278561, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1132, 1488278562, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1133, 1488279645, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1134, 1488279646, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1135, 1488279742, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1136, 1488279742, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1137, 1488279940, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1138, 1488279940, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1139, 1488280017, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1140, 1488280018, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1141, 1488280084, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1142, 1488280085, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1143, 1488280136, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1144, 1488280136, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1145, 1488280165, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1146, 1488280165, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1147, 1488280869, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1148, 1488280947, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1149, 1488281056, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1150, 1488281080, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1151, 1488281080, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1152, 1488283206, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1153, 1488283207, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1154, 1488283244, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1155, 1488283244, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1156, 1488285094, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1157, 1488285183, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1158, 1488285183, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1159, 1488285406, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1160, 1488285421, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1161, 1488285422, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1162, 1488285586, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1163, 1488285886, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1164, 1488285944, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1165, 1488285944, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1166, 1488286110, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1167, 1488286110, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1168, 1488288039, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1169, 1488288039, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1170, 1488288592, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1171, 1488288592, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1172, 1488288610, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1173, 1488288610, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1174, 1488288785, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(1175, 1488288980, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1176, 1488289092, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1177, 1488289093, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1178, 1488289545, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1179, 1488289545, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1180, 1488289585, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(1181, 1488289599, 1, 'adminko', 30, '-', '-', 'Saving settings'),
(1182, 1488289617, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1183, 1488289725, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1184, 1488289725, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1185, 1488289791, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1186, 1488289791, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1187, 1488290035, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1188, 1488290035, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1189, 1488290375, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1190, 1488290376, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1191, 1488290410, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1192, 1488290410, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1193, 1488290495, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1194, 1488290495, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1195, 1488290678, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1196, 1488290679, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1197, 1488292757, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1198, 1488292758, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1199, 1488293533, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1200, 1488293533, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1201, 1488293592, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1202, 1488293592, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1203, 1488293637, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1204, 1488293637, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1205, 1488294072, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(1206, 1488321144, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(1207, 1488351878, 1, 'adminko', 31, '-', '-', 'Using file manager'),
(1208, 1488351910, 1, 'adminko', 76, '-', '-', 'Element management'),
(1209, 1488351919, 1, 'adminko', 300, '-', 'Новый параметр (TV)', 'Create Template Variable'),
(1210, 1488352710, 1, 'adminko', 302, '-', 'Изображение для ленты новостей', 'Save Template Variable'),
(1211, 1488352710, 1, 'adminko', 76, '-', '-', 'Element management'),
(1212, 1488352722, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1213, 1488352801, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1214, 1488352824, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1215, 1488352838, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1216, 1488352844, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1217, 1488352869, 1, 'adminko', 76, '-', '-', 'Element management'),
(1218, 1488352874, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1219, 1488353037, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1220, 1488353037, 1, 'adminko', 76, '-', '-', 'Element management'),
(1221, 1488353043, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1222, 1488353176, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1223, 1488353177, 1, 'adminko', 3, '7', 'С чего начать поиск работы 1 ', 'Viewing data for resource'),
(1224, 1488353179, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1225, 1488353192, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(1226, 1488353193, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(1227, 1488353194, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1228, 1488353210, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(1229, 1488353211, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(1230, 1488353213, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1231, 1488353278, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1232, 1488353280, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(1233, 1488353374, 1, 'adminko', 76, '-', '-', 'Element management'),
(1234, 1488353377, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1235, 1488353396, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1236, 1488353457, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1237, 1488353467, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1238, 1488353480, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1239, 1488353526, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1240, 1488353526, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1241, 1488353789, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1242, 1488353816, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1243, 1488353816, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1244, 1488353843, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1245, 1488353843, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1246, 1488353862, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1247, 1488353862, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1248, 1488353877, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1249, 1488353877, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1250, 1488353885, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1251, 1488353885, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1252, 1488353896, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1253, 1488353896, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1254, 1488353906, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1255, 1488353907, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1256, 1488353918, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1257, 1488353918, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1258, 1488353928, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1259, 1488353928, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1260, 1488353938, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1261, 1488353938, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1262, 1488353953, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1263, 1488353954, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1264, 1488353972, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(1265, 1488353973, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1266, 1488354008, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1267, 1488354031, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1268, 1488354031, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1269, 1488354049, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1270, 1488354049, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1271, 1488354068, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1272, 1488354068, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1273, 1488354193, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1274, 1488354193, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1275, 1488354288, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1276, 1488354288, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1277, 1488354352, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1278, 1488354352, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1279, 1488354399, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1280, 1488354399, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1281, 1488354426, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1282, 1488354426, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1283, 1488354473, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1284, 1488354473, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1285, 1488354533, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1286, 1488354534, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1287, 1488354644, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(1288, 1488354676, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1289, 1488354678, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1290, 1488354679, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1291, 1488354694, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1292, 1488354777, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1293, 1488358085, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1294, 1488358278, 1, 'adminko', 79, '-', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1295, 1488358278, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1296, 1488358339, 1, 'adminko', 79, '13', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(1297, 1488358339, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1298, 1488358486, 1, 'adminko', 79, '13', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(1299, 1488358486, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1300, 1488358570, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1301, 1488358705, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1302, 1488358714, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1303, 1488358726, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1304, 1488358783, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1305, 1488358783, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1306, 1488358825, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1307, 1488358825, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1308, 1488358879, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1309, 1488358882, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1310, 1488358894, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1311, 1488358895, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1312, 1488358967, 1, 'adminko', 79, '42', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1313, 1488358967, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1314, 1488359345, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1315, 1488359401, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1316, 1488359455, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1317, 1488359455, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1318, 1488359595, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1319, 1488359595, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1320, 1488359630, 1, 'adminko', 24, '20', 'SendMail', 'Saving Snippet'),
(1321, 1488359630, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(1322, 1488359797, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1323, 1488359908, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1324, 1488359926, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1325, 1488359970, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1326, 1488359989, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1327, 1488360091, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1328, 1488360100, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1329, 1488360105, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1330, 1488360132, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1331, 1488360176, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1332, 1488360187, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1333, 1488360214, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1334, 1488360242, 1, 'adminko', 79, '13', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(1335, 1488360242, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1336, 1488360264, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1337, 1488360296, 1, 'adminko', 78, '11', 'SLIDER', 'Editing Chunk (HTML Snippet)'),
(1338, 1488360311, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1339, 1488360315, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1340, 1488360319, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1341, 1488360323, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1342, 1488360393, 1, 'adminko', 78, '11', 'SLIDER', 'Editing Chunk (HTML Snippet)'),
(1343, 1488360404, 1, 'adminko', 79, '11', 'SLIDER', 'Saving Chunk (HTML Snippet)'),
(1344, 1488360404, 1, 'adminko', 78, '11', 'SLIDER', 'Editing Chunk (HTML Snippet)'),
(1345, 1488360418, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1346, 1488360433, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1347, 1488360450, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1348, 1488360463, 1, 'adminko', 78, '12', 'SERVICES', 'Editing Chunk (HTML Snippet)'),
(1349, 1488360519, 1, 'adminko', 79, '12', 'SERVICES', 'Saving Chunk (HTML Snippet)'),
(1350, 1488360520, 1, 'adminko', 78, '12', 'SERVICES', 'Editing Chunk (HTML Snippet)'),
(1351, 1488360539, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1352, 1488360587, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1353, 1488360594, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1354, 1488360601, 1, 'adminko', 78, '24', 'BENEFITS_ABOUT_PAGE', 'Editing Chunk (HTML Snippet)'),
(1355, 1488360613, 1, 'adminko', 78, '20', 'ABOUT', 'Editing Chunk (HTML Snippet)'),
(1356, 1488360619, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1357, 1488360628, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(1358, 1488360635, 1, 'adminko', 79, '14', 'BENEFITS', 'Saving Chunk (HTML Snippet)'),
(1359, 1488360635, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(1360, 1488360644, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1361, 1488360768, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1362, 1488360792, 1, 'adminko', 79, '16', 'MODAL', 'Saving Chunk (HTML Snippet)'),
(1363, 1488360792, 1, 'adminko', 78, '16', 'MODAL', 'Editing Chunk (HTML Snippet)'),
(1364, 1488360802, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(1365, 1488360807, 1, 'adminko', 79, '9', 'HEAD', 'Saving Chunk (HTML Snippet)'),
(1366, 1488360807, 1, 'adminko', 76, '-', '-', 'Element management'),
(1367, 1488360811, 1, 'adminko', 78, '32', 'WARNING', 'Editing Chunk (HTML Snippet)'),
(1368, 1488360815, 1, 'adminko', 79, '32', 'WARNING', 'Saving Chunk (HTML Snippet)'),
(1369, 1488360815, 1, 'adminko', 76, '-', '-', 'Element management'),
(1370, 1488360827, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(1371, 1488360846, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(1372, 1488360846, 1, 'adminko', 76, '-', '-', 'Element management'),
(1373, 1488360849, 1, 'adminko', 78, '17', 'MAIN_MENU', 'Editing Chunk (HTML Snippet)'),
(1374, 1488360854, 1, 'adminko', 79, '17', 'MAIN_MENU', 'Saving Chunk (HTML Snippet)'),
(1375, 1488360854, 1, 'adminko', 76, '-', '-', 'Element management'),
(1376, 1488360858, 1, 'adminko', 78, '15', 'FOOTER', 'Editing Chunk (HTML Snippet)'),
(1377, 1488360862, 1, 'adminko', 79, '15', 'FOOTER', 'Saving Chunk (HTML Snippet)'),
(1378, 1488360862, 1, 'adminko', 76, '-', '-', 'Element management'),
(1379, 1488360882, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1380, 1488360887, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1381, 1488360895, 1, 'adminko', 78, '26', 'CONTACT_PAGETITLE', 'Editing Chunk (HTML Snippet)'),
(1382, 1488360927, 1, 'adminko', 79, '26', 'CONTACT_PAGETITLE', 'Saving Chunk (HTML Snippet)'),
(1383, 1488360927, 1, 'adminko', 76, '-', '-', 'Element management'),
(1384, 1488360934, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1385, 1488360941, 1, 'adminko', 78, '27', 'MAP', 'Editing Chunk (HTML Snippet)'),
(1386, 1488360953, 1, 'adminko', 79, '27', 'MAP', 'Saving Chunk (HTML Snippet)'),
(1387, 1488360953, 1, 'adminko', 76, '-', '-', 'Element management'),
(1388, 1488360960, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1389, 1488360967, 1, 'adminko', 78, '28', 'CONTACT_MAIN', 'Editing Chunk (HTML Snippet)'),
(1390, 1488360973, 1, 'adminko', 78, '30', 'ADDRESS', 'Editing Chunk (HTML Snippet)'),
(1391, 1488360984, 1, 'adminko', 79, '30', 'ADDRESS', 'Saving Chunk (HTML Snippet)'),
(1392, 1488360984, 1, 'adminko', 76, '-', '-', 'Element management'),
(1393, 1488360989, 1, 'adminko', 78, '28', 'CONTACT_MAIN', 'Editing Chunk (HTML Snippet)'),
(1394, 1488360996, 1, 'adminko', 79, '28', 'CONTACT_MAIN', 'Saving Chunk (HTML Snippet)'),
(1395, 1488360996, 1, 'adminko', 76, '-', '-', 'Element management'),
(1396, 1488360999, 1, 'adminko', 78, '29', 'CONTACT_FORM', 'Editing Chunk (HTML Snippet)'),
(1397, 1488361007, 1, 'adminko', 79, '29', 'CONTACT_FORM', 'Saving Chunk (HTML Snippet)'),
(1398, 1488361007, 1, 'adminko', 76, '-', '-', 'Element management'),
(1399, 1488361014, 1, 'adminko', 78, '20', 'ABOUT', 'Editing Chunk (HTML Snippet)'),
(1400, 1488361026, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1401, 1488361037, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1402, 1488361047, 1, 'adminko', 78, '20', 'ABOUT', 'Editing Chunk (HTML Snippet)'),
(1403, 1488361191, 1, 'adminko', 79, '20', 'ABOUT', 'Saving Chunk (HTML Snippet)'),
(1404, 1488361191, 1, 'adminko', 76, '-', '-', 'Element management'),
(1405, 1488361199, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1406, 1488361211, 1, 'adminko', 78, '18', 'PAGETITLE', 'Editing Chunk (HTML Snippet)'),
(1407, 1488361245, 1, 'adminko', 79, '18', 'PAGETITLE', 'Saving Chunk (HTML Snippet)'),
(1408, 1488361245, 1, 'adminko', 76, '-', '-', 'Element management'),
(1409, 1488361251, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1410, 1488361261, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1411, 1488361316, 1, 'adminko', 79, '19', 'ABOUT_PAGE_CONTENT', 'Saving Chunk (HTML Snippet)'),
(1412, 1488361316, 1, 'adminko', 76, '-', '-', 'Element management'),
(1413, 1488361323, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1414, 1488361331, 1, 'adminko', 78, '21', 'MISSION', 'Editing Chunk (HTML Snippet)'),
(1415, 1488361340, 1, 'adminko', 79, '21', 'MISSION', 'Saving Chunk (HTML Snippet)'),
(1416, 1488361340, 1, 'adminko', 78, '21', 'MISSION', 'Editing Chunk (HTML Snippet)'),
(1417, 1488361345, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1418, 1488361352, 1, 'adminko', 78, '24', 'BENEFITS_ABOUT_PAGE', 'Editing Chunk (HTML Snippet)'),
(1419, 1488361361, 1, 'adminko', 79, '24', 'BENEFITS_ABOUT_PAGE', 'Saving Chunk (HTML Snippet)'),
(1420, 1488361361, 1, 'adminko', 76, '-', '-', 'Element management'),
(1421, 1488361366, 1, 'adminko', 78, '24', 'BENEFITS_ABOUT_PAGE', 'Editing Chunk (HTML Snippet)'),
(1422, 1488361373, 1, 'adminko', 78, '23', 'BENEFITS_BLOCK_FOOTER', 'Editing Chunk (HTML Snippet)'),
(1423, 1488361380, 1, 'adminko', 79, '23', 'BENEFITS_BLOCK_FOOTER', 'Saving Chunk (HTML Snippet)'),
(1424, 1488361380, 1, 'adminko', 76, '-', '-', 'Element management'),
(1425, 1488361387, 1, 'adminko', 78, '22', 'BENEFITS_BLOCK_LIST', 'Editing Chunk (HTML Snippet)'),
(1426, 1488361403, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(1427, 1488361419, 1, 'adminko', 78, '22', 'BENEFITS_BLOCK_LIST', 'Editing Chunk (HTML Snippet)'),
(1428, 1488361432, 1, 'adminko', 79, '22', 'BENEFITS_BLOCK_LIST', 'Saving Chunk (HTML Snippet)'),
(1429, 1488361432, 1, 'adminko', 76, '-', '-', 'Element management'),
(1430, 1488361443, 1, 'adminko', 78, '23', 'BENEFITS_BLOCK_FOOTER', 'Editing Chunk (HTML Snippet)'),
(1431, 1488361514, 1, 'adminko', 78, '14', 'BENEFITS', 'Editing Chunk (HTML Snippet)'),
(1432, 1488361526, 1, 'adminko', 78, '23', 'BENEFITS_BLOCK_FOOTER', 'Editing Chunk (HTML Snippet)'),
(1433, 1488361533, 1, 'adminko', 79, '23', 'BENEFITS_BLOCK_FOOTER', 'Saving Chunk (HTML Snippet)'),
(1434, 1488361533, 1, 'adminko', 76, '-', '-', 'Element management'),
(1435, 1488361572, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1436, 1488361578, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1437, 1488361587, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1438, 1488361732, 1, 'adminko', 78, '19', 'ABOUT_PAGE_CONTENT', 'Editing Chunk (HTML Snippet)'),
(1439, 1488361737, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1440, 1488361758, 1, 'adminko', 79, '25', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(1441, 1488361758, 1, 'adminko', 76, '-', '-', 'Element management'),
(1442, 1488361764, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1443, 1488361781, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1444, 1488362197, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1445, 1488362216, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1446, 1488362216, 1, 'adminko', 76, '-', '-', 'Element management'),
(1447, 1488362225, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1448, 1488362239, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1449, 1488362256, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1450, 1488362279, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1451, 1488362380, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1452, 1488362410, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1453, 1488362437, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1454, 1488362438, 1, 'adminko', 76, '-', '-', 'Element management'),
(1455, 1488362449, 1, 'adminko', 78, '31', 'NEWS_PAGE_TITLE', 'Editing Chunk (HTML Snippet)'),
(1456, 1488362463, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1457, 1488362488, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1458, 1488362494, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1459, 1488362505, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1460, 1488362514, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1461, 1488362538, 1, 'adminko', 78, '31', 'NEWS_PAGE_TITLE', 'Editing Chunk (HTML Snippet)'),
(1462, 1488362561, 1, 'adminko', 79, '31', 'NEWS_PAGE_TITLE', 'Saving Chunk (HTML Snippet)'),
(1463, 1488362561, 1, 'adminko', 76, '-', '-', 'Element management'),
(1464, 1488362565, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1465, 1488362574, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1466, 1488362574, 1, 'adminko', 76, '-', '-', 'Element management'),
(1467, 1488362615, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1468, 1488362626, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1469, 1488362641, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1470, 1488362652, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1471, 1488362675, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1472, 1488362684, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1473, 1488362698, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1474, 1488362726, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1475, 1488362731, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1476, 1488362741, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1477, 1488362786, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1478, 1488362859, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1479, 1488362869, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1480, 1488362881, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1481, 1488362904, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1482, 1488363002, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1483, 1488363010, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1484, 1488363027, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1485, 1488363036, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1486, 1488363081, 1, 'adminko', 79, '42', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1487, 1488363081, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1488, 1488363101, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1489, 1488363108, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1490, 1488363113, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1491, 1488363186, 1, 'adminko', 79, '-', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1492, 1488363186, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1493, 1488363216, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1494, 1488363413, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1495, 1488363413, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1496, 1488363459, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1497, 1488363479, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1498, 1488363531, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1499, 1488363531, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1500, 1488363629, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1501, 1488363696, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1502, 1488363696, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1503, 1488363706, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1504, 1488363706, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1505, 1488363724, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1506, 1488363729, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1507, 1488363749, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1508, 1488363754, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1509, 1488363768, 1, 'adminko', 79, '42', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1510, 1488363768, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1511, 1488363817, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1512, 1488363841, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1513, 1488363847, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1514, 1488363852, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1515, 1488363867, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1516, 1488363867, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1517, 1488364009, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1518, 1488364014, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1519, 1488364023, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1520, 1488364024, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1521, 1488364033, 1, 'adminko', 94, '10', 'Копия С чего начать поиск работы 4', 'Duplicate resource'),
(1522, 1488364033, 1, 'adminko', 3, '11', 'Копия С чего начать поиск работы 4', 'Viewing data for resource'),
(1523, 1488364037, 1, 'adminko', 27, '11', 'Копия С чего начать поиск работы 4', 'Editing resource'),
(1524, 1488364070, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1525, 1488364071, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1526, 1488364077, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1527, 1488364101, 1, 'adminko', 94, '9', 'Копия С чего начать поиск работы 3', 'Duplicate resource'),
(1528, 1488364101, 1, 'adminko', 3, '12', 'Копия С чего начать поиск работы 3', 'Viewing data for resource'),
(1529, 1488364106, 1, 'adminko', 27, '12', 'Копия С чего начать поиск работы 3', 'Editing resource'),
(1530, 1488364133, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1531, 1488364133, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1532, 1488364141, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1533, 1488364151, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1534, 1488364152, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1535, 1488364195, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1536, 1488364222, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1537, 1488364223, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1538, 1488364237, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1539, 1488364258, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1540, 1488364258, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1541, 1488364296, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1542, 1488364314, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1543, 1488364314, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1544, 1488364409, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1545, 1488364439, 1, 'adminko', 97, '43', 'CAROUSEL_NEWS Копия', 'Duplicate Chunk (HTML Snippet)'),
(1546, 1488364439, 1, 'adminko', 78, '44', 'CAROUSEL_NEWS Копия', 'Editing Chunk (HTML Snippet)'),
(1547, 1488364455, 1, 'adminko', 79, '44', 'CAROUSEL_NEWS_LAST', 'Saving Chunk (HTML Snippet)'),
(1548, 1488364455, 1, 'adminko', 78, '44', 'CAROUSEL_NEWS_LAST', 'Editing Chunk (HTML Snippet)'),
(1549, 1488364486, 1, 'adminko', 80, '44', 'CAROUSEL_NEWS_LAST', 'Deleting Chunk (HTML Snippet)'),
(1550, 1488364486, 1, 'adminko', 76, '-', '-', 'Element management'),
(1551, 1488364492, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1552, 1488364507, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1553, 1488364508, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1554, 1488364533, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1555, 1488364548, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1556, 1488364557, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(1557, 1488364557, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1558, 1488364560, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1559, 1488364569, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(1560, 1488364569, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1561, 1488364571, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1562, 1488364579, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1563, 1488364579, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1564, 1488364582, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1565, 1488364590, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1566, 1488364590, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1567, 1488364596, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1568, 1488364603, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1569, 1488364603, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1570, 1488364649, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1571, 1488364656, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1572, 1488364670, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1573, 1488364671, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1574, 1488364678, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1575, 1488364689, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1576, 1488364698, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1577, 1488364715, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1578, 1488364767, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1579, 1488364767, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1580, 1488365126, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1581, 1488365164, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1582, 1488365186, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1583, 1488365257, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1584, 1488365268, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1585, 1488365268, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1586, 1488365283, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1587, 1488365333, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1588, 1488365333, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1589, 1488365376, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1590, 1488365377, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1591, 1488365396, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1592, 1488365396, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1593, 1488365405, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1594, 1488365405, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1595, 1488365432, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1596, 1488365441, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1597, 1488365463, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1598, 1488365463, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1599, 1488365466, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1600, 1488365473, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1601, 1488365483, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1602, 1488365503, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1603, 1488365505, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(1604, 1488365525, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1605, 1488365529, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1606, 1488365538, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1607, 1488365548, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1608, 1488365562, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1609, 1488365563, 1, 'adminko', 3, '12', 'С чего начать поиск работы 6', 'Viewing data for resource'),
(1610, 1488365564, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1611, 1488365572, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1612, 1488365586, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1613, 1488365593, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1614, 1488365609, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1615, 1488365615, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1616, 1488365649, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1617, 1488365649, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1618, 1488365652, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1619, 1488365658, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1620, 1488365675, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1621, 1488365676, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(1622, 1488365677, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1623, 1488365687, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1624, 1488365739, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1625, 1488365745, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1626, 1488365749, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1627, 1488365773, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1628, 1488365774, 1, 'adminko', 3, '12', 'С чего начать поиск работы 6', 'Viewing data for resource'),
(1629, 1488365775, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1630, 1488365782, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1631, 1488365783, 1, 'adminko', 3, '11', 'С чего начать поиск работы 5', 'Viewing data for resource'),
(1632, 1488365792, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1633, 1488365864, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1634, 1488365864, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1635, 1488365890, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1636, 1488365890, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1637, 1488365917, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1638, 1488365917, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1639, 1488365923, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1640, 1488365923, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1641, 1488366266, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1642, 1488366266, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1643, 1488366270, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1644, 1488366286, 1, 'adminko', 79, '42', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1645, 1488366286, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1646, 1488366320, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1647, 1488366327, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1648, 1488366337, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1649, 1488366361, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1650, 1488366361, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1651, 1488366385, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1652, 1488366398, 1, 'adminko', 79, '42', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1653, 1488366398, 1, 'adminko', 76, '-', '-', 'Element management'),
(1654, 1488366401, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1655, 1488366424, 1, 'adminko', 79, '42', 'CAROUSEL', 'Saving Chunk (HTML Snippet)'),
(1656, 1488366424, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1657, 1488366428, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1658, 1488366442, 1, 'adminko', 79, '43', 'CAROUSEL_NEWS', 'Saving Chunk (HTML Snippet)'),
(1659, 1488366442, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1660, 1488366471, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1661, 1488366486, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1662, 1488366531, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1663, 1488366542, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1664, 1488366552, 1, 'adminko', 5, '1', 'Главная', 'Saving resource'),
(1665, 1488366553, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1666, 1488366559, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1667, 1488366675, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1668, 1488366731, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1669, 1488366737, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1670, 1488366743, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1671, 1488366754, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1672, 1488366767, 1, 'adminko', 79, '25', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(1673, 1488366767, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1674, 1488366791, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1675, 1488366796, 1, 'adminko', 27, '1', 'Главная', 'Editing resource'),
(1676, 1488366827, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1677, 1488366886, 1, 'adminko', 5, '3', 'О нас', 'Saving resource'),
(1678, 1488366886, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1679, 1488366893, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1680, 1488366930, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1681, 1488366936, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1682, 1488366941, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1683, 1488366958, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1684, 1488366965, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1685, 1488366990, 1, 'adminko', 79, '25', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(1686, 1488366990, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(1687, 1488367004, 1, 'adminko', 79, '25', 'ABOUT_NEWS', 'Saving Chunk (HTML Snippet)'),
(1688, 1488367004, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1689, 1488367070, 1, 'adminko', 79, '-', 'ABOUT_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1690, 1488367070, 1, 'adminko', 78, '45', 'ABOUT_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1691, 1488367081, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1692, 1488367105, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1693, 1488367186, 1, 'adminko', 79, '45', 'ABOUT_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1694, 1488367186, 1, 'adminko', 78, '45', 'ABOUT_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1695, 1488367242, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1696, 1488367257, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1697, 1488367267, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1698, 1488367267, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1699, 1488367327, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1700, 1488367345, 1, 'adminko', 79, '13', 'ABOUT_INDEX', 'Saving Chunk (HTML Snippet)'),
(1701, 1488367348, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1702, 1488367455, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1703, 1488367472, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1704, 1488367477, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1705, 1488367502, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1706, 1488368301, 1, 'adminko', 78, '41', 'PAGINATION_PREV_OFF', 'Editing Chunk (HTML Snippet)'),
(1707, 1488368317, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1708, 1488368322, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1709, 1488368336, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1710, 1488368345, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1711, 1488368354, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1712, 1488368366, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1713, 1488368740, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1714, 1488368753, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1715, 1488368760, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1716, 1488368781, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1717, 1488368791, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1718, 1488369280, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1719, 1488369284, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1720, 1488369289, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1721, 1488369294, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1722, 1488369309, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1723, 1488369343, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1724, 1488369376, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1725, 1488369388, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1726, 1488369396, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1727, 1488369419, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1728, 1488369424, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1729, 1488369433, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1730, 1488369447, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1731, 1488369468, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1732, 1488369469, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1733, 1488369524, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1734, 1488369525, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1735, 1488369602, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1736, 1488369607, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1737, 1488369713, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1738, 1488369714, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1739, 1488369762, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1740, 1488369762, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1741, 1488369797, 1, 'adminko', 79, '36', 'NEWS_LIST', 'Saving Chunk (HTML Snippet)'),
(1742, 1488369797, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1743, 1488369831, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1744, 1488369838, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1745, 1488369844, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1746, 1488369926, 1, 'adminko', 79, '-', 'RIGHT_COL', 'Saving Chunk (HTML Snippet)'),
(1747, 1488369926, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1748, 1488369942, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1749, 1488369955, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(1750, 1488369955, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1751, 1488369984, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1752, 1488370016, 1, 'adminko', 79, '46', 'RIGHT_COL', 'Saving Chunk (HTML Snippet)'),
(1753, 1488370017, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1754, 1488370031, 1, 'adminko', 79, '46', 'RIGHT_COL', 'Saving Chunk (HTML Snippet)'),
(1755, 1488370032, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1756, 1488370053, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1757, 1488370131, 1, 'adminko', 79, '-', 'RIGHT_COL_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1758, 1488370131, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1759, 1488370155, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1760, 1488370168, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1761, 1488370168, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1762, 1488370194, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1763, 1488370200, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1764, 1488370210, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1765, 1488370211, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1766, 1488370242, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1767, 1488370242, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1768, 1488370256, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1769, 1488370256, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1770, 1488370288, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1771, 1488370332, 1, 'adminko', 79, '47', 'RIGHT_COL_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1772, 1488370332, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1773, 1488370350, 1, 'adminko', 79, '47', 'RIGHT_COL_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1774, 1488370350, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1775, 1488370371, 1, 'adminko', 79, '47', 'RIGHT_COL_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1776, 1488370371, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1777, 1488370388, 1, 'adminko', 79, '47', 'RIGHT_COL_NEWS_PAGE', 'Saving Chunk (HTML Snippet)'),
(1778, 1488370388, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1779, 1488370425, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1780, 1488370429, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1781, 1488370440, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1782, 1488370440, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1783, 1488370569, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1784, 1488370600, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1785, 1488370607, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1786, 1488370623, 1, 'adminko', 79, '46', 'RIGHT_COL', 'Saving Chunk (HTML Snippet)'),
(1787, 1488370623, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1788, 1488370665, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1789, 1488370667, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1790, 1488370669, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1791, 1488370678, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1792, 1488370698, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(1793, 1488370699, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1794, 1488370746, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1795, 1488370749, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1796, 1488370754, 1, 'adminko', 16, '6', 'Контакты', 'Editing template'),
(1797, 1488370761, 1, 'adminko', 16, '3', 'Главная', 'Editing template'),
(1798, 1488370766, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1799, 1488370785, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1800, 1488370792, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1801, 1488370814, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1802, 1488370828, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1803, 1488370881, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1804, 1488370889, 1, 'adminko', 78, '31', 'NEWS_PAGE_TITLE', 'Editing Chunk (HTML Snippet)'),
(1805, 1488370895, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1806, 1488370921, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1807, 1488370921, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1808, 1488370955, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1809, 1488370955, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1810, 1488370969, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1811, 1488371202, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1812, 1488371242, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1813, 1488371336, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1814, 1488371336, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1815, 1488371342, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1816, 1488371342, 1, 'adminko', 19, '-', 'Новый шаблон', 'Creating a new template'),
(1817, 1488371366, 1, 'adminko', 20, '-', 'NEWS', 'Saving template'),
(1818, 1488371366, 1, 'adminko', 16, '9', 'NEWS', 'Editing template'),
(1819, 1488371402, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1820, 1488371426, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1821, 1488371503, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1822, 1488371503, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1823, 1488371516, 1, 'adminko', 21, '9', 'NEWS', 'Deleting template'),
(1824, 1488371516, 1, 'adminko', 76, '-', '-', 'Element management'),
(1825, 1488371524, 1, 'adminko', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(1826, 1488371543, 1, 'adminko', 79, '-', 'NEWS', 'Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1827, 1488371543, 1, 'adminko', 78, '48', 'NEWS', 'Editing Chunk (HTML Snippet)'),
(1828, 1488371609, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1829, 1488371613, 1, 'adminko', 78, '48', 'NEWS', 'Editing Chunk (HTML Snippet)'),
(1830, 1488371618, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1831, 1488371700, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1832, 1488371700, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1833, 1488371724, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1834, 1488371731, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1835, 1488371759, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1836, 1488371795, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(1837, 1488371799, 1, 'adminko', 78, '42', 'CAROUSEL', 'Editing Chunk (HTML Snippet)'),
(1838, 1488371806, 1, 'adminko', 78, '13', 'ABOUT_INDEX', 'Editing Chunk (HTML Snippet)'),
(1839, 1488371814, 1, 'adminko', 16, '5', 'О нас', 'Editing template'),
(1840, 1488371819, 1, 'adminko', 27, '3', 'О нас', 'Editing resource'),
(1841, 1488371904, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1842, 1488371910, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1843, 1488371925, 1, 'adminko', 78, '48', 'NEWS', 'Editing Chunk (HTML Snippet)'),
(1844, 1488371934, 1, 'adminko', 80, '48', 'NEWS', 'Deleting Chunk (HTML Snippet)'),
(1845, 1488371935, 1, 'adminko', 76, '-', '-', 'Element management'),
(1846, 1488371942, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1847, 1488371957, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1848, 1488371957, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1849, 1488371967, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1850, 1488371983, 1, 'adminko', 20, '7', 'Новости', 'Saving template'),
(1851, 1488371983, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1852, 1488372036, 1, 'adminko', 5, '5', 'Новости', 'Saving resource'),
(1853, 1488372036, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1854, 1488372087, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1855, 1488372120, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1856, 1488372199, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1857, 1488372199, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1858, 1488372266, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1859, 1488372277, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1860, 1488372303, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1861, 1488372313, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1862, 1488372327, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1863, 1488372363, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1864, 1488372375, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1865, 1488372402, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1866, 1488372427, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1867, 1488372435, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1868, 1488372439, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1869, 1488372460, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(1870, 1488372461, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1871, 1488372466, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1872, 1488372484, 1, 'adminko', 79, '46', 'RIGHT_COL', 'Saving Chunk (HTML Snippet)'),
(1873, 1488372484, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1874, 1488372487, 1, 'adminko', 78, '47', 'RIGHT_COL_NEWS_PAGE', 'Editing Chunk (HTML Snippet)'),
(1875, 1488372524, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1876, 1488372528, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1877, 1488372534, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1878, 1488372552, 1, 'adminko', 79, '46', 'RIGHT_COL', 'Saving Chunk (HTML Snippet)'),
(1879, 1488372552, 1, 'adminko', 78, '46', 'RIGHT_COL', 'Editing Chunk (HTML Snippet)'),
(1880, 1488372590, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1881, 1488372600, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1882, 1488372607, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(1883, 1488372616, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1884, 1488372638, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1885, 1488372649, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1886, 1488372649, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1887, 1488372731, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1888, 1488372815, 1, 'adminko', 16, '7', 'Новости', 'Editing template'),
(1889, 1488372845, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1890, 1488372940, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1891, 1488373049, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(1892, 1488373102, 1, 'adminko', 78, '39', 'PAGINATION_PAGE', 'Editing Chunk (HTML Snippet)'),
(1893, 1488373328, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1894, 1488373350, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1895, 1488373387, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(1896, 1488373545, 1, 'adminko', 304, '4', 'img_newsline Копия', 'Duplicate Template Variable'),
(1897, 1488373545, 1, 'adminko', 301, '5', 'Изображение для ленты новостей Duplicate', 'Edit Template Variable'),
(1898, 1488373548, 1, 'adminko', 301, '5', 'Изображение для ленты новостей Duplicate', 'Edit Template Variable'),
(1899, 1488373582, 1, 'adminko', 302, '5', 'Изображение для статьи', 'Save Template Variable'),
(1900, 1488373582, 1, 'adminko', 76, '-', '-', 'Element management'),
(1901, 1488373588, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1902, 1488373605, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1903, 1488373623, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1904, 1488373623, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1905, 1488373641, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1906, 1488373641, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1907, 1488373695, 1, 'adminko', 301, '5', 'Изображение для статьи', 'Edit Template Variable'),
(1908, 1488373713, 1, 'adminko', 302, '5', 'Изображение для статьи', 'Save Template Variable'),
(1909, 1488373714, 1, 'adminko', 301, '5', 'Изображение для статьи', 'Edit Template Variable'),
(1910, 1488373755, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1911, 1488373771, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1912, 1488373778, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1913, 1488373801, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(1914, 1488373801, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1915, 1488373804, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1916, 1488373813, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1917, 1488373832, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(1918, 1488373833, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1919, 1488373836, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1920, 1488373843, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1921, 1488373951, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1922, 1488373952, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1923, 1488373958, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1924, 1488373975, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1925, 1488373975, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1926, 1488374016, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1927, 1488374026, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1928, 1488374032, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1929, 1488374044, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(1930, 1488374046, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(1931, 1488374047, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1932, 1488374052, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1933, 1488374062, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(1934, 1488374063, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(1935, 1488374073, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1936, 1488374078, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1937, 1488374086, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1938, 1488374087, 1, 'adminko', 3, '7', 'С чего начать поиск работы 1 ', 'Viewing data for resource'),
(1939, 1488374093, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1940, 1488374096, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1941, 1488374106, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1942, 1488374112, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1943, 1488374154, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1944, 1488374155, 1, 'adminko', 3, '11', 'С чего начать поиск работы 5', 'Viewing data for resource'),
(1945, 1488374157, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1946, 1488374161, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1947, 1488374188, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1948, 1488374189, 1, 'adminko', 3, '12', 'С чего начать поиск работы 6', 'Viewing data for resource'),
(1949, 1488374211, 1, 'adminko', 27, '5', 'Новости', 'Editing resource'),
(1950, 1488374219, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1951, 1488374240, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1952, 1488374245, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1953, 1488374332, 1, 'adminko', 20, '8', 'Новость', 'Saving template'),
(1954, 1488374332, 1, 'adminko', 16, '8', 'Новость', 'Editing template'),
(1955, 1488374362, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1956, 1488374363, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1957, 1488374386, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1958, 1488374390, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1959, 1488374403, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(1960, 1488374405, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(1961, 1488374406, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1962, 1488374412, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1963, 1488374422, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(1964, 1488374423, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(1965, 1488374425, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1966, 1488374431, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1967, 1488374441, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1968, 1488374443, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(1969, 1488374447, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1970, 1488374452, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1971, 1488374466, 1, 'adminko', 5, '11', 'С чего начать поиск работы 5', 'Saving resource'),
(1972, 1488374467, 1, 'adminko', 3, '11', 'С чего начать поиск работы 5', 'Viewing data for resource'),
(1973, 1488374471, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1974, 1488374477, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1975, 1488374488, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1976, 1488374489, 1, 'adminko', 3, '12', 'С чего начать поиск работы 6', 'Viewing data for resource'),
(1977, 1488374540, 1, 'adminko', 27, '12', 'С чего начать поиск работы 6', 'Editing resource'),
(1978, 1488374551, 1, 'adminko', 5, '12', 'С чего начать поиск работы 6', 'Saving resource'),
(1979, 1488374553, 1, 'adminko', 3, '12', 'С чего начать поиск работы 6', 'Viewing data for resource'),
(1980, 1488374554, 1, 'adminko', 27, '11', 'С чего начать поиск работы 5', 'Editing resource'),
(1981, 1488374579, 1, 'adminko', 27, '10', 'С чего начать поиск работы 4', 'Editing resource'),
(1982, 1488374591, 1, 'adminko', 5, '10', 'С чего начать поиск работы 4', 'Saving resource'),
(1983, 1488374592, 1, 'adminko', 3, '10', 'С чего начать поиск работы 4', 'Viewing data for resource'),
(1984, 1488374593, 1, 'adminko', 27, '9', 'С чего начать поиск работы 3', 'Editing resource'),
(1985, 1488374610, 1, 'adminko', 5, '9', 'С чего начать поиск работы 3', 'Saving resource'),
(1986, 1488374612, 1, 'adminko', 3, '9', 'С чего начать поиск работы 3', 'Viewing data for resource'),
(1987, 1488374617, 1, 'adminko', 27, '8', 'С чего начать поиск работы 2', 'Editing resource'),
(1988, 1488374625, 1, 'adminko', 5, '8', 'С чего начать поиск работы 2', 'Saving resource'),
(1989, 1488374626, 1, 'adminko', 3, '8', 'С чего начать поиск работы 2', 'Viewing data for resource'),
(1990, 1488374627, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1991, 1488374635, 1, 'adminko', 5, '7', 'С чего начать поиск работы 1 ', 'Saving resource'),
(1992, 1488374636, 1, 'adminko', 3, '7', 'С чего начать поиск работы 1 ', 'Viewing data for resource'),
(1993, 1488374670, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1994, 1488374684, 1, 'adminko', 27, '7', 'С чего начать поиск работы 1 ', 'Editing resource'),
(1995, 1488374724, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1996, 1488374724, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1997, 1488374780, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(1998, 1488374780, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(1999, 1488374785, 1, 'adminko', 78, '36', 'NEWS_LIST', 'Editing Chunk (HTML Snippet)'),
(2000, 1488374795, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2001, 1488374818, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(2002, 1488374819, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2003, 1488374860, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(2004, 1488374912, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(2005, 1488374912, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(2006, 1488374921, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(2007, 1488374922, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2008, 1488375155, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(2009, 1488375169, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2010, 1488375180, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(2011, 1488375180, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2012, 1488375206, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(2013, 1488375206, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(2014, 1488375261, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(2015, 1488375261, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2016, 1488375299, 1, 'adminko', 302, '4', 'Изображение для ленты новостей', 'Save Template Variable'),
(2017, 1488375299, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(2018, 1488375340, 1, 'adminko', 79, '35', 'NEWS_ARTICLE', 'Saving Chunk (HTML Snippet)'),
(2019, 1488375340, 1, 'adminko', 78, '35', 'NEWS_ARTICLE', 'Editing Chunk (HTML Snippet)'),
(2020, 1488375382, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(2021, 1488375393, 1, 'adminko', 78, '43', 'CAROUSEL_NEWS', 'Editing Chunk (HTML Snippet)'),
(2022, 1488375407, 1, 'adminko', 78, '25', 'ABOUT_NEWS', 'Editing Chunk (HTML Snippet)'),
(2023, 1488375421, 1, 'adminko', 79, '33', 'NEWS_RIGHT_BLOCK', 'Saving Chunk (HTML Snippet)'),
(2024, 1488375421, 1, 'adminko', 78, '33', 'NEWS_RIGHT_BLOCK', 'Editing Chunk (HTML Snippet)'),
(2025, 1488375449, 1, 'adminko', 78, '9', 'HEAD', 'Editing Chunk (HTML Snippet)'),
(2026, 1488375456, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(2027, 1488375481, 1, 'adminko', 79, '10', 'HEADER', 'Saving Chunk (HTML Snippet)'),
(2028, 1488375481, 1, 'adminko', 78, '10', 'HEADER', 'Editing Chunk (HTML Snippet)'),
(2029, 1488375502, 1, 'adminko', 78, '17', 'MAIN_MENU', 'Editing Chunk (HTML Snippet)'),
(2030, 1488375528, 1, 'adminko', 64, '-', '-', 'Removing deleted content'),
(2031, 1488375536, 1, 'adminko', 10, '-', '-', 'Viewing/ composing messages'),
(2032, 1488375570, 1, 'adminko', 10, '-', '-', 'Viewing/ composing messages'),
(2033, 1488375586, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(2034, 1488375587, 1, 'adminko', 26, '-', '-', 'Refreshing site'),
(2035, 1488375597, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(2036, 1488375600, 1, 'adminko', 301, '4', 'Изображение для ленты новостей', 'Edit Template Variable'),
(2037, 1488375607, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(2038, 1488375774, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(2039, 1488376282, 1, 'adminko', 30, '-', '-', 'Saving settings'),
(2040, 1488376294, 1, 'adminko', 22, '20', 'SendMail', 'Editing Snippet'),
(2041, 1488376324, 1, 'adminko', 4, '-', 'Новый ресурс', 'Creating a resource'),
(2042, 1488376326, 1, 'adminko', 72, '-', 'Новый ресурс', 'Adding a weblink'),
(2043, 1488376330, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(2044, 1488376336, 1, 'adminko', 76, '-', '-', 'Element management'),
(2045, 1488376351, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(2046, 1488376369, 1, 'adminko', 75, '-', '-', 'User/ role management'),
(2047, 1488376379, 1, 'adminko', 26, '-', '-', 'Refreshing site'),
(2048, 1488376385, 1, 'adminko', 76, '-', '-', 'Element management'),
(2049, 1488376387, 1, 'adminko', 31, '-', '-', 'Using file manager'),
(2050, 1488376390, 1, 'adminko', 106, '-', '-', 'Viewing Modules'),
(2051, 1488376394, 1, 'adminko', 75, '-', '-', 'User/ role management'),
(2052, 1488376406, 1, 'adminko', 99, '-', '-', 'Manage Web Users'),
(2053, 1488376409, 1, 'adminko', 86, '-', '-', 'Role management'),
(2054, 1488376411, 1, 'adminko', 40, '-', '-', 'Editing Access Permissions'),
(2055, 1488376413, 1, 'adminko', 91, '-', '-', 'Editing Web Access Permissions'),
(2056, 1488376427, 1, 'adminko', 70, '-', '-', 'Viewing site schedule'),
(2057, 1488376428, 1, 'adminko', 114, '-', '-', 'View event log'),
(2058, 1488376430, 1, 'adminko', 13, '-', '-', 'Viewing logging'),
(2059, 1488376438, 1, 'adminko', 53, '-', '-', 'Viewing system info'),
(2060, 1488376451, 1, 'adminko', 70, '-', '-', 'Viewing site schedule'),
(2061, 1488376458, 1, 'adminko', 10, '-', '-', 'Viewing/ composing messages'),
(2062, 1488376485, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(2063, 1488376669, 1, 'adminko', 30, '-', '-', 'Saving settings'),
(2064, 1488376819, 1, 'adminko', 17, '-', '-', 'Editing settings'),
(2065, 1488376957, 1, 'adminko', 30, '-', '-', 'Saving settings');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_users`
--

CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains login information for backend users.';

--
-- Дамп данных таблицы `modx_manager_users`
--

INSERT INTO `modx_manager_users` (`id`, `username`, `password`) VALUES
(1, 'adminko', '$P$BDQF9GSeDRI7ylaBF3c.NsfFAkMLau/');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_access`
--

CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL,
  `type` varchar(20) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'document',
  `contentType` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `longtitle` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `alias` varchar(245) COLLATE utf8_estonian_ci DEFAULT '',
  `link_attributes` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COLLATE utf8_estonian_ci COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext COLLATE utf8_estonian_ci,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains the site document tree.';

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `haskeywords`, `hasmetatags`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'Главная', 'Главная', 'Главная страница сайта', 'main', '', 1, 1487945640, 0, 0, 0, '', '[[Ditto? &amp;parents=`5` &amp;tpl=`CAROUSEL_NEWS` &amp;display=`3`]]', 1, 3, 1, 1, 1, 1, 1130304721, 1, 1488366552, 0, 0, 0, 1487945640, 1, 'Главная', 0, 0, 0, 0, 0, 0, 0, 1),
(3, 'document', 'text/html', 'О нас', 'О нас', '', 'about', '', 1, 0, 0, 0, 0, '', '<p>[[Ditto? &amp;parents=`5` &amp;tpl=`ABOUT_NEWS_PAGE` &amp;display=`3`]]</p>', 1, 5, 2, 1, 1, 1, 1487957238, 1, 1488366886, 0, 0, 0, 1487957238, 1, '', 0, 0, 0, 0, 0, 0, 0, 1),
(4, 'document', 'text/html', 'Контакты', 'Контакты', '', 'contacts', '', 1, 0, 0, 0, 0, '', '', 1, 6, 4, 1, 1, 1, 1487957609, 1, 1488048451, 0, 0, 0, 1487957609, 1, 'Контакты', 0, 0, 0, 0, 0, 0, 0, 1),
(5, 'document', 'text/html', 'Новости', 'Новости', '', 'news', '', 1, 0, 0, 0, 1, '', '', 1, 7, 3, 1, 0, 1, 1487957661, 1, 1488372035, 0, 0, 0, 1487957661, 1, '', 0, 0, 0, 0, 0, 0, 0, 1),
(7, 'document', 'text/html', 'С чего начать поиск работы 1 ', 'С чего начать поиск работы 1 ', 'С чего начать поиск работы 1 ', 's-chego-nachat-poisk-raboty-1', '', 1, 1488029520, 0, 5, 0, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы', '<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n<p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>', 1, 8, 0, 1, 1, 1, 1488100354, 1, 1488374635, 0, 0, 0, 1488029520, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(8, 'document', 'text/html', 'С чего начать поиск работы 2', 'С чего начать поиск работы 2', 'С чего начать поиск работы 2', 's-chego-nachat-poisk-raboty-2', '', 1, 1488029520, 0, 5, 0, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы', '<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>', 1, 8, 1, 1, 1, 1, 1488100893, 1, 1488374625, 0, 0, 0, 1488029520, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(9, 'document', 'text/html', 'С чего начать поиск работы 3', 'С чего начать поиск работы 3', 'С чего начать поиск работы 3', 's-chego-nachat-poisk-raboty-3', '', 1, 1488029520, 0, 5, 0, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы', '<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>', 1, 8, 1, 1, 1, 1, 1488100907, 1, 1488374610, 0, 0, 0, 1488029520, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(10, 'document', 'text/html', 'С чего начать поиск работы 4', 'С чего начать поиск работы 4', 'С чего начать поиск работы 4', 's-chego-nachat-poisk-raboty-4', '', 1, 1488029520, 0, 5, 0, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы', '<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n<p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n<div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n<p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n<blockquote>Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</blockquote>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>', 1, 8, 1, 1, 1, 1, 1488101086, 1, 1488374590, 0, 0, 0, 1488029520, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(11, 'document', 'text/html', 'С чего начать поиск работы 5', 'С чего начать поиск работы 5', 'С чего начать поиск работы 5', 's-chego-nachat-poisk-raboty-5', '', 1, 0, 0, 5, 0, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы', '<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n<p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n<div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>\r\n<p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n<blockquote>Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</blockquote>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>', 1, 8, 5, 1, 1, 1, 1488364032, 1, 1488374466, 0, 0, 0, 1488364070, 1, '', 0, 0, 0, 0, 0, 0, 1, 1),
(12, 'document', 'text/html', 'С чего начать поиск работы 6', 'С чего начать поиск работы 6', 'С чего начать поиск работы 6', 's-chego-nachat-poisk-raboty-6', '', 1, 0, 0, 5, 0, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе «другие страны». Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы', '<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum</p>\r\n<p>Вообще, найти работу в столице любой европейской страны не так уж и сложно. Можно даже не заморачиваться регистрацией на различных сайтах по трудоустройству. На rabota.ua есть немало вакансий в разделе &laquo;другие страны&raquo;. Плюс, LinkedIn заполнен вакансиями для англо- и русскоязычных людей, начиная с Праги, Кракова, Варшавы и заканчивая Амстердамом, Парижем и Лондоном. ...</p>', 1, 8, 6, 1, 1, 1, 1488364101, 1, 1488374551, 0, 0, 0, 1488364133, 1, '', 0, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content_metatags`
--

CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Reference table between meta tags and content';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext COLLATE utf8_estonian_ci,
  `locked` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains the site chunks.';

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `name`, `description`, `editor_type`, `editor_name`, `category`, `cache_type`, `snippet`, `locked`) VALUES
(1, 'AjaxSearch_tplAjaxGrpResult', 'Grp Result Tpl for AjaxSearch', 0, 'none', 1, 0, '[+as.grpResultsDef:is=`1`:then=`\n<div id=\"[+as.grpResultId+]\" class=\"AS_ajax_grpResult\">\n[+as.headerGrpResult+]\n[+as.listResults+]\n[+as.footerGrpResult+]\n</div>\n`:else=`\n<div class=\"AS_ajax_grpResultName\">[+as.grpResultNameShow:is=`1`:then=`[+as.grpResultName+]`+]\n<span class=\"ajaxSearch_grpResultsDisplayed\">[+as.grpResultsDisplayedText+]</span></div>\n`+]', 0),
(2, 'AjaxSearch_tplAjaxResult', 'Result Tpl for AjaxSearch', 0, 'none', 1, 0, '<div class=\"[+as.resultClass+]\">\n  <strong><a class=\"[+as.resultLinkClass+]\" href=\"[+as.resultLink+]\" title=\"[+as.longtitle+]\">[+as.pagetitle+]</a></strong>\n[+as.descriptionShow:is=`1`:then=`\n  <small><span class=\"[+as.descriptionClass+]\">[+as.description+]</span></small>\n`+]\n[+as.extractShow:is=`1`:then=`\n  <div class=\"[+as.extractClass+]\"><p>[+as.extract+]</p></div>\n`+]\n[+as.breadcrumbsShow:is=`1`:then=`\n  <span class=\"[+as.breadcrumbsClass+]\">[+as.breadcrumbs+]</span>\n`+]\n</div>', 0),
(3, 'AjaxSearch_tplAjaxResults', 'Results Tpl for AjaxSearch', 0, 'none', 1, 0, '<div id=\"search_results\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\n  <div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\">\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n        <h3 class=\"modal-title\">Search Results</h3>\n      </div>\n      <div class=\"modal-body\">\n        [+as.noResults:is=`1`:then=`\n		  <div class=\"[+as.noResultClass+]\">\n			[+as.noResultText+]\n		  </div>\n		`:else=`\n		<p class=\"AS_ajax_resultsInfos\">[+as.resultsFoundText+]<span class=\"AS_ajax_resultsDisplayed\">[+as.resultsDisplayedText+]</span></p>\n		[+as.listGrpResults+]\n		`+]\n		[+as.moreResults:is=`1`:then=`\n		  <div class=\"[+as.moreClass+]\">\n			<a href=\"[+as.moreLink+]\" title=\"[+as.moreTitle+]\">[+as.moreText+]</a>\n		  </div>\n		`+]\n		[+as.showCmt:is=`1`:then=`\n		[+as.comment+]\n		`+]\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">Close</button>\n      </div>\n    </div><!-- /.modal-content -->\n  </div><!-- /.modal-dialog -->\n</div><!-- /.modal -->\n<script>$(\'#search_results\').modal(\'show\')</script>', 0),
(4, 'AjaxSearch_tplInput', 'Input-Form for AjaxSearch', 0, 'none', 1, 0, '[+as.showInputForm:is=`1`:then=`\n<form id=\"[+as.formId+]\" action=\"[+as.formAction+]\" method=\"post\">\n    [+as.showAsId:is=`1`:then=`<input type=\"hidden\" name=\"[+as.asName+]\" value=\"[+as.asId+]\" />`+]\n    <input type=\"hidden\" name=\"advsearch\" value=\"[+as.advSearch+]\" />\n	<div class=\"input-group\">\n		<input id=\"[+as.inputId+]\" class=\"form-control cleardefault\" type=\"text\" name=\"search\" value=\"[+as.inputValue+]\"[+as.inputOptions+] />\n		[+as.liveSearch:is=`0`:then=`\n		<span class=\"input-group-btn\">\n			<button class=\"btn btn-primary\" type=\"submit\"><i class=\"fa fa-search\"></i></button>	\n		</span>\n		`:else=`\n		<div class=\"input-group-addon\"><i class=\"fa fa-search\"></i></div>\n		`+]		\n	</div>\n</form>\n`+]\n[+as.showIntro:is=`1`:then=`\n<p class=\"ajaxSearch_intro\" id=\"ajaxSearch_intro\">[+as.introMessage+]</p>\n`+]', 0),
(5, 'Comments_tplComments', 'Comments (Jot) Form-Template', 0, 'none', 1, 0, '<a name=\"jc[+jot.link.id+][+comment.id+]\"></a>\n<div class=\"panel panel-[+chunk.rowclass:ne=``:then=`primary`:else=`info`+] [+comment.published:is=`0`:then=`jot-row-up`+]\">\n	<div class=\"panel-heading\"><span class=\"jot-subject\">[+comment.title:limit:esc+]<span class=\"pull-right\">\n		[+phx:userinfo=`lastlogin`:ifempty=`9999999999`:lt=`[+comment.createdon+]`:then=`\n		<i class=\"fa fa-fw fa-comment-o\" aria-hidden=\"true\"></i>\n		`:else=`\n		<i class=\"fa fa-fw fa-commenting-o\" aria-hidden=\"true\"></i>\n		`:strip+]\n		</span></span>\n	</div>\n	<div class=\"panel-body\">\n		<div class=\"jot-comment\">\n			<div class=\"jot-user\">\n				[+comment.createdby:isnt=`0`:then=`<b>`+][+comment.createdby:userinfo=`username`:ifempty=`[+comment.custom.name:ifempty=`[+jot.guestname+]`:esc+]`+]\n				[+comment.createdby:isnt=`0`:then=`</b>`+]\n				<br>Posts: [+comment.userpostcount+]\n			</div>\n			<div class=\"jot-content\">\n				<div class=\"pull-right btn-group\">\n					[+jot.moderation.enabled:is=`1`:then=`\n					<a class=\"btn btn-xs btn-danger\" href=\"[+jot.link.delete:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to delete this comment?\')\" title=\"Delete Comment\"><i class=\"fa fa-fw fa-trash\" aria-hidden=\"true\"></i></a> \n					[+comment.published:is=`0`:then=`\n					<a class=\"btn btn-xs btn-info\"href=\"[+jot.link.publish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to publish this comment?\')\" title=\"Publish Comment\"><i class=\"fa fa-fw fa-arrow-up\" aria-hidden=\"true\"></i></a> \n					`+]\n					[+comment.published:is=`1`:then=`\n					<a class=\"btn btn-xs btn-warning\" href=\"[+jot.link.unpublish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to unpublish this comment?\')\" title=\"Unpublish Comment\"><i class=\"fa fa-fw fa-arrow-down\" aria-hidden=\"true\"></i></a> \n					`+]\n					`:strip+]\n					[+jot.user.canedit:is=`1`:and:if=`[+comment.createdby+]`:is=`[+jot.user.id+]`:or:if=`[+jot.moderation.enabled+]`:is=`1`:then=`\n					<a class=\"btn btn-xs btn-success\" href=\"[+jot.link.edit:esc+][+jot.querykey.id+]=[+comment.id+]#jf[+jot.link.id+]\" onclick=\"return confirm(\'Are you sure you wish to edit this comment?\')\" title=\"Edit Comment\"><i class=\"fa fa-fw fa-pencil-square-o\" aria-hidden=\"true\"></i></a>\n					`:strip+]\n				</div>\n				<span class=\"jot-poster\"><b>Reply #[+comment.postnumber+] on :</b> [+comment.createdon:date=`%a %B %d, %Y, %H:%M:%S`+]</span>\n				<hr>\n				<div class=\"jot-message\">[+comment.content:wordwrap:esc:nl2br+]</div>\n				<div class=\"jot-extra\">\n					[+comment.editedon:isnt=`0`:then=`\n					<span class=\"jot-editby\">Last Edit: [+comment.editedon:date=`%B %d, %Y, %H:%M:%S`+] by [+comment.editedby:userinfo=`username`:ifempty=` * `+]</span>\n					&nbsp;`+] [+jot.moderation.enabled:is=`1`:then=`<a target=\"_blank\" href=\"http://www.ripe.net/perl/whois?searchtext=[+comment.secip+]\">[+comment.secip+]</a>`+]\n				</div>\n			</div>\n		</div>\n	</div>\n</div>', 0),
(6, 'Comments_tplForm', 'Comments (Jot) Form-Template', 0, 'none', 1, 0, '<a name=\"jf[+jot.link.id+]\"></a>\n<h2>[+form.edit:is=`1`:then=`Edit comment`:else=`Write a comment`+]</h2>\n<div class=\"jot-list\">\n<ul>\n	<li>Required fields are marked with <b>*</b>.</li>\n</ul>\n</div>\n[+form.error:isnt=`0`:then=`\n<div class=\"jot-err\">\n[+form.error:select=`\n&-3=You are trying to re-submit the same post. You have probably clicked the submit button more than once.\n&-2=Your comment has been rejected.\n&-1=Your comment has been saved, it will first be reviewed before it is published.\n&1=You are trying to re-submit the same post. You have probably clicked the submit button more than once.\n&2=The security code you entered was incorrect.\n&3=You can only post once each [+jot.postdelay+] seconds.\n&4=Your comment has been rejected.\n&5=[+form.errormsg:ifempty=`You didn\'t enter all the required fields`+]\n`+]\n</div>\n`:strip+]\n[+form.confirm:isnt=`0`:then=`\n<div class=\"jot-cfm\">\n[+form.confirm:select=`\n&1=Your comment has been published.\n&2=Your comment has been saved, it will first be reviewed before it is published.\n&3=Comment saved.\n`+]\n</div>\n`:strip+]\n<form method=\"post\" action=\"[+form.action:esc+]#jf[+jot.link.id+]\" class=\"jot-form\">\n	<fieldset>\n	<input name=\"JotForm\" type=\"hidden\" value=\"[+jot.id+]\" />\n	<input name=\"JotNow\" type=\"hidden\" value=\"[+jot.seed+]\" />\n	<input name=\"parent\" type=\"hidden\" value=\"[+form.field.parent+]\" />\n	\n	[+form.moderation:is=`1`:then=`\n		<div class=\"jot-row\">\n			<b>Created on:</b> [+form.field.createdon:date=`%a %B %d, %Y at %H:%M`+]<br />\n			<b>Created by:</b> [+form.field.createdby:userinfo=`username`:ifempty=`[+jot.guestname+]`+]<br />\n			<b>IP address:</b> [+form.field.secip+]<br />\n			<b>Published:</b> [+form.field.published:select=`0=No&1=Yes`+]<br />\n			[+form.field.publishedon:gt=`0`:then=`\n				<b>Published on:</b> [+form.field.publishedon:date=`%a %B %d, %Y at %H:%M`+]<br />\n				<b>Published by:</b> [+form.field.publishedby:userinfo=`username`:ifempty=` - `+]<br />\n			`+]\n			[+form.field.editedon:gt=`0`:then=`\n				<b>Edited on:</b> [+form.field.editedon:date=`%a %B %d, %Y at %H:%M`+]<br />\n				<b>Edited by:</b> [+form.field.editedby:userinfo=`username`:ifempty=` -`+]<br />\n			`+]\n		</div>\n	`:strip+]\n	\n	[+form.guest:is=`1`:then=`\n		<div class=\"form-group\">\n			<label for=\"name[+jot.id+]\">Name:</label>\n			<input tabindex=\"[+jot.seed:math=`?+1`+]\" name=\"name\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.custom.name:esc+]\" id=\"name[+jot.id+]\" />\n		</div>\n		<div class=\"form-group\">\n			<label for=\"email[+jot.id+]\">Email:</label>\n			<input tabindex=\"[+jot.seed:math=`?+2`+]\" name=\"email\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.custom.email:esc+]\" id=\"email[+jot.id+]\"/>\n		</div>\n	`:strip+]\n	<div class=\"form-group\">\n		<label for=\"title[+jot.id+]\">Subject:</label>\n		<input tabindex=\"[+jot.seed:math=`?+3`+]\" name=\"title\" class=\"form-control\" type=\"text\" size=\"40\" value=\"[+form.field.title:esc+]\" id=\"title[+jot.id+]\"/>\n	</div>\n	<div class=\"form-group\">\n		<label for=\"content[+jot.id+]\">Comment: *</label>\n		<textarea tabindex=\"[+jot.seed:math=`?+4`+]\" name=\"content\" class=\"form-control\" rows=\"8\" id=\"content[+jot.id+]\">[+form.field.content:esc+]</textarea>\n	</div>\n	\n[+jot.captcha:is=`1`:then=`\n	<div style=\"width:150px;margin-top: 5px;margin-bottom: 5px;\">\n		<a href=\"[+jot.link.current:esc+]\">\n			<img src=\"[(modx_manager_url)]includes/veriword.php?rand=[+jot.seed+]\" width=\"148\" height=\"60\" alt=\"If you have trouble reading the code, click on the code itself to generate a new random code.\" style=\"border: 1px solid #003399\" />\n		</a>\n	</div>\n	<div class=\"form-group\">\n		<label for=\"vericode[+jot.id+]\">Help prevent spam - enter security code above:</label>\n		<input type=\"text\" name=\"vericode\" style=\"width:150px;\" size=\"20\" id=\"vericode[+jot.id+]\" />\n	</div>\n`:strip+]\n\n	<input tabindex=\"[+jot.seed:math=`?+5`+]\" name=\"submit\" class=\"btn btn-primary\" type=\"submit\" value=\"[+form.edit:is=`1`:then=`Save Comment`:else=`Post Comment`+]\" />\n	[+form.edit:is=`1`:then=`\n		<input tabindex=\"[+jot.seed:math=`?+5`+]\" name=\"submit\" class=\"btn btn-default\" type=\"submit\" value=\"Cancel\" onclick=\"history.go(-1);return false;\" />\n	`+] \n	</fieldset>\n</form>', 0),
(7, 'mm_rules', 'Default ManagerManager rules.', 0, 'none', 2, 0, '// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n', 0),
(8, 'WebLogin_tplForm', 'WebLogin Tpl', 0, 'none', 1, 0, '<!-- #declare:separator <hr> -->\n<!-- login form section-->\n<form method=\"post\" name=\"loginfrm\" action=\"[+action+]\">\n	<input type=\"hidden\" value=\"[+rememberme+]\" name=\"rememberme\">\n	<div class=\"form-group\">\n		<label for=\"username\">User:</label>\n		<input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" class=\"form-control\" onkeypress=\"return webLoginEnter(document.loginfrm.password);\" value=\"[+username+]\">\n	</div>\n	<div class=\"form-group\">\n		<label for=\"password\">Password:</label>\n		<input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" class=\"form-control\" onkeypress=\"return webLoginEnter(document.loginfrm.cmdweblogin);\" value=\"\">\n	</div>\n	<div class=\"checkbox\">\n		<label>\n			<input type=\"checkbox\" id=\"checkbox_1\" name=\"checkbox_1\" tabindex=\"3\" size=\"1\" value=\"\" [+checkbox+] onclick=\"webLoginCheckRemember()\"> Remember me\n		</label>\n	</div>\n	<input type=\"submit\" value=\"[+logintext+]\" name=\"cmdweblogin\" class=\"btn btn-primary\">\n	<a href=\"#\" onclick=\"webLoginShowForm(2);return false;\" id=\"forgotpsswd\" class=\"btn btn-text\">Forget Your Password?</a>\n</form>\n<hr>\n<!-- log out hyperlink section -->\n<h4>You\'re already logged in</h4>\nDo you wish to <a href=\"[+action+]\" class=\"button\">[+logouttext+]</a>?\n<hr>\n<!-- Password reminder form section -->\n<form name=\"loginreminder\" method=\"post\" action=\"[+action+]\">\n	<input type=\"hidden\" name=\"txtpwdrem\" value=\"0\">\n	<h4>It happens to everyone...</h4>\n	<div class=\"form-group\">\n		<label for=\"txtwebemail\">Enter the email address of your account to reset your password:</label>\n		<input type=\"text\" name=\"txtwebemail\" id=\"txtwebemail\">\n	</div>\n	<label>To return to the login form, press the cancel button.</label>\n	<input type=\"submit\" value=\"Submit\" name=\"cmdweblogin\" class=\"btn btn-primary\">\n	<input type=\"reset\" value=\"Cancel\" name=\"cmdcancel\" onclick=\"webLoginShowForm(1);\" class=\"btn btn-default\">\n</form>\n', 0),
(9, 'HEAD', 'head', 2, 'none', 15, 0, '<head>\r\n    <meta charset=[(modx_charset)]>\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n	<meta name=\"description\" content=\"[*description*]\"/>\r\n    <title>[*pagetitle*] | [(site_name)]</title>\r\n    <link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\">\r\n    <link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\">\r\n    <!-- Bootstrap -->\r\n    <link href=\"/assets/templates/basic/css/bootstrap.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/basic/css/animate.min.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/basic/css/jquery.fancybox.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/basic/css/owl.carousel.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/basic/css/bootstrap-select.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/basic/css/font-awesome.css\" rel=\"stylesheet\">\r\n    <link href=\"/assets/templates/basic/css/style.css\" rel=\"stylesheet\">\r\n    <noscript><link href=\"/assets/templates/basic/css/without-js.css\" rel=\"stylesheet\"></noscript>\r\n    <script src=\"/assets/templates/basic/js/jquery-2.1.1.min.js\"></script>\r\n    <script src=\"/assets/templates/basic/js/bootstrap.min.js\"></script>\r\n    <script src=\"/assets/templates/basic/js/jquery.fancybox.pack.js\"></script>\r\n    <script src=\"/assets/templates/basic/js/jquery.appear.js\"></script>\r\n    <script src=\"/assets/templates/basic/js/owl.carousel.min.js\"></script>\r\n    <script src=\"/assets/templates/basic/js/bootstrap-select.js\"></script>\r\n    <script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp\"></script>\r\n    <script src=\"/assets/templates/basic/js/main.js\"></script>\r\n    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->\r\n    <!--[if lt IE 9]>\r\n      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n    <![endif]-->\r\n	<base href=\"[(site_url)]\" />\r\n	[!SendMail!]\r\n  </head>', 0),
(10, 'HEADER', 'header', 2, 'none', 15, 0, '      <header id=\"header\">\r\n        <div class=\"container\">\r\n          <div class=\"col-md-3 col-sm-4 col-xs-12 animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n            <a href=\"[~1~]\" class=\"logo\"><img src=\"/assets/templates/basic/images/logo.png\" alt=\"\" /></a>\r\n          </div>\r\n          <div class=\"col-md-9 col-sm-8 col-xs-12\">\r\n            <div class=\"right_head animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\">\r\n              <div class=\"dropdown\">\r\n                <button id=\"dLabel\" class=\"btn btn_lang dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                  <span class=\"filter-option pull-left\">Русский</span>\r\n                  <span class=\"caret\"></span>\r\n                </button>\r\n                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dLabel\">\r\n                  <li><a href=\"#\">Русский</a></li>\r\n                  <li><a href=\"#\">Английский</a></li>\r\n                </ul>\r\n              </div>\r\n              <span class=\"phone\">+38 (044) 361 79 11</span>\r\n              <a href=\"#call_you\" data-toggle=\"modal\" class=\"btn btn_transp\">перезвонить нам</a>\r\n            </div>\r\n            <nav class=\"main_menu navbar navbar-default animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\" role=\"navigation\">\r\n              <!-- Brand and toggle get grouped for better mobile display -->\r\n              <div class=\"navbar-header\">\r\n                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n                  <span class=\"sr-only\">Toggle navigation</span>\r\n                  <span class=\"icon-bar\"></span>\r\n                  <span class=\"icon-bar\"></span>\r\n                  <span class=\"icon-bar\"></span>\r\n                </button>\r\n                <span class=\"navbar-brand\" href=\"#\">Меню</span>\r\n              </div>\r\n			<!-- Collect the nav links, forms, and other content for toggling -->\r\n              {{MAIN_MENU}}\r\n			<!-- /.navbar-collapse -->\r\n            </nav>\r\n          </div>\r\n        </div>\r\n      </header>', 0),
(18, 'PAGETITLE', 'Page navigation', 2, 'none', 17, 0, '<section class=\"pagetitle\">\r\n    <div class=\"container\">\r\n        <div class=\"col-sm-12\">\r\n            <ul class=\"nav animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n                <li class=\"active\"><a href=\"#about\" class=\"title anchor\">О агентстве</a></li>\r\n                <li><a href=\"#mission\" class=\"title anchor\">Миссия и цели</a></li>\r\n                <li><a href=\"#benefits\" class=\"title anchor\">Преимущества</a></li>\r\n                <li><a href=\"#news\" class=\"title anchor\">Новости</a></li>\r\n            </ul>\r\n        </div>\r\n    </div>\r\n</section>', 0),
(17, 'MAIN_MENU', 'Main menu', 2, 'none', 15, 0, '<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n	[!Wayfinder? &outerClass=`nav navbar-nav navbar-right` &startId=`0` !]               \r\n</div>', 0),
(25, 'ABOUT_NEWS', 'News on About page', 2, 'none', 17, 0, '<div id=\"news\" class=\"col-sm-12 news_block\">\r\n    <div class=\"col-sm-12\">\r\n        <strong class=\"heading\">Новости</strong>\r\n    </div>\r\n    <ul class=\"news_list\">\r\n		[*content*]        \r\n    </ul>\r\n    <a href=\"[~5~]\" class=\"btn btn_transp details\">Все новости</a>\r\n</div>', 0),
(11, 'SLIDER', 'Slider', 2, 'none', 14, 0, '<section class=\"slider\">\r\n        <div id=\"carousel-fade\" class=\"carousel slide carousel_fade\" data-ride=\"carousel\">\r\n          <div class=\"carousel-inner\" role=\"listbox\">\r\n            <div class=\"item active\">\r\n              <img src=\"/assets/templates/basic/assets/images/slider.png\" alt=\"First slide\">\r\n              <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n                <p><span>Themplate font</span> подбор<br/>\r\n                персонала</p>\r\n                <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n              </div>\r\n            </div>\r\n            <div class=\"item\">\r\n              <img src=\"/assets/templates/basic/assets/images/slider.png\" alt=\"Second slide\">\r\n              <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n                <p><span>Быстрый</span> подбор<br/>\r\n                персонала</p>\r\n                <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n              </div>\r\n            </div>\r\n            <div class=\"item\">\r\n              <img src=\"/assets/templates/basic/assets/images/slider.png\" alt=\"Third slide\">\r\n              <div class=\"carousel-caption col-md-6 col-sm-5 col-xs-12 animated\" data-animation=\"bounceIn\" data-animation-delay=\"800\">\r\n                <p><span>Быстрый</span> подбор<br/>\r\n                персонала</p>\r\n                <a href=\"#\" class=\"btn btn_green\">Заполнить техническое задание</a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div><!-- /.carousel -->\r\n      </section>', 0),
(12, 'SERVICES', 'Services', 2, 'none', 14, 0, '<section class=\"services animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n        <div class=\"container\">\r\n          <div class=\"row\">\r\n            <div class=\"col-sm-12\">\r\n              <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n                <a href=\"#\">\r\n                  <span class=\"icon_item\">\r\n                    <img class=\"img\" src=\"/assets/templates/basic/assets/images/icon1.png\" alt=\"\" />\r\n                    <img class=\"hover_img\" src=\"/assets/templates/basic/assets/images/icon1h.png\" alt=\"\" />\r\n                  </span>\r\n                  <span class=\"title\">массовый подбор</span>\r\n                  <p>Кадровое агентство «Vasko-personal» оказывает услуги по подбору квалифицированных кадров для развития направлений</p>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n                <a href=\"#\">\r\n                  <span class=\"icon_item\">\r\n                    <img class=\"img\" src=\"/assets/templates/basic/assets/images/icon2.png\" alt=\"\" />\r\n                    <img class=\"hover_img\" src=\"/assets/templates/basic/assets/images/icon2h.png\" alt=\"\" />\r\n                  </span>\r\n                  <span class=\"title\">Рекрутинг</span>\r\n                  <p>Кадровое агентство «Vasko-personal» оказывает услуги по подбору квалифицированных кадров для развития направлений</p>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n                <a href=\"#\">\r\n                  <span class=\"icon_item\">\r\n                    <img class=\"img\" src=\"/assets/templates/basic/assets/images/icon3.png\" alt=\"\" />\r\n                    <img class=\"hover_img\" src=\"/assets/templates/basic/assets/images/icon3h.png\" alt=\"\" />\r\n                  </span>\r\n                  <span class=\"title\">Поиск в регионах</span>\r\n                  <p>Настоящие профессионалы помогут подобрать специалистов высокой квалификации для работы в бухгалтерии</p>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-3 col-sm-6 col-xs-6 servis_item\">\r\n                <a href=\"#\">\r\n                  <span class=\"icon_item\">\r\n                    <img class=\"img\" src=\"/assets/templates/basic/assets/images/icon4.png\" alt=\"\" />\r\n                    <img class=\"hover_img\" src=\"/assets/templates/basic/assets/images/icon4h.png\" alt=\"\" />\r\n                  </span>\r\n                  <span class=\"title\">Executive search</span>\r\n                  <p>Настоящие профессионалы помогут подобрать специалистов высокой квалификации для работы </p>\r\n                </a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\"col-sm-12\">\r\n            <a href=\"#\" class=\"btn btn_grey\">Заполнить техническое задание</a>\r\n          </div>\r\n        </div>\r\n      </section>', 0),
(13, 'ABOUT_INDEX', 'About index', 2, 'none', 14, 0, '<section class=\"about_index\">\r\n        <div class=\"container\">\r\n            <div class=\"col-md-8 col-sm-12 col-xs-12 about_item animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">\r\n              <div class=\"row\">\r\n                <div class=\"col-sm-12\">\r\n                  <strong class=\"heading\">о компании</strong>\r\n                </div>\r\n                <div class=\"col-md-3 col-sm-3 col-xs-3 img_hold\">\r\n                  <img src=\"/assets/templates/basic/assets/images/about_img.png\" alt=\"\" />\r\n                </div>\r\n                <div class=\"col-md-9 col-sm-9 col-xs-9\">\r\n                  <div class=\"content\">\r\n                    <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. Такой подбор существенно экономит ваше время, поскольку вы встречаетесь только с проверенными и надежными специалистами.</p>\r\n<div class=\"quote\">Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n                  </div>\r\n                  <a href=\"[~3~]\" class=\"btn btn_transp\">подробнее</a>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4 col-sm-12 col-xs-12 news_item animated\" data-animation=\"fadeInLeft\" data-animation-delay=\"600\">\r\n              <strong class=\"heading\">Последние новости</strong>\r\n                <!-- .carousel -->\r\n                {{CAROUSEL}}\r\n                <!-- /.carousel -->\r\n              <a href=\"[~5~]\" class=\"btn btn_transp\">Все новости</a>\r\n            </div>\r\n        </div>\r\n      </section> ', 0),
(43, 'CAROUSEL_NEWS', '', 2, 'none', 14, 0, '<a href=\"[~[*id*]~]\" class=\"item\">\r\n     [+img_newsline+]\r\n    <div class=\"info_news\">\r\n        <span class=\"date\">[+date+]</span>\r\n        <span class=\"title_new\">[+pagetitle+]</span>\r\n        <p>[+introtext+]</p>\r\n    </div>\r\n</a>', 0),
(33, 'NEWS_RIGHT_BLOCK', 'Right block with latest news', 2, 'none', 19, 0, '<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n    <strong class=\"heading\">Последние новости</strong>\r\n    <ul class=\"news_list_sidebar\">		\r\n        {{RIGHT_COL}}\r\n    </ul>\r\n    <a href=\"[~5~]\" class=\"btn btn_transp details\">Все новости</a>\r\n</div>', 0),
(14, 'BENEFITS', 'Benefits', 2, 'none', 14, 0, '<section class=\"benefits animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n        <div class=\"container\">\r\n          <div class=\"col-sm-12\">\r\n            <strong class=\"title_section\">Наш подход</strong>\r\n          </div>\r\n          <div class=\"row\">\r\n            {{BENEFITS_BLOCK_LIST}}\r\n          </div>\r\n          	{{BENEFITS_BLOCK_FOOTER}}\r\n        </div>\r\n      </section> ', 0),
(23, 'BENEFITS_BLOCK_FOOTER', 'Part of BENEFITS block', 2, 'none', 15, 0, '<div class=\"col-sm-12 content\">\r\n	<p>Кадровое агентство в Киеве «Vasko-personal» — один из лидеров в своей отралси. Основа нашего успеха заключается<br/>в четкой концентрации на едином направлении - рекрутинге.</p>\r\n</div>', 0),
(45, 'ABOUT_NEWS_PAGE', '', 2, 'none', 17, 0, '<li class=\"item col-md-4 col-sm-4 col-xs-12\">\r\n    <a href=\"[~[*id*]~]\">\r\n        [+img_newsline+]\r\n        <div class=\"info_news\">\r\n            <span class=\"date\">[+date+]</span>\r\n            <span class=\"title_new\">[+pagetitle+]</span>\r\n            <p>[+introtext+]</p>\r\n        </div>\r\n    </a>\r\n</li>', 0),
(15, 'FOOTER', 'Footer', 2, 'none', 15, 0, ' <footer id=\"footer\">\r\n      <div class=\"container\">\r\n        <div class=\"row\">\r\n          <div class=\"col-sm-12\">\r\n            <div class=\"col-md-3 col-sm-6 col-sx-12\">\r\n              <div class=\"foot_block\">\r\n                <span class=\"title\">Vasko personal<em class=\"fa fa-plus js_open\"></em></span>\r\n                <ul class=\"foot_menu\">\r\n                  <li><a href=\"#\">Рекрутинговое агентство</a></li>\r\n                  <li><a href=\"#\">Наш подход</a></li>\r\n                  <li><a href=\"#\">Отзывы</a></li>\r\n                  <li><a href=\"#\">Клиентам</a></li>\r\n                  <li><a href=\"#\">Соискателям</a></li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-3 col-sm-6 col-sx-12\">\r\n              <div class=\"foot_block\">\r\n                <span class=\"title\">Наши услуги<em class=\"fa fa-plus js_open\"></em></span>\r\n                <ul class=\"foot_menu\">\r\n                  <li><a href=\"#\">Заполнить анкету соискателя</a></li>\r\n                  <li><a href=\"#\">Заполнить техническое задание на подбор специалистов</a></li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-6 col-sm-12 col-sx-12\">\r\n              <div class=\"foot_block contact_block\">\r\n                <span class=\"title\">Контакты<em class=\"fa fa-plus js_open\"></em></span>\r\n                <ul class=\"foot_menu col-md-6 col-sm-6 col-sx-12\">\r\n                  <li>Агентство \"Vasko-personal\"</li>\r\n                  <li>г. Киев, ул. Старокиевская, 10Г</li>\r\n                  <li>офисный центр \"Вектор\"</li>\r\n                  <li>корп. А, офис 505</li>\r\n                  <li>ПН - ПТ: 8:00 - 18:00</li>\r\n                </ul>\r\n                <ul class=\"foot_menu col-md-6 col-sm-6 col-sx-12\">\r\n                  <li><span class=\"icon_phone\"></span>+38 (044) 361-79-11</li>\r\n                  <li><span class=\"icon_phone\"></span>+38 (067) 981-70-56</li>\r\n                  <li><span class=\"fa fa-paper-plane\"></span><a href=\"mailto:info@personal-plus.com.ua\">info@personal-plus.com.ua</a></li>\r\n                  <li><span class=\"fa fa-skype\"></span>personal-plus.victoria</li>\r\n                  <li><a href=\"#\" class=\"btn btn_green\">online оплата</a></li>\r\n                  <li class=\"socilas\"><a href=\"#\" class=\"fa fa-vk\"></a><a href=\"#\" class=\"fa fa-facebook\"></a><a href=\"#\" class=\"fa fa-twitter\"></a></li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"row copy\">\r\n          <div class=\"col-sm-12\">\r\n            <div class=\"col-md-6 col-sm-6 col-sx-12\">\r\n              <p>Vasko personal &copy; 2014</p>\r\n            </div>\r\n            <div class=\"col-md-6 col-sm-6 col-sx-12 art\">\r\n              <p>Создание и поддержка сайта — <a href=\"http://artjoker.ua\" target=\"_blank\">Artjoker</a></p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </footer>', 0),
(16, 'MODAL', 'Modal index page', 2, 'none', 15, 0, '<div id=\"thank\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\r\n    <div class=\"modal-dialog\">\r\n        <div class=\"modal-content\">\r\n            <div class=\"modal-header\">\r\n                <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i></button>\r\n                <span class=\"modal-title\">Спасибо!</span>\r\n            </div>\r\n            <div class=\"modal-body\">\r\n                <strong class=\"title\">Ваша заявка успешно отправлена</strong>\r\n                <p>Наши представители связутся с вами в ближайшее время</p>\r\n                <span class=\"btn btn_green\" data-dismiss=\"modal\">OK</span>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div id=\"call_you\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\">\r\n    <div class=\"modal-dialog\">\r\n        <div class=\"modal-content\">\r\n            <div class=\"modal-header\">\r\n                <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i></button>\r\n                <span class=\"modal-title\">Вам перезвонить?</span>\r\n            </div>\r\n            <div class=\"modal-body\">\r\n                <p>Оставьте свой номер телефона, и мы Вам перезвоним</p>\r\n                <div class=\"form\">\r\n                    <form id=\'modal\' class=\"contact js_validate mod_form\" method=\"post\" action=\"#\">\r\n                        <div class=\"form-group col-xs-12\">\r\n                            <label for=\"name\" class=\"label\">Имя*</label>\r\n                            <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" required />\r\n                            <span class=\"success form-control-feedback\"></span>\r\n                            <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n                        </div>\r\n                        <div class=\"form-group col-xs-12\">\r\n                            <label for=\"phone\" class=\"label\">Телефон*</label>\r\n                            <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"phone\" required data-validate=\"phone\" />\r\n                            <span class=\"success form-control-feedback\"></span>\r\n                            <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n                        </div>\r\n                        <div class=\"form-group col-xs-12\">  \r\n                            <button class=\"btn btn_green\" type=\"submit\" name=\"submit\" id=\"\">Отправить</button>\r\n                        </div>\r\n                    </form>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 0),
(19, 'ABOUT_PAGE_CONTENT', 'About page content', 2, 'none', 17, 0, '<div class=\"main wrap_about\">\r\n    <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n        <div class=\"row\">\r\n            <!--about start-->\r\n				{{ABOUT}}\r\n            <!--about end-->\r\n            <!--mission start-->\r\n				{{MISSION}}\r\n          	<!--mission end-->\r\n            <!--benefits start-->\r\n           		{{BENEFITS_ABOUT_PAGE}}\r\n			<!--benefits end-->\r\n            <!--news start-->\r\n				{{ABOUT_NEWS}}\r\n            <!--news end-->\r\n        </div>\r\n    </div>\r\n</div>', 0),
(26, 'CONTACT_PAGETITLE', '', 2, 'none', 16, 0, '<section class=\"pagetitle\">\r\n    <div class=\"container\">\r\n        <div class=\"col-sm-12\">\r\n            <strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">Контакты</strong>\r\n        </div>\r\n    </div>\r\n</section>', 0),
(27, 'MAP', 'Map on Contact page', 2, 'none', 16, 0, '<section class=\"map animated\" data-animation=\"fadeIn\" data-animation-delay=\"600\">\r\n    <div id=\"map-canvas\"></div>\r\n    <div id=\"address_content\">\r\n        <div class=\"content\">\r\n            <strong>Агентство \"Vasko-personal\"</strong>\r\n            <p>г. Киев, ул. Старокиевская, 10Г</br>\r\n                офисный центр \"Вектор\"</br>\r\n                корп. А, офис 505</br>\r\n                ПН - ПТ: 8:00 - 18:00</p>\r\n        </div>\r\n    </div>\r\n</section>', 0),
(28, 'CONTACT_MAIN', '', 2, 'none', 16, 0, '<div class=\"main contacts\">\r\n    <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n        {{ADDRESS}}\r\n        {{CONTACT_FORM}}\r\n    </div>\r\n</div>', 0),
(31, 'NEWS_PAGE_TITLE', 'Title of News page', 2, 'none', 19, 0, '<section class=\"pagetitle\">\r\n    <div class=\"container\">\r\n        <div class=\"col-sm-12\">\r\n            <strong class=\"title animated\" data-animation=\"fadeInRight\" data-animation-delay=\"600\">Новости</strong>\r\n        </div>\r\n    </div>\r\n</section>', 0),
(32, 'WARNING', '', 2, 'none', 15, 0, '<noscript><div class=\"error-js\"><strong>Для полной функциональности этого сайта необходимо включить JavaScript.</strong> Вот <a href=\"http://artjoker.ua/ru/how-to-enable-javascript/\" target=\"_blank\">инструкции</a>, как включить JavaScript в вашем браузере.</div></noscript>\r\n        <!--[if lte IE 8]>\r\n          <p class=\"off-js\">Ваш браузер устарел, пожалуйста <b>обновите</b> его.</p>\r\n        <![endif]-->', 0),
(24, 'BENEFITS_ABOUT_PAGE', 'Benefits on About page', 2, 'none', 17, 0, '<div id=\"benefits\" class=\"col-sm-12\">\r\n	<div class=\"col-sm-12\">\r\n		<strong class=\"heading\">Преимущества</strong>\r\n	</div>\r\n{{BENEFITS_BLOCK_LIST}}\r\n{{BENEFITS_BLOCK_FOOTER}}\r\n</div> ', 0),
(46, 'RIGHT_COL', '', 2, 'none', 19, 0, '[[Ditto? &parents=`5` &tpl=`RIGHT_COL_NEWS_PAGE` &display=`2`]]', 0),
(47, 'RIGHT_COL_NEWS_PAGE', '', 2, 'none', 19, 0, '<li class=\"item\">\r\n    [+img_newsline+]\r\n    <div class=\"info_news\">\r\n        <span class=\"date\">[+date+]</span>\r\n        <a href=\"[~[*id*]~]\" class=\"title_new\">[+pagetitle+]</a>\r\n        <p>[+introtext+]</p>\r\n    </div>\r\n</li>', 0),
(22, 'BENEFITS_BLOCK_LIST', 'Part of BENEFITS block with list of advantages', 2, 'none', 15, 0, '<div class=\"col-sm-12 benefits_block\">\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n        <span class=\"icon_item\"><img src=\"/assets/templates/basic/assets/images/icon5.png\" alt=\"\" /></span>\r\n        <span class=\"title\">Экономия времени</span>\r\n    </div>\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n        <span class=\"icon_item\"><img src=\"/assets/templates/basic/assets/images/icon6.png\" alt=\"\" /></span>\r\n        <span class=\"title\">гарантия</span>\r\n    </div>\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n        <span class=\"icon_item\"><img src=\"/assets/templates/basic/assets/images/icon7.png\" alt=\"\" /></span>\r\n        <span class=\"title\">Профессионализм</span>\r\n    </div>\r\n    <div class=\"col-md-3 col-sm-6 col-xs-6 benefit_item\">\r\n        <span class=\"icon_item\"><img src=\"/assets/templates/basic/assets/images/icon8.png\" alt=\"\" /></span>\r\n        <span class=\"title\">экономия финансов</span>\r\n    </div>\r\n</div>', 0),
(21, 'MISSION', 'Info about company mission', 2, 'none', 17, 0, '<div id=\"mission\" class=\"col-sm-12\">\r\n    <div class=\"col-sm-12\">\r\n        <strong class=\"heading\">Миссия и цели</strong>\r\n    </div>\r\n    <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n        <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти. </p>\r\n        <p>И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти.</p>\r\n    </div>\r\n    <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n        <ul class=\"purp\">\r\n            <li><span>ЭКОНОМИЯ ВРЕМЕНИ.</span>\r\n                Собеседования проводятся только с отобранными,\r\n                по Вашим заявкам, соискателями.</li>\r\n            <li><span>ГАРАНТИЯ</span>\r\n                закрытия вакансии в требуемый Вами срок.</li>\r\n            <li><span>КАЧЕСТВО.</span>\r\n                Подбором кандидатов занимаются опытные специалисты.</li>\r\n            <li><span>ЭКОНОМИЯ ФИНАНСОВ</span>\r\n                на размещении вакансий в специализированных изданиях и на сайтах.</li>\r\n        </ul>\r\n    </div>\r\n</div>', 0),
(20, 'ABOUT', 'Info about company on About page', 2, 'none', 17, 0, '<div id=\"about\" class=\"col-sm-12\">\r\n    <div class=\"col-md-6 col-sm-6 col-xs-12 content\">\r\n        <strong class=\"heading\">Кадровое агентство Vasko-personal</strong>\r\n        <p>Доверяя нам подбор сотрудников, вы будете избавлены от проведения тестирований и собеседований. Все соискатели проходят качественный отбор, в течение которого оценивается их степень соответствия требованиям вашей фирмы. И огромного количества претендентов отбираются наиболее подходящие кандидатуры, которые потенциально могли бы вам подойти.</p>\r\n        <div class=\"quote\"> Поскольку основной целью агентства является долгосрочное сотрудничество с клиентами, мы допускаем применение различных видов оплат: с авансовыми платежами и без них, с применением гибких систем ценообразования.</div>\r\n    </div>\r\n    <div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n        <div class=\"owl-carousel owl-theme\">\r\n            <div class=\"item\"><img src=\"/assets/templates/basic/assets/images/slider1.jpg\" alt=\"\"></div>\r\n            <div class=\"item\"><img src=\"/assets/templates/basic/assets/images/slider1.jpg\" alt=\"\"></div>\r\n            <div class=\"item\"><img src=\"/assets/templates/basic/assets/images/slider1.jpg\" alt=\"\"></div>\r\n        </div>\r\n    </div>\r\n</div>', 0),
(30, 'ADDRESS', 'Address on Contact page', 2, 'none', 16, 0, '<div class=\"contact_block col-md-6 col-sm-12 col-xs-12\">\r\n    <ul class=\"list col-md-6 col-sm-6 col-xs-12\">\r\n        <li>Агентство \"Vasko-personal\"</li>\r\n        <li>г. Киев, ул. Старокиевская, 10Г</li>\r\n        <li>офисный центр \"Вектор\"</li>\r\n        <li>корп. А, офис 505</li>\r\n        <li>ПН - ПТ: 8:00 - 18:00</li>\r\n    </ul>\r\n    <ul class=\"list col-md-6 col-sm-6 col-xs-12\">\r\n        <li><span class=\"icon_phone\"></span>+38 (044) 361-79-11</li>\r\n        <li><span class=\"icon_phone\"></span>+38 (067) 981-70-56</li>\r\n        <li><span class=\"fa fa-paper-plane\"></span><a href=\"mailto:info@personal-plus.com.ua\">info@personal-plus.com.ua</a></li>\r\n        <li><span class=\"fa fa-skype\"></span>personal-plus.victoria</li>\r\n    </ul>\r\n</div>', 0),
(29, 'CONTACT_FORM', 'Contact form on Contact page', 2, 'none', 16, 0, '<div class=\"feedback_block form\">\r\n    <div class=\"col-sm-12\">\r\n        <strong class=\"heading\">Обратная связь</strong>\r\n    </div>\r\n    <form id=\"contact-form\" class=\"contact js_validate con_form\" method=\"post\" action=\"#\">\r\n        <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n            <label for=\"name\" class=\"label\">Имя*</label>\r\n            <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" required />\r\n            <span class=\"success form-control-feedback\"></span>\r\n            <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n        </div>\r\n        <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n            <label for=\"email\" class=\"label\">Email*</label>\r\n            <input type=\"text\" class=\"form-control\" name=\"email\" id=\"email\" required data-validate=\"email\" />\r\n            <span class=\"success form-control-feedback\"></span>\r\n            <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n        </div>\r\n        <div class=\"form-group col-md-4 col-sm-4 col-xs-12\">\r\n            <label for=\"phone\" class=\"label\">Телефон*</label>\r\n            <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"phone\" required data-validate=\"phone\" />\r\n            <span class=\"success form-control-feedback\"></span>\r\n            <div class=\"error_text\"><span>(<em>Пример: +380576588978</em>)</span><i class=\"form-control-feedback\"></i></div>\r\n        </div>\r\n        <div class=\"form-group col-xs-12\">\r\n            <label for=\"message\" class=\"label\">Сообщение*</label>\r\n            <textarea class=\"form-control message\" rows=\"8\" id=\"message\" name=\"message\" required ></textarea>\r\n            <span class=\"success form-control-feedback\"></span>\r\n            <div class=\"error_text\"><i class=\"form-control-feedback\"></i></div>\r\n        </div>\r\n        <div class=\"form-group col-xs-12\">\r\n            <button class=\"btn btn_green\" type=\"submit\" name=\"submit\" id=\"\">Отправить</button>\r\n        </div>\r\n    </form>\r\n</div>', 0),
(34, 'PAGINATION_PREV', 'Pagination block', 2, 'none', 5, 0, '<li><a href=\"[+url+]\" class=\'prev\'>[+lang:previous+]</a></li>', 0),
(37, 'PAGINATION_NEXT', '', 2, 'none', 5, 0, '<li><a href=\"[+url+]\" class=\'next\'>[+lang:next+]</a></li>', 0),
(38, 'PAGINATION_CURRENT', '', 2, 'none', 5, 0, '<li><span class=\'\'>[+page+]</span></li>', 0),
(39, 'PAGINATION_PAGE', '', 2, 'none', 5, 0, '<li><a href=\'[+url+]\'>[+page+]</a></li>', 0),
(41, 'PAGINATION_PREV_OFF', '', 2, 'none', 5, 0, '<li><span class=\'\'>[+lang:previous+]</span></li>', 0),
(40, 'PAGINATION_NEXT_OFF', '', 2, 'none', 5, 0, '<li><span class=\'\'>[+lang:next+]</span></li>', 0),
(35, 'NEWS_ARTICLE', 'Article', 2, 'none', 19, 0, '<div class=\"one_news\">	\r\n<a href=\"[~[+id+]~]\" title=”[+pagetitle+]”><strong class=\"title_block\">[+pagetitle+]</strong></a>\r\n	<div>[+img_newsline+]</div>\r\n<div class=\"date\">[+date+]</div>	\r\n<div class=\"content\">[+introtext+]</div>\r\n</div>\r\n', 0),
(36, 'NEWS_LIST', '', 2, 'none', 19, 0, '<div>[[Ditto? &id=`nav` &tpl=`NEWS_ARTICLE` &dateSource=`pub_date` &dateFormat=`%d.%m.%Y` &paginate=`1` &display=`3` &paginateAlwaysShowLinks=`1` &tplPaginatePage=`PAGINATION_PAGE` &tplPaginatePrevious=`PAGINATION_PREV`     &tplPaginateNext=`PAGINATION_NEXT` &tplPaginateCurrentPage=`PAGINATION_CURRENT` &tplPaginateNextOff=`PAGINATION_NEXT_OFF`     &tplPaginatePreviousOff=`PAGINATION_PREV_OFF`]]</div>\r\n<div><nav class=\"pages_block\"><ul class=\"pagination\">[+nav_previous+][+nav_pages+][+nav_next+]</ul></nav></div>', 0),
(42, 'CAROUSEL', '', 2, 'none', 14, 0, '<div class=\"owl-carousel-news owl-theme\">[*content*]</div>', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_keywords`
--

CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL,
  `keyword` varchar(40) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Site keyword list';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_metatags`
--

CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `tag` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Site meta tags';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_modules`
--

CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8_estonian_ci,
  `modulecode` mediumtext COLLATE utf8_estonian_ci COMMENT 'module boot up code'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Site Modules';

--
-- Дамп данных таблицы `modx_site_modules`
--

INSERT INTO `modx_site_modules` (`id`, `name`, `description`, `editor_type`, `disabled`, `category`, `wrap`, `locked`, `icon`, `enable_resource`, `resourcefile`, `createdon`, `editedon`, `guid`, `enable_sharedparams`, `properties`, `modulecode`) VALUES
(1, 'Doc Manager', '<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions', 0, 0, 3, 0, 0, '', 0, '', 0, 0, 'docman435243542tf542t5t', 1, '', ' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}'),
(2, 'Extras', '<strong>0.1.3</strong> first repository for MODX EVO', 0, 0, 3, 0, 0, '', 0, '', 0, 0, 'store435243542tf542t5t', 1, '', ' \r\n/**\r\n * Extras\r\n * \r\n * first repository for MODX EVO\r\n * \r\n * @category	module\r\n * @version 	0.1.3\r\n * @internal	@properties\r\n * @internal	@guid store435243542tf542t5t	\r\n * @internal	@shareparams 1\r\n * @internal	@dependencies requires files located at /assets/modules/store/\r\n * @internal	@modx_category Manager and Admin\r\n * @internal    @installset base, sample\r\n * @lastupdate  25/11/2016\r\n */\r\n\r\n//AUTHORS: Bumkaka & Dmi3yy \r\ninclude_once(\'../assets/modules/store/core.php\');');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_module_access`
--

CREATE TABLE `modx_site_module_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Module users group access permission';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_module_depobj`
--

CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Module Dependencies';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext COLLATE utf8_estonian_ci,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8_estonian_ci COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains the site plugins.';

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`) VALUES
(1, 'CodeMirror', '<strong>1.4</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12', 0, 3, 0, '\r\n/**\r\n * CodeMirror\r\n *\r\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.12\r\n *\r\n * @category    plugin\r\n * @version     1.4\r\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     modx\r\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\r\n * @internal    @installset base\r\n * @reportissues https://github.com/modxcms/evolution\r\n * @documentation Official docs https://codemirror.net/doc/manual.html\r\n * @author      hansek from http://www.modxcms.cz\r\n * @author      update Mihanik71\r\n * @author      update Deesen\r\n * @lastupdate  11/04/2016\r\n */\r\n\r\n$_CM_BASE = \'assets/plugins/codemirror/\';\r\n\r\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\r\n\r\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');', 0, '&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250', 0, ''),
(2, 'ElementsInTree', '<strong>1.5.7</strong> Get access to all Elements and Modules inside Manager sidebar', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n', 0, '&tabTreeTitle=Tree Tab Title;text;Site Tree;;Custom title of Site Tree tab. &useIcons=Use icons in tabs;list;yes,no;yes;;Icons available in MODX version 1.2 or newer. &treeButtonsInTab=Tree Buttons in tab;list;yes,no;yes;;Move Tree Buttons into Site Tree tab. &unifyFrames=Unify Frames;list;yes,no;yes;;Unify Tree and Main frame style. Right now supports MODxRE2 theme only.', 0, ''),
(3, 'FileSource', '<strong>0.1</strong> Save snippet and plugins to file', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';', 0, '', 0, ''),
(4, 'Forgot Manager Login', '<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';', 0, '', 0, ''),
(5, 'ManagerManager', '<strong>0.6.2</strong> Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.', 0, 3, 0, '\n/**\n * ManagerManager\n *\n * Customize the MODX Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.2\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  06/03/2016\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');', 0, '&remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules', 0, ''),
(6, 'Quick Manager+', '<strong>1.5.6</strong> Enables QuickManager+ front end content editing support', 0, 3, 0, '\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv\n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr\n * @lastupdate  31/03/2014\n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n}\n', 0, '&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv', 1, ''),
(7, 'Search Highlight', '<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results', 0, 4, 0, '/**\n * Search Highlight\n * \n * Used with AjaxSearch to show search terms highlighted on page linked from search results\n *\n * @category 	plugin\n * @version 	1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@events OnWebPagePrerender \n * @internal	@modx_category Search\n * @internal    @legacy_names Search Highlighting\n * @internal    @installset base, sample\n * @internal    @disabled 1\n */\n \n /*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}', 0, '', 1, ''),
(8, 'TinyMCE4', '<strong>4.3.7.2</strong> Javascript WYSIWYG editor', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/tinymce4/plugin.tinymce.php\';', 0, '&styleFormats=Custom Style Formats;textarea;Title,cssClass|Title2,cssClass &customParams=Custom Parameters <b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled', 0, ''),
(9, 'TransAlias', '<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides', 0, 3, 0, 'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';', 0, '{\r\n  \"table_name\": [\r\n    {\r\n      \"label\": \"Trans table\",\r\n      \"type\": \"list\",\r\n      \"value\": \"russian\",\r\n      \"options\": \"common,russian,dutch,german,czech,utf8,utf8lowercase\",\r\n      \"default\": \"utf8lowercase\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"char_restrict\": [\r\n    {\r\n      \"label\": \"Restrict alias to\",\r\n      \"type\": \"list\",\r\n      \"value\": \"legal characters\",\r\n      \"options\": \"lowercase alphanumeric,alphanumeric,legal characters\",\r\n      \"default\": \"legal characters\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"remove_periods\": [\r\n    {\r\n      \"label\": \"Remove Periods\",\r\n      \"type\": \"list\",\r\n      \"value\": \"No\",\r\n      \"options\": \"Yes,No\",\r\n      \"default\": \"No\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"word_separator\": [\r\n    {\r\n      \"label\": \"Word Separator\",\r\n      \"type\": \"list\",\r\n      \"value\": \"dash\",\r\n      \"options\": \"dash,underscore,none\",\r\n      \"default\": \"dash\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"override_tv\": [\r\n    {\r\n      \"label\": \"Override TV name\",\r\n      \"type\": \"string\",\r\n      \"value\": \"\",\r\n      \"default\": \"\",\r\n      \"desc\": \"\"\r\n    }\r\n  ]\r\n}', 0, ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Links to system events';

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 23, 0),
(1, 29, 0),
(1, 35, 0),
(1, 41, 0),
(1, 47, 0),
(1, 73, 0),
(1, 88, 0),
(2, 25, 0),
(2, 27, 0),
(2, 37, 0),
(2, 39, 0),
(2, 43, 0),
(2, 45, 0),
(2, 49, 0),
(2, 51, 0),
(2, 55, 0),
(2, 57, 0),
(2, 75, 0),
(2, 77, 0),
(2, 206, 0),
(2, 210, 0),
(2, 211, 0),
(3, 34, 0),
(3, 35, 0),
(3, 36, 0),
(3, 40, 0),
(3, 41, 0),
(3, 42, 0),
(4, 80, 0),
(4, 81, 0),
(4, 93, 0),
(5, 28, 0),
(5, 29, 0),
(5, 30, 0),
(5, 31, 0),
(5, 35, 0),
(5, 53, 0),
(5, 205, 0),
(6, 3, 0),
(6, 13, 0),
(6, 28, 0),
(6, 31, 0),
(6, 92, 0),
(7, 3, 0),
(8, 3, 0),
(8, 20, 0),
(8, 85, 0),
(8, 87, 0),
(8, 88, 0),
(8, 91, 0),
(8, 92, 0),
(9, 100, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext COLLATE utf8_estonian_ci,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8_estonian_ci COMMENT 'Default Properties',
  `moduleguid` varchar(32) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains the site snippets.';

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(1, 'AjaxSearch', '<strong>1.10.1</strong> Ajax and non-Ajax search that supports results highlighting', 0, 4, 0, 'return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';', 0, '', ''),
(2, 'Breadcrumbs', '<strong>1.0.5</strong> Configurable breadcrumb page-trail navigation', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';', 0, '', ''),
(3, 'Ditto', '<strong>2.1.2</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more', 0, 6, 0, 'return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';', 0, '', ''),
(4, 'DocLister', '<strong>2.3.0</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView', 0, 6, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';', 0, '', ''),
(5, 'eForm', '<strong>1.4.8</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads', 0, 7, 0, 'return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';', 0, '', ''),
(6, 'FirstChildRedirect', '<strong>2.0</strong> Automatically redirects to the first child of a Container Resource', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';', 0, '', ''),
(7, 'if', '<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';', 0, '', ''),
(8, 'Jot', '<strong>1.1.5</strong> User comments with moderation and email subscription', 0, 6, 0, '\n/**\n * Jot\n * \n * User comments with moderation and email subscription\n *\n * @category 	snippet\n * @version 	1.1.5\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation MODX Wiki http://wiki.modxcms.com/index.php/Jot\n * @reportissues https://github.com/modxcms/evolution\n * @link 		Latest Version http://modx.com/extras/package/jot\n * @link 		Jot Demo Site http://projects.zerobarrier.nl/modx/\n * @author      Armand \"bS\" Pondman apondman@zerobarrier.nl\n * @lastupdate  09/02/2016\n */\n$jotPath = $modx->config[\'base_path\'] . \'assets/snippets/jot/\';\ninclude_once($jotPath.\'jot.class.inc.php\');\n\n$Jot = new CJot;\n$Jot->VersionCheck(\"1.1.5\");\n$Jot->Set(\"path\",$jotPath);\n$Jot->Set(\"action\", $action);\n$Jot->Set(\"postdelay\", $postdelay);\n$Jot->Set(\"docid\", $docid);\n$Jot->Set(\"tagid\", $tagid);\n$Jot->Set(\"subscribe\", $subscribe);\n$Jot->Set(\"moderated\", $moderated);\n$Jot->Set(\"captcha\", $captcha);\n$Jot->Set(\"badwords\", $badwords);\n$Jot->Set(\"bw\", $bw);\n$Jot->Set(\"sortby\", $sortby);\n$Jot->Set(\"numdir\", $numdir);\n$Jot->Set(\"customfields\", $customfields);\n$Jot->Set(\"guestname\", $guestname);\n$Jot->Set(\"canpost\", $canpost);\n$Jot->Set(\"canview\", $canview);\n$Jot->Set(\"canedit\", $canedit);\n$Jot->Set(\"canmoderate\", $canmoderate);\n$Jot->Set(\"trusted\", $trusted);\n$Jot->Set(\"pagination\", $pagination);\n$Jot->Set(\"placeholders\", $placeholders);\n$Jot->Set(\"subjectSubscribe\", $subjectSubscribe);\n$Jot->Set(\"subjectModerate\", $subjectModerate);\n$Jot->Set(\"subjectAuthor\", $subjectAuthor);\n$Jot->Set(\"notify\", $notify);\n$Jot->Set(\"notifyAuthor\", $notifyAuthor);\n$Jot->Set(\"validate\", $validate);\n$Jot->Set(\"title\", $title);\n$Jot->Set(\"authorid\", $authorid);\n$Jot->Set(\"css\", $css);\n$Jot->Set(\"cssFile\", $cssFile);\n$Jot->Set(\"cssRowAlt\", $cssRowAlt);\n$Jot->Set(\"cssRowMe\", $cssRowMe);\n$Jot->Set(\"cssRowAuthor\", $cssRowAuthor);\n$Jot->Set(\"tplForm\", $tplForm);\n$Jot->Set(\"tplComments\", $tplComments);\n$Jot->Set(\"tplModerate\", $tplModerate);\n$Jot->Set(\"tplNav\", $tplNav);\n$Jot->Set(\"tplNotify\", $tplNotify);\n$Jot->Set(\"tplNotifyModerator\", $tplNotifyModerator);\n$Jot->Set(\"tplNotifyAuthor\", $tplNotifyAuthor);\n$Jot->Set(\"tplSubscribe\", $tplSubscribe);\n$Jot->Set(\"debug\", $debug);\n$Jot->Set(\"output\", $output);\nreturn $Jot->Run();', 0, '', ''),
(9, 'MemberCheck', '<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership', 0, 8, 0, 'return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';', 0, '', ''),
(10, 'Personalize', '<strong>2.1</strong> Checks to see if web- / mgr-users are logged in or not, to display accordingly yesChunk/noChunk', 0, 8, 0, 'return require MODX_BASE_PATH.\'assets/snippets/personalize/snippet.personalize.php\';', 0, '', ''),
(11, 'phpthumb', '<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them', 0, 6, 0, 'return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\r\n', 0, '', ''),
(12, 'Reflect', '<strong>2.2</strong> Generates date-based archives using Ditto', 0, 6, 0, '\n/**\n * Reflect\n * \n * Generates date-based archives using Ditto\n *\n * @category 	snippet\n * @version 	2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @internal    @installset base, sample\n * @documentation Cheatsheet https://de.scribd.com/doc/55919355/MODx-Ditto-and-Reflect-Cheatsheet-v1-2\n * @documentation Inside snippet-code\n * @reportissues https://github.com/modxcms/evolution\n * @author      Mark Kaplan\n * @author      Ryan Thrash http://thrash.me\n * @author      netProphET, Dmi3yy, bossloper, yamamoto\n * @lastupdate  2016-11-21\n */\n\n/*\n *  Note: \n *  If Reflect is not retrieving its own documents, make sure that the\n *  Ditto call feeding it has all of the fields in it that you plan on\n *  calling in your Reflect template. Furthermore, Reflect will ONLY\n *  show what is currently in the Ditto result set.\n *  Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/reflect/snippet.reflect.php\';\n', 0, '', ''),
(13, 'UltimateParent', '<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';', 0, '', ''),
(14, 'Wayfinder', '<strong>2.0.5</strong> Completely template-driven and highly flexible menu builder', 0, 5, 0, 'return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n', 0, '', ''),
(15, 'WebChangePwd', '<strong>1.1.2</strong> Allows Web User to change their password from the front-end of the website', 0, 8, 0, '\n/**\n * WebChangePwd\n * \n * Allows Web User to change their password from the front-end of the website\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Login\n * @internal    @installset base\n * @documentation [+site_url+]assets/snippets/weblogin/docs/webchangepwd.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath  = (($modx->isBackend())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n', 0, '', ''),
(16, 'WebLogin', '<strong>1.2</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups', 0, 8, 0, 'return require MODX_BASE_PATH.\'assets/snippets/weblogin/snippet.weblogin.php\';\n', 0, '&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;', ''),
(17, 'WebSignup', '<strong>1.1.2</strong> Basic Web User account creation/signup system', 0, 8, 0, '\n/**\n * WebSignup\n * \n * Basic Web User account creation/signup system\n *\n * @category 	snippet\n * @version 	1.1.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties &tpl=Template;string;\n * @internal	@modx_category Login\n * @internal    @installset base, sample\n * @documentation [+site_url+]assets/snippets/weblogin/docs/websignup.html\n * @documentation http://www.opensourcecms.com/news/details.php?newsid=660\n * @reportissues https://github.com/modxcms/evolution\n * @author      Created By Raymond Irving April, 2005\n * @author      Ryan Thrash http://thrash.me\n * @author      Jason Coward http://opengeek.com\n * @author      Shaun McCormick, garryn, Dmi3yy\n * @lastupdate  09/02/2016\n */\n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? array_filter(array_map(\'trim\', explode(\',\', $groups))):array();\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;', 0, '&tpl=Template;string;', ''),
(18, 'dittoSplitPagination', '', 0, 5, 0, '\r\n// Snippet: splitPagination\r\n// Must be placed immediately following a Ditto call\r\n// Based on the function written by Aaron Hall, evilwalrus.org\r\nif (!function_exists(\"generatePagination\")) {\r\nfunction generatePagination($curPage, $totResults, $resultsPerPage)\r\n{\r\n        $totPages = ceil($totResults / $resultsPerPage);\r\n        \r\n        $pagesBefore = $curPage - 1;\r\n        $pagesAfter = $totPages - $curPage;\r\n        \r\n        $tabArr = array();\r\n        \r\n        if($totPages > 15) {\r\n                \r\n                if($pagesBefore > 7) {\r\n                        $tabArr = array(1,2,0);\r\n                        \r\n                        if($pagesAfter > 7)\r\n                        {\r\n                                for($i=($curPage-(4)); $i<$curPage; $i++) { $tabArr[] = $i; }\r\n                        } else {\r\n                                for($i=($totPages-11); $i<$curPage; $i++) { $tabArr[] = $i; }\r\n                        }\r\n                } else {\r\n                        for($i=1; $i<$curPage; $i++) { $tabArr[] = $i; }\r\n                }\r\n                \r\n                $tabArr[] = $curPage;\r\n                \r\n                if($pagesAfter > 7) {\r\n                        if($pagesBefore > 7) {                          \r\n                                for($i=($curPage+1); $i<=$curPage+4; $i++) { $tabArr[] = $i; }\r\n                        } else {\r\n                                for($i=($curPage+1); $i<13; $i++) { $tabArr[] = $i; }\r\n                        }\r\n                        $tabArr[] = 0;\r\n                        $tabArr[] = $totPages-1;\r\n                        $tabArr[] = $totPages;\r\n                } else {\r\n                        for($i=($curPage+1); $i<=$totPages; $i++) { $tabArr[] = $i; }\r\n                }\r\n                \r\n        } else {\r\n                for($i=1;$i<=$totPages;$i++) { $tabArr[] = $i; }\r\n        }\r\n                        \r\n        return $tabArr;\r\n        \r\n}\r\n}\r\n$id = isset($id) ? $id.\'_\' : \'\';\r\n$total = isset($total) ? $total : $modx->getPlaceholder($id.\"total\");\r\n$start = isset($start) ? $start : $modx->getPlaceholder($id.\"start\");\r\n$display = isset($display) ? $display : $modx->getPlaceholder($id.\"perPage\");\r\n$currentPage = isset($currentPage) ? $currentPage : $modx->getPlaceholder($id.\"current\");\r\n$landing = isset($tagDocumentID) ? $tagDocumentID : $modx->documentObject[\'id\'];\r\nif ($total == 0 || $display==0) {\r\n        return false;\r\n}\r\n$page = ceil($start/$display);\r\n$return = isset($return) ? $return : 0;\r\n$paginationArray = generatePagination($page, $total, $display);\r\n$ph = \"\";\r\n$cInc = $_GET[$id.\'start\'];\r\nforeach($paginationArray as $page) {\r\n        $inc = ($page-1)*$display;\r\n        if($page == 0) {\r\n                $ph .= \"...\"; // print an elipse, representing pages that aren\'t displayed\r\n        } else if ($inc==$cInc) {\r\n                $ph .= \"<span class=\\\"ditto_currentpage\\\">$page</span>\";                \r\n        } else {\r\n                $ph .= \"<a class=\\\"ditto_page\\\" href=\'\".ditto::buildURL(\"start=\".$inc,$landing,$id).\"\'>$page</a>\";\r\n        }\r\n        \r\n\r\n}\r\n$modx->setPlaceholder($id.\"splitPages\",$ph);\r\nif ($return) return $ph;\r\n', 0, '{}', ' '),
(20, 'SendMail', '', 0, 7, 0, '\r\nif (empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) || $_SERVER[\'HTTP_X_REQUESTED_WITH\'] != \'XMLHttpRequest\') {\r\n    return;\r\n}\r\nif ($_POST[\'id\'] == \'mod\') {\r\n    $subject = \'Сообщение из модального окна\';\r\n    $message = \"Контактные данные:\\n\r\n        имя: \" . $_POST[\'name\'] . \"\\n\r\n        телефон: \" . $_POST[\'phone\'];\r\n} elseif ($_POST[\'id\'] == \'con\') {\r\n    $subject = \'Сообщение из контактной формы\';\r\n    $message = \"Контактные данные:\\n\r\n        имя: \" . $_POST[\'name\'] . \"\\n\r\n        телефон: \" . $_POST[\'phone\'] . \"\\n\r\n        email: \" . $_POST[\'email\'] . \"\\n\r\n        сообщение: \" . $_POST[\'message\'];\r\n} else {\r\n	return false;\r\n}\r\nmail($modx->getConfig(\'emailsender\'), $subject, $message, \"From: test@test.com Content-type:text/plain; Charset=utf-8\\r\\n\");', 0, '{}', ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL,
  `templatename` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext COLLATE utf8_estonian_ci,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains the site templates.';

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `selectable`) VALUES
(3, 'Главная', 'Главная страница ', 0, 6, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n    {{HEAD}}\r\n    <body>\r\n        {{WARNING}}\r\n        <div id=\"page_wrapper\">\r\n            <!--page_wrapper start-->\r\n\r\n            <!--header start-->\r\n            {{HEADER}}\r\n            <!--header end-->\r\n            <!--slider start-->\r\n            {{SLIDER}}\r\n            <!--slider end-->\r\n            <!--services start-->\r\n            {{SERVICES}}\r\n            <!--services end-->\r\n            <!--about_index start-->\r\n            {{ABOUT_INDEX}}\r\n            <!--about_index end-->\r\n            <!--benefits start-->\r\n            {{BENEFITS}}\r\n            <!--benefits end-->\r\n            <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n        </div>\r\n        <!--page_wrapper end-->\r\n        <!--footer start-->\r\n        {{FOOTER}}\r\n        <!--footer end-->    \r\n        <!--modal-->\r\n        {{MODAL}}\r\n    </body>\r\n</html>', 0, 1),
(4, 'MODX startup - Bootstrap', '<strong>1.0</strong> Sample template in Bootstrap', 0, 1, '', 0, '<!DOCTYPE html>\n<html lang=\"[(lang_code)]\">\n<head>	\n	<base href=\"[(site_url)]\" />\n	<meta charset=\"[(modx_charset)]\" />\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n	<title>[*pagetitle*] / [(site_name)]</title>\n	<@IF:[*description:isntEmpty*]><meta name=\"description\" content=\"[*description*]\"><@ENDIF>\n	\n	<link href=\"[(site_url)]<@IF:[*id:isnt(1)*]>[~[*id*]~]<@ENDIF>\" rel=\"canonical\">\n	<link href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,700\" rel=\"stylesheet\" type=\"text/css\">	\n	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n	<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\n	\n	<style> \n	html, body{background:#eee; font-family:\'Open Sans\',sans-serif; line-height:1.8; font-size:14px;}\n	a:focus{outline:none; outline-offset:0;}\n	h1{margin-top:15px;}\n\n	.logo{float:left;}\n	.logo img{max-width:200px; margin:10px 0; display:block; height:50px; width:auto;}\n	.dropdown-menu{border-radius:0; border:0;}\n	.dropdown-menu > li > a{padding-top:5px; padding-bottom:5px;}\n\n	.navbar-collapse.collapse.in{border-bottom:10px solid #eee;}\n	.navbar{min-height:0; background:#fff; margin-bottom:0;}\n	.navbar.nav{margin-left:0;}\n	.navbar.nav ul{padding-left:0;}\n	.navbar-nav{margin:0;}\n	.navbar-toggle{background:#fff; border:2px solid #eee; border-radius:0; position:fixed; z-index:99; right:0; top:7px; padding:12px 10px; margin-right:10px;}\n	.navbar .navbar-toggle .icon-bar{background-color:#333;}\n\n	.nav li a{text-transform:uppercase; color:#333; font-weight:500; font-size:110%;}\n	.nav li li a{text-transform:none; font-weight:normal; font-size:100%;}\n\n	.navbar{border:none; border-radius:0;}\n	#navbar{padding:0;}\n	ul.nav > li > a:hover{background-color:#f5f5f5;}\n\n	.affix{top:0px; width:100%; z-index:1000; background-color:#eee;}\n	.affix + .affspacer{display:block; height:50px;}\n\n	.box-shadow{-webkit-box-shadow:0 6px 12px rgba(0,0,0,.175); box-shadow:0 6px 12px rgba(0,0,0,.175);}\n\n	.container {max-width:970px; margin:0 12px;}\n	.top .col-sm-12{padding-left:0; padding-right:0;}\n\n	#ajaxSearch_input,\n	#username,\n	#password{width:100%!important;}\n	#forgotpsswd{clear:both;}\n	input.button[type=\"submit\"]{display:block;}\n	label.checkbox{display:inline-block; margin-left:10px;}\n	label, legend{font-weight:400;}\n	#ajaxSearch_form { position:relative; }\n	#searchClose { display:none !important; }\n    #indicator { position:absolute; top:9px; right:12px; z-index:10; opacity:.75; }\n\n	h2{font-size:22px;}\n	.bread{padding:1em 0 0 0;}\n	.mem{color:#aaa; text-align:center; padding:1em 0 2em;}\n\n	section.main .container{background-color:#fff; padding-bottom:20px;}\n	footer.footer .container{background-color:#000; color:#fff; line-height:40px;}\n\n	section.main ul{list-style:none; margin:0 0 1em 0; padding:0;}\n	section.main ul li{padding-left:1em;}\n	section.main ul li:before{content:\'\\2022\'; position:absolute; line-height:1.85em; margin-left:-1em;}\n\n	.footer{text-align:center;}\n	.footer .text-right{text-align:center;}\n\n	/* JOT */\n	.jot-comment{padding:5px 10px;}\n	.jot-row-author{background-color:#dddddd;}\n	.jot-row-alt{background-color:#f9f9f9;}\n	.jot-row{background-color:#eeeeee;}\n	.jot-row-up{border:1px solid #333!important;}\n	.jot-row-up.panel-primary > .panel-heading{background-color:#333!important; border-color:#333!important;}\n	.jot-extra{font-size:75%;}\n	.jot-poster{font-size:inherit!important;}\n\n	.ditto_summaryPost img{max-width:100%; height:auto; margin:10px 0 5px; display:block;}\n	.ditto_summaryPost{padding-top:10px; padding-bottom:15px; border-bottom:1px solid #eee;}\n\n	/* Larger than mobile */\n	@media (min-width:320px) {\n\n	}\n\n	/* Larger than phablet */\n	@media (min-width:480px) {\n\n	}\n\n	/* Larger than tablet */\n	@media (min-width:768px) {\n\n		.container{margin:0 auto;}\n		.logo{padding-left:15px;}\n		.logo img{ max-width:240px; margin:0; display:block; height:100px;}\n\n		.navbar{background:transparent;}\n		.navbar.affix{background:#eee;}\n		.navbar-collapse.collapse.in{border-bottom:0;}\n\n		.footer{text-align:left;}\n		.footer .text-right{text-align:right;}\n\n		.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {padding-left:35px; padding-right:35px;}\n\n	}\n	</style>\n	\n	<script src=\"https://code.jquery.com/jquery-2.2.3.min.js\"></script>\n</head>\n<body>\n	<section class=\"top\">\n		<div class=\"container\">\n			<div class=\"row\">\n				<div class=\"col-sm-12\" itemscope itemtype=\"http://schema.org/Organization\">\n\n					<a class=\"logo\" href=\"[~[(site_start)]~]\" title=\"[(site_name)]\" itemprop=\"url\">\n						<img src=\"[(site_url)]assets/images/modx-logo.png\" itemprop=\"logo\" width=\"240\" height=\"100\" alt=\"[(site_name)]\" />\n					</a>\n\n					<div class=\"clearfix\"></div>\n\n					<nav class=\"navbar\" role=\"navigation\" data-spy=\"affix\" data-offset-top=\"100\">\n\n						<div class=\"navbar-header\">\n							<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n								<span class=\"sr-only\">Toggle navigation</span>\n								<span class=\"icon-bar\"></span>\n								<span class=\"icon-bar\"></span>\n								<span class=\"icon-bar\"></span>\n							</button>\n						</div>\n						<div id=\"navbar\" class=\"navbar-collapse collapse\">\n							[[Wayfinder? \n							&startId=`0` \n							&level=`2` \n							&removeNewLines=`1`\n							&outerTpl=`@CODE:<ul class=\"nav navbar-nav\">[+wf.wrapper+]</ul>`\n							&rowTpl=`@CODE:<li[+wf.classes+]><a href=\"[+wf.link+]\" [+wf.attributes+]>[+wf.linktext+]</a>[+wf.wrapper+]</li>`\n							&innerTpl=`@CODE:<ul class=\"dropdown-menu\">[+wf.wrapper+]</ul>`\n							&innerRowTpl=`@CODE:<li[+wf.classes+]><a href=\"[+wf.link+]\">[+wf.linktext+]</a></li>`\n							&parentRowTpl=`@CODE:<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" title=\"[+wf.title+]\">[+wf.linktext+] <b class=\"caret\"></b></a>[+wf.wrapper+]</li>`\n							&activeParentRowTpl=`@CODE:<li class=\"dropdown active\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" title=\"[+wf.title+]\">[+wf.linktext+] <b class=\"caret\"></b></a>[+wf.wrapper+]</li>`\n							]]\n						</div>\n\n					</nav>\n					<div class=\"affspacer\"></div>\n\n				</div>\n			</div>\n		</div>\n		</section>\n\n		<section class=\"main\">\n			<div class=\"container\">\n\n				<div class=\"row\">\n					<div class=\"col-sm-12\">\n						<div class=\"bread\">\n							[[Breadcrumbs]]\n						</div>\n					</div>\n				</div>\n\n				<div class=\"row\">\n\n					<div class=\"col-sm-8\">\n						<h1>[*#longtitle*]</h1>\n						[*#content*]\n					</div>\n\n					<aside class=\"col-sm-4\">\n						<div class=\"search\">\n							<h2>Search</h2>\n							[!AjaxSearch? \n							&ajaxSearch=`1` \n							&addJscript=`0` \n							&showIntro=`0` \n							&ajaxMax=`5` \n							&extract=`1`\n							&jscript=`jquery`\n							&tplInput=`AjaxSearch_tplInput`\n							&tplAjaxGrpResult=`AjaxSearch_tplAjaxGrpResult`\n							&tplAjaxResults=`AjaxSearch_tplAjaxResults`\n							&tplAjaxResult=`AjaxSearch_tplAjaxResult`\n							&showResults=`1`\n							&liveSearch=`0`\n							!]\n						</div>\n\n						<h2>News:</h2>\n						[[DocLister? \n						&parents=`2` \n						&display=`2`\n						&total=`20` \n						&removeChunk=`Comments` \n						&tpl=`nl_sidebar`\n						]]\n\n						<div>\n							<h2>Most Recent:</h2>\n\n							<ul>\n								[[DocLister? \n								&showInMenuOnly=`1` \n								&parents=`0`\n								&display=`5`\n								&tpl=`@CODE:<li><a href=\"[+url+]\" title=\"[+pagetitle+]\">[+pagetitle+]</a> <span class=\"date\">[+date+]</span></li>`\n								]]\n							</ul>\n\n						</div>\n						<br/>\n						<h2>Login:</h2>\n						<div>\n							[!WebLogin? \n							&tpl=`WebLogin_tplForm` \n							&loginhomeid=`[(site_start)]`\n							&focusInput=`0`\n							!]\n						</div>\n\n					</aside>\n				</div>\n			</div>\n\n		</section>\n\n		<footer class=\"footer\">\n			<div class=\"container\">\n				<div class=\"row\">\n					<div class=\"col-sm-6\">\n						<a href=\"https://modx.com\" title=\"Learn more about MODX\">MODX</a> Starter-Template &copy;2006-[[$_SERVER[\'REQUEST_TIME\']:dateFormat=`Y` ]]\n					</div>\n					<div class=\"col-sm-6 text-right\">\n						Built with <a href=\"http://www.getbootstrap.com\" target=\"_blank\">Bootstrap</a> framework.\n					</div>\n				</div>\n			</div>\n		</footer>\n\n		<div class=\"container mem\">\n			<small>Memory: [^m^], MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document retrieved from [^s^]. </small>\n	</div>\n\n	<!-- Scripts\n	–––––––––––––––––––––––––––––––––––––––––––––––––– -->	\n\n	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n	<!--[if lt IE 9]>\n		<script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n		<script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n	<![endif]-->\n	\n</body>\n</html>', 0, 1),
(5, 'О нас', 'О нас', 0, 6, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n	{{HEAD}}\r\n    <body>\r\n        {{WARNING}}\r\n        <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n            <!--header start-->\r\n				{{HEADER}}\r\n            <!--header end-->\r\n            <!--pagetitle start-->\r\n            	{{PAGETITLE}}\r\n			<!--pagetitle end-->\r\n            <!--main start-->\r\n				{{ABOUT_PAGE_CONTENT}}\r\n            <!--main end-->\r\n            <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n        </div><!--page_wrapper end-->\r\n        <!--footer start-->\r\n        	{{FOOTER}}\r\n        <!--footer end-->\r\n        <!--modal-->\r\n        	{{MODAL}}\r\n    </body>\r\n</html>', 0, 1),
(6, 'Контакты', 'Контакты', 0, 6, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n    {{HEAD}}\r\n    <body>\r\n        {{WARNING}}\r\n        <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n            <!--header start-->\r\n			{{HEADER}}\r\n            <!--header end-->\r\n            <!--pagetitle start-->\r\n			{{CONTACT_PAGETITLE}}\r\n            <!--pagetitle end-->\r\n            <!--map start-->\r\n			{{MAP}}\r\n            <!--map end-->\r\n            <!--main start-->\r\n			{{CONTACT_MAIN}}\r\n            <!--main end-->\r\n            <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n        </div><!--page_wrapper end-->\r\n        <!--footer start-->\r\n		{{FOOTER}}\r\n        <!--footer end-->\r\n        <!--modal-->\r\n        {{MODAL}}\r\n    </body>\r\n</html>', 0, 1),
(7, 'Новости', 'Новости', 0, 6, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n    {{HEAD}}\r\n    <body>\r\n        {{WARNING}}\r\n        <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n            <!--header start-->\r\n			{{HEADER}}\r\n            <!--header end-->\r\n            <!--pagetitle start-->\r\n			{{NEWS_PAGE_TITLE}}\r\n            <!--pagetitle end-->\r\n            <!--main start-->\r\n            <div class=\"main news\">\r\n                <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n                    <div class=\"row\">\r\n                        <div class=\"col-sm-12\">\r\n                            <div class=\"col-md-8 col-sm-8 col-xs-12\">								\r\n								{{NEWS_LIST}}\r\n							</div>\r\n                            {{NEWS_RIGHT_BLOCK}}\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n			<!--main end-->\r\n            <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n        </div><!--page_wrapper end-->\r\n        <!--footer start-->\r\n		{{FOOTER}}\r\n        <!--footer end-->\r\n        <!--modal-->\r\n        {{MODAL}}\r\n    </body>\r\n</html>', 0, 1),
(8, 'Новость', 'Новость', 0, 6, '', 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n    {{HEAD}}\r\n    <body>\r\n        {{WARNING}}\r\n        <div id=\"page_wrapper\"><!--page_wrapper start-->\r\n            <!--header start-->\r\n			{{HEADER}}\r\n            <!--header end-->\r\n            <!--pagetitle start-->\r\n			{{NEWS_PAGE_TITLE}}\r\n            <!--pagetitle end-->\r\n            <!--main start-->\r\n            <div class=\"main news\">				\r\n                <div class=\"container animated\" data-animation=\"fadeInUp\" data-animation-delay=\"600\">\r\n                    <div class=\"row\">						\r\n                        <div class=\"col-sm-12\">							\r\n                            <div class=\"col-md-8 col-sm-8 col-xs-12\">\r\n								<p><strong class=\"title_block\">[*pagetitle*]</strong></p>\r\n							<div class=\"img_new\">[*img_main*]<span class=\"date\">[*createdon:date=`%d.%m.%Y`*]</span></div>\r\n							<div class=\"content\">\r\n								[*content*]\r\n							</div>\r\n                            </div>\r\n                            {{NEWS_RIGHT_BLOCK}}\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div><!--main end-->\r\n            <div class=\"hfooter\"><div class=\"container\"></div></div>\r\n        </div><!--page_wrapper end-->\r\n        <!--footer start-->\r\n		{{FOOTER}}\r\n        <!--footer end-->\r\n        <!--modal-->\r\n        {{MODAL}}\r\n    </body>\r\n</html>', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `caption` varchar(80) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text COLLATE utf8_estonian_ci,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COLLATE utf8_estonian_ci COMMENT 'Display Control Properties',
  `default_text` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Site Template Variables';

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`) VALUES
(1, 'richtext', 'blogContent', 'blogContent', 'RTE for the new blog entries', 0, 1, 0, '', 0, 'RichText', '&w=383px&h=450px&edt=TinyMCE', ''),
(2, 'text', 'documentTags', 'Tags', 'Space delimited tags for the current document', 0, 1, 0, '', 0, '', '', ''),
(3, 'text', 'loginName', 'loginName', 'Conditional name for the Login menu item', 0, 1, 0, '', 0, '', '', '@EVAL if ($modx->getLoginUserID()) return \'Logout\'; else return \'Login\';'),
(4, 'image', 'img_newsline', 'Изображение для ленты новостей', '', 0, 13, 0, '', 0, 'image', '&hspace=0&vspace=0&borsize=10&align=top', ''),
(5, 'image', 'img_main', 'Изображение для статьи', '', 0, 13, 0, '', 0, 'image', '&hspace=0&vspace=0&borsize=0&align=top', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for template variable access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Site Template Variables Content Values Link Table';

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 4, 7, 'assets/images/new2.jpg'),
(2, 4, 8, 'assets/images/new3.jpg'),
(3, 4, 9, 'assets/images/new4.jpg'),
(4, 4, 10, 'assets/images/new3.jpg'),
(5, 4, 11, 'assets/images/new3.jpg'),
(6, 4, 12, 'assets/images/new4.jpg'),
(7, 5, 7, 'assets/images/new_img1.jpg'),
(8, 5, 8, 'assets/images/new_img1.jpg'),
(9, 5, 9, 'assets/images/new_img1.jpg'),
(10, 5, 10, 'assets/images/new_img1.jpg'),
(11, 5, 11, 'assets/images/new_img1.jpg'),
(12, 5, 12, 'assets/images/new_img1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Site Template Variables Templates Link Table';

--
-- Дамп данных таблицы `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(5, 8, 0),
(4, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='System Event Names.';

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnDocPublished', 5, ''),
(2, 'OnDocUnPublished', 5, ''),
(3, 'OnWebPagePrerender', 5, ''),
(4, 'OnWebLogin', 3, ''),
(5, 'OnBeforeWebLogout', 3, ''),
(6, 'OnWebLogout', 3, ''),
(7, 'OnWebSaveUser', 3, ''),
(8, 'OnWebDeleteUser', 3, ''),
(9, 'OnWebChangePassword', 3, ''),
(10, 'OnWebCreateGroup', 3, ''),
(11, 'OnManagerLogin', 2, ''),
(12, 'OnBeforeManagerLogout', 2, ''),
(13, 'OnManagerLogout', 2, ''),
(14, 'OnManagerSaveUser', 2, ''),
(15, 'OnManagerDeleteUser', 2, ''),
(16, 'OnManagerChangePassword', 2, ''),
(17, 'OnManagerCreateGroup', 2, ''),
(18, 'OnBeforeCacheUpdate', 4, ''),
(19, 'OnCacheUpdate', 4, ''),
(107, 'OnMakePageCacheKey', 4, ''),
(20, 'OnLoadWebPageCache', 4, ''),
(21, 'OnBeforeSaveWebPageCache', 4, ''),
(22, 'OnChunkFormPrerender', 1, 'Chunks'),
(23, 'OnChunkFormRender', 1, 'Chunks'),
(24, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(25, 'OnChunkFormSave', 1, 'Chunks'),
(26, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(27, 'OnChunkFormDelete', 1, 'Chunks'),
(28, 'OnDocFormPrerender', 1, 'Documents'),
(29, 'OnDocFormRender', 1, 'Documents'),
(30, 'OnBeforeDocFormSave', 1, 'Documents'),
(31, 'OnDocFormSave', 1, 'Documents'),
(32, 'OnBeforeDocFormDelete', 1, 'Documents'),
(33, 'OnDocFormDelete', 1, 'Documents'),
(1033, 'OnDocFormUnDelete', 1, 'Documents'),
(1034, 'onBeforeMoveDocument', 1, 'Documents'),
(1035, 'onAfterMoveDocument', 1, 'Documents'),
(34, 'OnPluginFormPrerender', 1, 'Plugins'),
(35, 'OnPluginFormRender', 1, 'Plugins'),
(36, 'OnBeforePluginFormSave', 1, 'Plugins'),
(37, 'OnPluginFormSave', 1, 'Plugins'),
(38, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(39, 'OnPluginFormDelete', 1, 'Plugins'),
(40, 'OnSnipFormPrerender', 1, 'Snippets'),
(41, 'OnSnipFormRender', 1, 'Snippets'),
(42, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(43, 'OnSnipFormSave', 1, 'Snippets'),
(44, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(45, 'OnSnipFormDelete', 1, 'Snippets'),
(46, 'OnTempFormPrerender', 1, 'Templates'),
(47, 'OnTempFormRender', 1, 'Templates'),
(48, 'OnBeforeTempFormSave', 1, 'Templates'),
(49, 'OnTempFormSave', 1, 'Templates'),
(50, 'OnBeforeTempFormDelete', 1, 'Templates'),
(51, 'OnTempFormDelete', 1, 'Templates'),
(52, 'OnTVFormPrerender', 1, 'Template Variables'),
(53, 'OnTVFormRender', 1, 'Template Variables'),
(54, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(55, 'OnTVFormSave', 1, 'Template Variables'),
(56, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(57, 'OnTVFormDelete', 1, 'Template Variables'),
(58, 'OnUserFormPrerender', 1, 'Users'),
(59, 'OnUserFormRender', 1, 'Users'),
(60, 'OnBeforeUserFormSave', 1, 'Users'),
(61, 'OnUserFormSave', 1, 'Users'),
(62, 'OnBeforeUserFormDelete', 1, 'Users'),
(63, 'OnUserFormDelete', 1, 'Users'),
(64, 'OnWUsrFormPrerender', 1, 'Web Users'),
(65, 'OnWUsrFormRender', 1, 'Web Users'),
(66, 'OnBeforeWUsrFormSave', 1, 'Web Users'),
(67, 'OnWUsrFormSave', 1, 'Web Users'),
(68, 'OnBeforeWUsrFormDelete', 1, 'Web Users'),
(69, 'OnWUsrFormDelete', 1, 'Web Users'),
(70, 'OnSiteRefresh', 1, ''),
(71, 'OnFileManagerUpload', 1, ''),
(72, 'OnModFormPrerender', 1, 'Modules'),
(73, 'OnModFormRender', 1, 'Modules'),
(74, 'OnBeforeModFormDelete', 1, 'Modules'),
(75, 'OnModFormDelete', 1, 'Modules'),
(76, 'OnBeforeModFormSave', 1, 'Modules'),
(77, 'OnModFormSave', 1, 'Modules'),
(78, 'OnBeforeWebLogin', 3, ''),
(79, 'OnWebAuthentication', 3, ''),
(80, 'OnBeforeManagerLogin', 2, ''),
(81, 'OnManagerAuthentication', 2, ''),
(82, 'OnSiteSettingsRender', 1, 'System Settings'),
(83, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(84, 'OnUserSettingsRender', 1, 'System Settings'),
(85, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(88, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(89, 'OnManagerPageInit', 2, ''),
(90, 'OnWebPageInit', 5, ''),
(101, 'OnLoadDocumentObject', 5, ''),
(104, 'OnBeforeLoadDocumentObject', 5, ''),
(105, 'OnAfterLoadDocumentObject', 5, ''),
(91, 'OnLoadWebDocument', 5, ''),
(92, 'OnParseDocument', 5, ''),
(106, 'OnParseProperties', 5, ''),
(108, 'OnBeforeParseParams', 5, ''),
(93, 'OnManagerLoginFormRender', 2, ''),
(94, 'OnWebPageComplete', 5, ''),
(95, 'OnLogPageHit', 5, ''),
(96, 'OnBeforeManagerPageInit', 2, ''),
(97, 'OnBeforeEmptyTrash', 1, 'Documents'),
(98, 'OnEmptyTrash', 1, 'Documents'),
(99, 'OnManagerLoginFormPrerender', 2, ''),
(100, 'OnStripAlias', 1, 'Documents'),
(102, 'OnMakeDocUrl', 5, ''),
(103, 'OnBeforeLoadExtension', 5, ''),
(200, 'OnCreateDocGroup', 1, 'Documents'),
(201, 'OnManagerWelcomePrerender', 2, ''),
(202, 'OnManagerWelcomeHome', 2, ''),
(203, 'OnManagerWelcomeRender', 2, ''),
(204, 'OnBeforeDocDuplicate', 1, 'Documents'),
(205, 'OnDocDuplicate', 1, 'Documents'),
(206, 'OnManagerMainFrameHeaderHTMLBlock', 2, ''),
(207, 'OnManagerPreFrameLoader', 2, ''),
(208, 'OnManagerFrameLoader', 2, ''),
(209, 'OnManagerTreeInit', 2, ''),
(210, 'OnManagerTreePrerender', 2, ''),
(211, 'OnManagerTreeRender', 2, ''),
(212, 'OnManagerNodePrerender', 2, ''),
(213, 'OnManagerNodeRender', 2, ''),
(214, 'OnManagerMenuPrerender', 2, ''),
(215, 'OnManagerTopPrerender', 2, ''),
(224, 'OnDocFormTemplateRender', 1, 'Documents'),
(999, 'OnPageUnauthorized', 1, ''),
(1000, 'OnPageNotFound', 1, ''),
(1001, 'OnFileBrowserUpload', 1, 'File Browser Events');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains Content Manager settings.';

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`setting_name`, `setting_value`) VALUES
('settings_version', '1.2.1'),
('manager_theme', 'MODxRE2'),
('server_offset_time', '0'),
('manager_language', 'russian-UTF8'),
('modx_charset', 'UTF-8'),
('site_name', 'Test MODX'),
('site_start', '1'),
('error_page', '1'),
('unauthorized_page', '1'),
('site_status', '1'),
('auto_template_logic', 'parent'),
('default_template', '3'),
('old_template', '3'),
('cache_type', '1'),
('use_udperms', '1'),
('udperms_allowroot', '0'),
('failed_login_attempts', '3'),
('blocked_minutes', '60'),
('use_captcha', '0'),
('emailsender', 'testmodxemail@gmail.com'),
('use_editor', '1'),
('use_browser', '1'),
('fe_editor_lang', 'russian-UTF8'),
('session.cookie.lifetime', '604800'),
('theme_refresher', ''),
('site_id', '58b0338c6eb32'),
('site_unavailable_page', ''),
('reload_site_unavailable', ''),
('site_unavailable_message', 'В настоящее время сайт недоступен.'),
('siteunavailable_message_default', 'В настоящее время сайт недоступен.'),
('enable_filter', '0'),
('publish_default', '1'),
('cache_default', '1'),
('search_default', '1'),
('auto_menuindex', '1'),
('custom_contenttype', 'application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json'),
('docid_incrmnt_method', '0'),
('minifyphp_incache', '0'),
('server_protocol', 'http'),
('rss_url_news', 'http://feeds.feedburner.com/modx-announce'),
('track_visitors', '0'),
('top_howmany', '10'),
('friendly_urls', '1'),
('xhtml_urls', '1'),
('friendly_url_prefix', ''),
('friendly_url_suffix', ''),
('make_folders', '0'),
('seostrict', '0'),
('aliaslistingfolder', '0'),
('friendly_alias_urls', '1'),
('use_alias_path', '1'),
('allow_duplicate_alias', '1'),
('automatic_alias', '1'),
('email_method', 'smtp'),
('smtp_auth', '1'),
('smtp_secure', 'ssl'),
('smtp_host', 'smtp.gmail.com'),
('smtp_port', '465'),
('smtp_username', 'testmodxemail@gmail.com'),
('reload_emailsubject', ''),
('emailsubject', 'Данные для авторизации'),
('emailsubject_default', 'Данные для авторизации'),
('reload_signupemail_message', ''),
('signupemail_message', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации в системе управления сайтом [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('system_email_signup_default', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации в системе управления сайтом [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('reload_websignupemail_message', ''),
('websignupemail_message', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('system_email_websignup_default', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('reload_system_email_webreminder_message', ''),
('webpwdreminder_message', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('system_email_webreminder_default', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('warning_visibility', '1'),
('tree_page_click', '27'),
('use_breadcrumbs', '0'),
('remember_last_tab', '0'),
('resource_tree_node_name', 'pagetitle'),
('session_timeout', '15'),
('tree_show_protected', '0'),
('show_meta', '0'),
('datepicker_offset', '-10'),
('datetime_format', 'dd-mm-YYYY'),
('number_of_logs', '100'),
('mail_check_timeperiod', '60'),
('number_of_messages', '40'),
('number_of_results', '30'),
('which_editor', 'TinyMCE4'),
('editor_css_path', ''),
('tinymce4_theme', 'custom'),
('tinymce4_skin', 'lightgray'),
('tinymce4_template_docs', ''),
('tinymce4_template_chunks', ''),
('tinymce4_entermode', 'p'),
('tinymce4_element_format', 'xhtml'),
('tinymce4_schema', 'html5'),
('tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
('tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
('tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code'),
('tinymce4_custom_buttons3', ''),
('tinymce4_custom_buttons4', ''),
('tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3'),
('allow_eval', 'with_scan'),
('safe_functions_at_eval', 'time,date,strtotime,strftime'),
('check_files_onlogin', 'index.php\r\n.htaccess\r\nmanager/index.php\r\nmanager/includes/config.inc.php'),
('validate_referer', '1'),
('rss_url_security', 'http://feeds.feedburner.com/modxsecurity'),
('error_reporting', '1'),
('send_errormail', '0'),
('pwd_hash_algo', 'UNCRYPT'),
('enable_bindings', '1'),
('reload_captcha_words', ''),
('captcha_words', 'MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('captcha_words_default', 'MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('filemanager_path', 'C:/OS/OpenServer/domains/ModX/'),
('upload_files', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('upload_flash', 'fla,flv,swf'),
('upload_maxsize', '5000000'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('which_browser', 'mcpuk'),
('rb_webuser', '0'),
('rb_base_dir', 'C:/OS/OpenServer/domains/ModX/assets/'),
('rb_base_url', 'assets/'),
('clean_uploaded_filename', '1'),
('strip_image_paths', '1'),
('maxImageWidth', '1600'),
('maxImageHeight', '1200'),
('thumbWidth', '150'),
('thumbHeight', '150'),
('thumbsDir', '.thumbs'),
('jpegQuality', '90'),
('denyZipDownload', '0'),
('denyExtensionRename', '0'),
('showHiddenFiles', '0'),
('lang_code', 'ru'),
('sys_files_checksum', 'a:4:{s:39:\"C:/OS/OpenServer/domains/ModX/index.php\";s:32:\"ed8dd02021b28b9227b44d5a76ef7440\";s:39:\"C:/OS/OpenServer/domains/ModX/.htaccess\";s:32:\"43c6abeaf47db72511f89ea4cb8eab4f\";s:47:\"C:/OS/OpenServer/domains/ModX/manager/index.php\";s:32:\"afb412c538f339b214dfa2218d0e1349\";s:61:\"C:/OS/OpenServer/domains/ModX/manager/includes/config.inc.php\";s:32:\"65ee4bf88e6bd3abf30512ff9bfe3ee7\";}'),
('smtppw', 'cXdlcnR5NjY2HgVKWnD');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `mobilephone` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `state` varchar(25) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `zip` varchar(25) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `fax` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains information about the backend users.';

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`) VALUES
(1, 1, 'Default admin account', 1, 'vad261275@gmail.com', '', '', 0, 0, 0, 5, 1488135464, 1488135590, 0, '5lsde0tk1gsmfg8ehnsmortmb7', 0, 0, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL,
  `type` varchar(15) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `subject` varchar(60) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_estonian_ci,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains messages for the Content Manager messaging system.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_roles`
--

CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains information describing the user roles.';

--
-- Дамп данных таблицы `modx_user_roles`
--

INSERT INTO `modx_user_roles` (`id`, `name`, `description`, `frames`, `home`, `view_document`, `new_document`, `save_document`, `publish_document`, `delete_document`, `empty_trash`, `action_ok`, `logout`, `help`, `messages`, `new_user`, `edit_user`, `logs`, `edit_parser`, `save_parser`, `edit_template`, `settings`, `credits`, `new_template`, `save_template`, `delete_template`, `edit_snippet`, `new_snippet`, `save_snippet`, `delete_snippet`, `edit_chunk`, `new_chunk`, `save_chunk`, `delete_chunk`, `empty_cache`, `edit_document`, `change_password`, `error_dialog`, `about`, `file_manager`, `assets_files`, `assets_images`, `save_user`, `delete_user`, `save_password`, `edit_role`, `save_role`, `delete_role`, `new_role`, `access_permissions`, `bk_manager`, `new_plugin`, `edit_plugin`, `save_plugin`, `delete_plugin`, `new_module`, `edit_module`, `save_module`, `delete_module`, `exec_module`, `view_eventlog`, `delete_eventlog`, `manage_metatags`, `edit_doc_metatags`, `new_web_user`, `edit_web_user`, `save_web_user`, `delete_web_user`, `web_access_permissions`, `view_unpublished`, `import_static`, `export_static`, `remove_locks`, `display_locks`, `change_resourcetype`) VALUES
(2, 'Editor', 'Limited to managing content', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1),
(1, 'Administrator', 'Site administrators have full access to all functions', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains backend user settings.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_webgroup_access`
--

CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_webgroup_names`
--

CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_groups`
--

CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_users`
--

CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `cachepwd` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_user_attributes`
--

CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `mobilephone` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `state` varchar(25) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `zip` varchar(25) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `fax` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8_estonian_ci NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains information for web users.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_user_settings`
--

CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `setting_value` text COLLATE utf8_estonian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci COMMENT='Contains web user settings.';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `modx_active_user_locks`
--
ALTER TABLE `modx_active_user_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`);

--
-- Индексы таблицы `modx_active_user_sessions`
--
ALTER TABLE `modx_active_user_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document` (`document`),
  ADD KEY `document_group` (`document_group`);

--
-- Индексы таблицы `modx_event_log`
--
ALTER TABLE `modx_event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `modx_keyword_xref`
--
ALTER TABLE `modx_keyword_xref`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `keyword_id` (`keyword_id`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_manager_users`
--
ALTER TABLE `modx_manager_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `modx_membergroup_access`
--
ALTER TABLE `modx_membergroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_member` (`user_group`,`member`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `aliasidx` (`alias`),
  ADD KEY `typeidx` (`type`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`);

--
-- Индексы таблицы `modx_site_content_metatags`
--
ALTER TABLE `modx_site_content_metatags`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `metatag_id` (`metatag_id`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_keywords`
--
ALTER TABLE `modx_site_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyword` (`keyword`);

--
-- Индексы таблицы `modx_site_metatags`
--
ALTER TABLE `modx_site_metatags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_modules`
--
ALTER TABLE `modx_site_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_module_access`
--
ALTER TABLE `modx_site_module_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_module_depobj`
--
ALTER TABLE `modx_site_module_depobj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`evtid`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_rank` (`rank`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  ADD KEY `idx_tmplvarid` (`tmplvarid`),
  ADD KEY `idx_id` (`contentid`);
ALTER TABLE `modx_site_tmplvar_contentvalues` ADD FULLTEXT KEY `value_ft_idx` (`value`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`internalKey`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_roles`
--
ALTER TABLE `modx_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`setting_name`),
  ADD KEY `setting_name` (`setting_name`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `modx_webgroup_access`
--
ALTER TABLE `modx_webgroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_webgroup_names`
--
ALTER TABLE `modx_webgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_web_groups`
--
ALTER TABLE `modx_web_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`);

--
-- Индексы таблицы `modx_web_users`
--
ALTER TABLE `modx_web_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `modx_web_user_attributes`
--
ALTER TABLE `modx_web_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`internalKey`);

--
-- Индексы таблицы `modx_web_user_settings`
--
ALTER TABLE `modx_web_user_settings`
  ADD PRIMARY KEY (`webuser`,`setting_name`),
  ADD KEY `setting_name` (`setting_name`),
  ADD KEY `webuserid` (`webuser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_active_user_locks`
--
ALTER TABLE `modx_active_user_locks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;
--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_event_log`
--
ALTER TABLE `modx_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2066;
--
-- AUTO_INCREMENT для таблицы `modx_manager_users`
--
ALTER TABLE `modx_manager_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_membergroup_access`
--
ALTER TABLE `modx_membergroup_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `modx_site_keywords`
--
ALTER TABLE `modx_site_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_metatags`
--
ALTER TABLE `modx_site_metatags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_modules`
--
ALTER TABLE `modx_site_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `modx_site_module_access`
--
ALTER TABLE `modx_site_module_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_module_depobj`
--
ALTER TABLE `modx_site_module_depobj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;
--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_user_roles`
--
ALTER TABLE `modx_user_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `modx_webgroup_access`
--
ALTER TABLE `modx_webgroup_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_webgroup_names`
--
ALTER TABLE `modx_webgroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_groups`
--
ALTER TABLE `modx_web_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_users`
--
ALTER TABLE `modx_web_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_user_attributes`
--
ALTER TABLE `modx_web_user_attributes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
