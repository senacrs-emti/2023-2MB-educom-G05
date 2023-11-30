-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/11/2023 às 13:05
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
CREATE DATABASE IF NOT EXISTS `fisiform` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fisiform`;

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
(7, 'Vm = ∆d / ∆t', 'Velocidade Média', 'Vm = ∆d ÷ ∆t', 3),
(8, 'S = So + V * ∆t', 'Função Horária do Deslocamento', 'S = So + V x ∆t', 4),
(9, 'Am = ∆v / ∆t', 'Aceleração Média', 'Am = ∆v ÷ ∆t', 5),
(10, 'V = Vo + A * T', 'Função Horária da Velocidade', 'V = Vo + A x T', 5),
(11, 'S = So + Vo * T + 1 / 2 * A * T^2', 'Função horária da posição em função do tempo', 'S = So + Vo x T + 1 ÷ 2 x A x T²', 5),
(12, 'V² = Vo² + 2 * A * ∆d', 'Equação de Torricelli', 'V² = Vo² + 2 x A x ∆d', 5),
(13, 'V = Vo ± G * T', 'Função Horária da Velocidade no Movimento Vertical', 'V = Vo ± G x T', 6),
(14, 'H = Ho + Vo * T ± 1 / 2 * G * T^2 * Vo', 'Função horária da posição em função do tempo no movimento vertical', 'H = Ho + Vo x T ± 1 ÷ 2 x G x T² x Vo', 6),
(15, 'V^2 = Vo^2  ± 2 * G * ∆h', 'Equação de Torricelli no movimento vertical', 'V² = Vo²  ± 2 x G x ∆h', 6),
(19, '(θ℃ * 9 / 5) + 32', 'Conversão Celcius para  Fahrenheit', '(θ℃ x 9 ÷ 5) + 32', 9),
(20, '(θ℉ - 32) * 5 / 9', 'Conversão Fahrenheit para Celsius', '(θ℉ - 32) x 5 ÷ 9', 9),
(21, 'θc + 273', 'Conversão Celsius para Kelvin', 'θc + 273', 9),
(22, 'θt - 273', 'Conversão Kelvin para Celsius', 'θt - 273', 9),
(23, 'i = r', 'Lei da Refração', 'i = r', 10),
(24, 'n = 360° / a° - 1', 'Associação de espelhos planos', 'n = 360° ÷ a° - 1', 11),
(25, '1 / f = 1 / Di + 1 / Do', 'Equação de Gauss', '1 ÷ f = 1 ÷ Di + 1 ÷ Do', 11),
(26, 'Nm = C / Vm', 'Índice de refração absoluto em um meio', 'Nm = C ÷ Vm', 12),
(27, 'N1 * sen(i) = N2 * sen(r)', 'Lei de Snell-Descartes', 'N1 x sen(i) = N2 x sen(r)', 12),
(28, 'N2,1 = N2 / N1 = sen(i) / sen(r) = V1 / V2 = ⁁1 ÷ ⁁2', 'Índice relativo de refração entre dois meios', 'N2,1 = N2 ÷ N1 = sen(i) ÷ sen(r) = V1 ÷ V2 = ⁁1 ÷ ⁁2', 12),
(29, 'V = sqrt(k * T)', 'Velocidade de propagação', 'V = √k * T', 13),
(30, 'V1^2 / T1 = V2^2 / T2 ', 'Velocidade de propagação em um mesmo gás com diferentes temperaturas', 'V1² ÷ T1 = V2² ÷ T2 ', 13),
(31, 'i = f1 / f2', 'Intervalo entre dois sons', 'i = f1 ÷ f2', 14),
(32, 'I = E / A * ∆t', 'Intensidade Sonora', 'I = E ÷ A x ∆t', 15),
(33, 'β = 10log * I / Io', 'Nível Sonoro', 'β = 10log x I ÷ Io', 15),
(34, 'f = n * v / 2l', 'Tubos abertos', 'f = n x v ÷ 2l', 16),
(35, 'f = i * v / 4l', 'Tubos fechados', 'f = i x v ÷ 4l', 16),
(36, 'Fob = (v ± Vob / v ± Vf) * Ff', 'Frequência sob efeito Doppler', 'Fob = (v ± Vob ÷ v ± Vf) x Ff', 17),
(37, 'e = 1,6 x 10^(- 19)', 'Carga elétrica elementar', 'e = 1,6 x 10⁻¹⁹', 18),
(38, 'Q = n * e', 'Carga elétrica', 'Q = n x e', 18),
(40, 'F = k * Q1 * Q2 / d^2', 'Lei de Coulomb', 'F = k x Q1 x Q2 ÷ d²', 20),
(42, 'E = F / q', 'Intensidade do campo elétrico', 'E = F ÷ q', 21),
(44, 'Ep = k * Q * q / d', 'Energia pontecial elétrica', 'Ep = k x Q x q ÷ d', 22),
(45, 'v = Ep / q', 'Potencial elétrico', 'v = Ep ÷ q', 22),
(47, 'Ta,b = q * (Va - Vb)', 'Trabalho de uma força elétrica', 'Ta,b = q x (Va - Vb)', 22),
(48, 'U = Vb - Va', 'Diferença de potencial', 'U = Vb - Va', 22);

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
  `Resultado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `variaveis`
