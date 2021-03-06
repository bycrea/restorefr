-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mer. 27 mars 2019 à 16:24
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `restorefr`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_articles` int(11) NOT NULL,
  `titre` varchar(105) DEFAULT NULL,
  `descrpt` mediumtext,
  `article` longtext,
  `url_article` varchar(255) DEFAULT NULL,
  `id_catg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_articles`, `titre`, `descrpt`, `article`, `url_article`, `id_catg`) VALUES
(1, 'Lampes Vinyles 45T', 'Pour une ambiance Collector...', '<p><strong><em>Pour une ambiance Collector...</em></strong><br />\r\n<br />\r\nFabriqu&eacute;es &agrave; partir de vieux vinyles 45T hors d&#39;usage, ces lampes se composent d&#39;un socle en bois verni, int&eacute;grant un interrupteur ON/OFF vintage et une douille E27 accueillant une ampoule &agrave; LED 6W. Les vinyles sont fix&eacute;s par deux tiges de m&eacute;tal filet&eacute;es, recouvertes par un tube d&#39;aluminium bross&eacute;. Elles satisferont les amateurs d&#39;objets au look r&eacute;tro/vintage et les passionn&eacute;s de musique.<br />\r\n<br />\r\n<br />\r\nD&eacute;tails du produit :<br />\r\nAmpoule E27 LED 6w MAX fournie<br />\r\nPrise secteur 220Volt - 50Hz<br />\r\nDimensions : env. l.17 x L.23 x H.26 cm<br />\r\n<br />\r\nNB : Chaque objet &eacute;tant unique et personnalisable (dans la mesure du possible), je vous invite &agrave; me contacter pour v&eacute;rifier ensemble la disponibilit&eacute; et la sp&eacute;cificit&eacute; des mati&egrave;res premi&egrave;res que j&#39;utiliserai pour votre commande. Vous pourrez ainsi choisir le bois, la couleur, la finission et m&ecirc;me les vinyles.</p>\r\n', 'img/lp_45T/', 1),
(2, 'Lampes Alim\'', 'Pour une ambiance Geek...', '<p><strong><em>Pour une ambiance Geek...</em></strong><br />\r\n<br />\r\nJ&#39;ai commenc&eacute; &agrave; recycler des vieilles alimentations de PC pour les convertir en lampes Alim&#39; avant d&#39;avoir l&#39;id&eacute;e d&#39;en faire des <a href=\"https://www.restorefr.com/crea/arc_alim/arc_alim.html\">consoles de jeux</a>. Ces lampes se fondent parfaitement dans un int&eacute;rieur au look industriel ou dans un espace de travail. Certains mod&egrave;les int&egrave;grent l&#39;interrupteur d&#39;origine de l&#39;alimentation, d&#39;autres un interrupteur ON/OFF r&eacute;tro. Bo&icirc;tier horizontal ou bo&icirc;tier vertical, on peut m&ecirc;me envisager de les repeindre mais personnellement, je pr&eacute;f&egrave;re leur cot&eacute; brut, parfois ab&icirc;m&eacute;.<br />\r\n<br />\r\n<br />\r\nD&eacute;tail du produit :<br />\r\nDouilles E27 60w MAX (ampoule non fournie)<br />\r\nPrise secteur 220Volt - 50Hz<br />\r\nDimensions : env. l.15 x P.15 x H.10 cm (sans ampoule)<br />\r\n<br />\r\nNB : Chaque objet &eacute;tant unique et personnalisable (dans la mesure du possible), je vous invite &agrave; me contacter pour v&eacute;rifier ensemble la disponibilit&eacute; et la sp&eacute;cificit&eacute; des mati&egrave;res premi&egrave;res que j&#39;utiliserai pour votre commande. Vous pourrez ainsi choisir la forme, la couleur et plus encore.</p>\r\n', 'img/lp_alim/', 1),
(3, 'Lampes Whisky', 'Pour une ambiance boudoir...', '<p><strong><em>Pour une ambiance boudoir...</em></strong><br />\r\n<br />\r\nC&#39;est en voyant ces magnifiques bo&icirc;tes de whisky en bois que j&#39;ai eu l&#39;id&eacute;e de les transformer en lampes. Ces cr&eacute;ations prendront tout leur sens dans un bar autour de quelques bouteilles rares. Certains mod&egrave;les comportent un simple interrupteur ON/OFF vintage. D&#39;autres plus complexes int&egrave;grent un interrupteur magn&eacute;tique pour un allumage automatique &agrave; l&#39;ouverture, et inversement si l&#39;on referme la bo&icirc;te. Un variateur peut &ecirc;tre ajout&eacute; pour r&eacute;gler l&#39;intensit&eacute; de la lumi&egrave;re.<br />\r\n<br />\r\n<br />\r\nD&eacute;tail du produit :<br />\r\nDouilles E14 40w MAX (ampoule fournie)<br />\r\nPrise secteur 220Volt - 50Hz<br />\r\nDimensions : env. l.10 x L.10 x H.30 cm<br />\r\n<br />\r\nNB : Chaque objet &eacute;tant unique et personnalisable (dans la mesure du possible), je vous invite &agrave; me contacter pour v&eacute;rifier ensemble la disponibilit&eacute; et la sp&eacute;cificit&eacute; des mati&egrave;res premi&egrave;res que j&#39;utiliserai pour votre commande. Vous pourrez ainsi choisir la forme, la couleur et plus encore.</p>\r\n', 'img/lp_sky/', 1),
(4, 'Commodes Industrielles', 'C\'est sûr, mesure !', '<p><strong><em>C&#39;est s&ucirc;r, mesure !</em></strong><br />\r\n<br />\r\nRien de tel que des meubles sur mesure pour am&eacute;nager son int&eacute;rieur. J&#39;ai toujours r&ecirc;v&eacute; de poss&eacute;der des meubles au look industriel, d&#39;o&ugrave; cette cr&eacute;ation m&ecirc;lant m&eacute;tal peint en noir mat et bois de palettes au vernis brillant pour un r&eacute;sultat &agrave; la fois moderne et vintage. Commodes, penderies, tables, chaises ou tabourets, le travail du m&eacute;tal offre une grande flexibilit&eacute; pour construir des objets robustes tout en &eacute;conomisant de la mati&egrave;re.</p>\r\n', 'img/mbl_comm/', 2),
(5, 'Casiers Métal', 'Vous êtes en état de Re-Storation !!!', '<p><strong><em>Vous &ecirc;tes en &eacute;tat de Re-Storation !!!</em></strong><br />\r\n<br />\r\nApr&egrave;s une vie de dur labreur dans les commissairiats de France, cette armoire &agrave; casiers sans charme aura le droit &agrave; une seconde vie ! Un peu de pon&ccedil;age, beaucoup de peinture noir et du papier peint bien vintage. Revenu &agrave; la mode, le look industriel de ces casiers ne laissera personne indiff&eacute;rent.</p>\r\n', 'img/mbl_casier/', 2),
(6, 'Fauteuil Marin', 'Ne jetez plus rien, faites le \"Re-STORER\" !', '<p><strong><em>Ne jetez plus rien, faites le &quot;Re-STORER&quot; !</em></strong><br />\r\n<br />\r\nA l&#39;occasion d&#39;un week-end chez des amis marseillais, je suis tomb&eacute; sur ce fauteuil de jardin. Le temps et la pluie ont bien failli avoir raison de lui. Certaines pi&egrave;ces &eacute;taient si ab&icirc;m&eacute;es qu&#39;il a fallu les reproduire. Au final, ce n&#39;&eacute;tait pas si compliqu&eacute; de dessiner les patrons en partant des pi&egrave;ces d&#39;origine. Le plus dur a &eacute;t&eacute; de d&eacute;monter enti&egrave;rement le fauteuil pour pouvoir poncer toutes les pi&egrave;ces une &agrave; une et de ne pas se tromper au remontage...</p>\r\n', 'img/mbl_marin/', 2),
(7, 'Chaise Do Brasil', 'Quand il n\'y a plus d\'osier, il y a du café.', '<p><em><strong>Quand il n&#39;y a plus d&#39;osier, il y a du caf&eacute;.</strong></em></p>\r\n\r\n<p>Site en construction.</p>\r\n', 'img/mbl_brasil/', 2),
(8, 'Radios \"Vintage\"', 'La technologie du futur dans les radios d\'antan...', '<p><em><strong>La technologie du futur dans les radios d&#39;antan...</strong></em></p>\r\n\r\n<p>Site en construction.</p>\r\n', 'img/hifi_radio/', 3),
(9, 'Valises enceintes', 'La musique partout où vous irez !', '<p><strong><em>La musique partout o&ugrave; vous irez !</em></strong><br />\r\n<br />\r\nLes appareils bluetooth sont &agrave; la mode et toute marque d&#39;enceinte qui se respecte doit avoir la sienne. D&#39;ailleurs, les valises enceintes existent depuis un moment sur internet. Beaucoup de bricoleurs en ont fait un affaire personnelle. Ce sont des objets que j&#39;aime r&eacute;aliser car chaque valise est diff&eacute;rente et il faut s&#39;adapter. Mes valises sont g&eacute;n&eacute;ralement munies d&#39;un amplificateur class D (2x50W), d&#39;une carte bluetooth 4.0 compatible avec tous les smartphones et d&#39;une batterie au lithium assez puissante pour tenir une dizaine d&#39;heures. Toutes les options sont possibles : prise jack 3,5mm, tuner radio, entr&eacute;es/sorties auxiliaires, bref il n&#39;y qu&#39;a demander.</p>\r\n', 'img/hifi_val/', 3),
(10, 'Ghost Dog Autoradio', 'Inspiré du film du même nom.', '<p><em><strong>Inspir&eacute; du film du m&ecirc;me nom.</strong></em></p>\r\n\r\n<p>Site en construction.</p>\r\n', 'img/hifi_ghost/', 3),
(11, '\"Not So\" Ghetto Blaster', 'De l\'ombre à la lumière', '<p><strong>De l&#39;ombre &agrave; la lumi&egrave;re</strong></p>\r\n\r\n<p>Site en construction.</p>\r\n', 'img/hifi_ghetto/', 3),
(12, 'Chaine Hi-Sky', 'Ca envoi du bois !', '<p><em><strong>Ca envoi du bois !</strong></em></p>\r\n\r\n<p>Site en construction.</p>\r\n', 'img/hifi_boite/', 3),
(13, 'Enceinte-Enceinte', 'Deux en une, et pas que !', '<p><em><strong>Deux en une, et pas que !</strong></em></p>\r\n\r\n<p>Site en construction.</p>\r\n', 'img/hifi_split/', 3),
(14, 'Bureau Arcade', '\"Re-STORE\" vers le futur !', '<p><strong><em>&quot;Re-STORE&quot; vers le futur !</em></strong><br />\r\n<br />\r\nIl n&#39;est pas rare de trouver des perles comme celle-ci lorsque l&#39;on fait du b&eacute;n&eacute;volat dans une recyclerie. C&#39;est &agrave; <a href=\"http://www.rizibizi-recyclerie.org/\" target=\"_blank\">Rizibizi</a>, la recyclerie de Salleboeuf, que j&#39;ai chin&eacute; ce superbe bureau d&#39;&eacute;colier des ann&eacute;es 80. En le voyant pour la premiere fois, je me suis demand&eacute; : &quot;Quelle utilit&eacute; pourrais-je lui donner chez moi ?&quot; Je n&#39;ai plus de devoir &agrave; rendre et je n&#39;ai pas encore d&#39;enfant. Mais &agrave; force de le regarder j&#39;ai eu une illumination ! Pourquoi ne pas en faire une borne d&#39;arcade ?! L&#39;id&eacute;e &eacute;tait lanc&eacute;e, il ne restait plus qu&#39;&agrave; se mettre au travail. J&#39;ai finalement opt&eacute; pour un raspberry Pi avec un &eacute;mulateur (<a href=\"https://www.recalbox.com/\" target=\"_blank\">Recalbox</a>) pour pouvoir jouer &agrave; toutes les consoles de l&#39;Atari en passant par la GamBoy, NES, SNES, MegaDrive, PlayStation jusqu&#39;&agrave; la Dreamcast ! Le tout connect&eacute; &agrave; une interface 2 joueurs et un bouton cr&eacute;dit (pas de monnayeur sur ce mod&egrave;le) ainsi qu&#39;une interface son 2.1 avec r&eacute;glage du volume et une prise casque. Il ne reste qu&#39;&agrave; brancher un &eacute;cran ou un vid&eacute;o projecteur (le pied !) pour une immersion totale.<br />\r\n<br />\r\n<br />\r\nD&eacute;tail du produit :<br />\r\nSortie vid&eacute;o HDMI - Sortie son jack audio st&eacute;r&eacute;o 3,5mm<br />\r\nConnexion WIFI<br />\r\nPrise secteur 220Volt - 50Hz<br />\r\nDimensions : env. L.120 x P.90 x H.80 cm<br />\r\n<br />\r\nNB : Les jeux (ou ROMS) ne sont pas inclus dans la console. Tr&egrave;s facile &agrave; trouver, il vous suffira dans les t&eacute;l&eacute;charger et de les installer dans l&#39;&eacute;mulateur. Pour le bon fonctionnement du produit r&eacute;f&eacute;rez-vous &agrave; la notice d&#39;utilisation du logiciel <a href=\"https://www.recalbox.com/\">Recalbox</a>. Possibilit&eacute; de rajouter des manettes filaires ou bluetooth, ports USB en fa&ccedil;ade, monayeur, &eacute;cran int&eacute;gr&eacute;, etc.</p>\r\n', 'img/jx_bureau/', 4),
(15, 'Console Alim\'', 'Des jeux rétro à gogo !', '<p><strong><em>Des jeux r&eacute;tro &agrave; gogo !</em></strong><br />\r\n<br />\r\nFabriqu&eacute; dans une alimentation de PC, cette console de jeux vid&eacute;o r&eacute;trogaming fonctionne sur la base d&#39;un raspberry Pi sur lequel est install&eacute; le c&eacute;l&egrave;bre &eacute;mulateur <a href=\"https://www.recalbox.com/\" target=\"_blank\">Recalbox</a>. Avec ses deux manettes au look r&eacute;tro, mieux qu&#39;une encombrante borne d&#39;arcade, ce petit objet permet de jouer &agrave; toutes les consoles de votre enfance sur votre TV de salon. Atari, Game Boy, NES, SNES, MegaDrive, Playstation, jusqu&#39;&agrave; la DreamCast. Pour les parents et les enfants, pour les geeks et les amoureux du r&eacute;tro, voil&agrave; enfin un objet qui fera l&#39;unanimit&eacute; de jour comme de nuit, qu&#39;il pleuve ou qu&#39;il neige.<br />\r\n<br />\r\n<br />\r\nD&eacute;tail du produit :<br />\r\nSortie vid&eacute;o HDMI - Sortie son jack audio st&eacute;r&eacute;o 3,5mm<br />\r\n4 ports USB - Prise Ethernet - WIFI<br />\r\nCl&eacute; USB et Manettes fournies<br />\r\nPrise secteur 220Volt - 50Hz<br />\r\nDimensions : L.15 x P.15 x H.11 cm (&agrave; nu)<br />\r\n<br />\r\nNB : Les jeux (ou ROMS) ne sont pas inclus dans la console. Tr&egrave;s facile &agrave; trouver, il vous suffira dans les t&eacute;l&eacute;charger et de les installer sur la cl&eacute; USB fournie. Pour le bon fonctionnement du produit r&eacute;f&eacute;rez-vous &agrave; la notice d&#39;utilisation du logiciel <a href=\"https://www.recalbox.com/\">Recalbox</a>. Possibilit&eacute; de brancher jusqu&#39;&agrave; 4 manettes. Pour les manettes bluetooth un dongle bluetooth est n&eacute;cessaire <a href=\"https://www.restorefr.com/crea/arc_alim/build/IMG_7.jpg\" target=\"_blank\">(ex : manettes PS3)</a>.</p>\r\n', 'img/jx_alim/', 4);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_catg` int(11) NOT NULL,
  `categorie` varchar(105) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_catg`, `categorie`) VALUES
(1, 'Lampes'),
(2, 'Meubles'),
(3, 'HI-FI'),
(4, 'Jeux'),
(5, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id_images` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url_img` varchar(45) DEFAULT NULL,
  `id_articles` int(11) DEFAULT NULL,
  `id_news` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id_images`, `name`, `url_img`, `id_articles`, `id_news`, `mark`) VALUES
