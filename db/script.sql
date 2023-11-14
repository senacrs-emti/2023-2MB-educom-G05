-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/11/2023 às 16:20
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
(3, 'Cinemática', 'A cinemática é o ramo da física que se ocupa da descrição dos movimentos dos corpos, sem se preocupar com a análise de suas causas (dinâmica).'),
(4, 'Termometria', 'A termometria é a parte da termologia voltada para o estudo da temperatura, dos termômetros e das escalas termométricas.'),
(5, 'Óptica', 'A óptica é o ramo da Física que estuda os fenômenos que têm como causa determinante a energia radiante.'),
(6, 'Acústica', 'A acústica é o ramo da física associado ao estudo do som.'),
(7, 'Eletrostática', 'A eletrostática é o ramo da eletricidade que estuda as propriedades e o comportamento de cargas elétricas em repouso.');

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
(7, 'VM = D / T', 'Velocidade Média', 'Vm = ∆d ÷ ∆t', 3),
(8, 'P = PI + V * T', 'Função Horária do Deslocamento', 'S = So + V * ∆t', 4),
(9, 'AM = V / T', 'Aceleração Média', 'Am = ∆v ÷ ∆t', 5),
(10, 'V = VI + A * T', 'Função Horária da Velocidade', 'V = Vo + A x T', 5),
(11, 'P = PI + VI * T + 1/2 * A * T^2 ', 'Função horária da posição em função do tempo', 'S = So + Vo x T + 1 ÷ 2 x A x T²', 5),
(12, 'V^2 = VI^2 + 2 * A * D', 'Equação de Torricelli', 'V² = Vo² + 2 x A x ∆d', 5),
(13, 'V = VI ± G * T', 'Função Horária da Velocidade no Movimento Vertical', 'V = Vo ± G x T', 6),
(14, 'H = HI + VI * T ± 1/2 * G * T^2 * VI', 'Função horária da posição em função do tempo no movimento vertical', 'H = Ho + Vo x T ± 1 ÷ 2 x G x T² x Vo', 6),
(15, 'V^2 = VI^2 ± 2 * G * H', 'Equação de Torricelli no movimento vertical', 'V² = Vo²  ± 2 x G x ∆h', 6),
(19, '(C * 9 / 5) + 32', 'Conversão Celcius para  Fahrenheit', '(θ℃ x 9 ÷ 5) + 32', 9),
(20, '(F - 32) * 5 / 9', 'Conversão Fahrenheit para Celsius', '(θ℉ - 32) x 5 ÷ 9', 9),
(21, 'C + 273', 'Conversão Celsius para Kelvin', 'θc + 273', 9),
(22, 'T - 273', 'Conversão Kelvin para Celsius', 'θt - 273', 9),
(23, 'I = R', 'Lei da Refração', 'i = r', 10),
(24, 'N = 360 / A - 1', 'Associação de espelhos planos', 'n = 360° ÷ a° - 1', 11),
(25, '1/F = 1 / DI + 1 / DO', 'Equação de Gauss', '1 ÷ f = 1 ÷ Di + 1 ÷ Do', 11),
(26, 'NM = CL / VL ', 'Índice de refração absoluto em um meio', 'Nm = C / Vm', 12),
(27, 'N1 * sen(i) = N2 sen(r) ', 'Lei de Snell-Descartes', 'N1 x sen(i) = N2 x sen(r)', 12),
(28, 'N2,1 = N2 / N1 = sen(i) / sen(r) = V1 / V2 = CO1 / CO2', 'Índice relativo de refração entre dois meios', 'N2,1 = N2 ÷ N1 = sen(i) ÷ sen(r) = V1 ÷ V2 = ⁁1 ÷ ⁁2', 12),
(29, 'V = sqrt(K*T)', 'Velocidade de propagação', 'V = √k*T', 13),
(30, 'V1² / T1 = V2² / T2', 'Velocidade de propagação em um mesmo gás com diferentes temperaturas', 'V1² ÷ T1 = V2² ÷ T2 ', 13),
(31, 'I = F1 / F2', 'Intervalo entre dois sons', 'i = f1 / f2', 14),
(32, 'I = E / A * T', 'Intensidade Sonora', 'I = E / A * ∆t', 15),
(33, 'β = 10log * I/IO', 'Nível Sonoro', 'β = 10log x I ÷ Io', 15),
(34, 'F = N * V / 2L', 'Tubos abertos', 'f = n x v ÷ 2l', 16),
(35, 'F = I * V / 4l', 'Tubos fechados', 'f = i x v ÷ 4l', 16);

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
(9, 'Conversões entre escalas', 4),
(10, 'Reflexão da luz', 5),
(11, 'Espelhos', 5),
(12, 'Refração da luz', 5),
(13, 'Velocidade de propagação do som em meios gasosos', 6),
(14, 'Intervalo acústico', 6),
(15, 'Intensidade sonora', 6),
(16, 'Tubos sonoros', 6),
(17, 'Efeito Doppler', 6),
(18, 'Cargas elétricas', 7),
(19, 'Eletrização', 7),
(20, 'Força de interação entre cargas', 7),
(21, 'Campo elétrico', 7),
(22, 'Potencial elétrico', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `variaveis`
--

CREATE TABLE `variaveis` (
  `VariaveisID` int(11) NOT NULL,
  `Variavel` varchar(45) DEFAULT NULL,
  `Conceito` varchar(250) DEFAULT NULL,
  `FormulaID` int(11) NOT NULL DEFAULT 0,
  `VariavelComputacional` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `variaveis`
--

INSERT INTO `variaveis` (`VariaveisID`, `Variavel`, `Conceito`, `FormulaID`, `VariavelComputacional`) VALUES
(13, 'Vm', 'Velocidade Média', 7, 'VM'),
(14, '∆d', 'Distância Percorrida', 7, 'D'),
(15, '∆t', 'Intervalo de Tempo', 7, 'T'),
(16, 'S', 'Posição', 8, ''),
(17, 'So', 'Posição Inicial', 8, ''),
(18, 'V', 'Velocidade', 8, ''),
(19, '∆t', 'Intervalo de Tempo', 8, ''),
(20, 'Am', 'Aceleração Média', 9, ''),
(21, 'V', 'Velocidade', 9, ''),
(22, '∆t', 'Intervalo de Tempo', 9, ''),
(23, 'V', 'Velocidade', 10, ''),
(24, 'Vo', 'Velocidade Inicial', 10, ''),
(25, 'A', 'Aceleração', 10, ''),
(26, 'T', 'Tempo', 10, ''),
(27, 'V', 'Velocidade', 11, ''),
(28, 'Vo', 'Velocidade Inicial', 11, ''),
(29, 'A', 'Aceleração', 11, ''),
(30, 'T', 'Tempo', 11, ''),
(31, 'V', 'Velocidade', 12, ''),
(32, 'Vo', 'Velocidade Inicial', 12, ''),
(33, 'A', 'Aceleração', 12, ''),
(34, '∆d', 'Distância Percorrida', 12, ''),
(35, 'V', 'Velocidade', 13, ''),
(36, 'Vo', 'Velocidade Inicial', 13, ''),
(37, 'G', 'Gravidade', 13, ''),
(38, 'T', 'Tempo', 13, ''),
(39, 'H', 'Altura', 14, ''),
(40, 'Ho', 'Altura Inicial', 14, ''),
(41, 'Vo', 'Velocidade Inicial', 14, ''),
(42, 'G', 'Gravidade', 14, ''),
(43, 'T', 'Tempo', 14, ''),
(44, 'V', 'Velocidade', 15, ''),
(45, 'Vo', 'Velocidade Inicial', 15, ''),
(46, 'G', 'Gravidade', 15, ''),
(47, 'H', 'Altura', 15, '');

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
  MODIFY `ConteudoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `formulas`
--
ALTER TABLE `formulas`
  MODIFY `FormulaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `subconteudo`
--
ALTER TABLE `subconteudo`
  MODIFY `SubConteudoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `variaveis`
--
ALTER TABLE `variaveis`
  MODIFY `VariaveisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
