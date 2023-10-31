-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/10/2023 às 16:21
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fisiform`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `ConteudoID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Conceito` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `conteudo`
--

INSERT INTO `conteudo` (`ConteudoID`, `Nome`, `Conceito`) VALUES
(3, 'Cinemática', 'A cinemática é o ramo da física que se ocupa da descrição dos movimentos dos corpos, sem se preocupar com a análise de suas causas (dinâmica).');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formulas`
--

CREATE TABLE `formulas` (
  `FormulaID` int(11) NOT NULL,
  `FormulaComputacional` varchar(250) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Estrutura` varchar(150) DEFAULT NULL,
  `SubConteudoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `formulas`
--

INSERT INTO `formulas` (`FormulaID`, `FormulaComputacional`, `Nome`, `Estrutura`, `SubConteudoID`) VALUES
(7, 'VM = D / T', 'Velocidade Média', 'VM = D ÷ T', 3),
(8, 'P = PI + V * T', 'Função Horária do Deslocamento', 'P = PI + V x T', 4),
(9, 'AM = V / T', 'Aceleração Média', 'AM = V ÷ T', 5),
(10, 'V = VI + A * T', 'Função Horária da Velocidade', 'V = VI + A x T', 5),
(11, 'P = PI + VI * T + 1/2 * A * T^2 ', 'Função horária da posição em função do tempo', 'P = PI + VI x T + 1 ÷ 2 x A x T²', 5),
(12, 'V^2 = VI^2 + 2 * A * D', 'Equação de Torricelli', 'V² = VI² + 2 x A x D', 5),
(13, 'V = VI ± G * T', 'Função Horária da Velocidade no Movimento Vertical', 'V = VI ± G x T', 6),
(14, 'H = HI + VI * T ± 1/2 * G * T^2 * VI', 'Função horária da posição em função do tempo no movimento vertical', 'H = HI + VI x T ± 1 ÷ 2 x G x T² x VI', 6),
(15, 'V^2 = VI^2 ± 2 * G * H', 'Equação de Torricelli no movimento vertical', 'V² = VI²  ± 2 x G x H', 6),
(16, 'X = XI + VIX * T', 'Função Horária da Posição Horizontal', 'X = XI + VIX x T', 7),
(17, 'PV = PVI + CVI * T + 1/2 * G * T^2', 'Função horária da posição vertical', 'PV = PVI + CVI x T + 1/2 x G x T²', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `subconteudo`
--

CREATE TABLE `subconteudo` (
  `SubConteudoID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `ConteudoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `subconteudo`
--

INSERT INTO `subconteudo` (`SubConteudoID`, `Nome`, `ConteudoID`) VALUES
(3, 'Velocidade', 3),
(4, 'Movimento Uniforme', 3),
(5, 'Movimento Uniformemente Variado', 3),
(6, 'Movimento Vertical', 3),
(7, 'Movimento Oblíquo', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `variaveis`
--

CREATE TABLE `variaveis` (
  `VariaveisID` int(11) NOT NULL,
  `Variavel` varchar(45) DEFAULT NULL,
  `Conceito` varchar(250) DEFAULT NULL,
  `FormulaID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `variaveis`
--

INSERT INTO `variaveis` (`VariaveisID`, `Variavel`, `Conceito`, `FormulaID`) VALUES
(13, 'VM', 'Velocidade Média', 7),
(14, 'D', 'Distnância Percorrida', 7),
(15, 'T', 'Intervalo de Tempo', 7),
(16, 'P', 'Posição', 8),
(17, 'PI', 'Posição Inicial', 8),
(18, 'V', 'Velocidade', 8),
(19, 'T', 'Intervalo de Tempo', 8),
(20, 'AM', 'Aceleração Média', 9),
(21, 'V', 'Velocidade', 9),
(22, 'T', 'Intervalo de Tempo', 9),
(23, 'V', 'Velocidade', 10),
(24, 'VI', 'Velocidade Inicial', 10),
(25, 'A', 'Aceleração', 10),
(26, 'T', 'Tempo', 10),
(27, 'V', 'Velocidade', 11),
(28, 'VI', 'Velocidade Inicial', 11),
(29, 'A', 'Aceleração', 11),
(30, 'T', 'Tempo', 11),
(31, 'V', 'Velocidade', 12),
(32, 'VI', 'Velocidade Inicial', 12),
(33, 'A', 'Aceleração', 12),
(34, 'D', 'Distância Percorrida', 12),
(35, 'V', 'Velocidade', 13),
(36, 'VI', 'Velocidade Inicial', 13),
(37, 'G', 'Gravidade', 13),
(38, 'T', 'Tempo', 13),
(39, 'H', 'Altura', 14),
(40, 'HI', 'Altura Inicial', 14),
(41, 'VI', 'Velocidade Inicial', 14),
(42, 'G', 'Gravidade', 14),
(43, 'T', 'Tempo', 14),
(44, 'V', 'Velocidade', 15),
(45, 'VI', 'Velocidade Inicial', 15),
(46, 'G', 'Gravidade', 15),
(47, 'H', 'Altura', 15),
(48, 'X', 'Posição Horizontal', 16),
(49, 'XI', 'Posição Horizontal Inicial', 16),
(50, 'VIX', 'Componente Horizontal do Vetor Velocidade Inicial', 16),
(51, 'T', 'Tempo', 16),
(52, 'PV', 'Posição Vertical', 17),
(53, 'PVI', 'Posição Vertical Inicial', 17),
(54, 'CVI', 'Componente Vertical do Vetor Velocidade Inicial', 17),
(55, 'T', 'Tempo', 17),
(56, 'G', 'Gravidade', 17);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`ConteudoID`);

--
-- Índices de tabela `formulas`
--
ALTER TABLE `formulas`
  ADD PRIMARY KEY (`FormulaID`);

--
-- Índices de tabela `subconteudo`
--
ALTER TABLE `subconteudo`
  ADD PRIMARY KEY (`SubConteudoID`),
  ADD KEY `fk_SubConteudo_Conteudo1` (`ConteudoID`);

--
-- Índices de tabela `variaveis`
--
ALTER TABLE `variaveis`
  ADD PRIMARY KEY (`VariaveisID`),
  ADD KEY `fk_Variaveis_Formulas` (`FormulaID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `ConteudoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `formulas`
--
ALTER TABLE `formulas`
  MODIFY `FormulaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `subconteudo`
--
ALTER TABLE `subconteudo`
  MODIFY `SubConteudoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `variaveis`
--
ALTER TABLE `variaveis`
  MODIFY `VariaveisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `subconteudo`
--
ALTER TABLE `subconteudo`
  ADD CONSTRAINT `fk_SubConteudo_Conteudo1` FOREIGN KEY (`ConteudoID`) REFERENCES `conteudo` (`ConteudoID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `variaveis`
--
ALTER TABLE `variaveis`
  ADD CONSTRAINT `fk_Variaveis_Formulas` FOREIGN KEY (`FormulaID`) REFERENCES `formulas` (`FormulaID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