(1, 'IMG_1.jpg', 'img/lp_45T/IMG_1.jpg', 1, NULL, 9),
(2, 'IMG_2.jpg', 'img/lp_45T/IMG_2.jpg', 1, NULL, 10),
(3, 'IMG_3.jpg', 'img/lp_45T/IMG_3.jpg', 1, NULL, 11),
(4, 'IMG_4.jpg', 'img/lp_45T/IMG_4.jpg', 1, NULL, 12),
(5, 'IMG_5.jpg', 'img/lp_45T/IMG_5.jpg', 1, NULL, 13),
(6, 'IMG_6.jpg', 'img/lp_45T/IMG_6.jpg', 1, NULL, 14),
(8, 'IMG_8.jpg', 'img/lp_45T/IMG_8.jpg', 1, NULL, 15),
(9, 'IMG_9.jpg', 'img/lp_45T/IMG_9.jpg', 1, NULL, 6),
(10, 'IMG_10.jpg', 'img/lp_45T/IMG_10.jpg', 1, NULL, 7),
(11, 'IMG_11.jpg', 'img/lp_45T/IMG_11.jpg', 1, NULL, 8),
(12, 'IMG_up_1.jpg', 'img/lp_45T/IMG_up_1.jpg', 1, NULL, 3),
(13, 'IMG_up_2.jpg', 'img/lp_45T/IMG_up_2.jpg', 1, NULL, 2),
(14, 'IMG_up_3.jpg', 'img/lp_45T/IMG_up_3.jpg', 1, NULL, 5),
(15, 'IMG_up_4.jpg', 'img/lp_45T/IMG_up_4.jpg', 1, NULL, 1),
(16, 'IMG_up_5.jpg', 'img/lp_45T/IMG_up_5.jpg', 1, NULL, 4),
(17, 'IMG_1.jpg', 'img/lp_alim/IMG_1.jpg', 2, NULL, 8),
(18, 'IMG_2.jpg', 'img/lp_alim/IMG_2.jpg', 2, NULL, 9),
(19, 'IMG_3.jpg', 'img/lp_alim/IMG_3.jpg', 2, NULL, 10),
(20, 'IMG_4.jpg', 'img/lp_alim/IMG_4.jpg', 2, NULL, 11),
(21, 'IMG_5.jpg', 'img/lp_alim/IMG_5.jpg', 2, NULL, 12),
(22, 'IMG_6.jpg', 'img/lp_alim/IMG_6.jpg', 2, NULL, 13),
(23, 'IMG_7.jpg', 'img/lp_alim/IMG_7.jpg', 2, NULL, 2),
(24, 'IMG_8.jpg', 'img/lp_alim/IMG_8.jpg', 2, NULL, 7),
(25, 'IMG_9.jpg', 'img/lp_alim/IMG_9.jpg', 2, NULL, 1),
(26, 'IMG_up_1.jpg', 'img/lp_alim/IMG_up_1.jpg', 2, NULL, 5),
(27, 'IMG_up_2.jpg', 'img/lp_alim/IMG_up_2.jpg', 2, NULL, 6),
(28, 'IMG_up_3.jpg', 'img/lp_alim/IMG_up_3.jpg', 2, NULL, 3),
(29, 'IMG_up_4.jpg', 'img/lp_alim/IMG_up_4.jpg', 2, NULL, 4),
(30, 'IMG_1.jpg', 'img/lp_sky/IMG_1.jpg', 3, NULL, 1),
(31, 'IMG_2.jpg', 'img/lp_sky/IMG_2.jpg', 3, NULL, 2),
(32, 'IMG_3.jpg', 'img/lp_sky/IMG_3.jpg', 3, NULL, 3),
(33, 'IMG_4.jpg', 'img/lp_sky/IMG_4.jpg', 3, NULL, 8),
(34, 'IMG_5.jpg', 'img/lp_sky/IMG_5.jpg', 3, NULL, 7),
(35, 'IMG_6.jpg', 'img/lp_sky/IMG_6.jpg', 3, NULL, 4),
(36, 'IMG_7.jpg', 'img/lp_sky/IMG_7.jpg', 3, NULL, 5),
(37, 'IMG_8.jpg', 'img/lp_sky/IMG_8.jpg', 3, NULL, 6),
(38, 'IMG_1.jpg', 'img/mbl_comm/IMG_1.jpg', 4, NULL, 5),
(39, 'IMG_2.jpg', 'img/mbl_comm/IMG_2.jpg', 4, NULL, 6),
(40, 'IMG_3.jpg', 'img/mbl_comm/IMG_3.jpg', 4, NULL, 7),
(41, 'IMG_4.jpg', 'img/mbl_comm/IMG_4.jpg', 4, NULL, 8),
(42, 'IMG_5.jpg', 'img/mbl_comm/IMG_5.jpg', 4, NULL, 9),
(43, 'IMG_6.jpg', 'img/mbl_comm/IMG_6.jpg', 4, NULL, 10),
(44, 'IMG_7.jpg', 'img/mbl_comm/IMG_7.jpg', 4, NULL, 11),
(45, 'IMG_8.jpg', 'img/mbl_comm/IMG_8.jpg', 4, NULL, 2),
(46, 'IMG_9.jpg', 'img/mbl_comm/IMG_9.jpg', 4, NULL, 3),
(47, 'IMG_10.jpg', 'img/mbl_comm/IMG_10.jpg', 4, NULL, 4),
(48, 'IMG_11.jpg', 'img/mbl_comm/IMG_11.jpg', 4, NULL, 1),
(49, 'IMG_1.jpg', 'img/mbl_casier/IMG_1.jpg', 5, NULL, 4),
(50, 'IMG_2.jpg', 'img/mbl_casier/IMG_2.jpg', 5, NULL, 5),
(51, 'IMG_3.jpg', 'img/mbl_casier/IMG_3.jpg', 5, NULL, 6),
(52, 'IMG_4.jpg', 'img/mbl_casier/IMG_4.jpg', 5, NULL, 7),
(53, 'IMG_5.jpg', 'img/mbl_casier/IMG_5.jpg', 5, NULL, 1),
(54, 'IMG_6.jpg', 'img/mbl_casier/IMG_6.jpg', 5, NULL, 3),
(55, 'IMG_7.jpg', 'img/mbl_casier/IMG_7.jpg', 5, NULL, 2),
(56, 'IMG_1.jpg', 'img/mbl_marin/IMG_1.jpg', 6, NULL, 3),
(57, 'IMG_2.jpg', 'img/mbl_marin/IMG_2.jpg', 6, NULL, 4),
(58, 'IMG_3.jpg', 'img/mbl_marin/IMG_3.jpg', 6, NULL, 5),
(59, 'IMG_4.jpg', 'img/mbl_marin/IMG_4.jpg', 6, NULL, 6),
(60, 'IMG_5.jpg', 'img/mbl_marin/IMG_5.jpg', 6, NULL, 8),
(61, 'IMG_6.jpg', 'img/mbl_marin/IMG_6.jpg', 6, NULL, 7),
(62, 'IMG_7.jpg', 'img/mbl_marin/IMG_7.jpg', 6, NULL, 2),
(63, 'IMG_8.jpg', 'img/mbl_marin/IMG_8.jpg', 6, NULL, 1),
(64, 'IMG_1.jpg', 'img/mbl_brasil/IMG_1.jpg', 7, NULL, 3),
(65, 'IMG_2.jpg', 'img/mbl_brasil/IMG_2.jpg', 7, NULL, 4),
(66, 'IMG_3.jpg', 'img/mbl_brasil/IMG_3.jpg', 7, NULL, 5),
(67, 'IMG_4.jpg', 'img/mbl_brasil/IMG_4.jpg', 7, NULL, 6),
(68, 'IMG_5.jpg', 'img/mbl_brasil/IMG_5.jpg', 7, NULL, 7),
(69, 'IMG_6.jpg', 'img/mbl_brasil/IMG_6.jpg', 7, NULL, 2),
(70, 'IMG_7M.jpg', 'img/mbl_brasil/IMG_7M.jpg', 7, NULL, 1),
(71, 'IMG_1.jpg', 'img/hifi_radio/IMG_1.jpg', 8, NULL, 7),
(72, 'IMG_2.jpg', 'img/hifi_radio/IMG_2.jpg', 8, NULL, 8),
(73, 'IMG_3.jpg', 'img/hifi_radio/IMG_3.jpg', 8, NULL, 9),
(74, 'IMG_4.jpg', 'img/hifi_radio/IMG_4.jpg', 8, NULL, 10),
(75, 'IMG_5.jpg', 'img/hifi_radio/IMG_5.jpg', 8, NULL, 11),
(76, 'IMG_6.jpg', 'img/hifi_radio/IMG_6.jpg', 8, NULL, 15),
(77, 'IMG_7.jpg', 'img/hifi_radio/IMG_7.jpg', 8, NULL, 12),
(78, 'IMG_8.jpg', 'img/hifi_radio/IMG_8.jpg', 8, NULL, 13),
(80, 'IMG_10.jpg', 'img/hifi_radio/IMG_10.jpg', 8, NULL, 14),
(81, 'IMG_11.jpg', 'img/hifi_radio/IMG_11.jpg', 8, NULL, 2),
(82, 'IMG_12.jpg', 'img/hifi_radio/IMG_12.jpg', 8, NULL, 5),
(83, 'IMG_13.jpg', 'img/hifi_radio/IMG_13.jpg', 8, NULL, 3),
(84, 'IMG_14.jpg', 'img/hifi_radio/IMG_14.jpg', 8, NULL, 1),
(85, 'IMG_15.jpg', 'img/hifi_radio/IMG_15.jpg', 8, NULL, 4),
(86, 'IMG_16.jpg', 'img/hifi_radio/IMG_16.jpg', 8, NULL, 6),
(87, 'IMG_1.jpg', 'img/hifi_val/IMG_1.jpg', 9, NULL, 3),
(88, 'IMG_2.jpg', 'img/hifi_val/IMG_2.jpg', 9, NULL, 1),
(89, 'IMG_3.jpg', 'img/hifi_val/IMG_3.jpg', 9, NULL, 2),
(90, 'IMG_4.jpg', 'img/hifi_val/IMG_4.jpg', 9, NULL, 4),
(91, 'IMG_5.jpg', 'img/hifi_val/IMG_5.jpg', 9, NULL, 5),
(92, 'IMG_1.jpg', 'img/hifi_ghost/IMG_1.jpg', 10, NULL, 5),
(93, 'IMG_2.jpg', 'img/hifi_ghost/IMG_2.jpg', 10, NULL, 6),
(94, 'IMG_3.jpg', 'img/hifi_ghost/IMG_3.jpg', 10, NULL, 7),
(95, 'IMG_4.jpg', 'img/hifi_ghost/IMG_4.jpg', 10, NULL, 8),
(96, 'IMG_5.jpg', 'img/hifi_ghost/IMG_5.jpg', 10, NULL, 9),
(97, 'IMG_6.jpg', 'img/hifi_ghost/IMG_6.jpg', 10, NULL, 2),
(98, 'IMG_7.jpg', 'img/hifi_ghost/IMG_7.jpg', 10, NULL, 10),
(99, 'IMG_8.jpg', 'img/hifi_ghost/IMG_8.jpg', 10, NULL, 4),
(100, 'IMG_9.jpg', 'img/hifi_ghost/IMG_9.jpg', 10, NULL, 3),
(101, 'IMG_10.jpg', 'img/hifi_ghost/IMG_10.jpg', 10, NULL, 1),
(102, 'IMG_1.jpg', 'img/hifi_ghetto/IMG_1.jpg', 11, NULL, 4),
(103, 'IMG_2.jpg', 'img/hifi_ghetto/IMG_2.jpg', 11, NULL, 5),
(104, 'IMG_3.jpg', 'img/hifi_ghetto/IMG_3.jpg', 11, NULL, 6),
(105, 'IMG_4.jpg', 'img/hifi_ghetto/IMG_4.jpg', 11, NULL, 7),
(106, 'IMG_5.jpg', 'img/hifi_ghetto/IMG_5.jpg', 11, NULL, 8),
(107, 'IMG_6.jpg', 'img/hifi_ghetto/IMG_6.jpg', 11, NULL, 3),
(108, 'IMG_7.jpg', 'img/hifi_ghetto/IMG_7.jpg', 11, NULL, 2),
(109, 'IMG_8.jpg', 'img/hifi_ghetto/IMG_8.jpg', 11, NULL, 9),
(110, 'IMG_9.jpg', 'img/hifi_ghetto/IMG_9.jpg', 11, NULL, 1),
(111, 'IMG_1.jpg', 'img/hifi_boite/IMG_1.jpg', 12, NULL, 2),
(112, 'IMG_2.jpg', 'img/hifi_boite/IMG_2.jpg', 12, NULL, 3),
(113, 'IMG_3.jpg', 'img/hifi_boite/IMG_3.jpg', 12, NULL, 4),
(114, 'IMG_4.jpg', 'img/hifi_boite/IMG_4.jpg', 12, NULL, 1),
(115, 'IMG_1.jpg', 'img/hifi_split/IMG_1.jpg', 13, NULL, 5),
(116, 'IMG_2.jpg', 'img/hifi_split/IMG_2.jpg', 13, NULL, 6),
(117, 'IMG_3.jpg', 'img/hifi_split/IMG_3.jpg', 13, NULL, 7),
(118, 'IMG_4.jpg', 'img/hifi_split/IMG_4.jpg', 13, NULL, 8),
(119, 'IMG_5.jpg', 'img/hifi_split/IMG_5.jpg', 13, NULL, 9),
(120, 'IMG_6.jpg', 'img/hifi_split/IMG_6.jpg', 13, NULL, 3),
(121, 'IMG_7.jpg', 'img/hifi_split/IMG_7.jpg', 13, NULL, 4),
(122, 'IMG_8.jpg', 'img/hifi_split/IMG_8.jpg', 13, NULL, 1),
(123, 'IMG_9.jpg', 'img/hifi_split/IMG_9.jpg', 13, NULL, 2),
(124, 'IMG_1.jpg', 'img/jx_bureau/IMG_1.jpg', 14, NULL, 4),
(125, 'IMG_2.jpg', 'img/jx_bureau/IMG_2.jpg', 14, NULL, 5),
(126, 'IMG_3.jpg', 'img/jx_bureau/IMG_3.jpg', 14, NULL, 6),
(127, 'IMG_4.jpg', 'img/jx_bureau/IMG_4.jpg', 14, NULL, 7),
(128, 'IMG_5.jpg', 'img/jx_bureau/IMG_5.jpg', 14, NULL, 8),
(129, 'IMG_6.jpg', 'img/jx_bureau/IMG_6.jpg', 14, NULL, 9),
(130, 'IMG_7.jpg', 'img/jx_bureau/IMG_7.jpg', 14, NULL, 10),
(131, 'IMG_8.jpg', 'img/jx_bureau/IMG_8.jpg', 14, NULL, 11),
(132, 'IMG_9.jpg', 'img/jx_bureau/IMG_9.jpg', 14, NULL, 12),
(133, 'IMG_10.jpg', 'img/jx_bureau/IMG_10.jpg', 14, NULL, 13),
(134, 'IMG_11.jpg', 'img/jx_bureau/IMG_11.jpg', 14, NULL, 2),
(135, 'IMG_12.jpg', 'img/jx_bureau/IMG_12.jpg', 14, NULL, 3),
(136, 'IMG_up_1.jpg', 'img/jx_bureau/IMG_up_1.jpg', 14, NULL, 1),
(137, 'IMG_1.jpg', 'img/jx_alim/IMG_1.jpg', 15, NULL, 8),
(138, 'IMG_2.jpg', 'img/jx_alim/IMG_2.jpg', 15, NULL, 9),
(139, 'IMG_3.jpg', 'img/jx_alim/IMG_3.jpg', 15, NULL, 10),
(141, 'IMG_5.jpg', 'img/jx_alim/IMG_5.jpg', 15, NULL, 11),
(142, 'IMG_6.jpg', 'img/jx_alim/IMG_6.jpg', 15, NULL, 5),
(143, 'IMG_7.jpg', 'img/jx_alim/IMG_7.jpg', 15, NULL, 7),
(144, 'IMG_8.jpg', 'img/jx_alim/IMG_8.jpg', 15, NULL, 3),
(145, 'IMG_9.jpg', 'img/jx_alim/IMG_9.jpg', 15, NULL, 4),
(146, 'IMG_10.jpg', 'img/jx_alim/IMG_10.jpg', 15, NULL, 2),
(147, 'IMG_11.jpg', 'img/jx_alim/IMG_11.jpg', 15, NULL, 1),
(148, 'IMG_12.jpg', 'img/jx_alim/IMG_12.jpg', 15, NULL, 6);

