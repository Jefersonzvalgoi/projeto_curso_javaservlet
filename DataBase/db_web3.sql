-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 01/08/2023 às 01:08
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_web3`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_profissional`
--

CREATE TABLE `tb_profissional` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `cont-ref` varchar(16) NOT NULL,
  `desc-pes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_servicos`
--

CREATE TABLE `tb_servicos` (
  `id` int(11) NOT NULL,
  `id_solic` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_solicitacao`
--

CREATE TABLE `tb_solicitacao` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tb_solicitacao`
--

INSERT INTO `tb_solicitacao` (`id`, `id_usuario`, `descricao`, `data`) VALUES
(2, 2, 'hewhjfbehbehcbehcbec', '2023-07-31 03:58:23'),
(4, 1, 'eferfkefkerfekfherk', '2023-07-31 04:05:21'),
(5, 3, 'eeferkfherkfjherkfherkfherkfhlakhflc,nsf', '2023-07-31 04:05:42'),
(6, 1, 'teste de insercao de olicitacao\r\n', '2023-07-31 10:21:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nome`, `email`, `telefone`, `senha`) VALUES
(1, 'teste um', 'testeum@gmail.com', '5112344567', '123'),
(2, 'teste dois', 'testedois@gmail.com', '5187654784', '12345678'),
(3, 'jeferson', 'jeferson@gmail.com', '(22)22222-2222', '123456'),
(5, 'teste', 'testetres@gmail.com', '(11)11111-1111', '1234'),
(6, 'teste quetro', 'testequatro@gmail.com', '(22)22222-2222', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_profissional`
--
ALTER TABLE `tb_profissional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_usuario` (`id_usuario`);

--
-- Índices de tabela `tb_servicos`
--
ALTER TABLE `tb_servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_prof` (`id_prof`),
  ADD KEY `fk_id_solic` (`id_solic`);

--
-- Índices de tabela `tb_solicitacao`
--
ALTER TABLE `tb_solicitacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`) USING BTREE;

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_profissional`
--
ALTER TABLE `tb_profissional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_servicos`
--
ALTER TABLE `tb_servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_solicitacao`
--
ALTER TABLE `tb_solicitacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_profissional`
--
ALTER TABLE `tb_profissional`
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Restrições para tabelas `tb_servicos`
--
ALTER TABLE `tb_servicos`
  ADD CONSTRAINT `fk_id_prof` FOREIGN KEY (`id_prof`) REFERENCES `tb_profissional` (`id`),
  ADD CONSTRAINT `fk_id_solic` FOREIGN KEY (`id_solic`) REFERENCES `tb_solicitacao` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
