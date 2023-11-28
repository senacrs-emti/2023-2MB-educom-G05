-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2023 às 00:09
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

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
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `ConteudoID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Conceito` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`ConteudoID`, `Nome`, `Conceito`) VALUES
(3, 'Cinemática', 'A cinemática é o ramo da física que se ocupa da descrição dos movimentos dos corpos, sem se preocupar com a análise de suas causas (dinâmica).'),
(4, 'Termometria', 'A termometria é a parte da termologia voltada para o estudo da temperatura, dos termômetros e das escalas termométricas.'),
(5, 'Óptica', 'A óptica é o ramo da Física que estuda os fenômenos que têm como causa determinante a energia radiante.'),
(6, 'Acústica', 'A acústica é o ramo da física associado ao estudo do som.'),
(7, 'Eletrostática', 'A eletrostática é o ramo da eletricidade que estuda as propriedades e o comportamento de cargas elétricas em repouso.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulas`
--

CREATE TABLE `formulas` (
  `FormulaID` int(11) NOT NULL,
  `FormulaComputacional` varchar(250) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Estrutura` varchar(150) DEFAULT NULL,
  `SubConteudoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `formulas`
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
(40, 'F = K * Q1 * Q2 / D²', 'Lei de Coulomb', 'F = k x Q1 x Q2 ÷ d²', 20),
(42, 'E = F / Q', 'Intensidade do campo elétrico', 'E = F ÷ q', 21),
(44, 'EP = K * Q * q / D ', 'Energia pontecial elétrica', 'Ep = k x Q x q ÷ d', 22),
(45, 'V = EP / Q', 'Potencial elétrico', 'v = Ep ÷ q', 22),
(47, 'TAB = Q * (VA - VB)', 'Trabalho de uma força elétrica', 'Ta,b = q x (Va - Vb)', 22),
(48, 'U = VB - VA', 'Diferença de potencial', 'U = Vb - Va', 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subconteudo`
--

CREATE TABLE `subconteudo` (
  `SubConteudoID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `ConteudoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `subconteudo`
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
-- Estrutura da tabela `variaveis`
--

CREATE TABLE `variaveis` (
  `VariaveisID` int(11) NOT NULL,
  `Variavel` varchar(45) DEFAULT NULL,
  `Conceito` varchar(250) DEFAULT NULL,
  `FormulaID` int(11) NOT NULL DEFAULT 0,
  `VariavelComputacional` varchar(45) NOT NULL DEFAULT '',
  `Resultado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `variaveis`
--

INSERT INTO `variaveis` (`VariaveisID`, `Variavel`, `Conceito`, `FormulaID`, `VariavelComputacional`, `Resultado`) VALUES
(1, 'Vm', 'Velocidade Média', 7, 'VM', 1),
(2, '∆d', 'Distância Percorrida', 7, 'D', 0),
(3, '∆t', 'Intervalo de Tempo', 7, 'T', 0),
(4, 'S', 'Posição', 8, 'P', 0),
(5, 'So', 'Posição Inicial', 8, 'PI', 0),
(6, 'V', 'Velocidade', 8, 'V', 0),
(7, '∆t', 'Intervalo Tempo', 8, 'T', 0),
(8, 'Am', 'Aceleração Média', 9, 'AM', 0),
(9, '∆v', 'Variação da Velocidade', 9, 'V', 0),
(10, '∆t', 'Intervalo de Tempo', 9, 'T', 0),
(11, 'V', 'Velocidade', 10, 'V', 0),
(12, 'Vo', 'Velocidade Inicial', 10, 'VI', 0),
(13, 'A', 'Aceleração', 10, 'A', 0),
(14, 'T', 'Tempo', 10, 'T', 0),
(15, 'S', 'Posição', 11, 'P', 0),
(16, 'So', 'Posição Inicial', 11, 'PI', 0),
(17, 'Vo', 'Velocidade Inicial', 11, 'VI', 0),
(18, 'T', 'Tempo', 11, 'T', 0),
(19, 'A', 'Aceleração', 11, 'A', 0),
(20, 'V', 'Velocidade', 12, 'V', 0),
(21, 'Vo', 'Velocidade Inicial', 12, 'VI', 0),
(22, 'A', 'Aceleração', 12, 'A', 0),
(23, '∆d', 'Distância Percorrida', 12, 'D', 0),
(24, 'V', 'Velocidade', 13, 'V', 0),
(25, 'Vo', 'Velocidade Inicial', 13, 'VI', 0),
(26, 'G', 'Gravidade ', 13, 'G', 0),
(27, 'T', 'Tempo', 13, 'T', 0),
(28, 'H', 'Altura', 14, 'H', 0),
(29, 'Ho', 'Altura Inicial', 14, 'HI', 0),
(30, 'Vo', 'Velocidade Inicial', 14, 'VI', 0),
(31, 'T', 'Tempo', 14, 'T', 0),
(32, 'G', 'Gravidade', 14, 'G', 0),
(33, 'V', 'Velocidade', 15, 'V', 0),
(34, 'Vo', 'Velocidade Inicial', 15, 'VI', 0),
(35, 'G', 'Gravidade', 15, 'G', 0),
(36, '∆h', 'Variação de Altura', 15, 'H', 0),
(37, 'θ℃ ', 'Grau Celsius', 19, 'C', 0),
(38, 'θ℉', 'Grau Fahrenheit', 20, 'F', 0),
(39, 'θc', 'Temperatura em Graus Celsius', 21, 'C', 0),
(40, 'θt', 'Temperatura Absoluta em Kelvin', 22, 'T', 0),
(41, ' i', 'Ângulo de Incidência', 23, 'I', 0),
(42, 'r', 'Ângulo de Reflexo', 23, 'R', 0),
(43, 'n', 'Número de Imagens', 24, 'N', 0),
(44, 'a°', 'Ângulo de Abertura Entre os Espelhos', 24, 'A', 0),
(45, 'f', 'Distância Focal', 25, 'F', 0),
(46, 'Di', 'Distância da Imagem', 25, 'DI', 0),
(47, 'Do', 'Distância do Objeto', 25, 'DO', 0),
(48, 'Nm', 'Índice de Refração do Meio', 26, 'NM', 0),
(49, 'C', 'Velocidade da Luz no Vácuo', 26, 'CL', 0),
(50, 'Vm', 'Velocidade da Luz do Meio', 26, 'VL', 0),
(51, ' N1', 'Índice de Refração do Meio 1', 27, 'N1', 0),
(52, 'i', 'Ângulo de Incidência ', 27, 'i', 0),
(53, 'N2', 'Índice de Refração do Meio 2', 27, 'N2', 0),
(54, 'r', 'Ângulo de Refração', 27, 'r', 0),
(55, 'N2,1', 'Índice de Refração Relativo entre os Meios 1 e 2', 28, 'N2,1', 0),
(56, 'N2', 'Índice de Refração do Meio 2', 28, 'N2', 0),
(57, 'N1', 'Índice de Refração do Meio 1', 28, 'N1', 0),
(58, 'i', 'Ângulo de Incidência', 28, 'i', 0),
(59, 'r', 'Ângulo de Refração', 28, 'r', 0),
(60, 'V1', 'Velocidade da Luz do Meio 1', 28, 'V1', 0),
(61, 'V2', 'Velocidade da Luz do Meio 2', 28, 'V2', 0),
(62, '⁁1', 'Comprimento de Onda no Meio 1', 28, 'CO1', 0),
(63, '⁁2', 'Comprimento da Onda no Meio 2', 28, 'CO2', 0),
(64, 'V', 'Velocidade de Propagação', 29, 'V', 0),
(65, 'k', 'Constante de Proporcionalidade', 29, 'K', 0),
(66, 'T', 'Temperatura Absoluta', 29, 'T', 0),
(67, 'V1', 'Velocidade à Temperatura 1', 30, 'V1', 0),
(68, 'T1', 'Temperatura Absoluta', 30, 'T1', 0),
(69, 'V2', 'Velocidade à Temperatura 2', 30, 'V2', 0),
(70, 'T2', 'Temperatura Absoluta', 30, 'T2', 0),
(71, 'i', 'Intervalo', 31, 'I', 0),
(72, 'f1', 'Frequência do Som', 31, 'F1', 0),
(73, 'f2', 'Frequência do outro Som', 31, 'F2', 0),
(74, 'I', 'Intensidade Sonora', 32, 'I', 0),
(75, 'E', 'Energia Utilizada', 32, 'E', 0),
(76, 'A', 'Área', 32, 'A', 0),
(77, '∆t', 'Intervalo de Tempo', 32, 'T', 0),
(78, 'β', 'Nível Sonoro (em dB)', 33, 'β', 0),
(79, 'I', 'Intensidade Sonora', 33, 'I', 0),
(80, 'Io', 'Intensidade LSA', 33, 'IO', 0),
(81, 'f', 'Frequência', 34, 'F', 0),
(82, 'n', 'Sequência de Números Naturais', 34, 'N', 0),
(83, 'v', 'Velocidade', 34, 'V', 0),
(84, 'l', 'Comprimento do Tubo', 34, 'L', 0),
(85, 'f', 'Frequência', 35, 'F', 0),
(86, 'i', 'Sequência de Números', 35, 'I', 0),
(87, 'v', 'Velocidade', 35, 'V', 0),
(88, 'l', 'Comprimento do Tubo', 35, 'L', 0),
(89, 'Fob', 'Frequência Percebida pelo Observador', 36, 'FOB', 0),
(90, 'v', 'Velocidade da Propagação Real da Onda', 36, 'V', 0),
(91, 'Vob', 'Velocidade do Observador', 36, 'VOB', 0),
(92, 'Vf', 'Velocidade da Fonte', 36, 'VF', 0),
(93, 'Ff', 'Frequência Emitida pela Fonte', 36, 'FF', 0),
(94, 'e', 'Carga Elétrica Elementar', 37, 'E', 0),
(95, 'Q', 'Carga Elétrica', 38, 'Q', 0),
(96, 'n', 'Número de Cargas Elementares', 38, 'N', 0),
(97, 'e', 'Carga Elétrica Elementar', 38, 'E', 0),
(98, 'F', 'Força', 40, 'F', 0),
(99, 'k', 'Constante Elétrica no Vácuo', 40, 'K', 0),
(100, 'Q1', 'Carga de Interação 1', 40, 'Q1', 0),
(101, 'Q2', 'Carga de Interação 2', 40, 'Q2', 0),
(102, 'd', 'Distância entre as Cargas', 40, 'D', 0),
(103, 'E', 'Intensidade do Campo Elétrico', 42, 'E', 0),
(104, 'F', 'Força', 42, 'F', 0),
(105, 'q', 'Carga de Teste ', 42, 'Q', 0),
(106, 'Ep', 'Energia Potencial Elétrica', 44, 'EP', 0),
(107, 'k', 'Constante Elétrica no Vácuo', 44, 'K', 0),
(108, 'Q', 'Carga Geradora do Campo', 44, 'Q', 0),
(109, 'q', 'Carga de Teste', 44, 'q', 0),
(110, 'd', 'Distância entre as Cargas', 44, 'D', 0),
(111, 'v', 'Potencial Elétrico', 45, 'V', 0),
(112, 'Ep', 'Energia Potencial Elétrica', 45, 'EP', 0),
(113, 'q', 'Carga de Teste', 45, 'Q', 0),
(114, 'Ta,b', 'Trabalho entre a e b', 47, 'TAB', 0),
(115, 'q', 'Carga de Teste', 47, 'Q', 0),
(116, 'Va', 'Potencial Elétrico em a', 47, 'VA', 0),
(117, 'Vb', 'Potencial Elétrico em b', 47, 'VB', 0),
(118, 'U', 'Diferença de Potencial', 48, 'U', 0),
(119, 'Vb', 'Potencial Elétrico em b', 48, 'VB', 0),
(120, 'Va', 'Potencial Elétrico em a', 48, 'VA', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`ConteudoID`);

--
-- Índices para tabela `formulas`
--
ALTER TABLE `formulas`
  ADD PRIMARY KEY (`FormulaID`);

--
-- Índices para tabela `subconteudo`
--
ALTER TABLE `subconteudo`
  ADD PRIMARY KEY (`SubConteudoID`),
  ADD KEY `fk_SubConteudo_Conteudo1` (`ConteudoID`);

--
-- Índices para tabela `variaveis`
--
ALTER TABLE `variaveis`
  ADD PRIMARY KEY (`VariaveisID`),
  ADD KEY `fk_Variaveis_Formulas` (`FormulaID`);

--
-- AUTO_INCREMENT de tabelas despejadas
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

--
-- AUTO_INCREMENT de tabela `variaveis`
--
ALTER TABLE `variaveis`
  MODIFY `VariaveisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