-- --------------------------------------------------------

--
-- Structure de la table `mailing_list`
--

CREATE TABLE `mailing_list` (
  `id_mail` int(11) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `date_inscrp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `titre` varchar(105) DEFAULT NULL,
  `content` longtext,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `lieux` varchar(105) DEFAULT NULL,
  `liens` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'admin'),
(2, 'none');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `date_inscrp` datetime DEFAULT NULL,
  `status_id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `mail`, `password`, `date_inscrp`, `status_id_status`) VALUES
(1, 'restorefr@gmail.com', '$2y$10$/kj4YkoHVaAfS4oK84Qs7O3acw89dgdnwuexP0HIi5XNgSt2HfH/W', '2019-03-15 23:45:28', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_articles`),
  ADD KEY `fk_articles_categories1_idx` (`id_catg`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_catg`),
  ADD UNIQUE KEY `id_catg_UNIQUE` (`id_catg`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_images`),
  ADD KEY `fk_images_articles1_idx` (`id_articles`),
  ADD KEY `fk_images_news1_idx` (`id_news`);

--
-- Index pour la table `mailing_list`
--
ALTER TABLE `mailing_list`
  ADD PRIMARY KEY (`id_mail`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`),
  ADD UNIQUE KEY `id_status_UNIQUE` (`id_status`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `fk_users_status_idx` (`status_id_status`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_articles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id_images` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT pour la table `mailing_list`
--
ALTER TABLE `mailing_list`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_categories1` FOREIGN KEY (`id_catg`) REFERENCES `categories` (`id_catg`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_images_articles1` FOREIGN KEY (`id_articles`) REFERENCES `articles` (`id_articles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_images_news1` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_status` FOREIGN KEY (`status_id_status`) REFERENCES `status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;
