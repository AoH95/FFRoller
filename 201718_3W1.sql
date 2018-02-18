-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 19 Février 2018 à 00:01
-- Version du serveur :  5.7.21
-- Version de PHP :  7.1.13-1+0~20180105151623.14+stretch~1.gbp1086fa

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `201718_3W1`
--

-- --------------------------------------------------------

--
-- Structure de la table `ffroller_articles`
--

CREATE TABLE `ffroller_articles` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Titre',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lien formaté',
  `status` tinyint(1) NOT NULL COMMENT 'Statut 0 : Inactif - 1 : Actif',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contenu',
  `createdAt` datetime NOT NULL COMMENT 'Date de création',
  `updatedAt` datetime DEFAULT NULL COMMENT 'Date de msie à jour',
  `deletedAt` datetime DEFAULT NULL COMMENT 'Date de suppression',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Auteur',
  `fkCategory` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ffroller_articles`
--

INSERT INTO `ffroller_articles` (`id`, `image`, `title`, `slug`, `status`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `author`, `fkCategory`) VALUES
(1, 'article3.png', 'Roller Derby World Cup 2018 : la France, 6ème nation mondiale !', 'roller-derby-world-cup-2018', 1, 'Après sa 9ème place en 2014 à Dallas (USA), l’Équipe de France a atteint ses objectifs en allant chercher la 6ème position du classement mondial à l’issue de la Coupe du Monde de roller Derby 2018. Retour sur le parcours des Bleues, match par match.', '2018-01-01 00:00:00', '2018-02-15 08:12:21', NULL, 'Louise Hamon', 3),
(2, 'article2.png', 'Championnat de France 2018 - Patinage Artistique en groupe : J-30 !', 'championnat-de-france-groupe-2018', 1, 'Les meilleurs groupes français se donnent rendez-vous à Saintes (16) du 23 au 25 février 2018.  C’est la première fois que le Championnat de France de groupe se tiendra à Saintes. Suite à la réussite de l’organisation de l’Open de danse la saison dernière, c’est sans hésitation que la commission a confié l’organisation de ce championnat de France à la Ligue  Nouvelle-Aquitaine et en particulier au club de Saintes.\r\n\r\nLe groupe est sans doute la discipline la plus visuelle du patinage artistique par la richesse des costumes et la diversité des thèmes ou des chorégraphies. Elle attire un public nombreux et enthousiaste.', '2013-01-01 00:00:00', '2018-02-15 08:09:23', NULL, 'Louise Hamon', 1),
(3, 'image4.jpg', 'Rando Verte Roller 2018 : à vos patins !', 'rando-verte-roller-2018-a-vos-patins', 1, 'Avis aux randonneurs, le calendrier 2018 vient de sortir ! Comme l’an passé, le circuit national des « Rando Verte Roller » vous emmènera un peu partout en France. Chaussez vos rollers et partez à la découverte de nos régions à travers 10 étapes aux paysages et aux ambiances variées. Il y en aura pour tous les goûts avec toujours le même esprit convivial. Au menu, donc, des parcours loisirs ou plus sportifs, des rencontres, des échanges, des souvenirs inoubliables. Et le tout, en parfaite sécurité.\r\nDu 25 mars au 7 octobre 2018, de Bretagne en Camargue, du Grand Est aux Landes, tout sera possible. A vos agendas !', '2013-01-01 00:00:00', '2018-02-15 08:16:33', NULL, 'Louise Hamon', 6);

-- --------------------------------------------------------

--
-- Structure de la table `ffroller_category`
--

CREATE TABLE `ffroller_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Titre',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lien formaté',
  `status` tinyint(1) NOT NULL COMMENT 'Statut 0 : Inactif - 1 : Actif',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contenu',
  `ksp1` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Key Selling Point 1',
  `ksp2` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Key Selling Point 2',
  `ksp3` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Key Selling Point 3',
  `titlek1` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Title Key Selling Point 3',
  `titlek2` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Title Key Selling Point 2',
  `titlek3` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Title Key Selling Point 3',
  `createdAt` datetime NOT NULL COMMENT 'Date de création',
  `updatedAt` datetime DEFAULT NULL COMMENT 'Date de msie à jour',
  `deletedAt` datetime DEFAULT NULL COMMENT 'Date de suppression',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ffroller_category`
--

INSERT INTO `ffroller_category` (`id`, `title`, `slug`, `status`, `description`, `ksp1`, `ksp2`, `ksp3`, `titlek1`, `titlek2`, `titlek3`, `createdAt`, `updatedAt`, `deletedAt`, `image`) VALUES
(1, 'Patinage artistique', 'patinage-artistique', 1, 'Le patinage artistique sur roulettes ou roller artistique est l’une des plus anciennes disciplines de la Fédération Française de Roller Sports, les premiers clubs français datant du début du siècle dernier.\r\n<br><br>\r\nIl se pratique en individuel, en couple artistique, en couple danse ou bien en groupe dans le cas du patinage synchronisé et prend des dimensions différentes suivant la spécialité. Ce sport à haute motricité allie la technique et l’expression chorégraphique sur un thème musical, et nécessite des qualités physiques et psychologiques élevées. Extrêmement spectaculaire, ce sport apporte à ses pratiquants de grandes sensations de glisse et de vitesse. Les spécialités sont le patinage artistique, la danse, le in-line et le patinage de groupe.', 'Dès l’âge de 4 ans, il est possible de découvrir les joies du patinage artistique. Du niveau régional au plus haut niveau international, le calendrier des compétitions est riche en épreuves de tous genres : Championnats régionaux, Championnats de France, Coupe d’Europe, Championnats d’Europe, Championnats du Monde.', 'La France se situe à la 7ème place mondiale. Les grandes nations sont l’Italie, l’Espagne, l’Argentine et l’Allemagne. Dans ces pays, les entraîneurs de clubs sont professionnels.\r\nEn 2012, les athlètes français sont montés à six reprises sur le podium. La Fédération compte d’ailleurs dans ses rangs un nouveau champion du monde avec le titre obtenu par Hedi Megadi en Solo Danse Junior.', 'Si vous souhaitez transmettre votre passion du patinage artistique et de la danse, des formations sont mises en place régulièrement. Celles-ci débouchent sur des diplômes reconnus permettant d’assurer la qualité de l’encadrement proposé au sein des différentes structures.', 'Où débuter ?', 'L\'équipe de France', 'La formation', '2018-02-01 00:00:00', '2018-02-16 02:26:24', NULL, 'page-patinage_artistique.png'),
(2, 'Roller course', 'roller-course', 1, 'Pratiquée par les hommes et les femmes, en individuel ou par équipe, « la course » propose de nombreuses épreuves allant du 100 mètres au marathon. Depuis l’émergence du roller en ligne, les courses populaires en villes se sont multipliées. En effet, la course sur route rassemble de plus en plus d’adeptes.\r\n<br><br>\r\nTirée par les performances de l’élite, les marathons roller populaires permettent à chacun de se mesurer et de se tester. Organisés en équipes de marques, les meilleurs athlètes se disputent les podiums pendant que les pratiquants loisir évoluent à leur rythme.\r\nLes spécialités sont la piste, le circuit routier et la route (marathons).', 'En règle générale, les clubs accueillent vos enfants dès l’âge de 6 ans et leur font découvrir les fondamentaux du roller.\r\nEn France, de nombreuses compétitions sont organisées chaque année. Au-delà des championnats de France, il existe de grandes compétitions de référence attirant les meilleurs patineurs mondiaux dont les 24H du Mans Roller qui regroupe chaque année plusieurs milliers de pratiquants sur le circuit Bugatti.', 'Au niveau international, les compétitions de référence sont les Championnats d’Europe et du Monde. Un circuit de Coupe de Monde Marathon a lieu chaque année. La France se situe dans les meilleures nations mondiales. En 2012, les Bleus ont ramené pas moins de 20 médailles dont 6 titres européens et 1 titre mondial.', 'Si vous souhaitez transmettre votre passion de la course, des formations sont mises en place régulièrement. Celles-ci débouchent sur des diplômes reconnus permettant d’assurer la qualité de l’encadrement proposé au sein des différentes structures. Différents cursus de formation ont été mis en place par la Commission Enseignement de la Fédération.', 'Où débuter ?', 'L’équipe de France', 'La formation', '2013-01-01 00:00:00', '2018-02-16 02:25:54', NULL, 'page-roller_course.png'),
(3, 'Roller derby', 'roller-derby', 1, 'Le Roller Derby se pratique en quads (patins à roues non alignées). Il est né au milieu de la Grande Dépression, en 1929, à Chicago, lorsque son inventeur, le promoteur Léo Seltzer, eut l’idée de simuler un marathon Los Angeles / New York. Les participants étaient tellement pris par le jeu qu’ils finissaient par se bousculer les uns les autres afin de gagner la course, qui durait des heures. Ce fut un succès immédiat avec près de 20.000 spectateurs dès la première semaine. C’est alors que le roller derby devint un objet de culture populaire américaine et des clubs fleurirent partout en Amérique du Nord.\r\n<br><br>\r\nLe Roller Derby est l’un des derniers sports à avoir intégré la Fédération Française de Roller Sports. Très tactique, le Roller Derby allie à la fois vitesse et combat, tout cela dans une ambiance amicale et survoltée.', 'Le jeu se déroule sur une piste ovale de 30 m sur 16 m. Un match se compose de deux mi-temps de 30 minutes. Une mi-temps est découpée en sous-périodes, appelées jams, d’une durée maximale de 2 min ; entre deux jams, s’écoule une période de 30 secondes pendant laquelle les équipes sont autorisées à changer les joueuses envoyées sur le terrain. Au total, une équipe peut compter jusqu’à 14 joueuses sur une feuille de match.', 'Sur le terrain, 10 joueuses s’affrontent, chaque équipe étant constituée : une jammeuse et quatre bloqueuses.\r\nLes bloqueuses des deux équipes doivent rester groupées en un «pack», roulant à allure modeste autour de la piste. Les jammeuses vont devoir doubler un maximum de fois le pack en effectuant des tours de piste. A chaque fois qu’une jammeuse double une adversaire sans faire de fautes, elle fait gagner un point à son équipe.\r\n\r\nPour cela, les contacts, appelés blocages, sont autorisés mais réglementés.', 'La teneur des règles et la vitesse du jeu font du Roller Derby un sport complexe à arbitrer. L’équipe d’officiels encadrant un match est à la hauteur de l’enjeu : sont nécessaires pas moins de 7 arbitres et 11 NSO «Non Skating Officials».\r\nLes premiers ont pour rôle de surveiller le bon déroulement du match et es indispensables NSO assurent quant à eux «l’intendance» du match en s’occupant du chronomètre, de la prison, etc.', 'Les règles', 'Le jeu', 'Arbitrage', '2013-01-01 00:00:00', '2018-02-16 02:25:22', NULL, 'page-roller_derby.png'),
(4, 'Skate board', 'skateboard', 1, 'La pratique du skateboard est considérée généralement comme un sport, une activité récréative, un moyen de transport ou une forme artistique pour réaliser des figures, le plus souvent en environnement urbain, ou dans des espaces dédiés (skateparks). Il sert aussi dans sa forme longboard à des courses de vitesse, le downhill.\r\nLes pratiquants sont appelés « skateurs » ou « riders ».\r\n<br><br>\r\nEn août 2016, le skateboard est rentré dans le cercle fermé des disciplines olympiques. Il intégrera le programme des jeux de Tokyo en 2020.', 'La question se pose dès que l\'on désire aborder le style et la philosophie de la discipline. Les systèmes d\'évaluation des skateurs lors des compétitions montrent l\'ambivalence de la discipline. Ainsi, à l\'issue de sa prestation, le skateboarder sera jugé non seulement sur la technique et la performance, mais aussi sur la créativité et le style (l\'esthétisme).', 'Le skateboard est généralement considéré comme un sport extrême, même s\'il peut être pratiqué à des niveaux bien différents. En tant que discipline, il reste proche de ses voisins de « glisse » tels que le BMX, le X-board, le longskate, le streetboard, le surf, le skimboard, la trottinette freestyle et ses variantes  : windsurf, kitesurf, le wake board , ou même le snowboard.', 'Un trick est une figure acrobatique effectuée par le pratiquant d\'un sport de glisse (skateboard, roller, trottinette…). Le plus simple est le ollie (le saut), c\'est la figure qu\'un débutant doit apprendre s\'il veut pouvoir évoluer. Pour passer à un autre niveau il faut réussir le kickflip ou le heelflip et ainsi avoir accès à une multitude d\'autres tricks.', 'Sport ou art ?', 'Un sport extrême', 'Les tricks', '2013-01-01 00:00:00', '2018-02-16 02:24:37', NULL, 'page-skateboard.png'),
(5, 'Roller freestyle', 'roller-freestyle', 1, 'Depuis sa création en 1994, la Commission Roller Freestyle s’est ouverte à de nouvelles pratiques pour répondre à l’explosion des pratiques urbaines. Tout en développant le slalom et le saut, ses deux spécialités fondatrices, elle a donc accueilli le street en 1997, la rampe en 1999, le bowl en 2003 et le skatecross en 2012.\r\n<br><br>\r\nLa structuration internationale de ces sports, la création de diplômes d’encadrement professionnel, et l’engouement des collectivités pour la création de skateparks ne cessent de confirmer l\'intérêt porté à ces sports. Les spécialités : le slalom, le freeride, l’acrobatique, le roller soccer et trotinette freestyle.', 'Maîtriser les risques en proposant des progressions adaptées, favoriser l’échange et les rencontres sportives, bénéficier de conseils, d’une assurance adaptée à votre pratique… vous trouverez tout cela dans nos clubs affiliés.', 'Les Français ont toujours été très présents sur les podiums internationaux en slalom, mais depuis quelques années, les pays comme la Russie, la Corée du sud et la Chine survolent la discipline.\r\nEn street, la France fait bonne place au milieu des Américains. Quant au freeride, les Français dominent largement la discipline du skatecross au niveau mondial.', 'Chaque année, la FFRS vous propose des formations, pour préparer le passage des différents diplômes spécifiques à ses disciplines. Que ce soit pour améliorer la qualité de l’encadrement bénévole, ou pour envisager un métier, ces diplômes apporteront une réelle reconnaissance de vos compétences.', 'Où débuter ?', 'Les compétitions', 'La formation', '2013-01-01 00:00:00', '2018-02-16 02:24:02', NULL, 'page-roller_freestyle.png'),
(6, 'Roller randonnée', 'roller-randonnee', 1, 'La randonnée est une discipline non compétitive de la FFRS qui peut se pratiquer seul, entre amis ou en famille. Elle est présente à la fédération depuis 1996 et ne cesse de se développer.\r\n<br><br>\r\nQuelques conseils pour pratiquer cette discipline : portez des protections complètes et des dispositifs réfléchissants, restez maître de sa vitesse et respectez la signalisation. Il faut également rappeler que : « sur l’ensemble du territoire national, en l’absence d’une réglementation spécifique du code de la route, les pratiquants du patinage à roulettes (roller), lorsqu’ils circulent sur une voie ouverte à la circulation publique, sont assimilés à des piétons »', 'Les clubs affiliés à la Fédération vous proposent d’apprendre les fondamentaux du roller (se déplacer, se diriger, se retourner, sauter et s’arrêter). Vous êtes ainsi dans les meilleures dispositions pour progresser grâce à l’expérience et au savoir faire des moniteurs diplômés. Ces derniers évaluent votre niveau avec l’ERF (Ecole du Roller Français) et vous proposent des parcours de randonnées adaptés.', 'De grandes randonnées populaires sont organisées chaque semaine dans les principales villes de France. Les randonnées en dehors des agglomérations sur routes ouvertes à la circulation publique ou sur les voies interdites à la circulation motorisée du type « voies vertes ».\r\nLes randonnées sportives sur routes ou « voies vertes » organisées permettent de réaliser des voyages « roller » sur des grands itinéraires en France ou à l’étranger.', 'Initié en 2009, le circuit national « Rando Verte Roller » regroupe des manifestations labellisées sur le territoire national. Ces rendez-vous qui permettent la pratique du roller comme sport de nature, sont autant d’occasions d’échanger entre clubs, rassemblés autour de temps forts qui concourent à structurer et à dynamiser la randonnée à rollers sur leur territoire.', 'Où débuter ?', 'Les formes de randonnée', 'Le label « Rando Verte Roller »', '2013-01-01 00:00:00', '2018-02-16 02:23:27', NULL, 'page-roller_randonnee.png'),
(7, 'Rink hockey', 'rink-hockey', 1, 'Le Rink-Hockey est un sport collectif très rapide pratiqué au masculin et au féminin. Alliance d’adresse et de technicité, ce sport procure beaucoup de plaisir aux amateurs de vitesse et de sensations fortes.\r\n<br><br>\r\nDepuis la base jusqu’à l’élite, le hockeyeur doit s’attacher à développer sa vitesse d’évolution et sa dextérité, mais aussi sa vision du jeu. Sport collectif de petit terrain favorisant les contre-attaques, le Rink-Hockey développe un jeu très tactique qui offre un spectacle réjouissant.', 'Dès le plus jeune âge, les clubs affiliés à la F.F.R.S. proposent l’accueil et l’initiation pour acquérir les bases du patinage sous la forme d’activités ludiques adaptées. A l’aise sur leurs 8 roulettes, les patineurs découvrent le Rink-Hockey à 3, adaptation de la discipline spécialement conçue pour les plus jeunes, permettant d’évoluer dans un environnement favorable et en toute sécurité.', 'Du niveau régional au plus haut niveau international, de nombreuses rencontres ont lieu toutes les semaines pour les hommes et les femmes. En 2012, les équipes de France ont signé des résultats historiques avec en point d’orgue le titre mondial obtenu par les seniors féminines au Brésil. Aujourd\'hui, La France occupe la 4ème place mondiale.', 'Si vous souhaitez transmettre votre passion du rink hockey, des formations sont mises en place régulièrement. Celles-ci débouchent sur des diplômes reconnus permettant d’assurer la qualité de l’encadrement proposé au sein des différentes structures.', 'Où débuter ?', 'Les compétitions', 'La formation', '2013-01-01 00:00:00', '2018-02-16 02:22:51', NULL, 'page-rink-hockey.png'),
(8, 'Roller hockey', 'roller-hockey', 1, 'Reconnu discipline de Haut Niveau par le Ministère en charge des Sports, le Roller Hockey est un sport collectif en plein essor offrant un jeu spectaculaire.\r\n<br><br>\r\nAgiles sur leurs rollers, habiles avec leur crosse, les hockeyeurs manient le palet et s’affrontent dans des rencontres empreintes de rapidité et de tactique, privilégiant la finesse à la dureté physique.', '329 clubs affiliés à la FFRS proposent l’accueil, la découverte et le perfectionnement pour tous les âges. Toutes les catégories sont représentées, et cette activité ludique par excellence se conjugue aussi bien au féminin qu’au masculin. En loisir ou en compétition, vous trouverez toujours un club pour vous accueillir !', 'Au niveau régional au plus haut niveau de pratique, de nombreux championnats proposent des rencontres tout au long de l’année.\r\nLa France joue les premiers rôles, se situant fréquemment dans les 4 premières nations mondiales, rivalisant avec des pays comme le Canada, les Etats-Unis ou la République Tchèque.', 'Si vous souhaitez transmettre votre passion du Roller Hockey, des formations sont mises en place régulièrement. Celles-ci débouchent sur des diplômes reconnus permettant d’assurer la qualité de l’encadrement proposé au sein des différentes structures.', 'Où débuter ?', 'Les compétitions', 'La formation', '2013-01-01 00:00:00', '2018-02-16 02:22:23', NULL, 'page-roller_hockey.png');

-- --------------------------------------------------------

--
-- Structure de la table `ffroller_champions`
--

CREATE TABLE `ffroller_champions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Titre',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lien formaté',
  `status` tinyint(1) NOT NULL COMMENT 'Statut 0 : Inactif - 1 : Actif',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contenu',
  `createdAt` datetime NOT NULL COMMENT 'Date de création',
  `updatedAt` datetime DEFAULT NULL COMMENT 'Date de msie à jour',
  `deletedAt` datetime DEFAULT NULL COMMENT 'Date de suppression',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ffroller_champions`
--

INSERT INTO `ffroller_champions` (`id`, `title`, `slug`, `status`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `image`) VALUES
(1, 'Nicolas Varin – champion du monde de descente', 'nicolas-varin-champion-du-monde-de-descente', 1, 'Ces premiers Roller Games furent une expérience incroyable ! Outre le fait de voyager à l’autre bout du monde et de découvrir des paysages et une culture différente, j’ai pu rencontrer et échanger avec différents pratiquants venant de toutes les régions du globe. On pouvait assister à d’autres disciplines et encourager notre équipe favorite (la France) en fonction des plannings. Le fait d’avoir regroupé toutes les disciplines du roller sur une si grande manifestation prouve que le roller est un sport multi-facette qui regroupe et uni, je ne serais pas surpris s’il devenait sport olympique.', '2013-01-01 00:00:00', '2018-02-16 16:18:23', NULL, 'champion3.png'),
(2, 'Gabriella Papadakis', 'gabriella-papadakis-patinage-artistique', 1, 'Gabriella Papadakis (née le 10 mai 1995 à Clermont-Ferrand, en Auvergne), est une patineuse en danse sur glace française. Avec son partenaire Guillaume Cizeron, ils sont doubles champions du monde (2015 et 2016), et quadruples champions d\'Europe (2015, 2016, 2017 et 2018).', '2013-01-01 00:00:00', '2018-02-16 16:15:55', NULL, 'champion2.png'),
(3, 'Taïg Khris - Triple champion du monde de roller sur rampe', 'taig-khris-triple-champion-du-monde-roller-rampe', 1, 'Taïg Khris, né le 27 juillet 1975 à Alger, est un athlète et entrepreneur gréco-algérien. Triple champion du monde de roller sur rampe, vainqueur des X Games, des Gravity Games et du tournoi ASA, Taïg Khris est le sportif le plus titré de l\'histoire des sports extrêmes. Il compte à son palmarès plus de 75 victoires et 109 podiums atteints, auxquels s’ajoutent de multiples records du monde obtenus dans son domaine.', '2013-01-01 00:00:00', '2018-02-16 16:13:39', NULL, 'champion1.png');

-- --------------------------------------------------------

--
-- Structure de la table `ffroller_clubs`
--

CREATE TABLE `ffroller_clubs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Titre',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lien formaté',
  `status` tinyint(1) NOT NULL COMMENT 'Statut 0 : Inactif - 1 : Actif',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contenu',
  `createdAt` datetime NOT NULL COMMENT 'Date de création',
  `updatedAt` datetime DEFAULT NULL COMMENT 'Date de msie à jour',
  `deletedAt` datetime DEFAULT NULL COMMENT 'Date de suppression',
  `lattitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lattitude',
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Longitude',
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'N° de Téléphone',
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Adresse e-mail',
  `site` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Site Web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ffroller_clubs`
