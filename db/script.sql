-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/10/2023 às 16:24
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
-- Estrutura para tabela `formulas`
--

CREATE TABLE `formulas` (
  `FormularioID` int(11) NOT NULL,
  `Conceito` varchar(300) DEFAULT NULL,
  `FormulaComputacional` varchar(250) DEFAULT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Estrutura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `formulas`
--

INSERT INTO `formulas` (`FormularioID`, `Conceito`, `FormulaComputacional`, `Nome`, `Estrutura`) VALUES
(1, 'Conversão entre as escalas de temperatura Celsius e Fahrenheit', 'C = (5 * F - 160) / 9', 'Celsius para Fahrenheit', '°C = (5 x °F - 160) ÷ 9'),
(3, 'Conversão entre as escalas de temperatura Celsius e Fahrenheit', 'F = (9 * C + 160) / 5', 'Fahrenheit para Celsius', '°F = (9 x °C + 160) ÷ 5'),
(4, 'Conversão entre as escalas de temperatura Celsius e Kelvin', 'T = C + 273', 'Celsius para Kelvin', '°T = °C + 273'),
(5, 'Conversão entre as escalas de temperatura Celsius e Kelvin', 'C = T - 273', 'Kelvin para Celsius', '°C = °T - 273');

-- --------------------------------------------------------

--
-- Estrutura para tabela `variaveis`
--

CREATE TABLE `variaveis` (
  `VariaveisID` int(11) NOT NULL,
  `Variavel` varchar(45) DEFAULT NULL,
  `Conceito` varchar(250) DEFAULT NULL,
  `FormularioID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `formulas`
--
ALTER TABLE `formulas`
  ADD PRIMARY KEY (`FormularioID`);

--
-- Índices de tabela `variaveis`
--
ALTER TABLE `variaveis`
  ADD PRIMARY KEY (`VariaveisID`),
  ADD KEY `fk_Variaveis_Formulas` (`FormularioID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `formulas`
--
ALTER TABLE `formulas`
  MODIFY `FormularioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `variaveis`
--
ALTER TABLE `variaveis`
  MODIFY `VariaveisID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `variaveis`
--
ALTER TABLE `variaveis`
  ADD CONSTRAINT `fk_Variaveis_Formulas` FOREIGN KEY (`FormularioID`) REFERENCES `formulas` (`FormularioID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
