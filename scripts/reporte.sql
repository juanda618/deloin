-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 03:34 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reporte`
--

-- --------------------------------------------------------

--
-- Table structure for table `vinculados`
--
USE reporte;

CREATE TABLE IF NOT EXISTS  `vinculados` (
  `UltimaModificacion` datetime DEFAULT NULL,
  `UsuarioUltimaModificacion` longtext DEFAULT NULL,
  `VinculadoID` int(11) NOT NULL,
  `FechaVinculacion` datetime(6) NOT NULL,
  `Nombres` varchar(250) NOT NULL,
  `Apellidos` varchar(250) NOT NULL,
  `Nacionalidad` varchar(250) DEFAULT NULL,
  `OtraNacionalidad` varchar(250) DEFAULT NULL,
  `TipoDocumento` varchar(100) DEFAULT NULL,
  `OtroDocumento` varchar(100) DEFAULT NULL,
  `NumeroID` varchar(100) DEFAULT NULL,
  `FechadeExpedicion` datetime(6) NOT NULL,
  `CiudadExpedicion` varchar(100) DEFAULT NULL,
  `PaisExpedicion` varchar(100) DEFAULT NULL,
  `FechaNacimiento` datetime(6) NOT NULL,
  `CiudadNacimiento` varchar(100) DEFAULT NULL,
  `PaisNacimiento` varchar(100) DEFAULT NULL,
  `Genero` varchar(25) DEFAULT NULL,
  `EstadoCivil` varchar(100) DEFAULT NULL,
  `DireccionResidencia` varchar(250) DEFAULT NULL,
  `TelefonoResidencia` varchar(25) DEFAULT NULL,
  `Celular` varchar(25) DEFAULT NULL,
  `CiudadResidencia` varchar(100) DEFAULT NULL,
  `DepartamentoResidencia` varchar(100) DEFAULT NULL,
  `CorreoElectronico` varchar(200) DEFAULT NULL,
  `Ocupacion` varchar(200) DEFAULT NULL,
  `DireccionEmpresa` varchar(200) DEFAULT NULL,
  `TelefonoEmpresa` varchar(25) DEFAULT NULL,
  `CiudadEmpresa` varchar(100) DEFAULT NULL,
  `DepartamentoEmpresa` varchar(100) DEFAULT NULL,
  `NombreEmpresa` varchar(200) DEFAULT NULL,
  `Cargo` varchar(200) DEFAULT NULL,
  `CIIU` varchar(20) DEFAULT NULL,
  `Activos` bigint(20) NOT NULL,
  `Pasivos` bigint(20) NOT NULL,
  `IngresosMensuales` bigint(20) NOT NULL,
  `EgresosMensuales` bigint(20) NOT NULL,
  `OtrosIngresos` bigint(20) NOT NULL,
  `OtrosEgresos` bigint(20) NOT NULL,
  `DeclaraRenta` bit(1) NOT NULL,
  `RazondeIngresos` varchar(200) DEFAULT NULL,
  `Producto` varchar(200) DEFAULT NULL,
  `NivelEstudios` varchar(200) DEFAULT NULL,
  `Beneficiario` varchar(200) DEFAULT NULL,
  `TipoDocumentoBeneficiario` varchar(100) DEFAULT NULL,
  `NumeroIDBeneficiario` varchar(100) DEFAULT NULL,
  `EscolaridadBeneficiario` varchar(200) DEFAULT NULL,
  `MontoAhorroMensual` bigint(20) NOT NULL,
  `ValorCadaBono` bigint(20) NOT NULL,
  `CantidadBonos` int(11) NOT NULL,
  `PrimaJunio` bigint(20) NOT NULL,
  `PrimaDiciembre` bigint(20) NOT NULL,
  `DebitoAutomatico` bit(1) NOT NULL,
  `FechadeAfiliacion` datetime(6) NOT NULL,
  `DuenoOportunidad` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vinculados`
--

INSERT INTO `vinculados` (`UltimaModificacion`, `UsuarioUltimaModificacion`, `VinculadoID`, `FechaVinculacion`, `Nombres`, `Apellidos`, `Nacionalidad`, `OtraNacionalidad`, `TipoDocumento`, `OtroDocumento`, `NumeroID`, `FechadeExpedicion`, `CiudadExpedicion`, `PaisExpedicion`, `FechaNacimiento`, `CiudadNacimiento`, `PaisNacimiento`, `Genero`, `EstadoCivil`, `DireccionResidencia`, `TelefonoResidencia`, `Celular`, `CiudadResidencia`, `DepartamentoResidencia`, `CorreoElectronico`, `Ocupacion`, `DireccionEmpresa`, `TelefonoEmpresa`, `CiudadEmpresa`, `DepartamentoEmpresa`, `NombreEmpresa`, `Cargo`, `CIIU`, `Activos`, `Pasivos`, `IngresosMensuales`, `EgresosMensuales`, `OtrosIngresos`, `OtrosEgresos`, `DeclaraRenta`, `RazondeIngresos`, `Producto`, `NivelEstudios`, `Beneficiario`, `TipoDocumentoBeneficiario`, `NumeroIDBeneficiario`, `EscolaridadBeneficiario`, `MontoAhorroMensual`, `ValorCadaBono`, `CantidadBonos`, `PrimaJunio`, `PrimaDiciembre`, `DebitoAutomatico`, `FechadeAfiliacion`, `DuenoOportunidad`) VALUES
('2019-05-06 00:00:00', 'juancho', 1, '2019-06-11 00:00:00.000000', 'juan', 'salas', 'colombia', 'kriptoniano', 'cc', 'tp', '1111111', '2018-08-06 00:00:00.000000', 'armenia', 'colombia', '2019-08-05 00:00:00.000000', 'armenia', 'colombia', 'M', 'soltero', 'rrrrr $ se ase f esee', '122321221', '1221212212', 'pereira', 'risaralda', 'sssss@sss.com', 'astronauta', 'ssfsd fasdffa sdfas s13 fwe 32 s', '12121223334', 'pereira', 'risaralda', 'umbrella', 'presidente', '11111', 1212, 12222, 1212444332312, 212121, 1212234, 12121, b'1', 'sfsdfsd fsdfmsd fsdmfsdf', 'sfmsdfms sdfsdmf sd', 'msdfsdfmsdfsd ', 'smdfsmdfmdsfsd', 'sfmsdfmdmsd', '1212121', 'dfsdfsd sdfsd dsd', 11111, 123, 12, 12123, 112122, b'1', '2019-06-06 00:00:00.000000', 'sfsefesf s fvfvcv fvv vvvddf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vinculados`
--
ALTER TABLE `vinculados`
  ADD PRIMARY KEY (`VinculadoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vinculados`
--
ALTER TABLE `vinculados`
  MODIFY `VinculadoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