--

INSERT INTO `ffroller_clubs` (`id`, `title`, `slug`, `status`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `lattitude`, `longitude`, `tel`, `mail`, `site`) VALUES
(1, 'LES HYENES D\'AUBERGENVILLE', 'les-hyenes-d-aubergenville', 1, '6 allée des Iris 78410 AUBERGENVILLE', '2013-01-01 00:00:00', NULL, NULL, '48,956095', '1,857128', '0645272526', 'contact@leshyenes.fr', 'www.leshyenes.fr'),
(2, 'OTHI S ROLLERS', 'othi-s-rollers', 1, '15 rue Mauregard 77280 OTHIS', '2017-01-01 00:00:00', NULL, NULL, '49,077312', '2,667965', '0160030482', 'guilbeaufr@yahoo.fr', 'N/A'),
(3, 'ROLLER HOCKEY COLLEGIEN', 'roller-hockey-collegien', 1, '8 place Mireille Morvan 77090 COLLEGIEN', '2017-01-01 00:00:00', NULL, NULL, '48,836962', '2,671900', '0626622575', 'rcc.richard.burny@gmail.com', 'hockeyclubcollegien.wix.com/les-elans'),
(4, '2 APN AVON', '2-apn-avon', 1, '29 rue du vieux ru 77210 AVON', '2017-01-01 00:00:00', NULL, NULL, '48,411078', '2,726588', '0160964267', 'luc.halbout@wanadoo.fr', '2apn77roller.online.fr'),
(5, 'ROLLER HOCKEY BRESSAN', 'roller-hockey-bressan', 1, '15 avenue Arsene d\'Arsonval 01000 BOURG EN BRESSE', '2017-01-01 00:00:00', NULL, NULL, '46,217107', '5,219972', '0625981372', 'president@coqnroller.fr', 'coqnroller.fr');