--

INSERT INTO `variaveis` (`VariaveisID`, `Variavel`, `Conceito`, `FormulaID`, `Resultado`) VALUES
(1, 'Vm', 'Velocidade Média', 7, 1),
(2, '∆d', 'Distância Percorrida', 7, 0),
(3, '∆t', 'Intervalo de Tempo', 7, 0),
(4, 'S', 'Posição', 8, 1),
(5, 'So', 'Posição Inicial', 8, 0),
(6, 'V', 'Velocidade', 8, 0),
(7, '∆t', 'Intervalo Tempo', 8, 0),
(8, 'Am', 'Aceleração Média', 9, 1),
(9, '∆v', 'Variação da Velocidade', 9, 0),
(10, '∆t', 'Intervalo de Tempo', 9, 0),
(11, 'V', 'Velocidade', 10, 1),
(12, 'Vo', 'Velocidade Inicial', 10, 0),
(13, 'A', 'Aceleração', 10, 0),
(14, 'T', 'Tempo', 10, 0),
(15, 'S', 'Posição', 11, 1),
(16, 'So', 'Posição Inicial', 11, 0),
(17, 'Vo', 'Velocidade Inicial', 11, 0),
(18, 'T', 'Tempo', 11, 0),
(19, 'A', 'Aceleração', 11, 0),
(20, 'V', 'Velocidade', 12, 1),
(21, 'Vo', 'Velocidade Inicial', 12, 0),
(22, 'A', 'Aceleração', 12, 0),
(23, '∆d', 'Distância Percorrida', 12, 0),
(24, 'V', 'Velocidade', 13, 1),
(25, 'Vo', 'Velocidade Inicial', 13, 0),
(26, 'G', 'Gravidade ', 13, 0),
(27, 'T', 'Tempo', 13, 0),
(28, 'H', 'Altura', 14, 1),
(29, 'Ho', 'Altura Inicial', 14, 0),
(30, 'Vo', 'Velocidade Inicial', 14, 0),
(31, 'T', 'Tempo', 14, 0),
(32, 'G', 'Gravidade', 14, 0),
(33, 'V', 'Velocidade', 15, 1),
(34, 'Vo', 'Velocidade Inicial', 15, 0),
(35, 'G', 'Gravidade', 15, 0),
(36, '∆h', 'Variação de Altura', 15, 0),
(37, 'θ℃ ', 'Grau Celsius', 19, 1),
(38, 'θ℉', 'Grau Fahrenheit', 20, 1),
(39, 'θc', 'Temperatura em Graus Celsius', 21, 1),
(40, 'θt', 'Temperatura Absoluta em Kelvin', 22, 1),
(41, ' i', 'Ângulo de Incidência', 23, 1),
(42, 'r', 'Ângulo de Reflexo', 23, 0),
(43, 'n', 'Número de Imagens', 24, 1),
(44, 'a°', 'Ângulo de Abertura Entre os Espelhos', 24, 0),
(45, 'f', 'Distância Focal', 25, 1),
(46, 'Di', 'Distância da Imagem', 25, 0),
(47, 'Do', 'Distância do Objeto', 25, 0),
(48, 'Nm', 'Índice de Refração do Meio', 26, 1),
(49, 'C', 'Velocidade da Luz no Vácuo', 26, 0),
(50, 'Vm', 'Velocidade da Luz do Meio', 26, 0),
(51, ' N1', 'Índice de Refração do Meio 1', 27, 1),
(52, 'i', 'Ângulo de Incidência ', 27, 0),
(53, 'N2', 'Índice de Refração do Meio 2', 27, 0),
(54, 'r', 'Ângulo de Refração', 27, 0),
(55, 'N2,1', 'Índice de Refração Relativo entre os Meios 1 e 2', 28, 1),
(56, 'N2', 'Índice de Refração do Meio 2', 28, 0),
(57, 'N1', 'Índice de Refração do Meio 1', 28, 0),
(58, 'i', 'Ângulo de Incidência', 28, 0),
(59, 'r', 'Ângulo de Refração', 28, 0),
(60, 'V1', 'Velocidade da Luz do Meio 1', 28, 0),
(61, 'V2', 'Velocidade da Luz do Meio 2', 28, 0),
(62, '⁁1', 'Comprimento de Onda no Meio 1', 28, 0),
(63, '⁁2', 'Comprimento da Onda no Meio 2', 28, 0),
(64, 'V', 'Velocidade de Propagação', 29, 1),
(65, 'k', 'Constante de Proporcionalidade', 29, 0),
(66, 'T', 'Temperatura Absoluta', 29, 0),
(67, 'V1', 'Velocidade à Temperatura 1', 30, 1),
(68, 'T1', 'Temperatura Absoluta', 30, 0),
(69, 'V2', 'Velocidade à Temperatura 2', 30, 0),
(70, 'T2', 'Temperatura Absoluta', 30, 0),
(71, 'i', 'Intervalo', 31, 1),
(72, 'f1', 'Frequência do Som', 31, 0),
(73, 'f2', 'Frequência do outro Som', 31, 0),
(74, 'I', 'Intensidade Sonora', 32, 1),
(75, 'E', 'Energia Utilizada', 32, 0),
(76, 'A', 'Área', 32, 0),
(77, '∆t', 'Intervalo de Tempo', 32, 0),
(78, 'β', 'Nível Sonoro (em dB)', 33, 1),
(79, 'I', 'Intensidade Sonora', 33, 0),
(80, 'Io', 'Intensidade LSA', 33, 0),
(81, 'f', 'Frequência', 34, 1),
(82, 'n', 'Sequência de Números Naturais', 34, 0),
(83, 'v', 'Velocidade', 34, 0),
(84, 'l', 'Comprimento do Tubo', 34, 0),
(85, 'f', 'Frequência', 35, 1),
(86, 'i', 'Sequência de Números', 35, 0),
(87, 'v', 'Velocidade', 35, 0),
(88, 'l', 'Comprimento do Tubo', 35, 0),
(89, 'Fob', 'Frequência Percebida pelo Observador', 36, 1),
(90, 'v', 'Velocidade da Propagação Real da Onda', 36, 0),
(91, 'Vob', 'Velocidade do Observador', 36, 0),
(92, 'Vf', 'Velocidade da Fonte', 36, 0),
(93, 'Ff', 'Frequência Emitida pela Fonte', 36, 0),
(94, 'e', 'Carga Elétrica Elementar', 37, 1),
(95, 'Q', 'Carga Elétrica', 38, 1),
(96, 'n', 'Número de Cargas Elementares', 38, 0),
(97, 'e', 'Carga Elétrica Elementar', 38, 0),
(98, 'F', 'Força', 40, 1),
(99, 'k', 'Constante Elétrica no Vácuo', 40, 0),
(100, 'Q1', 'Carga de Interação 1', 40, 0),
(101, 'Q2', 'Carga de Interação 2', 40, 0),
(102, 'd', 'Distância entre as Cargas', 40, 0),
(103, 'E', 'Intensidade do Campo Elétrico', 42, 1),
(104, 'F', 'Força', 42, 0),
(105, 'q', 'Carga de Teste ', 42, 0),
(106, 'Ep', 'Energia Potencial Elétrica', 44, 1),
(107, 'k', 'Constante Elétrica no Vácuo', 44, 0),
(108, 'Q', 'Carga Geradora do Campo', 44, 0),
(109, 'q', 'Carga de Teste', 44, 0),
(110, 'd', 'Distância entre as Cargas', 44, 0),
(111, 'v', 'Potencial Elétrico', 45, 1),
(112, 'Ep', 'Energia Potencial Elétrica', 45, 0),
(113, 'q', 'Carga de Teste', 45, 0),
(114, 'Ta,b', 'Trabalho entre a e b', 47, 1),
(115, 'q', 'Carga de Teste', 47, 0),
(116, 'Va', 'Potencial Elétrico em a', 47, 0),
(117, 'Vb', 'Potencial Elétrico em b', 47, 0),
(118, 'U', 'Diferença de Potencial', 48, 1),
(119, 'Vb', 'Potencial Elétrico em b', 48, 0),
(120, 'Va', 'Potencial Elétrico em a', 48, 0);

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

--
-- AUTO_INCREMENT de tabela `variaveis`
--
ALTER TABLE `variaveis`
  MODIFY `VariaveisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-23 12:25:49', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
