-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fseletro
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `idcl` int(11) NOT NULL AUTO_INCREMENT,
  `nomeclient` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `puduto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valortotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcl`),
  KEY `puduto` (`puduto`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`puduto`) REFERENCES `produtos` (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'manuela','rua nossa senhora das gracas numero 0',210001111,1,2,NULL);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  `descricao` longtext DEFAULT NULL,
  `preco` int(11) DEFAULT NULL,
  `imagem` varchar(255) NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'geladeira','Refrigerador Panasonic NR-BB53GV3B Frost Free com Porta de Vidro Preto - 425L',500,'refrigerador-panasonic.webp'),(2,'geladeira','Geladeira Inverter Frost Free Smart French Door Family Hub com Twin Cooling Plus™ RF265BEAESG 582L Black Inox',700,'geladeirainverter.webp'),(4,'fogao','Fogão 4 Bocas Consul CFO4VAR com Mesa em Vidro - Inox',1000,'fogao4bocas.jpg'),(5,'fogao','Fogão 5 Bocas Electrolux Prata Automático com Mesa de Vidro e Tripla Chama',300,'fogaodepiso.webp'),(6,'microondas','Forno de Micro-ondas Electrolux ME41X com Painel Blue Touch 31 Litros',999,'microondaseletrolux.webp'),(7,'microondas','Micro-ondas Panasonic Style Grill, 1000W, 30 Litros, Inox - NNGT68HSRU',74610,'microondaspanasonic.webp'),(9,'lavalouca','Lava Louças 14 Serviços Brastemp com Ciclo Pesado - BLF14AR',400,'lavalouca.webp'),(10,'lavalouca','Lava-louças Brastemp BLF08AS Ative! 8 Serviços - Prata',2000,'lavalouca8serviços.jpg'),(11,'lavaeseca','Lava e Seca Samsung WD4000 com Ecobubble™ e Lavagem a Seco WD11M4453JX Inox Look - 11kg',4000,'lava e seca.webp');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30 14:28:23
