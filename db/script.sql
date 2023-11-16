-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/11/2023 às 15:18
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
CREATE DATABASE IF NOT EXISTS `fisiform` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
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

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"fisiform\",\"table\":\"variaveis\"},{\"db\":\"fisiform\",\"table\":\"formulas\"}]');

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
('root', '2023-10-24 15:17:09', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\"}');

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
