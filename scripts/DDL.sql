CREATE TABLE `clientes` (
  `codigo` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `idxNome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `pedidosdadosgerais` (
  `numeroPedido` int NOT NULL AUTO_INCREMENT,
  `dataEmissao` date DEFAULT NULL,
  `codigoCliente` int DEFAULT NULL,
  `valorTotal` float DEFAULT NULL,
  `dataHoraCancelamento` datetime DEFAULT NULL,
  PRIMARY KEY (`numeroPedido`),
  KEY `fkCodigoCliente_idx` (`codigoCliente`),
  KEY `idxDataEmissao` (`dataEmissao`),
  CONSTRAINT `fkCodigoCliente` FOREIGN KEY (`codigoCliente`) REFERENCES `clientes` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `pedidosprodutos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `numeroPedido` int DEFAULT NULL,
  `codigoProduto` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `valorUnitario` float DEFAULT NULL,
  `valorTotal` float DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fkProduto_idx` (`codigoProduto`),
  KEY `fkNumeroPedido_idx` (`numeroPedido`),
  CONSTRAINT `fkNumeroPedido` FOREIGN KEY (`numeroPedido`) REFERENCES `pedidosdadosgerais` (`numeroPedido`),
  CONSTRAINT `fkProduto` FOREIGN KEY (`codigoProduto`) REFERENCES `produtos` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `produtos` (
  `codigo` int NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `idxDescricao` (`descricao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;