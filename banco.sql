-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jun-2023 às 00:13
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id21685404_painel4g`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `valor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `configs`
--

INSERT INTO `configs` (`id`, `nome`, `valor`) VALUES
(1, 'versao', '1'),
(2, 'notas', 'Nova atualização'),
(3, 'sms', 'https://painel.unyserve.com.br/4g/sms.php'),
(4, 'update', 'https://painel.unyserve.com.b/4g/update.php'),
(5, 'email', 'contato@unyserve.com.br'),
(6, 'contato', 'https://wa.me/5521980418958?text=ol%C3%A1%2C+preciso+de+suporte%2C+vim+pelo+aplicativo.'),
(7, 'logoonline', 'https://i.imgur.com/rHfxP0A.png'),
(8, 'fundoonline', 'https://images.hdqwalls.com/download/2020-joker-always-smile-4k-vr-1080x1920.jpg'),
(9, 'termos', 'https://wa.me/5521980418958?text=ol%C3%A1%2C+preciso+de+suporte%2C+vim+pelo+aplicativo.'),
(10, 'checkuser', 'true'),
(11, 'msg', 'Olha, TO ON!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `login` varchar(25) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'unyserve', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `payloads`
--

CREATE TABLE `payloads` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `FLAG` varchar(100) NOT NULL,
  `Payload` varchar(200) NOT NULL,
  `SNI` varchar(100) NOT NULL,
  `TlsIP` varchar(100) NOT NULL,
  `ProxyIP` varchar(100) NOT NULL,
  `ProxyPort` varchar(10) NOT NULL,
  `Info` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `payloads`
--

INSERT INTO `payloads` (`id`, `Name`, `FLAG`, `Payload`, `SNI`, `TlsIP`, `ProxyIP`, `ProxyPort`, `Info`) VALUES
(1, 'VIVO', 'vivo', 'vivo', 'vivo', '104.24.10.16', '', '443', 'tlsws');

-- --------------------------------------------------------

--
-- Estrutura da tabela `portas`
--

CREATE TABLE `portas` (
  `id` int(11) NOT NULL,
  `Porta` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `portas`
--

INSERT INTO `portas` (`id`, `Porta`) VALUES
(3, '7300'),
(5, '7100'),
(6, '7200');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL DEFAULT 'premium',
  `FLAG` varchar(20) NOT NULL DEFAULT 'br.png',
  `ServerIP` varchar(100) NOT NULL,
  `CheckUser` varchar(200) NOT NULL,
  `ServerPort` int(11) NOT NULL DEFAULT 22,
  `SSLPort` int(11) NOT NULL,
  `USER` varchar(20) NOT NULL,
  `PASS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servidores`
--

INSERT INTO `servidores` (`id`, `Name`, `TYPE`, `FLAG`, `ServerIP`, `CheckUser`, `ServerPort`, `SSLPort`, `USER`, `PASS`) VALUES
(3, 'Servidor 1', 'premium', 'br.png', 'dominio.xyz', 'http://dominio.xyz:8989/CheckUser', 22, 0, '', ''),
(4, 'Servidor 2', 'premium', 'br.png', 'dominio.xyz', 'http://dominio.xyz:8989/CheckUser', 22, 0, '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
