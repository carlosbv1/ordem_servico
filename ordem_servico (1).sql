-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/06/2023 às 21:09
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
-- Banco de dados: `ordem_servico`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `telefone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`, `email`, `endereco`, `bairro`, `telefone`) VALUES
(14, 'CARLOS HENRIQUE RODRIGUES DE SOUSA', '1010', 'carlosbv1@gmail.com', 'rua 26 de junho ', 'Alto do motor', '88999156'),
(15, 'ROBERTO CARLOS', '9090', 'ROBERTO@GMAIL.COM', 'RUA 24 E NOVEMBRO ', 'CENTRO ', '8888');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ordem_servico`
--

CREATE TABLE `ordem_servico` (
  `id` int(11) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `cpf_cliente` varchar(15) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `nome_veiculo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descricao01` varchar(40) DEFAULT NULL,
  `valor01` varchar(40) DEFAULT NULL,
  `descricao02` varchar(40) DEFAULT NULL,
  `valor02` varchar(40) DEFAULT NULL,
  `descricao03` varchar(40) DEFAULT NULL,
  `valor03` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ordem_servico`
--

INSERT INTO `ordem_servico` (`id`, `nome_cliente`, `cpf_cliente`, `placa`, `nome_veiculo`, `marca`, `descricao01`, `valor01`, `descricao02`, `valor02`, `descricao03`, `valor03`) VALUES
(69, 'CARLOS HENRIQUE RODRIGUES DE SOUSA', '1010', '', '', '', '', '', '', '', '', 0.00),
(70, 'CARLOS HENRIQUE RODRIGUES DE SOUSA', '1010', '', '', '', '', '', '', '', '', 0.00),
(71, '', '', '', '', '', '', '', '', '', '', 0.00),
(72, 'CARLOS HENRIQUE RODRIGUES DE SOUSA', '1010', '', '', '', '', '', '', '', '', 0.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
