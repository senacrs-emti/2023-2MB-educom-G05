-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/11/2023 às 13:44
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
(35, 'F = I * V / 4l', 'Tubos fechados', 'f = i x v ÷ 4l', 16),
(36, 'FOB = (V ± VOB /  V ± VF) * FF', 'Frequência sob efeito Doppler', 'Fob = (v ± Vob ÷ v ± Vf) x Ff', 17),
(37, 'E = 1,6 * 10^-19', 'Carga elétrica elementar', 'e = 1,6 x 10⁻¹⁹', 18),
(38, 'Q = N * E', 'Carga elétrica', 'Q = n x e', 18),
(39, 'QR = Q1 + Q2 + ... QN / N', 'Eletrização por contato', 'Qr = Q1 + Q2 + ... Qn ÷ n', 19),
(40, 'F = K * Q1 * Q2 / D²', 'Lei de Coulomb', 'F = k x Q1 x Q2 ÷ d²', 20),
(41, 'K = 9 * 10⁹ * N * M² / C²', 'Constante elétrica no vácuo', 'k = 9 x 10⁹ x N x m² ÷ C²', 20),
(42, 'E = F / Q', 'Intensidade do campo elétrico', 'E = F ÷ q', 21),
(43, 'E = k * Q / D²', 'Intensidade do campo elétrico', 'E = k x Q ÷ d²', 21),
(44, 'EP = K * QQ / D ', 'Energia pontecial elétrica', 'Ep = k x Qq ÷ d', 22),
(45, 'V = EP / Q', 'Potencial elétrico', 'v = Ep ÷ q', 22),
(46, 'V = K * Q / D', 'Potencial elétrico', 'v = k x Q ÷ d', 22),
(47, 'TAB = Q * (VA - VB)', 'Trabalho de uma força elétrica', 'Ta,b = q x (Va - Vb)', 22),
(48, 'U = VB - VA', 'Diferença de potencial', 'U = Vb - Va', 22),
(49, 'U = K * Q / DAB', 'Diferença de potencial', 'U = k x Q ÷ ∆Da,b', 22);

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
(0, 'Vm', 'Velocidade Média', 7, 'VM');

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
  MODIFY `FormulaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `subconteudo`
--
ALTER TABLE `subconteudo`
  MODIFY `SubConteudoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
