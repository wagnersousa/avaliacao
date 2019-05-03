--
-- Banco de dados: desafio_db
--
CREATE DATABASE IF NOT EXISTS desafio_db DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE loksyst2_desafio_db;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Categoria`
--

CREATE TABLE `Categoria` (
  `Codigo_cat` int(11) NOT NULL,
  `Nome_cat` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Pessoas`
--

CREATE TABLE `Pessoas` (
  `Codigo_pes` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Codigo_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices de tabela `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`Codigo_cat`);

--
-- Índices de tabela `Pessoas`
--
ALTER TABLE `Pessoas`
  ADD PRIMARY KEY (`Codigo_pes`);

--
-- AUTO_INCREMENT de tabela `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `Codigo_cat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Pessoas`
--
ALTER TABLE `Pessoas`
  MODIFY `Codigo_pes` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

