-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 14, 2024 alle 18:15
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videogames`
--

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `anni`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `anni` (
`name` varchar(100)
,`year` int(5)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `genereq1`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `genereq1` (
`genre_name` varchar(255)
,`genre_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `genereq2`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `genereq2` (
`genre_name` varchar(255)
,`genre_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `genereq3`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `genereq3` (
`genre_name` varchar(255)
,`genre_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `genereq4`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `genereq4` (
`genre_name` varchar(255)
,`genre_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `genre`
--

INSERT INTO `genre` (`id`, `genre_name`) VALUES
(9, 'Action'),
(11, 'Adventure'),
(10, 'Fighting'),
(5, 'Misc'),
(4, 'Platform'),
(3, 'Puzzle'),
(8, 'Racing'),
(2, 'Role-Playing'),
(6, 'Shooter'),
(7, 'Simulation'),
(1, 'Sports'),
(12, 'Strategy');

-- --------------------------------------------------------

--
-- Struttura della tabella `name`
--

CREATE TABLE `name` (
  `id` int(11) NOT NULL,
  `name_value` varchar(255) DEFAULT NULL,
  `id_giochi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `name`
--

INSERT INTO `name` (`id`, `name_value`, `id_giochi`) VALUES
(1, 'Wii Sports', 1),
(2, 'Wii Sports Resort', 2),
(3, 'Pokemon Red/Pokemon Blue', 3),
(4, 'Tetris', 4),
(5, 'New Super Mario Bros.', 5),
(6, 'Wii Play', 6),
(7, 'New Super Mario Bros. Wii', 7),
(8, 'Duck Hunt', 8),
(9, 'Nintendogs', 9),
(10, 'Mario Kart DS', 10),
(11, 'Pokemon Gold/Pokemon Silver', 11),
(12, 'Wii Fit', 12),
(13, 'Wii Fit Plus', 13),
(14, 'Kinect Adventures!', 14),
(15, 'Grand Theft Auto V', 15),
(16, 'Grand Theft Auto: San Andreas', 16),
(17, 'Super Mario World', 17),
(18, 'Brain Age: Train Your Brain in Minutes a Day', 18),
(19, 'Pokemon Diamond/Pokemon Pearl', 19),
(20, 'Super Mario Land', 20),
(21, 'Super Mario Bros. 3', 21),
(22, 'Grand Theft Auto V', 22),
(23, 'Grand Theft Auto: Vice City', 23),
(24, 'Pokemon Ruby/Pokemon Sapphire', 24),
(25, 'Pokemon Black/Pokemon White', 25),
(26, 'Brain Age 2: More Training in Minutes a Day', 26),
(27, 'Gran Turismo 3: A-Spec', 27),
(28, 'Call of Duty: Modern Warfare 3', 28),
(29, 'Pokémon Yellow: Special Pikachu Edition', 29),
(30, 'Call of Duty: Black Ops', 30),
(31, 'Pokemon X/Pokemon Y', 31),
(32, 'Call of Duty: Black Ops 3', 32),
(33, 'Call of Duty: Black Ops II', 33),
(34, 'Call of Duty: Black Ops II', 34),
(35, 'Call of Duty: Modern Warfare 2', 35),
(36, 'Call of Duty: Modern Warfare 3', 36),
(37, 'Grand Theft Auto III', 37),
(38, 'Super Smash Bros. Brawl', 38),
(39, 'Call of Duty: Black Ops', 39),
(40, 'Animal Crossing: Wild World', 40),
(41, 'Mario Kart 7', 41),
(42, 'Halo 3', 42),
(43, 'Grand Theft Auto V', 43),
(44, 'Pokemon HeartGold/Pokemon SoulSilver', 44),
(45, 'Super Mario 64', 45),
(46, 'Gran Turismo 4', 46),
(47, 'Super Mario Galaxy', 47),
(48, 'Pokemon Omega Ruby/Pokemon Alpha Sapphire', 48),
(49, 'Super Mario Land 2: 6 Golden Coins', 49),
(50, 'Grand Theft Auto IV', 50),
(51, 'Gran Turismo', 51),
(52, 'Super Mario 3D Land', 52),
(53, 'Gran Turismo 5', 53),
(54, 'Call of Duty: Modern Warfare 2', 54),
(55, 'Grand Theft Auto IV', 55),
(56, 'Super Mario All-Stars', 56),
(57, 'Pokemon FireRed/Pokemon LeafGreen', 57),
(58, 'Super Mario 64', 58),
(59, 'Just Dance 3', 59),
(60, 'Call of Duty: Ghosts', 60),
(61, 'Halo: Reach', 61),
(62, 'Mario Kart 64', 62),
(63, 'New Super Mario Bros. 2', 63),
(64, 'Halo 4', 64),
(65, 'Final Fantasy VII', 65),
(66, 'Call of Duty: Ghosts', 66),
(67, 'Just Dance 2', 67),
(68, 'Gran Turismo 2', 68),
(69, 'Call of Duty 4: Modern Warfare', 69),
(70, 'Donkey Kong Country', 70),
(71, 'Minecraft', 71),
(72, 'Animal Crossing: New Leaf', 72),
(73, 'Mario Party DS', 73),
(74, 'The Elder Scrolls V: Skyrim', 74),
(75, 'Super Mario Kart', 75),
(76, 'FIFA 16', 76),
(77, 'Wii Party', 77),
(78, 'Halo 2', 78),
(79, 'Mario Party 8', 79),
(80, 'Pokemon Black 2/Pokemon White 2', 80),
(81, 'FIFA Soccer 13', 81),
(82, 'The Sims 3', 82),
(83, 'GoldenEye 007', 83),
(84, 'Mario & Sonic at the Olympic Games', 84),
(85, 'Final Fantasy X', 85),
(86, 'Final Fantasy VIII', 86),
(87, 'Pokémon Platinum Version', 87),
(88, 'Pac-Man', 88),
(89, 'Grand Theft Auto: Liberty City Stories', 89),
(90, 'Super Mario Galaxy 2', 90),
(91, 'Star Wars Battlefront (2015)', 91),
(92, 'Call of Duty: Advanced Warfare', 92),
(93, 'The Legend of Zelda: Ocarina of Time', 93),
(94, 'Crash Bandicoot 2: Cortex Strikes Back', 94),
(95, 'Super Mario Bros. 2', 95),
(96, 'Super Smash Bros. for Wii U and 3DS', 96),
(97, 'Call of Duty: World at War', 97),
(98, 'Battlefield 3', 98),
(99, 'The Legend of Zelda: Twilight Princess', 99),
(100, 'Call of Duty: Black Ops 3', 100),
(101, 'Just Dance', 101),
(102, 'Battlefield 3', 102),
(103, 'Need for Speed Underground', 103),
(104, 'Tekken 3', 104),
(105, 'Crash Bandicoot 3: Warped', 105),
(106, 'Super Smash Bros. Melee', 106),
(107, 'Mario Kart 8', 107),
(108, 'Fallout 4', 108),
(109, 'Mario Kart: Double Dash!!', 109),
(110, 'Just Dance 4', 110),
(111, 'FIFA 14', 111),
(112, 'Need for Speed Underground 2', 112),
(113, 'Medal of Honor: Frontline', 113),
(114, 'Uncharted 3: Drake\'s Deception', 114),
(115, 'Crash Bandicoot', 115),
(116, 'Zumba Fitness', 116),
(117, 'Gears of War 2', 117),
(118, 'Uncharted 2: Among Thieves', 118),
(119, 'Call of Duty 4: Modern Warfare', 119),
(120, 'FIFA 12', 120),
(121, 'Big Brain Academy', 121),
(122, 'Red Dead Redemption', 122),
(123, 'FIFA 15', 123),
(124, 'Donkey Kong Country Returns', 124),
(125, 'The Elder Scrolls V: Skyrim', 125),
(126, 'The Legend of Zelda', 126),
(127, 'Assassin\'s Creed III', 127),
(128, 'Halo: Combat Evolved', 128),
(129, 'Pokémon Emerald Version', 129),
(130, 'Kingdom Hearts', 130),
(131, 'Pokémon Crystal Version', 131),
(132, 'Halo 3: ODST', 132),
(133, 'Red Dead Redemption', 133),
(134, 'Super Mario Sunshine', 134),
(135, 'Street Fighter II: The World Warrior', 135),
(136, 'World of Warcraft', 136),
(137, 'Driver', 137),
(138, 'Kinect Sports', 138),
(139, 'Gears of War 3', 139),
(140, 'Gears of War', 140),
(141, 'Metal Gear Solid 2: Sons of Liberty', 141),
(142, 'Sonic the Hedgehog 2', 142),
(143, 'Metal Gear Solid 4: Guns of the Patriots', 143),
(144, 'Metal Gear Solid', 144),
(145, 'The Last of Us', 145),
(146, 'Final Fantasy XII', 146),
(147, 'LittleBigPlanet', 147),
(148, 'Dragon Quest IX: Sentinels of the Starry Skies', 148),
(149, 'LEGO Star Wars: The Complete Saga', 149),
(150, 'Resident Evil 2', 150),
(151, 'Tekken 2', 151),
(152, 'Cooking Mama', 152),
(153, 'Destiny', 153),
(154, 'Tetris', 154),
(155, 'Assassin\'s Creed II', 155),
(156, 'Super Smash Bros.', 156),
(157, 'Assassin\'s Creed', 157),
(158, 'Batman: Arkham City', 158),
(159, 'Forza Motorsport 3', 159),
(160, 'Monster Hunter Freedom Unite', 160),
(161, 'Super Mario Advance', 161),
(162, 'Mario Kart: Super Circuit', 162),
(163, 'Super Mario World', 163),
(164, 'Pokemon Stadium', 164),
(165, 'Call of Duty: World at War', 165),
(166, 'Crash Bandicoot: The Wrath of Cortex', 166),
(167, 'Minecraft', 167),
(168, 'Final Fantasy XIII', 168),
(169, 'Dr. Mario', 169),
(170, 'Pokemon Pinball', 170),
(171, 'Assassin\'s Creed III', 171),
(172, 'Final Fantasy IX', 172),
(173, 'Final Fantasy X-2', 173),
(174, 'Donkey Kong 64', 174),
(175, 'Assassin\'s Creed II', 175),
(176, 'Professor Layton and the Curious Village', 176),
(177, 'Tomb Raider II', 177),
(178, 'Dragon Quest VIII: Journey of the Cursed King', 178),
(179, 'Diablo III', 179),
(180, 'Super Mario Bros. 3', 180),
(181, 'New Super Mario Bros. U', 181),
(182, 'Super Mario Land 3: Wario Land', 182),
(183, 'FIFA Soccer 13', 183),
(184, 'The Legend of Zelda: Phantom Hourglass', 184),
(185, 'Donkey Kong Country 2: Diddy\'s Kong Quest', 185),
(186, 'Tomodachi Life', 186),
(187, 'Mario & Sonic at the Olympic Games', 187),
(188, 'Medal of Honor: Rising Sun', 188),
(189, 'Kirby\'s Dream Land', 189),
(190, 'Fable III', 190),
(191, 'Call of Duty: Advanced Warfare', 191),
(192, 'Microsoft Flight Simulator', 192),
(193, 'Guitar Hero II', 193),
(194, 'Resident Evil 5', 194),
(195, 'Grand Theft Auto V', 195),
(196, 'Grand Theft Auto: Vice City Stories', 196),
(197, 'FIFA Soccer 11', 197),
(198, 'Super Mario Bros.', 198),
(199, 'Resident Evil', 199),
(200, 'Tony Hawk\'s Pro Skater', 200),
(201, 'Super Smash Bros. for Wii U and 3DS', 201),
(202, 'Warzone 2100', 202),
(203, 'Spyro the Dragon', 203),
(204, 'Link\'s Crossbow Training', 204),
(205, 'Guitar Hero III: Legends of Rock', 205),
(206, 'Fallout 3', 206),
(207, 'Pokemon Mystery Dungeon: Explorers of Time/Explorers of Darkness', 207),
(208, 'Uncharted: Drake\'s Fortune', 208),
(209, 'Madden NFL 06', 209),
(210, 'LEGO Star Wars: The Complete Saga', 210),
(211, 'Diddy Kong Racing', 211),
(212, 'Monster Hunter Freedom 3', 212),
(213, 'Dr. Mario', 213),
(214, 'God of War III', 214),
(215, 'StarCraft II: Wings of Liberty', 215),
(216, 'Assassin\'s Creed', 216),
(217, 'FIFA 15', 217),
(218, 'Crash Team Racing', 218),
(219, 'FIFA 17', 219),
(220, 'Batman: Arkham City', 220),
(221, 'Driver 2', 221),
(222, 'The Simpsons: Hit & Run', 222),
(223, 'Tony Hawk\'s Pro Skater 2', 223),
(224, 'Animal Crossing: City Folk', 224),
(225, 'The Lord of the Rings: The Two Towers', 225),
(226, 'Forza Motorsport 4', 226),
(227, 'Tomb Raider', 227),
(228, 'Guitar Hero III: Legends of Rock', 228),
(229, 'The Legend of Zelda: A Link to the Past', 229),
(230, 'The Legend of Zelda: The Wind Waker', 230),
(231, 'Mario & Sonic at the Olympic Winter Games', 231),
(232, 'Luigi\'s Mansion: Dark Moon', 232),
(233, 'Splatoon', 233),
(234, 'The Last of Us', 234),
(235, 'Guitar Hero III: Legends of Rock', 235),
(236, 'Madden NFL 2005', 236),
(237, 'Pitfall!', 237),
(238, 'Madden NFL 07', 238),
(239, 'Spider-Man: The Movie', 239),
(240, 'Dragon Quest VII: Warriors of Eden', 240),
(241, 'Uncharted: The Nathan Drake Collection', 241),
(242, 'Call of Duty: Advanced Warfare', 242),
(243, 'God of War', 243),
(244, 'Nintendo Land', 244),
(245, 'Michael Jackson: The Experience', 245),
(246, 'Tony Hawk\'s Pro Skater 3', 246),
(247, 'Winning Eleven: Pro Evolution Soccer 2007', 247),
(248, 'The Elder Scrolls IV: Oblivion', 248),
(249, 'Zelda II: The Adventure of Link', 249),
(250, 'Need for Speed: Most Wanted', 250),
(251, 'Resistance: Fall of Man', 251),
(252, 'Sonic the Hedgehog', 252),
(253, 'Kingdom Hearts II', 253),
(254, 'FIFA 14', 254),
(255, 'Call of Duty: Advanced Warfare', 255),
(256, 'Asteroids', 256),
(257, 'Fable II', 257),
(258, 'Halo 5: Guardians', 258),
(259, 'Super Mario 3D World', 259),
(260, 'Batman: Arkham Asylum', 260),
(261, 'Assassin\'s Creed: Revelations', 261),
(262, 'Namco Museum', 262),
(263, 'Metal Gear Solid 3: Snake Eater', 263),
(264, 'Daxter', 264),
(265, 'Warcraft II: Tides of Darkness', 265),
(266, 'The Legend of Zelda: Ocarina of Time', 266),
(267, 'FIFA Soccer 06', 267),
(268, 'EyeToy Play', 268),
(269, 'Uncharted 4: A Thief\'s End', 269),
(270, 'Gran Turismo 5 Prologue', 270),
(271, 'Assassin\'s Creed: Revelations', 271),
(272, 'Street Fighter IV', 272),
(273, 'FIFA 12', 273),
(274, 'Teenage Mutant Ninja Turtles', 274),
(275, 'Excitebike', 275),
(276, 'Frogger', 276),
(277, 'Madden NFL 2003', 277),
(278, 'Watch Dogs', 278),
(279, 'Half-Life', 279),
(280, 'Super Mario World 2: Yoshi\'s Island', 280),
(281, 'FIFA Soccer 07', 281),
(282, 'The Legend of Zelda: Skyward Sword', 282),
(283, 'Street Fighter II Turbo', 283),
(284, 'Carnival Games', 284),
(285, 'Fallout 4', 285),
(286, 'World of Warcraft: The Burning Crusade', 286),
(287, 'Fallout: New Vegas', 287),
(288, 'God of War II', 288),
(289, 'Forza Motorsport 2', 289),
(290, 'World Soccer Winning Eleven 9', 290),
(291, 'Namco Museum Vol.3', 291),
(292, 'Tekken Tag Tournament', 292),
(293, 'Far Cry 4', 293),
(294, 'Star Fox 64', 294),
(295, 'Minecraft', 295),
(296, 'Golf', 296),
(297, 'Fallout 3', 297),
(298, 'Professor Layton and the Diabolical Box', 298),
(299, 'Left 4 Dead 2', 299),
(300, 'Namco Museum: 50th Anniversary', 300),
(301, 'EA Sports Active', 301),
(302, 'Assassin\'s Creed: Unity', 302),
(303, 'Donkey Kong Land', 303),
(304, 'Tony Hawk\'s Underground', 304),
(305, 'Assassin\'s Creed IV: Black Flag', 305),
(306, 'Monster Hunter 4 Ultimate', 306),
(307, 'MotorStorm', 307),
(308, 'The Elder Scrolls V: Skyrim', 308),
(309, 'Tekken 5', 309),
(310, 'Dragon Warrior III', 310),
(311, 'Sports Champions', 311),
(312, 'NBA 2K16', 312),
(313, 'World Soccer Winning Eleven 8 International', 313),
(314, 'Flash Focus: Vision Training in Minutes a Day', 314),
(315, 'Namco Museum Vol.1', 315),
(316, 'The Legend of Zelda: Link\'s Awakening', 316),
(317, 'Mario & Luigi: Bowser\'s Inside Story', 317),
(318, 'Big Brain Academy: Wii Degree', 318),
(319, 'Nintendogs + cats', 319),
(320, 'Batman: Arkham Knight', 320),
(321, 'Mario & Sonic at the London 2012 Olympic Games', 321),
(322, 'LEGO Indiana Jones: The Original Adventures', 322),
(323, 'Resident Evil Director\'s Cut', 323),
(324, 'Ratchet & Clank: Size Matters', 324),
(325, 'Just Dance 2014', 325),
(326, 'The Sims: Unleashed', 326),
(327, 'Super Paper Mario', 327),
(328, 'Harry Potter and the Sorcerer\'s Stone', 328),
(329, 'The Witcher 3: Wild Hunt', 329),
(330, 'Resident Evil 3: Nemesis', 330),
(331, 'Spyro: Year of the Dragon', 331),
(332, 'FIFA Soccer 2005', 332),
(333, 'Pokémon Trading Card Game', 333),
(334, 'Battlefield 4', 334),
(335, 'MySims', 335),
(336, 'Friend Collection', 336),
(337, 'Tony Hawk\'s Pro Skater 4', 337),
(338, 'Midnight Club 3: DUB Edition', 338);

-- --------------------------------------------------------

--
-- Struttura della tabella `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `platform_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `platform`
--

INSERT INTO `platform` (`id`, `platform_name`) VALUES
(16, '2600'),
(10, '3DS'),
(3, 'DS'),
(2, 'GB'),
(9, 'GBA'),
(19, 'GC'),
(21, 'GEN'),
(12, 'N64'),
(4, 'NES'),
(15, 'PC'),
(13, 'PS'),
(7, 'PS2'),
(6, 'PS3'),
(11, 'PS4'),
(17, 'PSP'),
(8, 'SNES'),
(1, 'Wii'),
(20, 'WiiU'),
(5, 'X360'),
(14, 'XB'),
(18, 'XOne');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `platformq1`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `platformq1` (
`platform_name` varchar(255)
,`platform_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `platformq2`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `platformq2` (
`platform_name` varchar(255)
,`platform_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `platformq3`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `platformq3` (
`platform_name` varchar(255)
,`platform_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `platformq4`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `platformq4` (
`platform_name` varchar(255)
,`platform_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `publisher_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `publisher`
--

INSERT INTO `publisher` (`id`, `publisher_name`) VALUES
(12, '505 Games'),
(5, 'Activision'),
(11, 'Atari'),
(7, 'Bethesda Softworks'),
(13, 'Capcom'),
(22, 'Eidos Interactive'),
(8, 'Electronic Arts'),
(25, 'Enix Corporation'),
(14, 'GT Interactive'),
(28, 'Hasbro Interactive'),
(15, 'Konami Digital Entertainment'),
(18, 'LucasArts'),
(2, 'Microsoft Game Studios'),
(26, 'Namco Bandai Games'),
(1, 'Nintendo'),
(27, 'Palcom'),
(23, 'RedOctane'),
(9, 'Sega'),
(4, 'Sony Computer Entertainment'),
(16, 'Sony Computer Entertainment Europe'),
(17, 'Square Enix'),
(10, 'SquareSoft'),
(3, 'Take-Two Interactive'),
(6, 'Ubisoft'),
(21, 'Universal Interactive'),
(19, 'Virgin Interactive'),
(24, 'Vivendi Games'),
(20, 'Warner Bros. Interactive Entertainment');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `publishermq1`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `publishermq1` (
`publisher_name` varchar(255)
,`publisher_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `publisherq2`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `publisherq2` (
`publisher_name` varchar(255)
,`publisher_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `publisherq3`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `publisherq3` (
`publisher_name` varchar(255)
,`publisher_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `publisherq4`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `publisherq4` (
`publisher_name` varchar(255)
,`publisher_id` int(11)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `q1`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `q1` (
`name` varchar(100)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `q2`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `q2` (
`name` varchar(100)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `q3`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `q3` (
`name` varchar(100)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `q4`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `q4` (
`name` varchar(100)
,`year` int(5)
,`na_sales` int(11)
,`eu_sales` int(11)
,`jp_sales` int(11)
,`other_sales` int(11)
,`global_sales` int(11)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `videogame`
--

CREATE TABLE `videogame` (
  `id_giochi` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `year` int(5) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `na_sales` int(11) NOT NULL,
  `eu_sales` int(11) NOT NULL,
  `jp_sales` int(11) NOT NULL,
  `other_sales` int(11) NOT NULL,
  `global_sales` int(11) NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `platform_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `videogame`
--

INSERT INTO `videogame` (`id_giochi`, `name`, `platform`, `year`, `genre`, `publisher`, `na_sales`, `eu_sales`, `jp_sales`, `other_sales`, `global_sales`, `genre_id`, `publisher_id`, `platform_id`) VALUES
(1, 'Wii Sports', 'Wii', 2006, 'Sports', 'Nintendo', 41490000, 29020000, 3770000, 8460000, 82740000, 1, 1, 1),
(2, 'Wii Sports Resort', 'Wii', 2009, 'Sports', 'Nintendo', 15750000, 11010000, 3280000, 2960000, 33000000, 1, 1, 1),
(3, 'Pokemon Red/Pokemon Blue', 'GB', 1996, 'Role-Playing', 'Nintendo', 11270000, 8890000, 10220000, 1000000, 31370000, 2, 1, 2),
(4, 'Tetris', 'GB', 1989, 'Puzzle', 'Nintendo', 23200000, 2260000, 4220000, 580000, 30260000, 3, 1, 2),
(5, 'New Super Mario Bros.', 'DS', 2006, 'Platform', 'Nintendo', 11380000, 9230000, 6500000, 2900000, 30010000, 4, 1, 3),
(6, 'Wii Play', 'Wii', 2006, 'Misc', 'Nintendo', 14030000, 9200000, 2930000, 2850000, 29020000, 5, 1, 1),
(7, 'New Super Mario Bros. Wii', 'Wii', 2009, 'Platform', 'Nintendo', 14590000, 7060000, 4700000, 2260000, 28620000, 4, 1, 1),
(8, 'Duck Hunt', 'NES', 1984, 'Shooter', 'Nintendo', 26930000, 630000, 280000, 470000, 28310000, 6, 1, 4),
(9, 'Nintendogs', 'DS', 2005, 'Simulation', 'Nintendo', 9070000, 11000000, 1930000, 2750000, 24760000, 7, 1, 3),
(10, 'Mario Kart DS', 'DS', 2005, 'Racing', 'Nintendo', 9810000, 7570000, 4130000, 1920000, 23420000, 8, 1, 3),
(11, 'Pokemon Gold/Pokemon Silver', 'GB', 1999, 'Role-Playing', 'Nintendo', 9000000, 6180000, 7200000, 710000, 23100000, 2, 1, 2),
(12, 'Wii Fit', 'Wii', 2007, 'Sports', 'Nintendo', 8940000, 8029999, 3600000, 2150000, 22720000, 1, 1, 1),
(13, 'Wii Fit Plus', 'Wii', 2009, 'Sports', 'Nintendo', 9090000, 8590000, 2530000, 1790000, 22000000, 1, 1, 1),
(14, 'Kinect Adventures!', 'X360', 2010, 'Misc', 'Microsoft Game Studios', 14970000, 4940000, 240000, 1670000, 21820000, 5, 2, 5),
(15, 'Grand Theft Auto V', 'PS3', 2013, 'Action', 'Take-Two Interactive', 7010000, 9270000, 970000, 4139999, 21400000, 9, 3, 6),
(16, 'Grand Theft Auto: San Andreas', 'PS2', 2004, 'Action', 'Take-Two Interactive', 9430000, 400000, 410000, 10570000, 20810000, 9, 3, 7),
(17, 'Super Mario World', 'SNES', 1990, 'Platform', 'Nintendo', 12780000, 3750000, 3540000, 550000, 20610000, 4, 1, 8),
(18, 'Brain Age: Train Your Brain in Minutes a Day', 'DS', 2005, 'Misc', 'Nintendo', 4750000, 9260000, 4160000, 2049999, 20220000, 5, 1, 3),
(19, 'Pokemon Diamond/Pokemon Pearl', 'DS', 2006, 'Role-Playing', 'Nintendo', 6420000, 4520000, 6040000, 1370000, 18360000, 2, 1, 3),
(20, 'Super Mario Land', 'GB', 1989, 'Platform', 'Nintendo', 10830000, 2710000, 4179999, 420000, 18140000, 4, 1, 2),
(21, 'Super Mario Bros. 3', 'NES', 1988, 'Platform', 'Nintendo', 9540000, 3440000, 3840000, 460000, 17280000, 4, 1, 4),
(22, 'Grand Theft Auto V', 'X360', 2013, 'Action', 'Take-Two Interactive', 9630000, 5310000, 60000, 1380000, 16379999, 9, 3, 5),
(23, 'Grand Theft Auto: Vice City', 'PS2', 2002, 'Action', 'Take-Two Interactive', 8410000, 5490000, 470000, 1780000, 16149999, 9, 3, 7),
(24, 'Pokemon Ruby/Pokemon Sapphire', 'GBA', 2002, 'Role-Playing', 'Nintendo', 6060000, 3900000, 5380000, 500000, 15850000, 2, 1, 9),
(25, 'Pokemon Black/Pokemon White', 'DS', 2010, 'Role-Playing', 'Nintendo', 5570000, 3280000, 5650000, 820000, 15320000, 2, 1, 3),
(26, 'Brain Age 2: More Training in Minutes a Day', 'DS', 2005, 'Puzzle', 'Nintendo', 3440000, 5360000, 5320000, 1180000, 15300000, 3, 1, 3),
(27, 'Gran Turismo 3: A-Spec', 'PS2', 2001, 'Racing', 'Sony Computer Entertainment', 6850000, 5090000, 1870000, 1160000, 14980000, 8, 4, 7),
(28, 'Call of Duty: Modern Warfare 3', 'X360', 2011, 'Shooter', 'Activision', 9030000, 4280000, 130000, 1320000, 14760000, 6, 5, 5),
(29, 'Pokémon Yellow: Special Pikachu Edition', 'GB', 1998, 'Role-Playing', 'Nintendo', 5890000, 5040000, 3120000, 590000, 14640000, 2, 1, 2),
(30, 'Call of Duty: Black Ops', 'X360', 2010, 'Shooter', 'Activision', 9670000, 3730000, 110000, 1130000, 14640000, 6, 5, 5),
(31, 'Pokemon X/Pokemon Y', '3DS', 2013, 'Role-Playing', 'Nintendo', 5170000, 4050000, 4340000, 790000, 14350000, 2, 1, 10),
(32, 'Call of Duty: Black Ops 3', 'PS4', 2015, 'Shooter', 'Activision', 5770000, 5810000, 350000, 2310000, 14240000, 6, 5, 11),
(33, 'Call of Duty: Black Ops II', 'PS3', 2012, 'Shooter', 'Activision', 4990000, 5880000, 650000, 2520000, 14030000, 6, 5, 6),
(34, 'Call of Duty: Black Ops II', 'X360', 2012, 'Shooter', 'Activision', 8250000, 4300000, 70000, 1120000, 13730000, 6, 5, 5),
(35, 'Call of Duty: Modern Warfare 2', 'X360', 2009, 'Shooter', 'Activision', 8520000, 3630000, 80000, 1290000, 13510000, 6, 5, 5),
(36, 'Call of Duty: Modern Warfare 3', 'PS3', 2011, 'Shooter', 'Activision', 5540000, 5820000, 490000, 1620000, 13460000, 6, 5, 6),
(37, 'Grand Theft Auto III', 'PS2', 2001, 'Action', 'Take-Two Interactive', 6990000, 4510000, 300000, 1300000, 13100000, 9, 3, 7),
(38, 'Super Smash Bros. Brawl', 'Wii', 2008, 'Fighting', 'Nintendo', 6750000, 2610000, 2660000, 1020000, 13040000, 10, 1, 1),
(39, 'Call of Duty: Black Ops', 'PS3', 2010, 'Shooter', 'Activision', 5980000, 4440000, 480000, 1830000, 12730000, 6, 5, 6),
(40, 'Animal Crossing: Wild World', 'DS', 2005, 'Simulation', 'Nintendo', 2550000, 3520000, 5330000, 880000, 12270000, 7, 1, 3),
(41, 'Mario Kart 7', '3DS', 2011, 'Racing', 'Nintendo', 4740000, 3910000, 2670000, 890000, 12210000, 8, 1, 10),
(42, 'Halo 3', 'X360', 2007, 'Shooter', 'Microsoft Game Studios', 7970000, 2830000, 130000, 1210000, 12140000, 6, 2, 5),
(43, 'Grand Theft Auto V', 'PS4', 2014, 'Action', 'Take-Two Interactive', 3800000, 5810000, 360000, 2020000, 11980000, 9, 3, 11),
(44, 'Pokemon HeartGold/Pokemon SoulSilver', 'DS', 2009, 'Action', 'Nintendo', 4400000, 2770000, 3960000, 770000, 11900000, 9, 1, 3),
(45, 'Super Mario 64', 'N64', 1996, 'Platform', 'Nintendo', 6910000, 2850000, 1910000, 230000, 11890000, 4, 1, 12),
(46, 'Gran Turismo 4', 'PS2', 2004, 'Racing', 'Sony Computer Entertainment', 3010000, 10000, 1100000, 7530000, 11660000, 8, 4, 7),
(47, 'Super Mario Galaxy', 'Wii', 2007, 'Platform', 'Nintendo', 6160000, 3400000, 1200000, 760000, 11520000, 4, 1, 1),
(48, 'Pokemon Omega Ruby/Pokemon Alpha Sapphire', '3DS', 2014, 'Role-Playing', 'Nintendo', 4230000, 3370000, 3080000, 650000, 11330000, 2, 1, 10),
(49, 'Super Mario Land 2: 6 Golden Coins', 'GB', 1992, 'Adventure', 'Nintendo', 6160000, 2040000, 2690000, 290000, 11180000, 11, 1, 2),
(50, 'Grand Theft Auto IV', 'X360', 2008, 'Action', 'Take-Two Interactive', 6760000, 3100000, 140000, 1030000, 11020000, 9, 3, 5),
(51, 'Gran Turismo', 'PS', 1997, 'Racing', 'Sony Computer Entertainment', 4019999, 3870000, 2540000, 520000, 10950000, 8, 4, 13),
(52, 'Super Mario 3D Land', '3DS', 2011, 'Platform', 'Nintendo', 4890000, 2990000, 2130000, 780000, 10790000, 4, 1, 10),
(53, 'Gran Turismo 5', 'PS3', 2010, 'Racing', 'Sony Computer Entertainment', 2960000, 4880000, 810000, 2120000, 10770000, 8, 4, 6),
(54, 'Call of Duty: Modern Warfare 2', 'PS3', 2009, 'Shooter', 'Activision', 4990000, 3690000, 380000, 1630000, 10690000, 6, 5, 6),
(55, 'Grand Theft Auto IV', 'PS3', 2008, 'Action', 'Take-Two Interactive', 4760000, 3760000, 440000, 1620000, 10570000, 9, 3, 6),
(56, 'Super Mario All-Stars', 'SNES', 1993, 'Platform', 'Nintendo', 5990000, 2150000, 2120000, 290000, 10550000, 4, 1, 8),
(57, 'Pokemon FireRed/Pokemon LeafGreen', 'GBA', 2004, 'Role-Playing', 'Nintendo', 4340000, 2650000, 3150000, 350000, 10490000, 2, 1, 9),
(58, 'Super Mario 64', 'DS', 2004, 'Platform', 'Nintendo', 5080000, 3110000, 1250000, 980000, 10420000, 4, 1, 3),
(59, 'Just Dance 3', 'Wii', 2011, 'Misc', 'Ubisoft', 6050000, 3150000, 0, 1070000, 10260000, 5, 6, 1),
(60, 'Call of Duty: Ghosts', 'X360', 2013, 'Shooter', 'Activision', 6720000, 2630000, 40000, 820000, 10210000, 6, 5, 5),
(61, 'Halo: Reach', 'X360', 2010, 'Shooter', 'Microsoft Game Studios', 7030000, 1980000, 80000, 780000, 9880000, 6, 2, 5),
(62, 'Mario Kart 64', 'N64', 1996, 'Racing', 'Nintendo', 5550000, 1940000, 2230000, 150000, 9870000, 8, 1, 12),
(63, 'New Super Mario Bros. 2', '3DS', 2012, 'Platform', 'Nintendo', 3660000, 3070000, 2470000, 630000, 9820000, 4, 1, 10),
(64, 'Halo 4', 'X360', 2012, 'Shooter', 'Microsoft Game Studios', 6630000, 2360000, 40000, 730000, 9760000, 6, 2, 5),
(65, 'Final Fantasy VII', 'PS', 1997, 'Role-Playing', 'Sony Computer Entertainment', 3010000, 2470000, 3280000, 960000, 9720000, 2, 4, 13),
(66, 'Call of Duty: Ghosts', 'PS3', 2013, 'Shooter', 'Activision', 4090000, 3730000, 380000, 1380000, 9590000, 6, 5, 6),
(67, 'Just Dance 2', 'Wii', 2010, 'Misc', 'Ubisoft', 5840000, 2890000, 10000, 780000, 9520000, 5, 6, 1),
(68, 'Gran Turismo 2', 'PS', 1999, 'Racing', 'Sony Computer Entertainment', 3880000, 3420000, 1690000, 500000, 9490000, 8, 4, 13),
(69, 'Call of Duty 4: Modern Warfare', 'X360', 2007, 'Shooter', 'Activision', 5910000, 2380000, 130000, 900000, 9320000, 6, 5, 5),
(70, 'Donkey Kong Country', 'SNES', 1994, 'Platform', 'Nintendo', 4360000, 1710000, 3000000, 230000, 9300000, 4, 1, 8),
(71, 'Minecraft', 'X360', 2013, 'Misc', 'Microsoft Game Studios', 5580000, 2830000, 20000, 770000, 9200000, 5, 2, 5),
(72, 'Animal Crossing: New Leaf', '3DS', 2012, 'Simulation', 'Nintendo', 2009999, 2320000, 4360000, 410000, 9090000, 7, 1, 10),
(73, 'Mario Party DS', 'DS', 2007, 'Misc', 'Nintendo', 4460000, 1880000, 1980000, 700000, 9020000, 5, 1, 3),
(74, 'The Elder Scrolls V: Skyrim', 'X360', 2011, 'Role-Playing', 'Bethesda Softworks', 5030000, 2860000, 100000, 850000, 8840000, 2, 7, 5),
(75, 'Super Mario Kart', 'SNES', 1992, 'Racing', 'Nintendo', 3540000, 1240000, 3810000, 180000, 8760000, 8, 1, 8),
(76, 'FIFA 16', 'PS4', 2015, 'Sports', 'Electronic Arts', 1110000, 6060000, 60000, 1260000, 8490000, 1, 8, 11),
(77, 'Wii Party', 'Wii', 2010, 'Misc', 'Nintendo', 1790000, 3530000, 2490000, 680000, 8490000, 5, 1, 1),
(78, 'Halo 2', 'XB', 2004, 'Shooter', 'Microsoft Game Studios', 6820000, 1530000, 50000, 80000, 8490000, 6, 2, 14),
(79, 'Mario Party 8', 'Wii', 2007, 'Misc', 'Nintendo', 3810000, 2300000, 1580000, 730000, 8420000, 5, 1, 1),
(80, 'Pokemon Black 2/Pokemon White 2', 'DS', 2012, 'Role-Playing', 'Nintendo', 2910000, 1860000, 3140000, 430000, 8330000, 2, 1, 3),
(81, 'FIFA Soccer 13', 'PS3', 2012, 'Action', 'Electronic Arts', 1060000, 5050000, 130000, 2009999, 8240000, 9, 8, 6),
(82, 'The Sims 3', 'PC', 2009, 'Simulation', 'Electronic Arts', 980000, 6420000, 0, 710000, 8109999, 7, 8, 15),
(83, 'GoldenEye 007', 'N64', 1997, 'Shooter', 'Nintendo', 5800000, 2009999, 130000, 150000, 8090000, 6, 1, 12),
(84, 'Mario & Sonic at the Olympic Games', 'Wii', 2007, 'Sports', 'Sega', 2580000, 3900000, 660000, 910000, 8060000, 1, 9, 1),
(85, 'Final Fantasy X', 'PS2', 2001, 'Role-Playing', 'Sony Computer Entertainment', 2910000, 2069999, 2730000, 330000, 8050000, 2, 4, 7),
(86, 'Final Fantasy VIII', 'PS', 1999, 'Role-Playing', 'SquareSoft', 2280000, 1720000, 3630000, 230000, 7860000, 2, 10, 13),
(87, 'Pokémon Platinum Version', 'DS', 2008, 'Role-Playing', 'Nintendo', 2820000, 1780000, 2690000, 550000, 7840000, 2, 1, 3),
(88, 'Pac-Man', '2600', 1982, 'Puzzle', 'Atari', 7280000, 450000, 0, 80000, 7810000, 3, 11, 16),
(89, 'Grand Theft Auto: Liberty City Stories', 'PSP', 2005, 'Action', 'Take-Two Interactive', 2900000, 2830000, 240000, 1750000, 7720000, 9, 3, 17),
(90, 'Super Mario Galaxy 2', 'Wii', 2010, 'Platform', 'Nintendo', 3660000, 2420000, 980000, 640000, 7690000, 4, 1, 1),
(91, 'Star Wars Battlefront (2015)', 'PS4', 2015, 'Shooter', 'Electronic Arts', 2930000, 3290000, 220000, 1230000, 7670000, 6, 8, 11),
(92, 'Call of Duty: Advanced Warfare', 'PS4', 2014, 'Shooter', 'Activision', 2800000, 3300000, 140000, 1370000, 7600000, 6, 5, 11),
(93, 'The Legend of Zelda: Ocarina of Time', 'N64', 1998, 'Action', 'Nintendo', 4099999, 1890000, 1450000, 160000, 7600000, 9, 1, 12),
(94, 'Crash Bandicoot 2: Cortex Strikes Back', 'PS', 1997, 'Platform', 'Sony Computer Entertainment', 3780000, 2170000, 1310000, 310000, 7580000, 4, 4, 13),
(95, 'Super Mario Bros. 2', 'NES', 1988, 'Platform', 'Nintendo', 5390000, 1180000, 700000, 190000, 7460000, 4, 1, 4),
(96, 'Super Smash Bros. for Wii U and 3DS', '3DS', 2014, 'Fighting', 'Nintendo', 3240000, 1350000, 2420000, 430000, 7450000, 10, 1, 10),
(97, 'Call of Duty: World at War', 'X360', 2008, 'Shooter', 'Activision', 4790000, 1900000, 0, 690000, 7370000, 6, 5, 5),
(98, 'Battlefield 3', 'X360', 2011, 'Shooter', 'Electronic Arts', 4460000, 2130000, 60000, 690000, 7340000, 6, 8, 5),
(99, 'The Legend of Zelda: Twilight Princess', 'Wii', 2006, 'Action', 'Nintendo', 3830000, 2190000, 600000, 700000, 7310000, 9, 1, 1),
(100, 'Call of Duty: Black Ops 3', 'XOne', 2015, 'Shooter', 'Activision', 4520000, 2089999, 10000, 670000, 7300000, 6, 5, 18),
(101, 'Just Dance', 'Wii', 2009, 'Misc', 'Ubisoft', 3510000, 3030000, 0, 730000, 7270000, 5, 6, 1),
(102, 'Battlefield 3', 'PS3', 2011, 'Shooter', 'Electronic Arts', 2850000, 2930000, 350000, 1100000, 7230000, 6, 8, 6),
(103, 'Need for Speed Underground', 'PS2', 2003, 'Racing', 'Electronic Arts', 3270000, 2830000, 80000, 1020000, 7200000, 8, 8, 7),
(104, 'Tekken 3', 'PS', 1998, 'Fighting', 'Sony Computer Entertainment', 3270000, 2220000, 1400000, 290000, 7160000, 10, 4, 13),
(105, 'Crash Bandicoot 3: Warped', 'PS', 1998, 'Platform', 'Sony Computer Entertainment', 3680000, 1750000, 1420000, 280000, 7130000, 4, 4, 13),
(106, 'Super Smash Bros. Melee', 'GC', 2001, 'Fighting', 'Nintendo', 4410000, 1040000, 1390000, 220000, 7070000, 10, 1, 19),
(107, 'Mario Kart 8', 'WiiU', 2014, 'Racing', 'Nintendo', 3130000, 2069999, 1270000, 490000, 6960000, 8, 1, 20),
(108, 'Fallout 4', 'PS4', 2015, 'Role-Playing', 'Bethesda Softworks', 2470000, 3150000, 240000, 1100000, 6960000, 2, 7, 11),
(109, 'Mario Kart: Double Dash!!', 'GC', 2003, 'Racing', 'Nintendo', 4120000, 1770000, 870000, 190000, 6950000, 8, 1, 19),
(110, 'Just Dance 4', 'Wii', 2012, 'Misc', 'Ubisoft', 4139999, 2210000, 0, 560000, 6910000, 5, 6, 1),
(111, 'FIFA 14', 'PS3', 2013, 'Sports', 'Electronic Arts', 780000, 4320000, 70000, 1730000, 6900000, 1, 8, 6),
(112, 'Need for Speed Underground 2', 'PS2', 2004, 'Racing', 'Electronic Arts', 2710000, 3020000, 80000, 1090000, 6900000, 8, 8, 7),
(113, 'Medal of Honor: Frontline', 'PS2', 2002, 'Shooter', 'Electronic Arts', 2930000, 2750000, 170000, 990000, 6830000, 6, 8, 7),
(114, 'Uncharted 3: Drake\'s Deception', 'PS3', 2011, 'Action', 'Sony Computer Entertainment', 2770000, 2800000, 190000, 1060000, 6830000, 9, 4, 6),
(115, 'Crash Bandicoot', 'PS', 1996, 'Platform', 'Sony Computer Entertainment', 3230000, 2350000, 940000, 300000, 6820000, 4, 4, 13),
(116, 'Zumba Fitness', 'Wii', 2010, 'Sports', '505 Games', 3500000, 2640000, 0, 670000, 6810000, 1, 12, 1),
(117, 'Gears of War 2', 'X360', 2008, 'Shooter', 'Microsoft Game Studios', 4150000, 1920000, 60000, 640000, 6760000, 6, 2, 5),
(118, 'Uncharted 2: Among Thieves', 'PS3', 2009, 'Action', 'Sony Computer Entertainment', 3270000, 2250000, 210000, 1000000, 6730000, 9, 4, 6),
(119, 'Call of Duty 4: Modern Warfare', 'PS3', 2007, 'Shooter', 'Activision', 3100000, 2300000, 280000, 1040000, 6720000, 6, 5, 6),
(120, 'FIFA 12', 'PS3', 2011, 'Sports', 'Electronic Arts', 840000, 4320000, 110000, 1420000, 6690000, 1, 8, 6),
(121, 'Big Brain Academy', 'DS', 2005, 'Misc', 'Nintendo', 1670000, 2780000, 1600000, 620000, 6670000, 5, 1, 3),
(122, 'Red Dead Redemption', 'PS3', 2010, 'Action', 'Take-Two Interactive', 2790000, 2610000, 170000, 1030000, 6600000, 9, 3, 6),
(123, 'FIFA 15', 'PS4', 2014, 'Sports', 'Electronic Arts', 790000, 4290000, 50000, 1470000, 6590000, 1, 8, 11),
(124, 'Donkey Kong Country Returns', 'Wii', 2010, 'Platform', 'Nintendo', 3250000, 1840000, 1030000, 470000, 6590000, 4, 1, 1),
(125, 'The Elder Scrolls V: Skyrim', 'PS3', 2011, 'Role-Playing', 'Bethesda Softworks', 2550000, 2710000, 250000, 1050000, 6560000, 2, 7, 6),
(126, 'The Legend of Zelda', 'NES', 1986, 'Action', 'Nintendo', 3740000, 930000, 1690000, 140000, 6510000, 9, 1, 4),
(127, 'Assassin\'s Creed III', 'PS3', 2012, 'Action', 'Ubisoft', 2640000, 2560000, 160000, 1140000, 6500000, 9, 6, 6),
(128, 'Halo: Combat Evolved', 'XB', 2001, 'Shooter', 'Microsoft Game Studios', 4980000, 1300000, 80000, 70000, 6430000, 6, 2, 14),
(129, 'Pokémon Emerald Version', 'GBA', 2004, 'Role-Playing', 'Nintendo', 2570000, 1580000, 2060000, 210000, 6410000, 2, 1, 9),
(130, 'Kingdom Hearts', 'PS2', 2002, 'Role-Playing', 'Sony Computer Entertainment', 3640000, 1200000, 1490000, 70000, 6400000, 2, 4, 7),
(131, 'Pokémon Crystal Version', 'GB', 2000, 'Role-Playing', 'Nintendo', 2550000, 1560000, 1290000, 990000, 6390000, 2, 1, 2),
(132, 'Halo 3: ODST', 'X360', 2009, 'Shooter', 'Microsoft Game Studios', 4340000, 1350000, 60000, 610000, 6360000, 6, 2, 5),
(133, 'Red Dead Redemption', 'X360', 2010, 'Action', 'Take-Two Interactive', 3700000, 1970000, 90000, 570000, 6340000, 9, 3, 5),
(134, 'Super Mario Sunshine', 'GC', 2002, 'Platform', 'Nintendo', 4010000, 1260000, 870000, 170000, 6310000, 4, 1, 19),
(135, 'Street Fighter II: The World Warrior', 'SNES', 1992, 'Fighting', 'Capcom', 2470000, 830000, 2870000, 120000, 6300000, 10, 13, 8),
(136, 'World of Warcraft', 'PC', 2004, 'Role-Playing', 'Activision', 70000, 6210000, 0, 0, 6280000, 2, 5, 15),
(137, 'Driver', 'PS', 1999, 'Action', 'GT Interactive', 3110000, 2800000, 20000, 330000, 6270000, 9, 14, 13),
(138, 'Kinect Sports', 'X360', 2010, 'Sports', 'Microsoft Game Studios', 3920000, 1780000, 30000, 510000, 6240000, 1, 2, 5),
(139, 'Gears of War 3', 'X360', 2011, 'Shooter', 'Microsoft Game Studios', 4050000, 1620000, 70000, 490000, 6240000, 6, 2, 5),
(140, 'Gears of War', 'X360', 2006, 'Shooter', 'Microsoft Game Studios', 3540000, 1900000, 70000, 600000, 6110000, 6, 2, 5),
(141, 'Metal Gear Solid 2: Sons of Liberty', 'PS2', 2001, 'Action', 'Konami Digital Entertainment', 2450000, 2009999, 870000, 720000, 6050000, 9, 15, 7),
(142, 'Sonic the Hedgehog 2', 'GEN', 1992, 'Platform', 'Sega', 4470000, 1200000, 160000, 190000, 6030000, 4, 9, 21),
(143, 'Metal Gear Solid 4: Guns of the Patriots', 'PS3', 2008, 'Action', 'Konami Digital Entertainment', 2630000, 1740000, 830000, 830000, 6030000, 9, 15, 6),
(144, 'Metal Gear Solid', 'PS', 1998, 'Action', 'Konami Digital Entertainment', 3180000, 1830000, 780000, 240000, 6030000, 9, 15, 13),
(145, 'The Last of Us', 'PS3', 2013, 'Action', 'Sony Computer Entertainment Europe', 2410000, 2280000, 280000, 1010000, 5990000, 9, 16, 6),
(146, 'Final Fantasy XII', 'PS2', 2006, 'Role-Playing', 'Square Enix', 1880000, 0, 2330000, 1740000, 5950000, 2, 17, 7),
(147, 'LittleBigPlanet', 'PS3', 2008, 'Platform', 'Sony Computer Entertainment', 2800000, 2049999, 170000, 900000, 5920000, 4, 4, 6),
(148, 'Dragon Quest IX: Sentinels of the Starry Skies', 'DS', 2009, 'Role-Playing', 'Nintendo', 660000, 690000, 4350000, 150000, 5840000, 2, 1, 3),
(149, 'LEGO Star Wars: The Complete Saga', 'Wii', 2007, 'Action', 'LucasArts', 3660000, 1630000, 0, 530000, 5830000, 9, 18, 1),
(150, 'Resident Evil 2', 'PS', 1998, 'Action', 'Virgin Interactive', 1880000, 1470000, 2020000, 450000, 5820000, 9, 19, 13),
(151, 'Tekken 2', 'PS', 1996, 'Fighting', 'Sony Computer Entertainment', 2260000, 1890000, 1360000, 230000, 5740000, 10, 4, 13),
(152, 'Cooking Mama', 'DS', 2006, 'Simulation', '505 Games', 3130000, 1940000, 70000, 580000, 5720000, 7, 12, 3),
(153, 'Destiny', 'PS4', 2014, 'Shooter', 'Activision', 2490000, 2049999, 160000, 960000, 5650000, 6, 5, 11),
(154, 'Tetris', 'NES', 1988, 'Puzzle', 'Nintendo', 2970000, 690000, 1810000, 110000, 5580000, 3, 1, 4),
(155, 'Assassin\'s Creed II', 'PS3', 2009, 'Action', 'Ubisoft', 2540000, 1950000, 210000, 870000, 5570000, 9, 6, 6),
(156, 'Super Smash Bros.', 'N64', 1999, 'Fighting', 'Nintendo', 2950000, 600000, 1970000, 40000, 5550000, 10, 1, 12),
(157, 'Assassin\'s Creed', 'X360', 2007, 'Adventure', 'Ubisoft', 3280000, 1650000, 70000, 550000, 5550000, 11, 6, 5),
(158, 'Batman: Arkham City', 'PS3', 2011, 'Action', 'Warner Bros. Interactive Entertainment', 2700000, 1910000, 110000, 800000, 5530000, 9, 20, 6),
(159, 'Forza Motorsport 3', 'X360', 2009, 'Racing', 'Microsoft Game Studios', 2990000, 1920000, 100000, 510000, 5510000, 8, 2, 5),
(160, 'Monster Hunter Freedom Unite', 'PSP', 2008, 'Role-Playing', 'Capcom', 470000, 570000, 4130000, 340000, 5500000, 2, 13, 17),
(161, 'Super Mario Advance', 'GBA', 2001, 'Platform', 'Nintendo', 3140000, 1240000, 910000, 200000, 5490000, 4, 1, 9),
(162, 'Mario Kart: Super Circuit', 'GBA', 2001, 'Racing', 'Nintendo', 2620000, 1640000, 990000, 230000, 5470000, 8, 1, 9),
(163, 'Super Mario World', 'GBA', 2001, 'Platform', 'Nintendo', 3210000, 1110000, 950000, 200000, 5460000, 4, 1, 9),
(164, 'Pokemon Stadium', 'N64', 1999, 'Strategy', 'Nintendo', 3180000, 1240000, 940000, 90000, 5450000, 12, 1, 12),
(165, 'Call of Duty: World at War', 'PS3', 2008, 'Shooter', 'Activision', 2720000, 1870000, 0, 840000, 5430000, 6, 5, 6),
(166, 'Crash Bandicoot: The Wrath of Cortex', 'PS2', 2001, 'Platform', 'Universal Interactive', 2069999, 2290000, 240000, 820000, 5420000, 4, 21, 7),
(167, 'Minecraft', 'PS3', 2014, 'Misc', 'Sony Computer Entertainment', 1970000, 2510000, 0, 940000, 5420000, 5, 4, 6),
(168, 'Final Fantasy XIII', 'PS3', 2009, 'Role-Playing', 'Square Enix', 1740000, 1240000, 1870000, 520000, 5360000, 2, 17, 6),
(169, 'Dr. Mario', 'GB', 1989, 'Puzzle', 'Nintendo', 2180000, 960000, 2000000, 200000, 5340000, 3, 1, 2),
(170, 'Pokemon Pinball', 'GB', 1999, 'Misc', 'Nintendo', 3020000, 1120000, 1010000, 160000, 5310000, 5, 1, 2),
(171, 'Assassin\'s Creed III', 'X360', 2012, 'Action', 'Ubisoft', 3130000, 1710000, 30000, 440000, 5300000, 9, 6, 5),
(172, 'Final Fantasy IX', 'PS', 2000, 'Role-Playing', 'SquareSoft', 1620000, 770000, 2780000, 140000, 5300000, 2, 10, 13),
(173, 'Final Fantasy X-2', 'PS2', 2003, 'Role-Playing', 'Electronic Arts', 1920000, 1080000, 2110000, 170000, 5290000, 2, 8, 7),
(174, 'Donkey Kong 64', 'N64', 1999, 'Platform', 'Nintendo', 3330000, 790000, 1090000, 60000, 5270000, 4, 1, 12),
(175, 'Assassin\'s Creed II', 'X360', 2009, 'Action', 'Ubisoft', 3100000, 1560000, 80000, 510000, 5270000, 9, 6, 5),
(176, 'Professor Layton and the Curious Village', 'DS', 2007, 'Puzzle', 'Nintendo', 1220000, 2480000, 1030000, 520000, 5260000, 3, 1, 3),
(177, 'Tomb Raider II', 'PS', 1997, 'Action', 'Eidos Interactive', 2300000, 2460000, 200000, 280000, 5240000, 9, 22, 13),
(178, 'Dragon Quest VIII: Journey of the Cursed King', 'PS2', 2004, 'Role-Playing', 'Square Enix', 650000, 750000, 3610000, 200000, 5210000, 2, 17, 7),
(179, 'Diablo III', 'PC', 2012, 'Role-Playing', 'Activision', 2430000, 2150000, 0, 620000, 5200000, 2, 5, 15),
(180, 'Super Mario Bros. 3', 'GBA', 2003, 'Platform', 'Nintendo', 2930000, 1250000, 830000, 200000, 5200000, 4, 1, 9),
(181, 'New Super Mario Bros. U', 'WiiU', 2012, 'Platform', 'Nintendo', 2320000, 1300000, 1270000, 310000, 5190000, 4, 1, 20),
(182, 'Super Mario Land 3: Wario Land', 'GB', 1994, 'Platform', 'Nintendo', 2490000, 980000, 1570000, 150000, 5190000, 4, 1, 2),
(183, 'FIFA Soccer 13', 'X360', 2012, 'Action', 'Electronic Arts', 1080000, 3480000, 30000, 580000, 5180000, 9, 8, 5),
(184, 'The Legend of Zelda: Phantom Hourglass', 'DS', 2007, 'Action', 'Nintendo', 1900000, 1830000, 950000, 490000, 5170000, 9, 1, 3),
(185, 'Donkey Kong Country 2: Diddy\'s Kong Quest', 'SNES', 1995, 'Platform', 'Nintendo', 2100000, 740000, 2200000, 110000, 5150000, 4, 1, 8),
(186, 'Tomodachi Life', '3DS', 2013, 'Simulation', 'Nintendo', 960000, 2020000, 1890000, 280000, 5150000, 7, 1, 10),
(187, 'Mario & Sonic at the Olympic Games', 'DS', 2008, 'Sports', 'Sega', 1640000, 2480000, 440000, 580000, 5140000, 1, 9, 3),
(188, 'Medal of Honor: Rising Sun', 'PS2', 2003, 'Shooter', 'Electronic Arts', 1980000, 2230000, 130000, 800000, 5130000, 6, 8, 7),
(189, 'Kirby\'s Dream Land', 'GB', 1992, 'Platform', 'Nintendo', 2710000, 610000, 1700000, 110000, 5130000, 4, 1, 2),
(190, 'Fable III', 'X360', 2010, 'Role-Playing', 'Microsoft Game Studios', 3590000, 1110000, 50000, 380000, 5130000, 2, 2, 5),
(191, 'Call of Duty: Advanced Warfare', 'XOne', 2014, 'Shooter', 'Activision', 3210000, 1530000, 10000, 380000, 5130000, 6, 5, 18),
(192, 'Microsoft Flight Simulator', 'PC', 1996, 'Simulation', 'Microsoft Game Studios', 3220000, 1690000, 0, 200000, 5120000, 7, 2, 15),
(193, 'Guitar Hero II', 'PS2', 2006, 'Misc', 'RedOctane', 3810000, 630000, 0, 680000, 5120000, 5, 23, 7),
(194, 'Resident Evil 5', 'PS3', 2009, 'Action', 'Capcom', 1960000, 1430000, 1080000, 650000, 5110000, 9, 13, 6),
(195, 'Grand Theft Auto V', 'XOne', 2014, 'Action', 'Take-Two Interactive', 2660000, 2009999, 0, 410000, 5080000, 9, 3, 18),
(196, 'Grand Theft Auto: Vice City Stories', 'PSP', 2006, 'Action', 'Take-Two Interactive', 1700000, 2020000, 160000, 1210000, 5080000, 9, 3, 17),
(197, 'FIFA Soccer 11', 'PS3', 2010, 'Sports', 'Electronic Arts', 600000, 3290000, 60000, 1130000, 5080000, 1, 8, 6),
(198, 'Super Mario Bros.', 'GB', 1999, 'Platform', 'Nintendo', 3400000, 1300000, 150000, 220000, 5070000, 4, 1, 2),
(199, 'Resident Evil', 'PS', 1996, 'Action', 'Virgin Interactive', 2049999, 1160000, 1110000, 730000, 5050000, 9, 19, 13),
(200, 'Tony Hawk\'s Pro Skater', 'PS', 1999, 'Sports', 'Activision', 3420000, 1380000, 20000, 200000, 5020000, 1, 5, 13),
(201, 'Super Smash Bros. for Wii U and 3DS', 'WiiU', 2014, 'Fighting', 'Nintendo', 2590000, 1060000, 800000, 570000, 5020000, 10, 1, 20),
(202, 'Warzone 2100', 'PS', 1999, 'Strategy', 'Eidos Interactive', 2790000, 1890000, 0, 330000, 5010000, 12, 22, 13),
(203, 'Spyro the Dragon', 'PS', 1998, 'Platform', 'Sony Computer Entertainment', 3360000, 1360000, 70000, 210000, 5000000, 4, 4, 13),
(204, 'Link\'s Crossbow Training', 'Wii', 2007, 'Shooter', 'Nintendo', 3060000, 1180000, 290000, 460000, 5000000, 6, 1, 1),
(205, 'Guitar Hero III: Legends of Rock', 'PS2', 2007, 'Misc', 'Activision', 3490000, 10000, 10000, 1480000, 4980000, 5, 5, 7),
(206, 'Fallout 3', 'X360', 2008, 'Role-Playing', 'Bethesda Softworks', 3390000, 1030000, 90000, 440000, 4960000, 2, 7, 5),
(207, 'Pokemon Mystery Dungeon: Explorers of Time/Explorers of Darkness', 'DS', 2007, 'Role-Playing', 'Nintendo', 1850000, 1200000, 1540000, 370000, 4960000, 2, 1, 3),
(208, 'Uncharted: Drake\'s Fortune', 'PS3', 2007, 'Action', 'Sony Computer Entertainment', 2310000, 1730000, 120000, 780000, 4940000, 9, 4, 6),
(209, 'Madden NFL 06', 'PS2', 2005, 'Sports', 'Electronic Arts', 3980000, 260000, 10000, 660000, 4910000, 1, 8, 7),
(210, 'LEGO Star Wars: The Complete Saga', 'DS', 2007, 'Action', 'LucasArts', 2890000, 1540000, 0, 460000, 4900000, 9, 18, 3),
(211, 'Diddy Kong Racing', 'N64', 1997, 'Racing', 'Nintendo', 2910000, 990000, 890000, 100000, 4880000, 8, 1, 12),
(212, 'Monster Hunter Freedom 3', 'PSP', 2010, 'Role-Playing', 'Capcom', 0, 0, 4870000, 0, 4870000, 2, 13, 17),
(213, 'Dr. Mario', 'NES', 1990, 'Puzzle', 'Nintendo', 2620000, 600000, 1520000, 100000, 4850000, 3, 1, 4),
(214, 'God of War III', 'PS3', 2010, 'Action', 'Sony Computer Entertainment', 2740000, 1360000, 120000, 630000, 4840000, 9, 4, 6),
(215, 'StarCraft II: Wings of Liberty', 'PC', 2010, 'Strategy', 'Activision', 2560000, 1680000, 0, 590000, 4830000, 12, 5, 15),
(216, 'Assassin\'s Creed', 'PS3', 2007, 'Adventure', 'Ubisoft', 1910000, 2000000, 90000, 830000, 4830000, 11, 6, 6),
(217, 'FIFA 15', 'PS3', 2014, 'Sports', 'Electronic Arts', 570000, 3140000, 40000, 1070000, 4820000, 1, 8, 6),
(218, 'Crash Team Racing', 'PS', 1999, 'Racing', 'Sony Computer Entertainment', 2570000, 1570000, 440000, 210000, 4790000, 8, 4, 13),
(219, 'FIFA 17', 'PS4', 2016, 'Sports', 'Electronic Arts', 280000, 3750000, 60000, 690000, 4770000, 1, 8, 11),
(220, 'Batman: Arkham City', 'X360', 2011, 'Action', 'Warner Bros. Interactive Entertainment', 2990000, 1310000, 40000, 410000, 4760000, 9, 20, 5),
(221, 'Driver 2', 'PS', 2000, 'Action', 'Atari', 2360000, 2100000, 20000, 250000, 4730000, 9, 11, 13),
(222, 'The Simpsons: Hit & Run', 'PS2', 2003, 'Racing', 'Vivendi Games', 1730000, 2190000, 0, 790000, 4700000, 8, 24, 7),
(223, 'Tony Hawk\'s Pro Skater 2', 'PS', 2000, 'Sports', 'Activision', 3050000, 1410000, 20000, 200000, 4680000, 1, 5, 13),
(224, 'Animal Crossing: City Folk', 'Wii', 2008, 'Simulation', 'Nintendo', 1870000, 1120000, 1320000, 370000, 4680000, 7, 1, 1),
(225, 'The Lord of the Rings: The Two Towers', 'PS2', 2002, 'Action', 'Electronic Arts', 1940000, 1950000, 80000, 700000, 4670000, 9, 8, 7),
(226, 'Forza Motorsport 4', 'X360', 2011, 'Racing', 'Microsoft Game Studios', 2080000, 2040000, 60000, 470000, 4640000, 8, 2, 5),
(227, 'Tomb Raider', 'PS', 1996, 'Action', 'Eidos Interactive', 2290000, 1970000, 130000, 240000, 4630000, 9, 22, 13),
(228, 'Guitar Hero III: Legends of Rock', 'Wii', 2007, 'Misc', 'Activision', 3060000, 1120000, 0, 440000, 4620000, 5, 5, 1),
(229, 'The Legend of Zelda: A Link to the Past', 'SNES', 1991, 'Action', 'Nintendo', 2420000, 910000, 1150000, 130000, 4610000, 9, 1, 8),
(230, 'The Legend of Zelda: The Wind Waker', 'GC', 2002, 'Action', 'Nintendo', 2600000, 990000, 890000, 130000, 4600000, 9, 1, 19),
(231, 'Mario & Sonic at the Olympic Winter Games', 'Wii', 2009, 'Sports', 'Sega', 1890000, 1990000, 220000, 480000, 4580000, 1, 9, 1),
(232, 'Luigi\'s Mansion: Dark Moon', '3DS', 2013, 'Action', 'Nintendo', 1780000, 1390000, 1100000, 300000, 4580000, 9, 1, 10),
(233, 'Splatoon', 'WiiU', 2015, 'Shooter', 'Nintendo', 1550000, 1150000, 1440000, 430000, 4570000, 6, 1, 20),
(234, 'The Last of Us', 'PS4', 2014, 'Action', 'Sony Computer Entertainment', 1780000, 1870000, 70000, 820000, 4550000, 9, 4, 11),
(235, 'Guitar Hero III: Legends of Rock', 'X360', 2007, 'Misc', 'Activision', 3190000, 920000, 10000, 420000, 4530000, 5, 5, 5),
(236, 'Madden NFL 2005', 'PS2', 2004, 'Sports', 'Electronic Arts', 4179999, 260000, 10000, 80000, 4530000, 1, 8, 7),
(237, 'Pitfall!', '2600', 1981, 'Platform', 'Activision', 4210000, 240000, 0, 50000, 4500000, 4, 5, 16),
(238, 'Madden NFL 07', 'PS2', 2006, 'Sports', 'Electronic Arts', 3630000, 240000, 10000, 610000, 4490000, 1, 8, 7),
(239, 'Spider-Man: The Movie', 'PS2', 2002, 'Action', 'Activision', 2710000, 1510000, 30000, 230000, 4480000, 9, 5, 7),
(240, 'Dragon Quest VII: Warriors of Eden', 'PS', 2000, 'Role-Playing', 'Enix Corporation', 200000, 140000, 4099999, 20000, 4470000, 2, 25, 13),
(241, 'Uncharted: The Nathan Drake Collection', 'PS4', 2015, 'Action', 'Sony Computer Entertainment', 1960000, 1690000, 80000, 740000, 4470000, 9, 4, 11),
(242, 'Call of Duty: Advanced Warfare', 'PS3', 2014, 'Shooter', 'Activision', 1540000, 1940000, 190000, 770000, 4450000, 6, 5, 6),
(243, 'God of War', 'PS2', 2005, 'Action', 'Sony Computer Entertainment', 2710000, 1290000, 20000, 430000, 4450000, 9, 4, 7),
(244, 'Nintendo Land', 'WiiU', 2012, 'Misc', 'Nintendo', 2550000, 1110000, 460000, 330000, 4440000, 5, 1, 20),
(245, 'Michael Jackson: The Experience', 'Wii', 2010, 'Misc', 'Ubisoft', 2670000, 1350000, 10000, 390000, 4420000, 5, 6, 1),
(246, 'Tony Hawk\'s Pro Skater 3', 'PS2', 2001, 'Sports', 'Activision', 2660000, 1290000, 10000, 460000, 4410000, 1, 5, 7),
(247, 'Winning Eleven: Pro Evolution Soccer 2007', 'PS2', 2006, 'Sports', 'Konami Digital Entertainment', 100000, 2390000, 1050000, 860000, 4390000, 1, 15, 7),
(248, 'The Elder Scrolls IV: Oblivion', 'X360', 2006, 'Role-Playing', 'Take-Two Interactive', 2820000, 1050000, 130000, 400000, 4390000, 2, 3, 5),
(249, 'Zelda II: The Adventure of Link', 'NES', 1987, 'Adventure', 'Nintendo', 2190000, 500000, 1610000, 80000, 4380000, 11, 1, 4),
(250, 'Need for Speed: Most Wanted', 'PS2', 2005, 'Racing', 'Electronic Arts', 2029999, 1790000, 80000, 470000, 4370000, 8, 8, 7),
(251, 'Resistance: Fall of Man', 'PS3', 2006, 'Shooter', 'Sony Computer Entertainment', 1730000, 1730000, 140000, 750000, 4350000, 6, 4, 6),
(252, 'Sonic the Hedgehog', 'GEN', 1991, 'Platform', 'Sega', 3030000, 910000, 260000, 130000, 4340000, 4, 9, 21),
(253, 'Kingdom Hearts II', 'PS2', 2005, 'Role-Playing', 'Square Enix', 2200000, 580000, 1380000, 170000, 4330000, 2, 17, 7),
(254, 'FIFA 14', 'X360', 2013, 'Sports', 'Electronic Arts', 920000, 2930000, 10000, 460000, 4310000, 1, 8, 5),
(255, 'Call of Duty: Advanced Warfare', 'X360', 2014, 'Shooter', 'Activision', 2750000, 1180000, 0, 370000, 4310000, 6, 5, 5),
(256, 'Asteroids', '2600', 1980, 'Shooter', 'Atari', 4000000, 260000, 0, 50000, 4310000, 6, 11, 16),
(257, 'Fable II', 'X360', 2008, 'Role-Playing', 'Microsoft Game Studios', 2510000, 1270000, 110000, 410000, 4310000, 2, 2, 5),
(258, 'Halo 5: Guardians', 'XOne', 2015, 'Shooter', 'Microsoft Game Studios', 2640000, 1200000, 30000, 390000, 4260000, 6, 2, 18),
(259, 'Super Mario 3D World', 'WiiU', 2013, 'Platform', 'Nintendo', 2110000, 1110000, 720000, 300000, 4250000, 4, 1, 20),
(260, 'Batman: Arkham Asylum', 'PS3', 2009, 'Action', 'Eidos Interactive', 2230000, 1340000, 70000, 610000, 4250000, 9, 22, 6),
(261, 'Assassin\'s Creed: Revelations', 'PS3', 2011, 'Action', 'Ubisoft', 1410000, 2020000, 100000, 720000, 4240000, 9, 6, 6),
(262, 'Namco Museum', 'GBA', 2001, 'Misc', 'Namco Bandai Games', 3000000, 1110000, 50000, 70000, 4240000, 5, 26, 9),
(263, 'Metal Gear Solid 3: Snake Eater', 'PS2', 2004, 'Action', 'Konami Digital Entertainment', 1460000, 0, 830000, 1930000, 4230000, 9, 15, 7),
(264, 'Daxter', 'PSP', 2006, 'Platform', 'Sony Computer Entertainment', 2450000, 1020000, 0, 750000, 4220000, 4, 4, 17),
(265, 'Warcraft II: Tides of Darkness', 'PC', 1995, 'Strategy', 'Activision', 1700000, 2270000, 0, 230000, 4210000, 12, 5, 15),
(266, 'The Legend of Zelda: Ocarina of Time', '3DS', 2011, 'Action', 'Nintendo', 2029999, 1270000, 620000, 300000, 4210000, 9, 1, 10),
(267, 'FIFA Soccer 06', 'PS2', 2005, 'Sports', 'Electronic Arts', 780000, 2550000, 40000, 840000, 4210000, 1, 8, 7),
(268, 'EyeToy Play', 'PS2', 2003, 'Misc', 'Sony Computer Entertainment', 880000, 2300000, 200000, 830000, 4200000, 5, 4, 7),
(269, 'Uncharted 4: A Thief\'s End', 'PS4', 2016, 'Shooter', 'Sony Computer Entertainment', 1300000, 2069999, 180000, 650000, 4200000, 6, 4, 11),
(270, 'Gran Turismo 5 Prologue', 'PS3', 2007, 'Racing', 'Sony Computer Entertainment', 1280000, 1830000, 570000, 530000, 4200000, 8, 4, 6),
(271, 'Assassin\'s Creed: Revelations', 'X360', 2011, 'Action', 'Ubisoft', 2250000, 1470000, 40000, 430000, 4190000, 9, 6, 5),
(272, 'Street Fighter IV', 'PS3', 2009, 'Fighting', 'Capcom', 2020000, 1060000, 580000, 530000, 4190000, 10, 13, 6),
(273, 'FIFA 12', 'X360', 2011, 'Sports', 'Electronic Arts', 840000, 2790000, 20000, 530000, 4190000, 1, 8, 5),
(274, 'Teenage Mutant Ninja Turtles', 'NES', 1989, 'Action', 'Palcom', 3380000, 440000, 310000, 40000, 4170000, 9, 27, 4),
(275, 'Excitebike', 'NES', 1984, 'Racing', 'Nintendo', 2040000, 480000, 1570000, 70000, 4160000, 8, 1, 4),
(276, 'Frogger', 'PS', 1997, 'Action', 'Hasbro Interactive', 3790000, 270000, 0, 110000, 4160000, 9, 28, 13),
(277, 'Madden NFL 2003', 'PS2', 2002, 'Sports', 'Electronic Arts', 3360000, 210000, 10000, 560000, 4139999, 1, 8, 7),
(278, 'Watch Dogs', 'PS4', 2014, 'Action', 'Ubisoft', 1400000, 1860000, 110000, 770000, 4139999, 9, 6, 11),
(279, 'Half-Life', 'PC', 1997, 'Shooter', 'Vivendi Games', 4030000, 0, 90000, 0, 4120000, 6, 24, 15),
(280, 'Super Mario World 2: Yoshi\'s Island', 'SNES', 1995, 'Platform', 'Nintendo', 1650000, 610000, 1760000, 90000, 4120000, 4, 1, 8),
(281, 'FIFA Soccer 07', 'PS2', 2006, 'Sports', 'Electronic Arts', 710000, 2480000, 30000, 890000, 4110000, 1, 8, 7),
(282, 'The Legend of Zelda: Skyward Sword', 'Wii', 2011, 'Action', 'Nintendo', 2140000, 1200000, 370000, 400000, 4099999, 9, 1, 1),
(283, 'Street Fighter II Turbo', 'SNES', 1992, 'Fighting', 'Capcom', 1420000, 510000, 2100000, 70000, 4099999, 10, 13, 8),
(284, 'Carnival Games', 'Wii', 2007, 'Misc', 'Take-Two Interactive', 2130000, 1500000, 50000, 420000, 4099999, 5, 3, 1),
(285, 'Fallout 4', 'XOne', 2015, 'Role-Playing', 'Bethesda Softworks', 2450000, 1260000, 10000, 370000, 4090000, 2, 7, 18),
(286, 'World of Warcraft: The Burning Crusade', 'PC', 2007, 'Role-Playing', 'Activision', 2570000, 1520000, 0, 0, 4090000, 2, 5, 15),
(287, 'Fallout: New Vegas', 'X360', 2010, 'Role-Playing', 'Bethesda Softworks', 2650000, 1060000, 40000, 330000, 4080000, 2, 7, 5),
(288, 'God of War II', 'PS2', 2007, 'Action', 'Sony Computer Entertainment', 2320000, 40000, 40000, 1670000, 4070000, 9, 4, 7),
(289, 'Forza Motorsport 2', 'X360', 2007, 'Racing', 'Microsoft Game Studios', 2350000, 1280000, 30000, 410000, 4059999, 8, 2, 5),
(290, 'World Soccer Winning Eleven 9', 'PS2', 2005, 'Sports', 'Konami Digital Entertainment', 120000, 2260000, 900000, 770000, 4059999, 1, 15, 7),
(291, 'Namco Museum Vol.3', 'PS', 1996, 'Misc', 'Sony Computer Entertainment', 2280000, 1550000, 160000, 60000, 4050000, 5, 4, 13),
(292, 'Tekken Tag Tournament', 'PS2', 2000, 'Fighting', 'Namco Bandai Games', 1680000, 1510000, 510000, 350000, 4050000, 10, 26, 7),
(293, 'Far Cry 4', 'PS4', 2014, 'Shooter', 'Ubisoft', 1120000, 2120000, 100000, 690000, 4030000, 6, 6, 11),
(294, 'Star Fox 64', 'N64', 1997, 'Shooter', 'Nintendo', 2780000, 580000, 640000, 40000, 4030000, 6, 1, 12),
(295, 'Minecraft', 'PS4', 2014, 'Misc', 'Sony Computer Entertainment Europe', 1380000, 1870000, 120000, 650000, 4019999, 5, 16, 11),
(296, 'Golf', 'NES', 1984, 'Sports', 'Nintendo', 1220000, 280000, 2460000, 40000, 4010000, 1, 1, 4),
(297, 'Fallout 3', 'PS3', 2008, 'Role-Playing', 'Bethesda Softworks', 2150000, 1200000, 70000, 590000, 4010000, 2, 7, 6),
(298, 'Professor Layton and the Diabolical Box', 'DS', 2007, 'Puzzle', 'Nintendo', 920000, 1780000, 920000, 370000, 4000000, 3, 1, 3),
(299, 'Left 4 Dead 2', 'X360', 2009, 'Shooter', 'Electronic Arts', 2670000, 890000, 50000, 370000, 3990000, 6, 8, 5),
(300, 'Namco Museum: 50th Anniversary', 'PS2', 2005, 'Misc', 'Namco Bandai Games', 2080000, 1350000, 0, 540000, 3980000, 5, 26, 7),
(301, 'EA Sports Active', 'Wii', 2009, 'Sports', 'Electronic Arts', 2100000, 1360000, 60000, 400000, 3920000, 1, 8, 1),
(302, 'Assassin\'s Creed: Unity', 'PS4', 2014, 'Action', 'Ubisoft', 1180000, 1960000, 80000, 700000, 3920000, 9, 6, 11),
(303, 'Donkey Kong Land', 'GB', 1994, 'Platform', 'Nintendo', 1970000, 760000, 1070000, 110000, 3910000, 4, 1, 2),
(304, 'Tony Hawk\'s Underground', 'PS2', 2003, 'Sports', 'Activision', 2290000, 1170000, 10000, 420000, 3900000, 1, 5, 7),
(305, 'Assassin\'s Creed IV: Black Flag', 'PS3', 2013, 'Action', 'Ubisoft', 1330000, 1710000, 130000, 730000, 3890000, 9, 6, 6),
(306, 'Monster Hunter 4 Ultimate', '3DS', 2014, 'Role-Playing', 'Nintendo', 670000, 490000, 2620000, 110000, 3890000, 2, 1, 10),
(307, 'MotorStorm', 'PS3', 2006, 'Racing', 'Sony Computer Entertainment', 1530000, 1610000, 60000, 670000, 3880000, 8, 4, 6),
(308, 'The Elder Scrolls V: Skyrim', 'PC', 2011, 'Role-Playing', 'Bethesda Softworks', 1150000, 2089999, 0, 640000, 3880000, 2, 7, 15),
(309, 'Tekken 5', 'PS2', 2005, 'Fighting', 'Namco Bandai Games', 930000, 1940000, 310000, 700000, 3870000, 10, 26, 7),
(310, 'Dragon Warrior III', 'NES', 1988, 'Role-Playing', 'Enix Corporation', 100000, 0, 3770000, 0, 3870000, 2, 25, 4),
(311, 'Sports Champions', 'PS3', 2010, 'Sports', 'Sony Computer Entertainment', 2120000, 1140000, 100000, 510000, 3870000, 1, 4, 6),
(312, 'NBA 2K16', 'PS4', 2015, 'Sports', 'Take-Two Interactive', 2480000, 650000, 30000, 690000, 3850000, 1, 3, 11),
(313, 'World Soccer Winning Eleven 8 International', 'PS2', 2004, 'Sports', 'Konami Digital Entertainment', 160000, 1890000, 1120000, 680000, 3850000, 1, 15, 7),
(314, 'Flash Focus: Vision Training in Minutes a Day', 'DS', 2007, 'Misc', 'Nintendo', 870000, 1570000, 1050000, 350000, 3840000, 5, 1, 3),
(315, 'Namco Museum Vol.1', 'PS', 1995, 'Misc', 'Sony Computer Entertainment', 2120000, 1440000, 220000, 60000, 3840000, 5, 4, 13),
(316, 'The Legend of Zelda: Link\'s Awakening', 'GB', 1992, 'Action', 'Nintendo', 2210000, 960000, 540000, 130000, 3830000, 9, 1, 2),
(317, 'Mario & Luigi: Bowser\'s Inside Story', 'DS', 2009, 'Role-Playing', 'Nintendo', 2260000, 480000, 810000, 270000, 3830000, 2, 1, 3),
(318, 'Big Brain Academy: Wii Degree', 'Wii', 2007, 'Misc', 'Nintendo', 1060000, 1930000, 410000, 430000, 3820000, 5, 1, 1),
(319, 'Nintendogs + cats', '3DS', 2011, 'Simulation', 'Nintendo', 1440000, 1370000, 730000, 270000, 3810000, 7, 1, 10),
(320, 'Batman: Arkham Knight', 'PS4', 2015, 'Action', 'Warner Bros. Interactive Entertainment', 1490000, 1580000, 100000, 610000, 3790000, 9, 20, 11),
(321, 'Mario & Sonic at the London 2012 Olympic Games', 'Wii', 2011, 'Sports', 'Sega', 1140000, 1910000, 270000, 460000, 3780000, 1, 9, 1),
(322, 'LEGO Indiana Jones: The Original Adventures', 'X360', 2008, 'Action', 'Activision', 2400000, 1030000, 0, 360000, 3780000, 9, 5, 5),
(323, 'Resident Evil Director\'s Cut', 'PS', 1996, 'Action', 'Virgin Interactive', 1820000, 1240000, 470000, 250000, 3770000, 9, 19, 13),
(324, 'Ratchet & Clank: Size Matters', 'PSP', 2007, 'Platform', 'Sony Computer Entertainment', 1400000, 1400000, 100000, 870000, 3770000, 4, 4, 17),
(325, 'Just Dance 2014', 'Wii', 2013, 'Misc', 'Ubisoft', 1980000, 1470000, 0, 320000, 3760000, 5, 6, 1),
(326, 'The Sims: Unleashed', 'PC', 2002, 'Simulation', 'Electronic Arts', 2029999, 1560000, 0, 170000, 3760000, 7, 8, 15),
(327, 'Super Paper Mario', 'Wii', 2007, 'Platform', 'Nintendo', 1980000, 880000, 590000, 320000, 3760000, 4, 1, 1),
(328, 'Harry Potter and the Sorcerer\'s Stone', 'PS', 2001, 'Action', 'Electronic Arts', 1370000, 2000000, 140000, 220000, 3730000, 9, 8, 13),
(329, 'The Witcher 3: Wild Hunt', 'PS4', 2015, 'Role-Playing', 'Namco Bandai Games', 960000, 2000000, 210000, 560000, 3730000, 2, 26, 11),
(330, 'Resident Evil 3: Nemesis', 'PS', 1999, 'Action', 'Eidos Interactive', 1300000, 770000, 1540000, 110000, 3720000, 9, 22, 13),
(331, 'Spyro: Year of the Dragon', 'PS', 2000, 'Platform', 'Sony Computer Entertainment', 1930000, 1580000, 0, 190000, 3710000, 4, 4, 13),
(332, 'FIFA Soccer 2005', 'PS2', 2004, 'Sports', 'Electronic Arts', 580000, 2480000, 40000, 590000, 3700000, 1, 8, 7),
(333, 'Pokémon Trading Card Game', 'GB', 1998, 'Strategy', 'Nintendo', 1490000, 730000, 1380000, 100000, 3700000, 12, 1, 2),
(334, 'Battlefield 4', 'PS3', 2013, 'Shooter', 'Electronic Arts', 1300000, 1510000, 270000, 610000, 3690000, 6, 8, 6),
(335, 'MySims', 'DS', 2007, 'Simulation', 'Electronic Arts', 1590000, 1610000, 80000, 410000, 3690000, 7, 8, 3),
(336, 'Friend Collection', 'DS', 2009, 'Misc', 'Nintendo', 0, 0, 3670000, 0, 3670000, 5, 1, 3),
(337, 'Tony Hawk\'s Pro Skater 4', 'PS2', 2002, 'Sports', 'Activision', 2130000, 1180000, 10000, 350000, 3670000, 1, 5, 7),
(338, 'Midnight Club 3: DUB Edition', 'PSP', 2005, 'Racing', 'Take-Two Interactive', 1650000, 1220000, 0, 790000, 3660000, 8, 3, 17);

-- --------------------------------------------------------

--
-- Struttura per vista `anni`
--
DROP TABLE IF EXISTS `anni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `anni`  AS SELECT `videogame`.`name` AS `name`, `videogame`.`year` AS `year` FROM `videogame` WHERE `videogame`.`year` = 2006 ;

-- --------------------------------------------------------

--
-- Struttura per vista `genereq1`
--
DROP TABLE IF EXISTS `genereq1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genereq1`  AS SELECT `g`.`genre_name` AS `genre_name`, `v`.`genre_id` AS `genre_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`genre` `g` join `videogame` `v` on(`g`.`id` = `v`.`genre_id`)) WHERE `v`.`year` between 1980 and 1989 ;

-- --------------------------------------------------------

--
-- Struttura per vista `genereq2`
--
DROP TABLE IF EXISTS `genereq2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genereq2`  AS SELECT `g`.`genre_name` AS `genre_name`, `v`.`genre_id` AS `genre_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`genre` `g` join `videogame` `v` on(`g`.`id` = `v`.`genre_id`)) WHERE `v`.`year` between 1990 and 1999 ;

-- --------------------------------------------------------

--
-- Struttura per vista `genereq3`
--
DROP TABLE IF EXISTS `genereq3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genereq3`  AS SELECT `g`.`genre_name` AS `genre_name`, `v`.`genre_id` AS `genre_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`genre` `g` join `videogame` `v` on(`g`.`id` = `v`.`genre_id`)) WHERE `v`.`year` between 2000 and 2009 ;

-- --------------------------------------------------------

--
-- Struttura per vista `genereq4`
--
DROP TABLE IF EXISTS `genereq4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genereq4`  AS SELECT `g`.`genre_name` AS `genre_name`, `v`.`genre_id` AS `genre_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`genre` `g` join `videogame` `v` on(`g`.`id` = `v`.`genre_id`)) WHERE `v`.`year` between 2010 and 2020 ;

-- --------------------------------------------------------

--
-- Struttura per vista `platformq1`
--
DROP TABLE IF EXISTS `platformq1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platformq1`  AS SELECT `p`.`platform_name` AS `platform_name`, `v`.`platform_id` AS `platform_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`platform` `p` join `videogame` `v` on(`p`.`id` = `v`.`platform_id`)) WHERE `v`.`year` between 1980 and 1989 ;

-- --------------------------------------------------------

--
-- Struttura per vista `platformq2`
--
DROP TABLE IF EXISTS `platformq2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platformq2`  AS SELECT `p`.`platform_name` AS `platform_name`, `v`.`platform_id` AS `platform_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`platform` `p` join `videogame` `v` on(`p`.`id` = `v`.`platform_id`)) WHERE `v`.`year` between 1990 and 1999 ;

-- --------------------------------------------------------

--
-- Struttura per vista `platformq3`
--
DROP TABLE IF EXISTS `platformq3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platformq3`  AS SELECT `p`.`platform_name` AS `platform_name`, `v`.`platform_id` AS `platform_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`platform` `p` join `videogame` `v` on(`p`.`id` = `v`.`platform_id`)) WHERE `v`.`year` between 2000 and 2009 ;

-- --------------------------------------------------------

--
-- Struttura per vista `platformq4`
--
DROP TABLE IF EXISTS `platformq4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platformq4`  AS SELECT `p`.`platform_name` AS `platform_name`, `v`.`platform_id` AS `platform_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`platform` `p` join `videogame` `v` on(`p`.`id` = `v`.`platform_id`)) WHERE `v`.`year` between 2010 and 2020 ;

-- --------------------------------------------------------

--
-- Struttura per vista `publishermq1`
--
DROP TABLE IF EXISTS `publishermq1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `publishermq1`  AS SELECT `p`.`publisher_name` AS `publisher_name`, `v`.`publisher_id` AS `publisher_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`publisher` `p` join `videogame` `v` on(`p`.`id` = `v`.`publisher_id`)) WHERE `v`.`year` between 1980 and 1989 ;

-- --------------------------------------------------------

--
-- Struttura per vista `publisherq2`
--
DROP TABLE IF EXISTS `publisherq2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `publisherq2`  AS SELECT `p`.`publisher_name` AS `publisher_name`, `v`.`publisher_id` AS `publisher_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`publisher` `p` join `videogame` `v` on(`p`.`id` = `v`.`publisher_id`)) WHERE `v`.`year` between 1990 and 1999 ;

-- --------------------------------------------------------

--
-- Struttura per vista `publisherq3`
--
DROP TABLE IF EXISTS `publisherq3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `publisherq3`  AS SELECT `p`.`publisher_name` AS `publisher_name`, `v`.`publisher_id` AS `publisher_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`publisher` `p` join `videogame` `v` on(`p`.`id` = `v`.`publisher_id`)) WHERE `v`.`year` between 2000 and 2009 ;

-- --------------------------------------------------------

--
-- Struttura per vista `publisherq4`
--
DROP TABLE IF EXISTS `publisherq4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `publisherq4`  AS SELECT `p`.`publisher_name` AS `publisher_name`, `v`.`publisher_id` AS `publisher_id`, `v`.`year` AS `year`, `v`.`na_sales` AS `na_sales`, `v`.`eu_sales` AS `eu_sales`, `v`.`jp_sales` AS `jp_sales`, `v`.`other_sales` AS `other_sales`, `v`.`global_sales` AS `global_sales` FROM (`publisher` `p` join `videogame` `v` on(`p`.`id` = `v`.`publisher_id`)) WHERE `v`.`year` between 2010 and 2020 ;

-- --------------------------------------------------------

--
-- Struttura per vista `q1`
--
DROP TABLE IF EXISTS `q1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q1`  AS SELECT `videogame`.`name` AS `name`, `videogame`.`year` AS `year`, `videogame`.`na_sales` AS `na_sales`, `videogame`.`eu_sales` AS `eu_sales`, `videogame`.`jp_sales` AS `jp_sales`, `videogame`.`other_sales` AS `other_sales`, `videogame`.`global_sales` AS `global_sales` FROM `videogame` WHERE `videogame`.`year` between 1980 and 1989 ;

-- --------------------------------------------------------

--
-- Struttura per vista `q2`
--
DROP TABLE IF EXISTS `q2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q2`  AS SELECT `videogame`.`name` AS `name`, `videogame`.`year` AS `year`, `videogame`.`na_sales` AS `na_sales`, `videogame`.`eu_sales` AS `eu_sales`, `videogame`.`jp_sales` AS `jp_sales`, `videogame`.`other_sales` AS `other_sales`, `videogame`.`global_sales` AS `global_sales` FROM `videogame` WHERE `videogame`.`year` between 1990 and 1999 ;

-- --------------------------------------------------------

--
-- Struttura per vista `q3`
--
DROP TABLE IF EXISTS `q3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q3`  AS SELECT `videogame`.`name` AS `name`, `videogame`.`year` AS `year`, `videogame`.`na_sales` AS `na_sales`, `videogame`.`eu_sales` AS `eu_sales`, `videogame`.`jp_sales` AS `jp_sales`, `videogame`.`other_sales` AS `other_sales`, `videogame`.`global_sales` AS `global_sales` FROM `videogame` WHERE `videogame`.`year` between 2000 and 2009 ;

-- --------------------------------------------------------

--
-- Struttura per vista `q4`
--
DROP TABLE IF EXISTS `q4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q4`  AS SELECT `videogame`.`name` AS `name`, `videogame`.`year` AS `year`, `videogame`.`na_sales` AS `na_sales`, `videogame`.`eu_sales` AS `eu_sales`, `videogame`.`jp_sales` AS `jp_sales`, `videogame`.`other_sales` AS `other_sales`, `videogame`.`global_sales` AS `global_sales` FROM `videogame` WHERE `videogame`.`year` between 2010 and 2020 ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_name` (`genre_name`);

--
-- Indici per le tabelle `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_giochi` (`id_giochi`);

--
-- Indici per le tabelle `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `platform_name` (`platform_name`);

--
-- Indici per le tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indici per le tabelle `videogame`
--
ALTER TABLE `videogame`
  ADD PRIMARY KEY (`id_giochi`),
  ADD KEY `fk_genre` (`genre_id`),
  ADD KEY `fk_publisher` (`publisher_id`),
  ADD KEY `fk_platform` (`platform_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `name`
--
ALTER TABLE `name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT per la tabella `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT per la tabella `videogame`
--
ALTER TABLE `videogame`
  MODIFY `id_giochi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `name`
--
ALTER TABLE `name`
  ADD CONSTRAINT `name_ibfk_1` FOREIGN KEY (`id_giochi`) REFERENCES `videogame` (`id_giochi`);

--
-- Limiti per la tabella `videogame`
--
ALTER TABLE `videogame`
  ADD CONSTRAINT `fk_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `fk_platform` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`),
  ADD CONSTRAINT `fk_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
