-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Out-2023 às 22:41
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ufagrambd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `IdUser` int(11) NOT NULL,
  `NomeUser` varchar(50) NOT NULL,
  `FotoUser` text NOT NULL,
  `MembrosUser` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`IdUser`, `NomeUser`, `FotoUser`, `MembrosUser`) VALUES
(1, 'Juliano ', 'foto ', 1),
(2, 'Xande', 'foto ', 56),
(3, 'Arthur', 'foto', 44),
(4, 'Gago ', 'foto ', 68),
(5, 'Pietro ', 'Foto ', 10),
(6, 'Caio ', 'foto', 85),
(7, 'Abdul ', 'foto ', 8),
(8, 'Raaede ', 'Foto ', 3),
(9, 'Enzo Cros', 'foto ', 87),
(10, 'Gabriel Bolinha', 'foto ', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comunidade`
--

CREATE TABLE `comunidade` (
  `IdComunidade` int(11) NOT NULL,
  `UserComunidade` int(25) NOT NULL,
  `FotoComunidade` varchar(255) NOT NULL,
  `DscrComunidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `comunidade`
--

INSERT INTO `comunidade` (`IdComunidade`, `UserComunidade`, `FotoComunidade`, `DscrComunidade`) VALUES
(1, 53637, 'Foto', 'comunidade Time'),
(2, 74242, 'Foto', 'Comunidade games'),
(3, 36213, 'Foto', 'Comunidade Esporte'),
(4, 53637, 'Foto', 'comunidade Time'),
(5, 74242, 'Foto', 'Comunidade games'),
(6, 36213, 'Foto', 'Comunidade Esporte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotoperfil`
--

CREATE TABLE `fotoperfil` (
  `IdFoto` int(11) NOT NULL,
  `FotoUser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fotoperfil`
--

INSERT INTO `fotoperfil` (`IdFoto`, `FotoUser`) VALUES
(1, 'Foto'),
(2, 'Foto'),
(3, 'Foto'),
(4, 'Foto'),
(5, 'Foto'),
(6, 'Foto'),
(7, 'Foto'),
(8, 'Foto'),
(9, 'Foto'),
(10, 'Foto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo`
--

CREATE TABLE `grupo` (
  `IdUser` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `MembrosGrp` int(5) NOT NULL,
  `ChatName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

CREATE TABLE `post` (
  `IdUser` int(11) NOT NULL,
  `NomeUser` varchar(50) NOT NULL,
  `FotoUser` text NOT NULL,
  `Curitdas` int(20) NOT NULL,
  `Post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`IdUser`, `NomeUser`, `FotoUser`, `Curitdas`, `Post`) VALUES
(1, 'Xande', 'Foto', 36326, 'Foto'),
(2, 'tutu', 'Foto', 2512, 'Foto'),
(3, 'Xande', 'Foto', 36326, 'Foto'),
(4, 'tutu', 'Foto', 2512, 'Foto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reels`
--

CREATE TABLE `reels` (
  `IdReels` int(11) NOT NULL,
  `User` int(11) NOT NULL,
  `Curtidas` int(25) NOT NULL,
  `Comentarios` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reels`
--

INSERT INTO `reels` (`IdReels`, `User`, `Curtidas`, `Comentarios`) VALUES
(1, 575, 48, 4547);

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguidores`
--

CREATE TABLE `seguidores` (
  `Id` int(11) NOT NULL,
  `NomeUser` int(50) NOT NULL,
  `SeguidoresUser` int(50) NOT NULL,
  `CfUser` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `seguidores`
--

INSERT INTO `seguidores` (`Id`, `NomeUser`, `SeguidoresUser`, `CfUser`) VALUES
(1, 1195258965, 20000, 2415),
(2, 115565545, 254412, 112),
(3, 11245522, 5666, 444555),
(4, 212544620, 100000, 12),
(5, 2256411, 2112, 21244),
(6, 15222, 2444, 44),
(7, 221122, 224777777, 5552),
(8, 254544, 4455, 4444),
(9, 5555244, 22214441, 11444),
(10, 5656, 112, 152),
(11, 1195258965, 20000, 2415),
(12, 115565545, 254412, 112),
(13, 11245522, 5666, 444555),
(14, 212544620, 100000, 12),
(15, 2256411, 2112, 21244),
(16, 15222, 2444, 44),
(17, 221122, 224777777, 5552),
(18, 254544, 4455, 4444),
(19, 5555244, 22214441, 11444),
(20, 5656, 112, 152);

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguindo`
--

CREATE TABLE `seguindo` (
  `IdUser` int(20) NOT NULL,
  `NomeUser` varchar(50) NOT NULL,
  `SeguindoUser` int(30) NOT NULL,
  `CfUsers` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `seguindo`
--

INSERT INTO `seguindo` (`IdUser`, `NomeUser`, `SeguindoUser`, `CfUsers`) VALUES
(1, 'Juliano ', 23411, 1251),
(2, 'tutu', 4464, 35),
(3, 'xande', 3636, 123),
(4, 'Pedro ', 22251, 12225),
(5, 'Henrique ', 4412, 2223),
(6, 'Gaia ', 552212, 22332),
(7, 'Thiago ', 3442, 332),
(8, 'Giovani ', 455411, 66545144),
(9, 'Raphael ', 54255, 3222),
(10, 'Bia ', 22255, 33333),
(11, 'Juliano ', 23411, 1251),
(12, 'tutu', 4464, 35),
(13, 'xande', 3636, 123),
(14, 'Pedro ', 22251, 12225),
(15, 'Henrique ', 4412, 2223),
(16, 'Gaia ', 552212, 22332),
(17, 'Thiago ', 3442, 332),
(18, 'Giovani ', 455411, 66545144),
(19, 'Raphael ', 54255, 3222),
(20, 'Bia ', 22255, 33333);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stories`
--

CREATE TABLE `stories` (
  `IdStories` int(11) NOT NULL,
  `User` int(11) NOT NULL,
  `Visualizacoes` int(50) NOT NULL,
  `Likes` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `stories`
--

INSERT INTO `stories` (`IdStories`, `User`, `Visualizacoes`, `Likes`) VALUES
(1, 2255, 252623, 21425),
(2, 25562, 26175, 87807),
(3, 686849, 96496, 879),
(4, 467, 565, 885),
(5, 54, 34, 2),
(6, 757, 8547, 8464),
(7, 744, 74342, 62647),
(8, 3733662, 7373, 39008),
(9, 86969, 5352, 647),
(10, 7474, 848, 3225),
(11, 2255, 252623, 21425),
(12, 25562, 26175, 87807),
(13, 686849, 96496, 879),
(14, 467, 565, 885),
(15, 54, 34, 2),
(16, 757, 8547, 8464),
(17, 744, 74342, 62647),
(18, 3733662, 7373, 39008),
(19, 86969, 5352, 647),
(20, 7474, 848, 3225);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numero` varchar(13) NOT NULL,
  `datansc` varchar(15) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `email`, `numero`, `datansc`, `senha`) VALUES
(1, 'teste', 'teste', '11111111111', '11/11/1111', 'teste'),
(2, 'alexandre', 'alexandre@gmail.com', '119242992', '07/05/1986', 'alexandre'),
(3, 'Romero', 'romero@gmail.com', '1191251531', '11/09/1997', 'RomeroGol'),
(4, 'Renato', 'renato@gmail.com', '1193256232', '19/02/1993', 'RenatoRei'),
(5, 'Yuri', 'Yuri@gmail.com', '119968572', '1/12/2001', 'YuriGol'),
(6, 'Tite', 'Tite@gmail.com', '11998223225', '21/03/1985', 'CorinthiansOMaior'),
(7, 'Gaia', 'gaiazagueiro04@gmail.com', '119982144', '23/12/2005', 'Gaia123'),
(8, 'Tutu', 'TutuWesley@gmail.com', '11932245784', '09/04/2006', 'TutuZeroPasse'),
(9, 'Xande', 'Xande@gmail.com', '119837832', '23/02/2004', 'XandeZeroFut'),
(10, 'Wesley', 'weslye@gmail.com', '119992452', '20/10/2008', 'WesleySemVisao');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`IdUser`);

--
-- Índices para tabela `comunidade`
--
ALTER TABLE `comunidade`
  ADD PRIMARY KEY (`IdComunidade`);

--
-- Índices para tabela `fotoperfil`
--
ALTER TABLE `fotoperfil`
  ADD PRIMARY KEY (`IdFoto`);

--
-- Índices para tabela `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`IdUser`);

--
-- Índices para tabela `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`IdUser`);

--
-- Índices para tabela `reels`
--
ALTER TABLE `reels`
  ADD PRIMARY KEY (`IdReels`);

--
-- Índices para tabela `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `seguindo`
--
ALTER TABLE `seguindo`
  ADD PRIMARY KEY (`IdUser`);

--
-- Índices para tabela `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`IdStories`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `comunidade`
--
ALTER TABLE `comunidade`
  MODIFY `IdComunidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `fotoperfil`
--
ALTER TABLE `fotoperfil`
  MODIFY `IdFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `grupo`
--
ALTER TABLE `grupo`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `reels`
--
ALTER TABLE `reels`
  MODIFY `IdReels` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `seguindo`
--
ALTER TABLE `seguindo`
  MODIFY `IdUser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `stories`
--
ALTER TABLE `stories`
  MODIFY `IdStories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