-- --------------------------------------------------------

--
-- Structure de la table `ffroller_competitions`
--

CREATE TABLE `ffroller_competitions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Titre',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lien formaté',
  `status` tinyint(1) NOT NULL COMMENT 'Statut 0 : Inactif - 1 : Actif',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Contenu',
  `createdAt` datetime NOT NULL COMMENT 'Date de création',
  `updatedAt` datetime DEFAULT NULL COMMENT 'Date de msie à jour',
  `deletedAt` datetime DEFAULT NULL COMMENT 'Date de suppression',
  `date` datetime DEFAULT NULL COMMENT 'Date',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'intro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ffroller_competitions`
--

INSERT INTO `ffroller_competitions` (`id`, `title`, `slug`, `status`, `description`, `createdAt`, `updatedAt`, `deletedAt`, `date`, `image`, `intro`) VALUES
(1, 'CHAMPIONNAT DE FRANCE GROUPE 2018', 'championnat-france-groupe-2018', 1, 'Les meilleurs groupes français se donnent rendez-vous à Saintes (16) du 23 au 25 février 2018.  C’est la première fois que le Championnat de France de groupe se tiendra à Saintes. Suite à la réussite de l’organisation de l’Open de danse la saison dernière, c’est sans hésitation que la commission a confié l’organisation de ce championnat de France à la Ligue  Nouvelle-Aquitaine et en particulier au club de Saintes.', '2018-02-01 00:00:00', '2018-02-16 16:26:00', NULL, '2018-02-23 10:00:00', 'article3.png', 'DU 23 AU 25 FÉVRIER 2018 À SAINTES'),
(2, 'JEAN PAUL THE BOSS 2018', 'jean-paul-the-boss-2018', 1, 'Les 24 et 25 février 2018 à Roscoff est organisé « Jean Paul the Boss », une compétition de Slalom vitesse – Slalom battle – Hauteur pure – Skatecross – Saut en longueur – Teamcross. Il s’agit d’un événement « une étoile » au classement.', '2018-01-01 00:00:00', '2018-02-16 16:42:31', NULL, '2018-02-24 10:00:00', 'article4.png', '24 & 25 FÉVRIER'),
(3, 'FRANCE INDOOR ROLLER COURSE 2018', 'france-indoor-roller-course-2018', 1, 'Le Championnat de France Indoor de Roller Course 2018 est prévu pour se tenir à La Roche-sur-Yon (85) les 3 et 4 mars 2018. L’événement est accueilli par le Vendespace, une enceinte d’exception pour cet événement qui clôt la saison indoor.', '2013-01-01 00:00:00', '2018-02-16 16:54:04', NULL, '2018-03-03 10:00:00', 'article5.png', '3 & 4 MARS 2018 À LA ROCHE-SUR-YON (85)'),
(4, 'CHAMPIONNAT DE FRANCE DES RÉGIONS U15, U17 ET U20 DE RINK HOCKEY 2018', 'championnat-france-rink-hockey-2018', 1, 'Le Championnat de France des Régions U15, U17 et U20 de rink hockey 2018 aura lieu les 17 et 18 mars 2018 en Bretagne. Le lieu reste à définir.', '2018-01-01 00:00:00', '2018-02-18 13:55:54', NULL, '2018-03-17 10:00:00', 'article6.png', '17 & 18 MARS 2018');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ffroller_articles`
--
ALTER TABLE `ffroller_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E47E86F7B5DA7C6` (`fkCategory`);

--
-- Index pour la table `ffroller_category`
--
ALTER TABLE `ffroller_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ffroller_champions`
--
ALTER TABLE `ffroller_champions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ffroller_clubs`
--
ALTER TABLE `ffroller_clubs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ffroller_competitions`
--
ALTER TABLE `ffroller_competitions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ffroller_articles`
--
ALTER TABLE `ffroller_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ffroller_category`
--
ALTER TABLE `ffroller_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `ffroller_champions`
--
ALTER TABLE `ffroller_champions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ffroller_clubs`
--
ALTER TABLE `ffroller_clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ffroller_competitions`
--
ALTER TABLE `ffroller_competitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ffroller_articles`
--
ALTER TABLE `ffroller_articles`
  ADD CONSTRAINT `FK_BFDD31687B5DA7C6` FOREIGN KEY (`fkCategory`) REFERENCES `ffroller_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
