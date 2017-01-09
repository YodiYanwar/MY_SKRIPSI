/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.52-cll : Database - untaz_sisfo3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`untaz_sisfo3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `untaz_sisfo3`;

/*Table structure for table `Edom` */

DROP TABLE IF EXISTS `Edom`;

CREATE TABLE `Edom` (
  `EdomID` int(11) NOT NULL,
  `Pernyataan` varchar(80) NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `Isokoreksi` */

DROP TABLE IF EXISTS `Isokoreksi`;

CREATE TABLE `Isokoreksi` (
  `IsoKoreksiID` int(12) NOT NULL AUTO_INCREMENT,
  `PelaporID` varchar(10) NOT NULL,
  `typepelapor` varchar(10) NOT NULL,
  `tanggalLapor` date NOT NULL,
  `kebagian` varchar(20) NOT NULL,
  `yangdilaporkan` varchar(20) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `pernah` varchar(1) NOT NULL,
  `analisis` varchar(100) NOT NULL,
  `penanggungjawab` varchar(10) NOT NULL,
  `realisasi` date NOT NULL,
  `statustindakan` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  `MR` varchar(10) NOT NULL,
  `Tanggalstatus` date NOT NULL,
  PRIMARY KEY (`IsoKoreksiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `M_TA` */

DROP TABLE IF EXISTS `M_TA`;

CREATE TABLE `M_TA` (
  `ID_TA` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `judul_eng` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_TA`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_bahasa` */

DROP TABLE IF EXISTS `M_bahasa`;

CREATE TABLE `M_bahasa` (
  `id_bahasa` bigint(20) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `skor` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `sertifikat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_bahasa`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_magang` */

DROP TABLE IF EXISTS `M_magang`;

CREATE TABLE `M_magang` (
  `id_magang` bigint(20) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `sertifikat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_magang`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_organisasi` */

DROP TABLE IF EXISTS `M_organisasi`;

CREATE TABLE `M_organisasi` (
  `id_organisasi` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_organisasi` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `jabatan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `sertifikat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_organisasi`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_penghargaan` */

DROP TABLE IF EXISTS `M_penghargaan`;

CREATE TABLE `M_penghargaan` (
  `id_penghargaan` bigint(20) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `tingkat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `sertifikat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_upload` datetime DEFAULT NULL,
  PRIMARY KEY (`id_penghargaan`)
) ENGINE=MyISAM AUTO_INCREMENT=513 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_profesi` */

DROP TABLE IF EXISTS `M_profesi`;

CREATE TABLE `M_profesi` (
  `id_profesi` bigint(20) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `skor` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `sertifikat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_profesi`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_tahfidz` */

DROP TABLE IF EXISTS `M_tahfidz`;

CREATE TABLE `M_tahfidz` (
  `id_tahfidz` bigint(20) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `jml_juz` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `sertifikat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_tahfidz`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `M_training` */

DROP TABLE IF EXISTS `M_training`;

CREATE TABLE `M_training` (
  `id_training` bigint(20) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `sertifikat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `folder` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_training`)
) ENGINE=MyISAM AUTO_INCREMENT=642 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `Sheet1` */

DROP TABLE IF EXISTS `Sheet1`;

CREATE TABLE `Sheet1` (
  `A` varchar(4) DEFAULT NULL,
  `B` varchar(11) DEFAULT NULL,
  `C` varchar(6) DEFAULT NULL,
  `D` varchar(6) DEFAULT NULL,
  `E` varchar(7) DEFAULT NULL,
  `F` varchar(13) DEFAULT NULL,
  `G` varchar(7) DEFAULT NULL,
  `H` varchar(30) DEFAULT NULL,
  `I` varchar(7) DEFAULT NULL,
  `J` varchar(9) DEFAULT NULL,
  `K` varchar(5) DEFAULT NULL,
  `L` varchar(8) DEFAULT NULL,
  `M` varchar(9) DEFAULT NULL,
  `N` varchar(14) DEFAULT NULL,
  `O` varchar(16) DEFAULT NULL,
  `P` varchar(4) DEFAULT NULL,
  `Q` varchar(9) DEFAULT NULL,
  `R` varchar(11) DEFAULT NULL,
  `S` varchar(3) DEFAULT NULL,
  `T` varchar(12) DEFAULT NULL,
  `U` varchar(12) DEFAULT NULL,
  `V` varchar(13) DEFAULT NULL,
  `W` varchar(6) DEFAULT NULL,
  `X` varchar(6) DEFAULT NULL,
  `Y` varchar(15) DEFAULT NULL,
  `Z` varchar(9) DEFAULT NULL,
  `AA` varchar(10) DEFAULT NULL,
  `AB` varchar(8) DEFAULT NULL,
  `AC` varchar(10) DEFAULT NULL,
  `AD` varchar(19) DEFAULT NULL,
  `AE` varchar(9) DEFAULT NULL,
  `AF` varchar(19) DEFAULT NULL,
  `AG` varchar(9) DEFAULT NULL,
  `AH` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `Sheet2` */

DROP TABLE IF EXISTS `Sheet2`;

CREATE TABLE `Sheet2` (
  `A` int(3) DEFAULT NULL,
  `B` int(1) DEFAULT NULL,
  `C` int(2) DEFAULT NULL,
  `D` varchar(6) DEFAULT NULL,
  `E` int(2) DEFAULT NULL,
  `F` int(1) DEFAULT NULL,
  `G` varchar(10) DEFAULT NULL,
  `H` int(1) DEFAULT NULL,
  `I` varchar(34) DEFAULT NULL,
  `J` varchar(10) DEFAULT NULL,
  `K` varchar(10) DEFAULT NULL,
  `L` varchar(1) DEFAULT NULL,
  `M` varchar(1) DEFAULT NULL,
  `N` int(1) DEFAULT NULL,
  `O` int(1) DEFAULT NULL,
  `P` int(1) DEFAULT NULL,
  `Q` int(1) DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `S` varchar(1) DEFAULT NULL,
  `T` int(1) DEFAULT NULL,
  `U` int(1) DEFAULT NULL,
  `V` int(1) DEFAULT NULL,
  `W` int(1) DEFAULT NULL,
  `X` int(1) DEFAULT NULL,
  `Y` decimal(3,2) DEFAULT NULL,
  `Z` varchar(10) DEFAULT NULL,
  `AA` varchar(10) DEFAULT NULL,
  `AB` varchar(1) DEFAULT NULL,
  `AC` varchar(10) DEFAULT NULL,
  `AD` varchar(10) DEFAULT NULL,
  `AE` varchar(19) DEFAULT NULL,
  `AF` varchar(10) DEFAULT NULL,
  `AG` varchar(19) DEFAULT NULL,
  `AH` varchar(5) DEFAULT NULL,
  `AI` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `Sheet3` */

DROP TABLE IF EXISTS `Sheet3`;

CREATE TABLE `Sheet3` (
  `A` int(3) DEFAULT NULL,
  `B` varchar(4) DEFAULT NULL,
  `C` varchar(11) DEFAULT NULL,
  `D` varchar(6) DEFAULT NULL,
  `E` varchar(6) DEFAULT NULL,
  `F` varchar(7) DEFAULT NULL,
  `G` varchar(13) DEFAULT NULL,
  `H` int(1) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `J` varchar(47) DEFAULT NULL,
  `K` varchar(23) DEFAULT NULL,
  `L` varchar(9) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `N` varchar(8) DEFAULT NULL,
  `O` varchar(9) DEFAULT NULL,
  `P` varchar(14) DEFAULT NULL,
  `Q` varchar(16) DEFAULT NULL,
  `R` varchar(4) DEFAULT NULL,
  `S` varchar(9) DEFAULT NULL,
  `T` varchar(11) DEFAULT NULL,
  `U` varchar(3) DEFAULT NULL,
  `V` varchar(12) DEFAULT NULL,
  `W` varchar(12) DEFAULT NULL,
  `X` varchar(13) DEFAULT NULL,
  `Y` varchar(6) DEFAULT NULL,
  `Z` varchar(6) DEFAULT NULL,
  `AA` varchar(15) DEFAULT NULL,
  `AB` varchar(9) DEFAULT NULL,
  `AC` varchar(10) DEFAULT NULL,
  `AD` varchar(8) DEFAULT NULL,
  `AE` varchar(10) DEFAULT NULL,
  `AF` varchar(19) DEFAULT NULL,
  `AG` varchar(9) DEFAULT NULL,
  `AH` varchar(19) DEFAULT NULL,
  `AI` varchar(9) DEFAULT NULL,
  `AJ` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `T_jenissurat` */

DROP TABLE IF EXISTS `T_jenissurat`;

CREATE TABLE `T_jenissurat` (
  `id_jenis` bigint(20) NOT NULL AUTO_INCREMENT,
  `jenis_surat` varchar(35) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `T_pengajuan` */

DROP TABLE IF EXISTS `T_pengajuan`;

CREATE TABLE `T_pengajuan` (
  `id_pengajuan` bigint(20) NOT NULL AUTO_INCREMENT,
  `Jenis` bigint(5) DEFAULT NULL,
  `NIM` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nama_lembaga` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `alamat` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `perihal` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `tgl_ambil` date DEFAULT NULL,
  `status_pengajuan` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `status_del` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `tgl_insert` datetime DEFAULT NULL,
  `tgl_edit` datetime DEFAULT NULL,
  `user_edit` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `judul_skripsi` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_pengajuan`)
) ENGINE=MyISAM AUTO_INCREMENT=374 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `T_perangkat2` */

DROP TABLE IF EXISTS `T_perangkat2`;

CREATE TABLE `T_perangkat2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(10) DEFAULT NULL,
  `nama_kelas` varchar(25) DEFAULT NULL,
  `ip_mesin` varchar(15) DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL,
  `na` varchar(1) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `_autodebet` */

DROP TABLE IF EXISTS `_autodebet`;

CREATE TABLE `_autodebet` (
  `NIM` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tagihTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Nominal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nobpmTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlsumTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlsemTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlkokTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlsksTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlskiTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlpraTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlopsTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nlhutTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nldenTRINA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Status` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_byrklinik` */

DROP TABLE IF EXISTS `_byrklinik`;

CREATE TABLE `_byrklinik` (
  `MhswID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `MKKode` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `Bayar` double DEFAULT NULL,
  `BayarMhswID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Tanggal` varchar(9) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RekeningID` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `TrxID` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `Proses` char(1) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_golongan` */

DROP TABLE IF EXISTS `_golongan`;

CREATE TABLE `_golongan` (
  `GolonganID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KategoriID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Pangkat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TunjanganFungsional` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganSKS` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTransport` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTetap` bigint(20) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`GolonganID`,`KategoriID`,`ProdiID`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_jadwal` */

DROP TABLE IF EXISTS `_jadwal`;

CREATE TABLE `_jadwal` (
  `JadwalID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JadwalPar` bigint(20) NOT NULL DEFAULT '0',
  `JadwalSer` bigint(20) NOT NULL DEFAULT '0',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaKelas` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `MKID` int(11) NOT NULL DEFAULT '0',
  `JenisJadwalID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'K',
  `AdaResponsi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HariID` smallint(6) NOT NULL DEFAULT '1',
  `JamMulai` time NOT NULL DEFAULT '08:00:00',
  `JamSelesai` time NOT NULL DEFAULT '09:59:00',
  `TglMulai` date DEFAULT NULL,
  `TglSelesai` date DEFAULT NULL,
  `SKSAsli` int(11) NOT NULL DEFAULT '0',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `SKSHonor` int(11) NOT NULL DEFAULT '0',
  `DosenID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `RencanaKehadiran` int(11) NOT NULL DEFAULT '0',
  `Kehadiran` int(11) NOT NULL DEFAULT '0',
  `KehadiranMin` int(11) NOT NULL DEFAULT '0',
  `JumlahMhsw` int(11) NOT NULL DEFAULT '0',
  `Kapasitas` int(11) NOT NULL DEFAULT '0',
  `RuangID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `JumlahKelasSerial` int(11) NOT NULL DEFAULT '0',
  `JumlahPraKRS` int(11) NOT NULL DEFAULT '0',
  `TugasMandiri` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas1` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas2` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas3` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas4` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas5` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Presensi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `UTS` decimal(5,2) NOT NULL DEFAULT '0.00',
  `UAS` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Responsi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `UTSTanggal` date NOT NULL DEFAULT '0000-00-00',
  `UTSJamMulai` time NOT NULL DEFAULT '00:00:00',
  `UTSJamSelesai` time NOT NULL DEFAULT '00:00:00',
  `UTSRuangID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `UASTanggal` date NOT NULL DEFAULT '0000-00-00',
  `UASJamMulai` time NOT NULL DEFAULT '00:00:00',
  `UASJamSelesai` time NOT NULL DEFAULT '00:00:00',
  `UASRuangID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Penilaian` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'web',
  `Gagal` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N' COMMENT 'Jika dosen tidak memberikan nilai sampai dengan tanggal akhir penilaian',
  `CatatanGagal` text COLLATE latin1_general_ci COMMENT 'Catatan gagal',
  `NilaiGagal` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Sudah` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JadwalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_krs` */

DROP TABLE IF EXISTS `_krs`;

CREATE TABLE `_krs` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `Tugas1` int(11) NOT NULL DEFAULT '0',
  `Tugas2` int(11) NOT NULL DEFAULT '0',
  `Tugas3` int(11) NOT NULL DEFAULT '0',
  `Tugas4` int(11) NOT NULL DEFAULT '0',
  `Tugas5` int(11) NOT NULL DEFAULT '0',
  `Presensi` int(11) NOT NULL DEFAULT '0',
  `UTS` int(11) NOT NULL DEFAULT '0',
  `UAS` int(11) NOT NULL DEFAULT '0',
  `Responsi` int(11) NOT NULL DEFAULT '0',
  `NilaiAkhir` decimal(4,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Sudah` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`),
  KEY `NA` (`NA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_krsprc` */

DROP TABLE IF EXISTS `_krsprc`;

CREATE TABLE `_krsprc` (
  `KRSPRCID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KRSID` bigint(20) NOT NULL DEFAULT '0',
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `MKSetara` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KRSPRCID`),
  KEY `KRSID` (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`)
) ENGINE=MyISAM AUTO_INCREMENT=3104711 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_mhsw` */

DROP TABLE IF EXISTS `_mhsw`;

CREATE TABLE `_mhsw` (
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Login` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LevelID` int(11) NOT NULL DEFAULT '120',
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBFormJualID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PSSBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIRM` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'UKRIDA',
  `BIPOTID` int(11) DEFAULT NULL,
  `Autodebet` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Foto` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusAwalID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PenasehatAkademik` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Kelamin` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `WargaNegara` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `Kebangsaan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Agama` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusSipil` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RW` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatAsal` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RTAsal` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RWAsal` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AnakKe` int(11) NOT NULL DEFAULT '1',
  `JumlahSaudara` int(11) NOT NULL DEFAULT '1',
  `NamaAyah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaAyah` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `HidupAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaIbu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaIbu` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `HidupIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatOrtu` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RTOrtu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RWOrtu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailOrtu` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah1` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JenisSekolahID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatSekolah` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JurusanSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NilaiSekolah` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunLulus` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `IjazahSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalPT` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswIDAsalPT` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiAsalPT` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LulusAsalPT` enum('Y','N') COLLATE latin1_general_ci DEFAULT NULL,
  `TglLulusAsalPT` date DEFAULT NULL,
  `IPKAsalPT` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Pilihan1` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pilihan2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pilihan3` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `BatasStudi` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Harga` double NOT NULL DEFAULT '0',
  `SudahBayar` enum('Y','N','R') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` varchar(10) COLLATE latin1_general_ci DEFAULT 'N',
  `TanggalUjian` date DEFAULT NULL,
  `LulusUjian` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `RuangID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerUjian` int(11) DEFAULT NULL,
  `NilaiUjian` float unsigned NOT NULL DEFAULT '0',
  `GradeNilai` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLulus` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Lulus dari perguruan tinggi',
  `Syarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SyaratLengkap` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `BuktiSetoranMhsw` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalSetoranMhsw` date DEFAULT NULL,
  `TotalBiayaMhsw` bigint(20) NOT NULL DEFAULT '0',
  `TotalSetoranMhsw` bigint(20) NOT NULL DEFAULT '0',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JudulDispensasi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `CatatanDispensasi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaBank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerRekening` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `IPK` decimal(4,2) NOT NULL DEFAULT '0.00',
  `TotalSKS` int(11) NOT NULL DEFAULT '0',
  `WisudaID` bigint(20) NOT NULL DEFAULT '0',
  `TAID` bigint(20) NOT NULL DEFAULT '0',
  `Predikat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SKMasuk` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKMasuk` date DEFAULT NULL,
  `SKKeluar` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSKKeluar` date NOT NULL DEFAULT '0000-00-00',
  `CatatanKeluar` text COLLATE latin1_general_ci,
  `NoIdentitas` bigint(20) NOT NULL DEFAULT '0',
  `NoFakultas` bigint(20) NOT NULL DEFAULT '0',
  `NoProdi` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_mhswcuti` */

DROP TABLE IF EXISTS `_mhswcuti`;

CREATE TABLE `_mhswcuti` (
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_mhswkeluar` */

DROP TABLE IF EXISTS `_mhswkeluar`;

CREATE TABLE `_mhswkeluar` (
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SKKeluar` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSKKeluar` date NOT NULL DEFAULT '0000-00-00',
  `Tahun` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NoIjazah` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglIjazah` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_mhswlulus` */

DROP TABLE IF EXISTS `_mhswlulus`;

CREATE TABLE `_mhswlulus` (
  `RESTAMSMHS` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `USEIDMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGENTMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JAENTMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGTUPMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JATUPMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DISSTMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NIMHSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NIRMHMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TAHUNMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDFAKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDJURMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SHIFTMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NMMHSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDJEKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TPLHRMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGLHRMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ALJA1MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ALJA2MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KOJAKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KPJAKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TELJAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDAGMMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDWNGMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `STPILMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `MRTUSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `CTKL1MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `CTKL2MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `CTKL3MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `CTKL4MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TIND1MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TIND2MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TIND3MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TIND4MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PIDFKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PIDPTMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KTPTSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `REGAKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDKMKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `THSMSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NLAKHMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGLLSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NILUNMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NILJRMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NILKPMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGLKPMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JUDU1MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JUDU2MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JUDU3MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JUDU4MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JUDU5MSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `STLLSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NLIPKMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SKSTTMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ASSMAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ALSMAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JRSMAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LTSMAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NOIJAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NOBLIMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NOSKRMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGLREMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDSMAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KJSMAMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KDKORMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LMSTUMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGMASMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NOIJSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TGIJSMSMHS` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Sudah` smallint(6) NOT NULL DEFAULT '0',
  `Sudah1` smallint(6) NOT NULL DEFAULT '0',
  KEY `NIMHSMSMHS` (`NIMHSMSMHS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_pembayaran` */

DROP TABLE IF EXISTS `_pembayaran`;

CREATE TABLE `_pembayaran` (
  `RESTAMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `USEIDMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGENTMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JAENTMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGTUPMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JATUPMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DISSTMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NOBPMMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `THSMSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KDFAKMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KDJURMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NIMHSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NOTESMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KDBANMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TRANSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGBANMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGBPMMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLBPMMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLSUMMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLSEMMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLKOKMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLSKSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLPRAMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLIKMMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLSKIMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLUNCMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLASUMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLDNSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLDENMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLOPSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLADSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLADKMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLUJSMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLHUTMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLLN2MSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLPINMSTAR` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_potongan` */

DROP TABLE IF EXISTS `_potongan`;

CREATE TABLE `_potongan` (
  `RESTATRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `USEIDTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGENTTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JAENTTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGTUPTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JATUPTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DISSTTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `THSMSTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JNPOTTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NIMHSTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLPOTTRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KETR1TRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KETR2TRPTG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_tagihan` */

DROP TABLE IF EXISTS `_tagihan`;

CREATE TABLE `_tagihan` (
  `RESTAMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `USEIDMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGENTMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JAENTMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGTUPMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JATUPMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DISSTMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `THSMSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KDFAKMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KDJURMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NIMHSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TAHUNMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGSUMMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGSEMMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGKOKMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGIKMMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGSKSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGPRAMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGSKIMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGUNCMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGASUMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGDNSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGDENMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGOPSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGADSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGADKMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGUJSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TGHUTMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMSUMMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMSEMMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMKOKMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMIKMMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMSKSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMPRAMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMSKIMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMUNCMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMASUMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMDNSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMDENMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMOPSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMADSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMADKMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMUJSMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMLN2MSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMHUTMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMPINMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `POTNGMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `POTMBMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NLAMBMSTAG` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `_transferdeposit` */

DROP TABLE IF EXISTS `_transferdeposit`;

CREATE TABLE `_transferdeposit` (
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `absen_dosen` */

DROP TABLE IF EXISTS `absen_dosen`;

CREATE TABLE `absen_dosen` (
  `PresensiID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HonorDosenID` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `JadwalID` bigint(20) DEFAULT NULL,
  `Pertemuan` bigint(20) DEFAULT NULL,
  `DosenID` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `JamMulai` time DEFAULT NULL,
  `JamSelesai` time DEFAULT NULL,
  `Hitung` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `Catatan` text COLLATE latin1_general_ci,
  `SKSHonor` float DEFAULT NULL,
  `TunjanganSKS` float DEFAULT NULL,
  `TunjanganTransport` float DEFAULT NULL,
  `TunjanganTetap` float DEFAULT NULL,
  `NA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `tgl_absen` date DEFAULT NULL,
  `jam_absen` time DEFAULT NULL,
  PRIMARY KEY (`PresensiID`)
) ENGINE=MyISAM AUTO_INCREMENT=429 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `absen_mahasiswa` */

DROP TABLE IF EXISTS `absen_mahasiswa`;

CREATE TABLE `absen_mahasiswa` (
  `PresensiMhswID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JadwalID` bigint(20) DEFAULT NULL,
  `KRSID` bigint(20) DEFAULT NULL,
  `PresensiID` bigint(20) DEFAULT NULL,
  `MhswID` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `JenisPresensiID` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `Nilai` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `tap` datetime DEFAULT NULL,
  PRIMARY KEY (`PresensiMhswID`)
) ENGINE=MyISAM AUTO_INCREMENT=13746 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `agama` */

DROP TABLE IF EXISTS `agama`;

CREATE TABLE `agama` (
  `Agama` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Agama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Agama';

/*Table structure for table `alumni` */

DROP TABLE IF EXISTS `alumni`;

CREATE TABLE `alumni` (
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Gelar` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kota` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodePos` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `RT` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `RW` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Propinsi` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Negara` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telepon` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Handphone` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Email` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`MhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `alumnikerja` */

DROP TABLE IF EXISTS `alumnikerja`;

CREATE TABLE `alumnikerja` (
  `AlumniKerjaID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MulaiKerja` date NOT NULL DEFAULT '0000-00-00',
  `KeluarKerja` date NOT NULL DEFAULT '0000-00-00',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jabatan` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Alamat` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kota` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodePos` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Propinsi` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Negara` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telepon` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Facsimile` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Website` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`AlumniKerjaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `analisa` */

DROP TABLE IF EXISTS `analisa`;

CREATE TABLE `analisa` (
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'SISFO',
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `Bayar` bigint(20) NOT NULL DEFAULT '0',
  `Tugas1` int(11) NOT NULL DEFAULT '0',
  `Tugas2` int(11) NOT NULL DEFAULT '0',
  `Tugas3` int(11) NOT NULL DEFAULT '0',
  `Tugas4` int(11) NOT NULL DEFAULT '0',
  `Tugas5` int(11) NOT NULL DEFAULT '0',
  `Presensi` int(11) NOT NULL DEFAULT '0',
  `_Presensi` int(11) NOT NULL DEFAULT '0',
  `UTS` int(11) NOT NULL DEFAULT '0',
  `UAS` int(11) NOT NULL DEFAULT '0',
  `Responsi` decimal(4,2) NOT NULL DEFAULT '0.00',
  `NilaiAkhir` decimal(4,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `RuangID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Sah` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`),
  KEY `NA` (`NA`),
  KEY `Final` (`Final`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='KRS Mhsw';

/*Table structure for table `asalprodi` */

DROP TABLE IF EXISTS `asalprodi`;

CREATE TABLE `asalprodi` (
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `FakultasID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`ProdiID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Asal Program Studi';

/*Table structure for table `asalsekolah` */

DROP TABLE IF EXISTS `asalsekolah`;

CREATE TABLE `asalsekolah` (
  `SekolahID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat1` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat2` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(20) COLLATE latin1_general_ci DEFAULT '0',
  `JenisSekolahID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Website` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JabatanKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`SekolahID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Asal sekolah mahasiswa';

/*Table structure for table `asset` */

DROP TABLE IF EXISTS `asset`;

CREATE TABLE `asset` (
  `AssetID` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBeli` date NOT NULL DEFAULT '0000-00-00',
  `TglSusut` date NOT NULL DEFAULT '0000-00-00',
  `Jumlah` int(8) NOT NULL DEFAULT '0',
  `Satuan` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `HargaBeli` int(11) NOT NULL DEFAULT '0',
  `LokasiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KelompokID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ManfaatKomersil` int(8) NOT NULL DEFAULT '0',
  `ManfaatFiskal` int(8) NOT NULL DEFAULT '0',
  `ProsentaseKomersil` int(8) NOT NULL DEFAULT '0',
  `ProsentaseFiskal` int(8) NOT NULL DEFAULT '0',
  `Kondisi` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Pemakai` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PurchaseOrder` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `VendorID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Account` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginAdd` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglAdd` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`AssetID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bagian` */

DROP TABLE IF EXISTS `bagian`;

CREATE TABLE `bagian` (
  `BagianID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Bagian` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nourut` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `TanggalBuat` date NOT NULL,
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `L1` varchar(8) NOT NULL,
  `L2` varchar(8) NOT NULL,
  PRIMARY KEY (`BagianID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bahanajar` */

DROP TABLE IF EXISTS `bahanajar`;

CREATE TABLE `bahanajar` (
  `bahanajarID` int(11) NOT NULL AUTO_INCREMENT,
  `NoUrut` int(11) NOT NULL,
  `mkkode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `file` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Dosen` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `DosenId` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Keterangan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NA` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`bahanajarID`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

/*Table structure for table `bahasa` */

DROP TABLE IF EXISTS `bahasa`;

CREATE TABLE `bahasa` (
  `BahasaID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BahasaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bank_pembayaran` */

DROP TABLE IF EXISTS `bank_pembayaran`;

CREATE TABLE `bank_pembayaran` (
  `id_record_pembayaran` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_record_tagihan` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `nomor_pembayaran` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_unik_transaksi_bank` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `waktu_transaksi_bank` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_bank` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kanal_bayar_bank` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_terminal_bank` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `total_nilai_pembayaran` double NOT NULL,
  `status_pembayaran` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_record_rekonsiliasi` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_record_settlement` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `billref` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `metode_pembayaran` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'H2H',
  `catatan` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `key_val_1` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `key_val_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `key_val_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `key_val_4` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `key_val_5` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `status_upload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_record_pembayaran`),
  KEY `fk_id_tagihan` (`id_record_tagihan`),
  KEY `fk_id_rekonsiliasi` (`id_record_rekonsiliasi`),
  KEY `fk_id_settlement` (`id_record_settlement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bank_pembayaran_detil` */

DROP TABLE IF EXISTS `bank_pembayaran_detil`;

CREATE TABLE `bank_pembayaran_detil` (
  `id_record_detil_pembayaran` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_record_pembayaran` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nominal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bank_rekonsiliasi` */

DROP TABLE IF EXISTS `bank_rekonsiliasi`;

CREATE TABLE `bank_rekonsiliasi` (
  `id_record_rekonsiliasi` varchar(30) NOT NULL,
  `waktu_rekonsiliasi` datetime NOT NULL,
  `lokasi_berkas` varchar(255) NOT NULL,
  `checksum_md5_berkas` varchar(255) NOT NULL,
  PRIMARY KEY (`id_record_rekonsiliasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bayarmhsw` */

DROP TABLE IF EXISTS `bayarmhsw`;

CREATE TABLE `bayarmhsw` (
  `BayarMhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BayarMhswRef` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `COAID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `RekeningID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Autodebet` smallint(6) NOT NULL DEFAULT '0',
  `TrxID` int(11) NOT NULL DEFAULT '1',
  `PMBMhswID` smallint(6) NOT NULL DEFAULT '1',
  `Bank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `JumlahLain` bigint(20) NOT NULL DEFAULT '0',
  `CicilanID` bigint(20) NOT NULL DEFAULT '0',
  `Proses` int(11) NOT NULL DEFAULT '0',
  `Keterangan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Cetak` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BayarMhswID`),
  KEY `KodeID` (`KodeID`),
  KEY `RekeningID` (`RekeningID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bayarmhsw2` */

DROP TABLE IF EXISTS `bayarmhsw2`;

CREATE TABLE `bayarmhsw2` (
  `BayarMhsw2ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BayarMhsw2Ref` bigint(20) NOT NULL DEFAULT '0',
  `BayarMhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BIPOTMhswID` bigint(20) NOT NULL DEFAULT '0',
  `BIPOTNamaID` bigint(20) NOT NULL DEFAULT '0',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BayarMhsw2ID`)
) ENGINE=MyISAM AUTO_INCREMENT=25959 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bayarmhswcek` */

DROP TABLE IF EXISTS `bayarmhswcek`;

CREATE TABLE `bayarmhswcek` (
  `BayarMhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BayarMhswRef` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `RekeningID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Autodebet` smallint(6) NOT NULL DEFAULT '0',
  `TrxID` int(11) NOT NULL DEFAULT '1',
  `PMBMhswID` smallint(6) NOT NULL DEFAULT '1',
  `Bank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `JumlahLain` bigint(20) NOT NULL DEFAULT '0',
  `CicilanID` bigint(20) NOT NULL DEFAULT '0',
  `Proses` int(11) NOT NULL DEFAULT '0',
  `Keterangan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BayarMhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bayarmhswcek2` */

DROP TABLE IF EXISTS `bayarmhswcek2`;

CREATE TABLE `bayarmhswcek2` (
  `BayarMhsw2ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BayarMhsw2Ref` bigint(20) NOT NULL DEFAULT '0',
  `BayarMhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BIPOTMhswID` bigint(20) NOT NULL DEFAULT '0',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BayarMhsw2ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `beasiswa` */

DROP TABLE IF EXISTS `beasiswa`;

CREATE TABLE `beasiswa` (
  `BeasiswaID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BIPOTNamaID` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `IPKMin` decimal(4,2) NOT NULL DEFAULT '0.00',
  `IPSMin` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `Prasyarat` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BeasiswaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis2 Beasiswa';

/*Table structure for table `beasiswamhsw` */

DROP TABLE IF EXISTS `beasiswamhsw`;

CREATE TABLE `beasiswamhsw` (
  `BeasiswaMhswID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BeasiswaID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `IPS` decimal(4,2) NOT NULL DEFAULT '0.00',
  `IPK` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Hutang` bigint(20) NOT NULL DEFAULT '0',
  `Besar` bigint(20) NOT NULL DEFAULT '0',
  `Prasyarat` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Disetujui` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Proses` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BeasiswaMhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Beasiswa utk Mahasiswa';

/*Table structure for table `beasiswamhswdetail` */

DROP TABLE IF EXISTS `beasiswamhswdetail`;

CREATE TABLE `beasiswamhswdetail` (
  `BeasiswaMhswDetailID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BeasiswaMhswID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BIPOTNamaID` bigint(20) NOT NULL DEFAULT '0',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `Beasiswa` bigint(20) NOT NULL DEFAULT '0',
  `Disetujui` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BeasiswaMhswDetailID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `benua` */

DROP TABLE IF EXISTS `benua`;

CREATE TABLE `benua` (
  `KodeBenua` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaBenua` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`KodeBenua`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `biayastudi` */

DROP TABLE IF EXISTS `biayastudi`;

CREATE TABLE `biayastudi` (
  `BiayaStudiID` char(2) NOT NULL,
  `BiayaStudi` varchar(30) NOT NULL,
  `NA` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `biayastudy` */

DROP TABLE IF EXISTS `biayastudy`;

CREATE TABLE `biayastudy` (
  `BiayaStudyID` int(11) NOT NULL,
  `BiayaStudy` varchar(30) NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bipot` */

DROP TABLE IF EXISTS `bipot`;

CREATE TABLE `bipot` (
  `BIPOTID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tahun` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SP` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Catatan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  PRIMARY KEY (`BIPOTID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `Tahun` (`Tahun`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bipot2` */

DROP TABLE IF EXISTS `bipot2`;

CREATE TABLE `bipot2` (
  `BIPOT2ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIPOTID` int(11) NOT NULL DEFAULT '0',
  `BIPOTNamaID` int(11) NOT NULL DEFAULT '0',
  `COAID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TrxID` int(11) NOT NULL DEFAULT '1',
  `Prioritas` int(11) NOT NULL DEFAULT '0',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `KaliSesi` int(11) NOT NULL DEFAULT '0',
  `Otomatis` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `SaatID` int(11) NOT NULL DEFAULT '1',
  `StatusMhswID` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusPotonganID` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusAwalID` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `GunakanGradeNilai` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `GradeNilai` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `GunakanScript` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NamaScript` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BIPOT2ID`),
  KEY `BIPOTID` (`BIPOTID`,`BIPOTNamaID`),
  KEY `BIPOTNamaID` (`BIPOTNamaID`),
  KEY `StatusMhswID` (`StatusMhswID`),
  KEY `StatusPotonganID` (`StatusPotonganID`),
  KEY `StatusAwalID` (`StatusAwalID`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bipotmhsw` */

DROP TABLE IF EXISTS `bipotmhsw`;

CREATE TABLE `bipotmhsw` (
  `BIPOTMhswID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIPOTMhswRef` bigint(20) NOT NULL DEFAULT '0',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `COAID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBMhswID` smallint(6) NOT NULL DEFAULT '1',
  `PMBID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BIPOT2ID` bigint(20) NOT NULL DEFAULT '0',
  `BIPOTNamaID` bigint(20) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TrxID` int(11) NOT NULL DEFAULT '1',
  `Jumlah` int(11) NOT NULL DEFAULT '1',
  `Besar` bigint(20) NOT NULL DEFAULT '0',
  `Dibayar` bigint(20) NOT NULL DEFAULT '0',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NomerDispensasi` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Catatan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Draft` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `FieldLama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`BIPOTMhswID`),
  KEY `PMBID` (`PMBID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `BIPOT2ID` (`BIPOT2ID`),
  KEY `BIPOTNamaID` (`BIPOTNamaID`),
  KEY `PMBMhswID` (`PMBMhswID`),
  KEY `BIPOTMhswRef` (`BIPOTMhswRef`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=29678 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bipotnama` */

DROP TABLE IF EXISTS `bipotnama`;

CREATE TABLE `bipotnama` (
  `BIPOTNamaID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `RekeningID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Urutan` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Singkatan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TrxID` int(2) NOT NULL DEFAULT '0',
  `Baris` int(11) NOT NULL DEFAULT '0',
  `Detil` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DefJumlah` bigint(20) NOT NULL DEFAULT '0',
  `DefBesar` bigint(20) NOT NULL DEFAULT '0',
  `Diskon` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `KenaDenda` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DipotongBeasiswa` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Catatan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` date DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BIPOTNamaID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bugserror` */

DROP TABLE IF EXISTS `bugserror`;

CREATE TABLE `bugserror` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Judul` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Bugs` text COLLATE latin1_general_ci NOT NULL,
  `Prioritas` smallint(6) NOT NULL DEFAULT '0',
  `StatusID` smallint(6) NOT NULL DEFAULT '0',
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bugsprioritas` */

DROP TABLE IF EXISTS `bugsprioritas`;

CREATE TABLE `bugsprioritas` (
  `ID` smallint(6) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bugsstatus` */

DROP TABLE IF EXISTS `bugsstatus`;

CREATE TABLE `bugsstatus` (
  `ID` smallint(6) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusNA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `bukuharian` */

DROP TABLE IF EXISTS `bukuharian`;

CREATE TABLE `bukuharian` (
  `bkID` bigint(10) NOT NULL AUTO_INCREMENT,
  `KaryawanID` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `topik` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  PRIMARY KEY (`bkID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `bulan` */

DROP TABLE IF EXISTS `bulan`;

CREATE TABLE `bulan` (
  `BulanID` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('N','Y') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`BulanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `cekmhsw` */

DROP TABLE IF EXISTS `cekmhsw`;

CREATE TABLE `cekmhsw` (
  `mhswid` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `cicilanmhsw` */

DROP TABLE IF EXISTS `cicilanmhsw`;

CREATE TABLE `cicilanmhsw` (
  `CicilanID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CicilanRef` bigint(20) NOT NULL DEFAULT '0',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBMhswID` smallint(6) NOT NULL DEFAULT '1',
  `Urutan` int(11) NOT NULL DEFAULT '1',
  `DariTanggal` date NOT NULL DEFAULT '0000-00-00',
  `SampaiTanggal` date NOT NULL DEFAULT '0000-00-00',
  `Judul` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `SudahDibayar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TanggalDibayar` date DEFAULT NULL,
  `Denda` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`CicilanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `cuti` */

DROP TABLE IF EXISTS `cuti`;

CREATE TABLE `cuti` (
  `CutiID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `IPK` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Saldo` bigint(20) NOT NULL DEFAULT '0',
  `Keterangan` text COLLATE latin1_general_ci,
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`CutiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `depositmhsw` */

DROP TABLE IF EXISTS `depositmhsw`;

CREATE TABLE `depositmhsw` (
  `DepositMhswID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `Dipakai` bigint(20) NOT NULL DEFAULT '0',
  `Tutup` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Catatan` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`DepositMhswID`),
  KEY `MhswID` (`MhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `dispensasi` */

DROP TABLE IF EXISTS `dispensasi`;

CREATE TABLE `dispensasi` (
  `DispensasiID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `SampaiTanggal` date DEFAULT NULL,
  `Judul` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`DispensasiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `Login` varchar(9) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `NIDN` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HomebaseInduk` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIPPNS` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TempatLahir` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalLahir` date DEFAULT '0000-00-00',
  `LevelID` int(10) unsigned NOT NULL DEFAULT '100',
  `KTP` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text COLLATE latin1_general_ci,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Homebase` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Gelar` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `JenjangID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Keilmuan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LulusanPT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaID` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `KelaminID` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `GolonganID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KategoriID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `IkatanID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JabatanID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `JabatanDiktiID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `InstitusiInduk` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusDosenID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusKerjaID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBekerja` datetime DEFAULT NULL,
  `NamaBank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaAkun` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerAkun` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `kunjungan` int(11) NOT NULL,
  `tarif1sks` int(10) NOT NULL,
  `tarif2sks` int(10) NOT NULL,
  `tarif3sks` int(10) NOT NULL,
  `Tunjangan` int(11) NOT NULL,
  `Status` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `bagianID` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `No_kartu` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ID_ABSEN` bigint(20) NOT NULL AUTO_INCREMENT,
  `IbuKandung` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `WargaNegara` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `AktaMengajar` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`Login`),
  UNIQUE KEY `ID_ABSEN` (`ID_ABSEN`),
  KEY `KodeID` (`KodeID`),
  KEY `NIDN` (`NIDN`),
  KEY `LevelID` (`LevelID`)
) ENGINE=MyISAM AUTO_INCREMENT=3531 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel Dosen';

/*Table structure for table `dosen1` */

DROP TABLE IF EXISTS `dosen1`;

CREATE TABLE `dosen1` (
  `Login` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `NIDN` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HomebaseInduk` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIPPNS` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TempatLahir` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalLahir` date DEFAULT '0000-00-00',
  `LevelID` int(10) unsigned NOT NULL DEFAULT '100',
  `KTP` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text COLLATE latin1_general_ci,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Homebase` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Gelar` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `JenjangID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Keilmuan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LulusanPT` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaID` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `KelaminID` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `GolonganID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KategoriID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `IkatanID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JabatanID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `JabatanDiktiID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `InstitusiInduk` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusDosenID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusKerjaID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBekerja` datetime DEFAULT NULL,
  `NamaBank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaAkun` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerAkun` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`Login`),
  KEY `KodeID` (`KodeID`),
  KEY `NIDN` (`NIDN`),
  KEY `LevelID` (`LevelID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel Dosen';

/*Table structure for table `dosenAbdi` */

DROP TABLE IF EXISTS `dosenAbdi`;

CREATE TABLE `dosenAbdi` (
  `DosenAbdiId` bigint(20) NOT NULL AUTO_INCREMENT,
  `dosenID` varchar(20) DEFAULT NULL,
  `judul` varchar(250) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `tingkat` varchar(100) DEFAULT NULL,
  `dana` varchar(150) DEFAULT NULL,
  `nominal` float DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`DosenAbdiId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `dosenpekerjaan` */

DROP TABLE IF EXISTS `dosenpekerjaan`;

CREATE TABLE `dosenpekerjaan` (
  `DosenPekerjaanID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DosenID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jabatan` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Institusi` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Alamat` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kota` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kodepos` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telepon` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Fax` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`DosenPekerjaanID`),
  KEY `DosenID` (`DosenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `dosenpendidikan` */

DROP TABLE IF EXISTS `dosenpendidikan`;

CREATE TABLE `dosenpendidikan` (
  `DosenPendidikanID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DosenID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nomor` int(11) NOT NULL DEFAULT '0',
  `JenjangID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalIjazah` date NOT NULL DEFAULT '0000-00-00',
  `Gelar` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PerguruanTinggiID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaNegara` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BidangIlmu` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Prodi` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `KodeBenua` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`DosenPendidikanID`),
  KEY `DosenID` (`DosenID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `dosenpenelitian` */

DROP TABLE IF EXISTS `dosenpenelitian`;

CREATE TABLE `dosenpenelitian` (
  `DosenPenelitianID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPenelitian` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosenID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginBuat` varchar(40) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglEdit` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(40) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `publik` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `tahun` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `tingkat` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `dana` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `nominal` float DEFAULT NULL,
  PRIMARY KEY (`DosenPenelitianID`),
  KEY `DosenID` (`DosenID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `edom_dosen` */

DROP TABLE IF EXISTS `edom_dosen`;

CREATE TABLE `edom_dosen` (
  `id_edom` bigint(20) NOT NULL AUTO_INCREMENT,
  `krsid` bigint(20) DEFAULT NULL,
  `dosenid` varchar(15) DEFAULT NULL,
  `jadwalid` bigint(20) DEFAULT NULL,
  `E1` varchar(1) DEFAULT NULL,
  `E2` varchar(1) DEFAULT NULL,
  `E3` varchar(1) DEFAULT NULL,
  `E4` varchar(1) DEFAULT NULL,
  `E5` varchar(1) DEFAULT NULL,
  `E6` varchar(1) DEFAULT NULL,
  `E7` varchar(1) DEFAULT NULL,
  `E8` varchar(1) DEFAULT NULL,
  `E9` varchar(1) DEFAULT NULL,
  `E10` varchar(1) DEFAULT NULL,
  `E11` varchar(1) DEFAULT NULL,
  `E12` varchar(1) DEFAULT NULL,
  `E13` varchar(1) DEFAULT NULL,
  `E14` varchar(1) DEFAULT NULL,
  `E15` varchar(1) DEFAULT NULL,
  `E16` varchar(1) DEFAULT NULL,
  `E17` varchar(1) DEFAULT NULL,
  `E18` varchar(1) DEFAULT NULL,
  `E19` varchar(1) DEFAULT NULL,
  `E20` varchar(1) DEFAULT NULL,
  `E21` varchar(1) DEFAULT NULL,
  `E22` varchar(1) DEFAULT NULL,
  `E23` varchar(1) DEFAULT NULL,
  `E24` varchar(1) DEFAULT NULL,
  `E25` varchar(1) DEFAULT NULL,
  `E26` varchar(1) DEFAULT NULL,
  `E27` varchar(1) DEFAULT NULL,
  `E28` varchar(1) DEFAULT NULL,
  `login_buat` varchar(1) DEFAULT NULL,
  `tgl_buat` datetime DEFAULT NULL,
  `login_edit` varchar(1) DEFAULT NULL,
  `tgl_edit` datetime DEFAULT NULL,
  PRIMARY KEY (`id_edom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `excel` */

DROP TABLE IF EXISTS `excel`;

CREATE TABLE `excel` (
  `sheet` varchar(100) NOT NULL,
  `nosheet` tinyint(4) NOT NULL,
  `mkkode` varchar(7) NOT NULL,
  `mknama` varchar(100) NOT NULL,
  `namafile` varchar(100) NOT NULL,
  `jumlah` mediumint(9) NOT NULL,
  `isi` mediumint(9) NOT NULL,
  `tahunid` varchar(5) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`mknama`,`namafile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `fakultas` */

DROP TABLE IF EXISTS `fakultas`;

CREATE TABLE `fakultas` (
  `FakultasID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Pejabat` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jabatan` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `StartNoFakultas` bigint(20) NOT NULL DEFAULT '0',
  `NoFakultas` bigint(20) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`FakultasID`,`KodeID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Fakultas';

/*Table structure for table `fsql` */

DROP TABLE IF EXISTS `fsql`;

CREATE TABLE `fsql` (
  `sqlID` int(10) NOT NULL AUTO_INCREMENT,
  `Fungsi` varchar(100) NOT NULL,
  `fsql` text NOT NULL,
  `menu` varchar(10) NOT NULL,
  `ket` varchar(30) NOT NULL,
  `NA` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`sqlID`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

/*Table structure for table `golongan` */

DROP TABLE IF EXISTS `golongan`;

CREATE TABLE `golongan` (
  `GolonganID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KategoriID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Pangkat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TunjanganFungsional` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganSKS` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTransport` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTetap` bigint(20) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`GolonganID`,`KategoriID`,`ProdiID`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `hari` */

DROP TABLE IF EXISTS `hari`;

CREATE TABLE `hari` (
  `HariID` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama_en` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`HariID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `hidup` */

DROP TABLE IF EXISTS `hidup`;

CREATE TABLE `hidup` (
  `Hidup` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Hidup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Status kehidupan';

/*Table structure for table `honordosen` */

DROP TABLE IF EXISTS `honordosen`;

CREATE TABLE `honordosen` (
  `HonorDosenID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Minggu` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'M1',
  `Bulan` int(11) NOT NULL DEFAULT '0',
  `Tahun` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `TanggalMulai` date NOT NULL DEFAULT '0000-00-00',
  `TanggalSelesai` date NOT NULL DEFAULT '0000-00-00',
  `DosenID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TunjanganJabatan1` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganJabatan2` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganSKS` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTransport` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTetap` bigint(20) NOT NULL DEFAULT '0',
  `Tambahan` bigint(20) NOT NULL DEFAULT '0',
  `Potongan` bigint(20) NOT NULL DEFAULT '0',
  `Pajak` int(11) NOT NULL DEFAULT '0',
  `Cetak` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`HonorDosenID`),
  KEY `TahunID` (`TahunID`),
  KEY `Minggu` (`Minggu`),
  KEY `Bulan` (`Bulan`),
  KEY `Tahun` (`Tahun`),
  KEY `DosenID` (`DosenID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `honordosentambahan` */

DROP TABLE IF EXISTS `honordosentambahan`;

CREATE TABLE `honordosentambahan` (
  `HonorDosenTambahanID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HonorDosenID` bigint(20) NOT NULL DEFAULT '0',
  `HonorTambahanID` bigint(20) NOT NULL DEFAULT '0',
  `DosenID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Besar` bigint(20) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`HonorDosenTambahanID`),
  KEY `HonorDosenID` (`HonorDosenID`),
  KEY `HonorTambahanID` (`HonorTambahanID`),
  KEY `DosenID` (`DosenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `honorjadwaldosen` */

DROP TABLE IF EXISTS `honorjadwaldosen`;

CREATE TABLE `honorjadwaldosen` (
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dosen` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MK` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Kelas` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `DosenID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SKS` tinyint(1) NOT NULL DEFAULT '0',
  `TunjanganSKS` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTransport` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTetap` bigint(20) NOT NULL DEFAULT '0',
  `Tambahan` bigint(20) NOT NULL DEFAULT '0',
  `Potongan` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JadwalID`,`DosenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `honortambahan` */

DROP TABLE IF EXISTS `honortambahan`;

CREATE TABLE `honortambahan` (
  `HonorTambahanID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`HonorTambahanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Komponen honor tambahan untuk dosen';

/*Table structure for table `hutangmhsw` */

DROP TABLE IF EXISTS `hutangmhsw`;

CREATE TABLE `hutangmhsw` (
  `HutangMhswID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jumlah` bigint(20) NOT NULL DEFAULT '0',
  `Dibayar` bigint(20) NOT NULL DEFAULT '0',
  `Tutup` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Catatan` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`HutangMhswID`),
  KEY `MhswID` (`MhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `identitas` */

DROP TABLE IF EXISTS `identitas`;

CREATE TABLE `identitas` (
  `Kode` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeHukum` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeInstitusi` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglMulai` date NOT NULL DEFAULT '0000-00-00',
  `Alamat1` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Website` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NoAkta` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglAkta` date DEFAULT NULL,
  `NoSah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSah` date DEFAULT NULL,
  `Logo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `StartNoIdentitas` bigint(20) NOT NULL DEFAULT '0',
  `NoIdentitas` bigint(20) NOT NULL DEFAULT '0',
  `CatatanDPNA` text COLLATE latin1_general_ci,
  `CatatanKursiUAS` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`Kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `ikatan` */

DROP TABLE IF EXISTS `ikatan`;

CREATE TABLE `ikatan` (
  `IkatanID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Besar` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`IkatanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `inetgb` */

DROP TABLE IF EXISTS `inetgb`;

CREATE TABLE `inetgb` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `address` longtext NOT NULL,
  `datetime` varchar(23) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `infotazkia` */

DROP TABLE IF EXISTS `infotazkia`;

CREATE TABLE `infotazkia` (
  `InfoTazkiaID` char(2) NOT NULL,
  `InfoTazkia` varchar(30) NOT NULL,
  `NA` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `jabatan` */

DROP TABLE IF EXISTS `jabatan`;

CREATE TABLE `jabatan` (
  `JabatanID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Pejabat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`JabatanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jabatandikti` */

DROP TABLE IF EXISTS `jabatandikti`;

CREATE TABLE `jabatandikti` (
  `JabatanDiktiID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JabatanDiktiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `JadwalID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JadwalPar` bigint(20) NOT NULL DEFAULT '0',
  `JadwalSer` bigint(20) NOT NULL DEFAULT '0',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'TAZKIA',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaKelas` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `MKID` int(11) NOT NULL DEFAULT '0',
  `JenisJadwalID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'K',
  `AdaResponsi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HariID` smallint(6) NOT NULL DEFAULT '1',
  `JamMulai` time NOT NULL DEFAULT '08:00:00',
  `JamSelesai` time NOT NULL DEFAULT '09:59:00',
  `TglMulai` date DEFAULT NULL,
  `TglSelesai` date DEFAULT NULL,
  `SKSAsli` int(11) NOT NULL DEFAULT '0',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `SKSHonor` int(11) NOT NULL DEFAULT '0',
  `DosenID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `RencanaKehadiran` int(11) NOT NULL DEFAULT '0',
  `Kehadiran` int(11) NOT NULL DEFAULT '0',
  `KehadiranMin` int(11) NOT NULL DEFAULT '0',
  `JumlahMhsw` int(11) NOT NULL DEFAULT '0',
  `JumlahMhswKRS` int(10) unsigned NOT NULL DEFAULT '0',
  `Kapasitas` int(11) NOT NULL DEFAULT '0',
  `RuangID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `kodenilai` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `JumlahKelasSerial` int(11) NOT NULL DEFAULT '0',
  `JumlahPraKRS` int(11) NOT NULL DEFAULT '0',
  `TugasMandiri` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas1` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas2` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas3` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas4` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Tugas5` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Presensi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `UTS` decimal(5,2) NOT NULL DEFAULT '0.00',
  `UAS` decimal(5,2) NOT NULL DEFAULT '0.00',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Responsi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `UTSTanggal` date NOT NULL DEFAULT '0000-00-00',
  `UTSJamMulai` time NOT NULL DEFAULT '00:00:00',
  `UTSJamSelesai` time NOT NULL DEFAULT '00:00:00',
  `UTSRuangID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `UASTanggal` date NOT NULL DEFAULT '0000-00-00',
  `UASJamMulai` time NOT NULL DEFAULT '00:00:00',
  `UASJamSelesai` time NOT NULL DEFAULT '00:00:00',
  `UASRuangID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Penilaian` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'web',
  `Gagal` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N' COMMENT 'Jika dosen tidak memberikan nilai sampai dengan tanggal akhir penilaian',
  `CatatanGagal` text COLLATE latin1_general_ci COMMENT 'Catatan gagal',
  `NilaiGagal` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `CatatanDPNA` text COLLATE latin1_general_ci,
  `NoSurat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BiayaKhusus` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Biaya` bigint(20) NOT NULL DEFAULT '0',
  `TglSurat` date NOT NULL DEFAULT '0000-00-00',
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NilaiMasuk` tinyint(4) NOT NULL,
  `Catatan` text COLLATE latin1_general_ci NOT NULL,
  `TglNilai` date NOT NULL,
  `TglNilaiUpdate` date NOT NULL,
  `excel` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`JadwalID`),
  KEY `TahunID` (`TahunID`),
  KEY `MKID` (`MKID`),
  KEY `JenisJadwalID` (`JenisJadwalID`),
  KEY `DosenID` (`DosenID`),
  KEY `HariID` (`HariID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `RuangID` (`RuangID`),
  KEY `MKKode` (`MKKode`),
  KEY `NamaKelas` (`NamaKelas`)
) ENGINE=MyISAM AUTO_INCREMENT=4695 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jadwaldosen` */

DROP TABLE IF EXISTS `jadwaldosen`;

CREATE TABLE `jadwaldosen` (
  `JadwalDosenID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `DosenID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JenisDosenID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'DSN',
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`JadwalDosenID`),
  KEY `JadwalID` (`JadwalID`,`DosenID`),
  KEY `DosenID` (`DosenID`),
  KEY `JenisDosenID` (`JenisDosenID`)
) ENGINE=MyISAM AUTO_INCREMENT=694 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jadwaltutup` */

DROP TABLE IF EXISTS `jadwaltutup`;

CREATE TABLE `jadwaltutup` (
  `JadwalTutupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosenID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaKelas` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JenisJadwalID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `HariID` smallint(6) NOT NULL DEFAULT '0',
  `JamMulai` time NOT NULL DEFAULT '00:00:00',
  `JamSelesai` time NOT NULL DEFAULT '00:00:00',
  `NoSurat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JadwalTutupID`),
  KEY `TahunID` (`TahunID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `DosenID` (`DosenID`),
  KEY `JenisJadwalID` (`JenisJadwalID`),
  KEY `HariID` (`HariID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jajal` */

DROP TABLE IF EXISTS `jajal`;

CREATE TABLE `jajal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kode` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=396 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `jawab` */

DROP TABLE IF EXISTS `jawab`;

CREATE TABLE `jawab` (
  `nim` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `no_soal` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jawaban` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `benar` int(3) NOT NULL DEFAULT '0',
  `salah` int(3) NOT NULL DEFAULT '0',
  `nilai` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jenisbiaya` */

DROP TABLE IF EXISTS `jenisbiaya`;

CREATE TABLE `jenisbiaya` (
  `JenisBiayaID` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(35) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NoUrutBiaya` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisBiayaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jenisdosen` */

DROP TABLE IF EXISTS `jenisdosen`;

CREATE TABLE `jenisdosen` (
  `JenisDosenID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisDosenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis dosen pengampu (Jadwal)';

/*Table structure for table `jenisjabatan` */

DROP TABLE IF EXISTS `jenisjabatan`;

CREATE TABLE `jenisjabatan` (
  `JenisJabatanID` int(11) NOT NULL AUTO_INCREMENT,
  `Singkatan` varchar(50) NOT NULL DEFAULT '',
  `Nama` varchar(100) NOT NULL DEFAULT '',
  `Urutan` int(11) NOT NULL DEFAULT '0',
  `Catatan` text NOT NULL,
  `LoginBuat` varchar(100) NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(100) NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('N','Y') NOT NULL DEFAULT 'N',
  `KodeID` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`JenisJabatanID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `jenisjadwal` */

DROP TABLE IF EXISTS `jenisjadwal`;

CREATE TABLE `jenisjadwal` (
  `JenisJadwalID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dep` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisJadwalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jeniskurikulum` */

DROP TABLE IF EXISTS `jeniskurikulum`;

CREATE TABLE `jeniskurikulum` (
  `JenisKurikulumID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Singkatan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisKurikulumID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jenismk` */

DROP TABLE IF EXISTS `jenismk`;

CREATE TABLE `jenismk` (
  `JenisMKID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Urutan` int(11) NOT NULL DEFAULT '0',
  `Singkatan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisMKID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis Mata Kuliah';

/*Table structure for table `jenispilihan` */

DROP TABLE IF EXISTS `jenispilihan`;

CREATE TABLE `jenispilihan` (
  `JenisPilihanID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Urutan` int(11) NOT NULL DEFAULT '0',
  `Singkatan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisPilihanID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `jenispresensi` */

DROP TABLE IF EXISTS `jenispresensi`;

CREATE TABLE `jenispresensi` (
  `JenisPresensiID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nilai` int(11) NOT NULL DEFAULT '0',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenisPresensiID`),
  KEY `Def` (`Def`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Untuk menghitung presensi';

/*Table structure for table `jenissekolah` */

DROP TABLE IF EXISTS `jenissekolah`;

CREATE TABLE `jenissekolah` (
  `JenisSekolahID` tinyint(2) NOT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negeri` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Islam` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`JenisSekolahID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis Sekolah';

/*Table structure for table `jenjang` */

DROP TABLE IF EXISTS `jenjang`;

CREATE TABLE `jenjang` (
  `JenjangID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`JenjangID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenjang pendidikan';

/*Table structure for table `jurusansekolah` */

DROP TABLE IF EXISTS `jurusansekolah`;

CREATE TABLE `jurusansekolah` (
  `JurusanSekolahID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaJurusan` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`JurusanSekolahID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis Sekolah Asal Mahasiswa';

/*Table structure for table `kabkota` */

DROP TABLE IF EXISTS `kabkota`;

CREATE TABLE `kabkota` (
  `KabkotaID` smallint(4) NOT NULL,
  `DapilID` tinyint(2) NOT NULL,
  `ProvID` tinyint(4) NOT NULL,
  `KabKota` varchar(30) NOT NULL,
  `UrutProvinsi` tinyint(3) NOT NULL,
  `UrutDapil` tinyint(4) NOT NULL,
  `NA` varchar(1) NOT NULL DEFAULT 'N',
  `mixprov` varchar(50) NOT NULL,
  PRIMARY KEY (`KabkotaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `kalender` */

DROP TABLE IF EXISTS `kalender`;

CREATE TABLE `kalender` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `kampus` */

DROP TABLE IF EXISTS `kampus`;

CREATE TABLE `kampus` (
  `KampusID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`KampusID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Gedung kampus';

/*Table structure for table `kampus_tagihan` */

DROP TABLE IF EXISTS `kampus_tagihan`;

CREATE TABLE `kampus_tagihan` (
  `id_record_tagihan` int(30) NOT NULL,
  `nomor_pembayaran` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_pembayaran` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_jurusan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama_jurusan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode_prodi` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama_prodi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode_periode` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama_periode` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `is_tagihan_aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `waktu_berlaku` datetime DEFAULT NULL,
  `waktu_berakhir` datetime DEFAULT NULL,
  `strata` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `angkatan` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `urutan_antrian` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `total_nilai_tagihan` double NOT NULL,
  `minimal_nilai_pembayaran` double DEFAULT NULL,
  `maksimal_nilai_pembayaran` double DEFAULT NULL,
  `nomor_induk` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pembayaran_atau_voucher` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'PEMBAYARAN',
  `voucher_nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `voucher_nama_jurusan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `voucher_nama_prodi` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `voucher_nama_periode` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `status_pembayaran` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_record_tagihan`),
  KEY `jenis_pembayaran` (`nama_pembayaran`),
  KEY `nomor_pembayaran` (`nomor_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `kampus_tagihan_detil` */

DROP TABLE IF EXISTS `kampus_tagihan_detil`;

CREATE TABLE `kampus_tagihan_detil` (
  `id_record_detil_tagihan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_record_tagihan` int(30) NOT NULL,
  `urutan_detil_tagihan` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `kode_jenis_biaya` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label_jenis_biaya` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `label_jenis_biaya_panjang` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nilai_tagihan` double NOT NULL,
  PRIMARY KEY (`id_record_detil_tagihan`),
  KEY `fk_id_tagihan` (`id_record_tagihan`),
  CONSTRAINT `kampus_tagihan_ibfk` FOREIGN KEY (`id_record_tagihan`) REFERENCES `kampus_tagihan` (`id_record_tagihan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6301 DEFAULT CHARSET=latin1;

/*Table structure for table `karyawan` */

DROP TABLE IF EXISTS `karyawan`;

CREATE TABLE `karyawan` (
  `Login` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LevelID` int(10) unsigned NOT NULL DEFAULT '12',
  `Jabatan` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text COLLATE latin1_general_ci,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `ProdiID` text COLLATE latin1_general_ci,
  `kunjungan` int(11) NOT NULL,
  `unit` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `bagianID` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `NIK` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RFID` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`Login`),
  KEY `KodeID` (`KodeID`),
  KEY `LevelID` (`LevelID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel User';

/*Table structure for table `karyawan2` */

DROP TABLE IF EXISTS `karyawan2`;

CREATE TABLE `karyawan2` (
  `idk` bigint(20) NOT NULL AUTO_INCREMENT,
  `NIK` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `RFID` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `foto` blob,
  `Status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `no_id` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idk`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `kelamin` */

DROP TABLE IF EXISTS `kelamin`;

CREATE TABLE `kelamin` (
  `Kelamin` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`Kelamin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis Kelamin';

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `KelasID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `ProdiID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kapasitas` int(11) NOT NULL DEFAULT '0',
  `Jumlah` int(11) NOT NULL DEFAULT '0',
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KelasID`,`KodeID`,`ProdiID`,`ProgramID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `kelompokasset` */

DROP TABLE IF EXISTS `kelompokasset`;

CREATE TABLE `kelompokasset` (
  `KelompokID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MasaKomersil` int(8) NOT NULL DEFAULT '0',
  `MasaFiskal` int(8) NOT NULL DEFAULT '0',
  `ProsentaseKomersil` int(8) NOT NULL DEFAULT '0',
  `ProsentaseFiskal` int(8) NOT NULL DEFAULT '0',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginAdd` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalAdd` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`KelompokID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `keusetup` */

DROP TABLE IF EXISTS `keusetup`;

CREATE TABLE `keusetup` (
  `HutangPrev` int(11) NOT NULL DEFAULT '0',
  `DepositPrev` int(11) NOT NULL DEFAULT '0',
  `HutangNext` int(11) NOT NULL DEFAULT '0',
  `DepositNext` int(11) NOT NULL DEFAULT '0',
  `Denda1` int(11) NOT NULL DEFAULT '0',
  `Denda2` int(11) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Transfer Keuangan Mhsw';

/*Table structure for table `khs` */

DROP TABLE IF EXISTS `khs`;

CREATE TABLE `khs` (
  `KHSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `ProgramID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT 'P',
  `Sesi` float NOT NULL DEFAULT '0',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `IP` decimal(5,2) NOT NULL DEFAULT '0.00',
  `BIPOTID` int(11) NOT NULL DEFAULT '0',
  `SaldoAwal` bigint(20) NOT NULL DEFAULT '0',
  `Biaya` int(11) NOT NULL DEFAULT '0',
  `Potongan` int(11) NOT NULL DEFAULT '0',
  `Bayar` int(11) NOT NULL DEFAULT '0',
  `Tarik` int(11) NOT NULL DEFAULT '0',
  `JumlahLain` bigint(20) NOT NULL DEFAULT '0',
  `TotalSKS` int(11) NOT NULL DEFAULT '0',
  `JumlahMK` int(11) NOT NULL DEFAULT '0',
  `MaxSKS` int(11) NOT NULL DEFAULT '0',
  `IPS` decimal(5,2) NOT NULL DEFAULT '0.00',
  `CetakKRS` int(11) NOT NULL DEFAULT '0',
  `Cetak` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `KaliCetak` int(11) NOT NULL DEFAULT '0',
  `Tutup` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Autodebet` smallint(6) NOT NULL DEFAULT '0',
  `Blok` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `KeteranganBlok` text COLLATE latin1_general_ci NOT NULL,
  `NoSurat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSurat` date NOT NULL DEFAULT '0000-00-00',
  `Keterangan` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `mklulus` text COLLATE latin1_general_ci NOT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `E1` tinyint(4) NOT NULL,
  `E2` tinyint(4) NOT NULL,
  `E3` tinyint(4) NOT NULL,
  `E4` tinyint(4) NOT NULL,
  `E5` tinyint(4) NOT NULL,
  `E6` tinyint(4) NOT NULL,
  `E7` tinyint(4) NOT NULL,
  `E8` tinyint(4) NOT NULL,
  `E9` tinyint(4) NOT NULL,
  `E10` tinyint(4) NOT NULL,
  `ETotal` int(11) NOT NULL,
  `EC` varchar(160) COLLATE latin1_general_ci NOT NULL,
  `cadangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`KHSID`),
  KEY `TahunID` (`TahunID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `MhswID` (`MhswID`),
  KEY `StatusMhswID` (`StatusMhswID`),
  KEY `Sesi` (`Sesi`)
) ENGINE=MyISAM AUTO_INCREMENT=23093 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `khs_cad` */

DROP TABLE IF EXISTS `khs_cad`;

CREATE TABLE `khs_cad` (
  `khsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tahunid` varchar(20) DEFAULT NULL,
  `kodeid` varchar(20) DEFAULT NULL,
  `mhswid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`khsid`)
) ENGINE=MyISAM AUTO_INCREMENT=486 DEFAULT CHARSET=latin1;

/*Table structure for table `klinik` */

DROP TABLE IF EXISTS `klinik`;

CREATE TABLE `klinik` (
  `MhswID` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KlinikID` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `konsentrasi` */

DROP TABLE IF EXISTS `konsentrasi`;

CREATE TABLE `konsentrasi` (
  `KonsentrasiID` int(11) NOT NULL AUTO_INCREMENT,
  `KonsentrasiKode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KonsentrasiID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `koreksinilai` */

DROP TABLE IF EXISTS `koreksinilai`;

CREATE TABLE `koreksinilai` (
  `KoreksiNilaiID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `TahunID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SK` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Perihal` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KRSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `GradeLama` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Pejabat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jabatan` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Lampiran` text COLLATE latin1_general_ci,
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KoreksiNilaiID`),
  KEY `KRSID` (`KRSID`),
  KEY `TahunID` (`TahunID`),
  KEY `MhswID` (`MhswID`),
  KEY `MKID` (`MKID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `krs` */

DROP TABLE IF EXISTS `krs`;

CREATE TABLE `krs` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `KHSID` int(11) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` int(11) NOT NULL DEFAULT '0',
  `MKID` smallint(5) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `SKS` tinyint(2) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` int(11) NOT NULL DEFAULT '0',
  `Bayar` int(11) NOT NULL DEFAULT '0',
  `Tugas1` decimal(5,2) DEFAULT NULL,
  `Tugas2` decimal(5,2) DEFAULT NULL,
  `Tugas3` decimal(5,2) DEFAULT NULL,
  `Tugas4` decimal(5,2) DEFAULT NULL,
  `Tugas5` decimal(5,2) DEFAULT NULL,
  `Presensi` smallint(11) NOT NULL DEFAULT '0',
  `_Presensi` smallint(11) NOT NULL DEFAULT '0',
  `UTS` decimal(5,2) DEFAULT NULL,
  `UAS` decimal(5,2) DEFAULT NULL,
  `Responsi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `NilaiAkhir` decimal(5,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `RuangID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeNilai` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Sah` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `p1` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p2` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p3` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `E1` tinyint(4) NOT NULL,
  `E2` tinyint(4) NOT NULL,
  `E3` tinyint(4) NOT NULL,
  `E4` tinyint(4) NOT NULL,
  `E5` tinyint(4) NOT NULL,
  `E6` tinyint(4) NOT NULL,
  `E7` tinyint(4) NOT NULL,
  `E8` tinyint(4) NOT NULL,
  `E9` tinyint(4) NOT NULL,
  `E10` tinyint(4) NOT NULL,
  `E11` tinyint(4) NOT NULL,
  `E12` tinyint(4) NOT NULL,
  `E13` tinyint(4) NOT NULL,
  `E14` tinyint(4) NOT NULL,
  `E15` tinyint(4) NOT NULL,
  `E16` tinyint(4) NOT NULL,
  `E17` tinyint(4) NOT NULL,
  `E18` tinyint(4) NOT NULL,
  `E19` tinyint(4) NOT NULL,
  `E20` tinyint(4) NOT NULL,
  `E21` tinyint(4) NOT NULL,
  `E22` tinyint(4) NOT NULL,
  `E23` tinyint(4) NOT NULL,
  `E24` tinyint(4) NOT NULL,
  `E25` tinyint(4) NOT NULL,
  `E26` tinyint(4) NOT NULL,
  `E27` tinyint(4) NOT NULL,
  `E28` tinyint(4) NOT NULL,
  `ETotal` int(11) NOT NULL,
  `EC` varchar(160) COLLATE latin1_general_ci NOT NULL,
  `Setuju` date NOT NULL,
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`),
  KEY `NA` (`NA`),
  KEY `Final` (`Final`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=174215 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='KRS Mhsw';

/*Table structure for table `krsbelum` */

DROP TABLE IF EXISTS `krsbelum`;

CREATE TABLE `krsbelum` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `KHSID` int(11) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` int(11) NOT NULL DEFAULT '0',
  `MKID` smallint(5) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` tinyint(2) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` int(11) NOT NULL DEFAULT '0',
  `Bayar` int(11) NOT NULL DEFAULT '0',
  `Tugas1` decimal(5,2) DEFAULT NULL,
  `Tugas2` decimal(5,2) DEFAULT NULL,
  `Tugas3` decimal(5,2) DEFAULT NULL,
  `Tugas4` decimal(5,2) DEFAULT NULL,
  `Tugas5` decimal(5,2) DEFAULT NULL,
  `Presensi` smallint(11) NOT NULL DEFAULT '0',
  `_Presensi` smallint(11) NOT NULL DEFAULT '0',
  `UTS` decimal(5,2) DEFAULT NULL,
  `UAS` decimal(5,2) DEFAULT NULL,
  `Responsi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `NilaiAkhir` decimal(5,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `RuangID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeNilai` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Sah` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `p1` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p2` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p3` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `E1` tinyint(4) NOT NULL,
  `E2` tinyint(4) NOT NULL,
  `E3` tinyint(4) NOT NULL,
  `E4` tinyint(4) NOT NULL,
  `E5` tinyint(4) NOT NULL,
  `E6` tinyint(4) NOT NULL,
  `E7` tinyint(4) NOT NULL,
  `E8` tinyint(4) NOT NULL,
  `E9` tinyint(4) NOT NULL,
  `E10` tinyint(4) NOT NULL,
  `E11` tinyint(4) NOT NULL,
  `E12` tinyint(4) NOT NULL,
  `E13` tinyint(4) NOT NULL,
  `E14` tinyint(4) NOT NULL,
  `E15` tinyint(4) NOT NULL,
  `E16` tinyint(4) NOT NULL,
  `E17` tinyint(4) NOT NULL,
  `E18` tinyint(4) NOT NULL,
  `E19` tinyint(4) NOT NULL,
  `E20` tinyint(4) NOT NULL,
  `E21` tinyint(4) NOT NULL,
  `E22` tinyint(4) NOT NULL,
  `E23` tinyint(4) NOT NULL,
  `E24` tinyint(4) NOT NULL,
  `E25` tinyint(4) NOT NULL,
  `E26` tinyint(4) NOT NULL,
  `E27` tinyint(4) NOT NULL,
  `E28` tinyint(4) NOT NULL,
  `ETotal` int(11) NOT NULL,
  `EC` varchar(160) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`),
  KEY `NA` (`NA`),
  KEY `Final` (`Final`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='KRS Mhsw';

/*Table structure for table `krsgagal` */

DROP TABLE IF EXISTS `krsgagal`;

CREATE TABLE `krsgagal` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `Bayar` bigint(20) NOT NULL DEFAULT '0',
  `Tugas1` decimal(5,2) DEFAULT NULL,
  `Tugas2` decimal(5,2) DEFAULT NULL,
  `Tugas3` decimal(5,2) DEFAULT NULL,
  `Tugas4` decimal(5,2) DEFAULT NULL,
  `Tugas5` decimal(5,2) DEFAULT NULL,
  `Presensi` int(11) NOT NULL DEFAULT '0',
  `_Presensi` int(11) NOT NULL DEFAULT '0',
  `UTS` decimal(5,2) DEFAULT NULL,
  `UAS` decimal(5,2) DEFAULT NULL,
  `Responsi` decimal(5,2) NOT NULL DEFAULT '0.00',
  `NilaiAkhir` decimal(5,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `RuangID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeNilai` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Sah` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `p1` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p2` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p3` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`),
  KEY `NA` (`NA`),
  KEY `Final` (`Final`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='KRS Mhsw';

/*Table structure for table `krspra` */

DROP TABLE IF EXISTS `krspra`;

CREATE TABLE `krspra` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `Responsi` int(11) NOT NULL DEFAULT '0',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Oke` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `StatusKRSID` (`StatusKRSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `krsprc` */

DROP TABLE IF EXISTS `krsprc`;

CREATE TABLE `krsprc` (
  `KRSPRCID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KRSID` bigint(20) NOT NULL DEFAULT '0',
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `MKSetara` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KRSPRCID`),
  KEY `KRSID` (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `krstemp` */

DROP TABLE IF EXISTS `krstemp`;

CREATE TABLE `krstemp` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KHSID` bigint(20) NOT NULL DEFAULT '0',
  `MhswID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `Bayar` bigint(20) NOT NULL DEFAULT '0',
  `Tugas1` int(11) NOT NULL DEFAULT '0',
  `Tugas2` int(11) NOT NULL DEFAULT '0',
  `Tugas3` int(11) NOT NULL DEFAULT '0',
  `Tugas4` int(11) NOT NULL DEFAULT '0',
  `Tugas5` int(11) NOT NULL DEFAULT '0',
  `Presensi` int(11) NOT NULL DEFAULT '0',
  `_Presensi` int(11) NOT NULL DEFAULT '0',
  `UTS` int(11) NOT NULL DEFAULT '0',
  `UAS` int(11) NOT NULL DEFAULT '0',
  `Responsi` decimal(4,2) NOT NULL DEFAULT '0.00',
  `NilaiAkhir` decimal(4,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Final` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`),
  KEY `MKKode` (`MKKode`),
  KEY `NA` (`NA`),
  KEY `Final` (`Final`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `kunci` */

DROP TABLE IF EXISTS `kunci`;

CREATE TABLE `kunci` (
  `no_soal` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kunci_jawab` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`no_soal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `kurikulum` */

DROP TABLE IF EXISTS `kurikulum`;

CREATE TABLE `kurikulum` (
  `KurikulumID` int(11) NOT NULL AUTO_INCREMENT,
  `KurikulumKode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Sesi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JmlSesi` int(11) NOT NULL DEFAULT '2',
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KurikulumID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `level` */

DROP TABLE IF EXISTS `level`;

CREATE TABLE `level` (
  `LevelID` int(3) unsigned NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Superuser` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Tampak` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'Y',
  `TabelUser` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Accounting` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Simbol` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`LevelID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `lokasiasset` */

DROP TABLE IF EXISTS `lokasiasset`;

CREATE TABLE `lokasiasset` (
  `LokasiID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginAdd` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalAdd` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`LokasiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `magang` */

DROP TABLE IF EXISTS `magang`;

CREATE TABLE `magang` (
  `magangID` bigint(20) NOT NULL AUTO_INCREMENT,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `yg_dituju` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `lembaga` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `hp` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `kota` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `nomor` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`magangID`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `mastertable` */

DROP TABLE IF EXISTS `mastertable`;

CREATE TABLE `mastertable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaTable` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Urut` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kunci` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `maxsks` */

DROP TABLE IF EXISTS `maxsks`;

CREATE TABLE `maxsks` (
  `MaxSKSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `ProdiID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `DariIP` decimal(3,2) DEFAULT '0.00',
  `SampaiIP` decimal(3,2) DEFAULT '0.00',
  `SKS` int(10) unsigned DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`MaxSKSID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `maxsksbackup` */

DROP TABLE IF EXISTS `maxsksbackup`;

CREATE TABLE `maxsksbackup` (
  `MaxSKSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `ProdiID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `DariIP` decimal(3,2) DEFAULT '0.00',
  `SampaiIP` decimal(3,2) DEFAULT '0.00',
  `SKS` int(10) unsigned DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`MaxSKSID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `mdl` */

DROP TABLE IF EXISTS `mdl`;

CREATE TABLE `mdl` (
  `MdlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MdlGrpID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Script` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Accounting` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `LevelID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Web` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `CS` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Author` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailAuthor` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Simbol` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Help` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Keterangan` text COLLATE latin1_general_ci,
  PRIMARY KEY (`MdlID`),
  KEY `MdlGrpID` (`MdlGrpID`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Modul';

/*Table structure for table `mdlgrp` */

DROP TABLE IF EXISTS `mdlgrp`;

CREATE TABLE `mdlgrp` (
  `MdlGrpID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Accounting` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Urutan` int(10) unsigned DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`MdlGrpID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Modul Group';

/*Table structure for table `mentoring` */

DROP TABLE IF EXISTS `mentoring`;

CREATE TABLE `mentoring` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `tahun` varchar(5) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `mhsw` */

DROP TABLE IF EXISTS `mhsw`;

CREATE TABLE `mhsw` (
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Login` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LevelID` int(11) NOT NULL DEFAULT '120',
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KDPIN` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBFormJualID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PSSBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIRM` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIMAN` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `BIPOTID` int(11) NOT NULL DEFAULT '0',
  `Autodebet` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Foto` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusAwalID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PenasehatAkademik` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `KelasID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kelamin` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `WargaNegara` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `Kebangsaan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Agama` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusSipil` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `TinggiBadan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `BeratBadan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text COLLATE latin1_general_ci,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RW` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatAsal` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RTAsal` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RWAsal` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AnakKe` int(11) NOT NULL DEFAULT '1',
  `JumlahSaudara` int(11) NOT NULL DEFAULT '1',
  `NamaAyah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaAyah` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `HidupAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaIbu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaIbu` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `HidupIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PenghasilanOrtu` char(2) COLLATE latin1_general_ci NOT NULL,
  `AlamatOrtu` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RTOrtu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RWOrtu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailOrtu` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanTerakhir` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah1` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JenisSekolahID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatSekolah` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JurusanSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NilaiSekolah` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunLulus` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `IjazahSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalPT` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswIDAsalPT` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiAsalPT` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LulusAsalPT` enum('Y','N') COLLATE latin1_general_ci DEFAULT NULL,
  `TglLulusAsalPT` date DEFAULT NULL,
  `IPKAsalPT` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Pilihan1` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pilihan2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pilihan3` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `BatasStudi` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Harga` double NOT NULL DEFAULT '0',
  `SudahBayar` enum('Y','N','R') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `TanggalUjian` date DEFAULT NULL,
  `LulusUjian` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `RuangID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerUjian` int(11) DEFAULT NULL,
  `NilaiUjian` float unsigned NOT NULL DEFAULT '0',
  `GradeNilai` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLulus` date DEFAULT '0000-00-00' COMMENT 'Lulus dari perguruan tinggi',
  `Syarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SyaratLengkap` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `BuktiSetoranMhsw` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalSetoranMhsw` date DEFAULT NULL,
  `TotalBiaya` bigint(20) NOT NULL DEFAULT '0',
  `TotalBayar` bigint(20) NOT NULL DEFAULT '0',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JudulDispensasi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `CatatanDispensasi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaBank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerRekening` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `IPK` decimal(4,2) NOT NULL DEFAULT '0.00',
  `TotalSKS` int(11) NOT NULL DEFAULT '0',
  `TotalSKSPindah` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `WisudaID` bigint(20) NOT NULL DEFAULT '0',
  `TAID` bigint(20) NOT NULL DEFAULT '0',
  `Predikat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SKPenyetaraan` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSKPenyetaraan` datetime DEFAULT NULL,
  `SKMasuk` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKMasuk` date DEFAULT NULL,
  `Keluar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SKKeluar` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSKKeluar` date DEFAULT '0000-00-00',
  `TahunKeluar` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `CatatanKeluar` text COLLATE latin1_general_ci,
  `NoIdentitas` bigint(20) NOT NULL DEFAULT '0',
  `NoFakultas` bigint(20) NOT NULL DEFAULT '0',
  `NoProdi` bigint(20) NOT NULL DEFAULT '0',
  `NoIjazah` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglIjazah` date DEFAULT '0000-00-00',
  `TotalSKS_` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `kunjungan` int(5) NOT NULL,
  `kotabackup` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `PernahKuliah` char(2) COLLATE latin1_general_ci NOT NULL,
  `KerjaKuliah` char(1) COLLATE latin1_general_ci NOT NULL,
  `BiayaStudi` char(2) COLLATE latin1_general_ci NOT NULL,
  `Umptn` char(1) COLLATE latin1_general_ci NOT NULL,
  `InfoTazkia` char(3) COLLATE latin1_general_ci NOT NULL,
  `InfoText` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `TempatTinggal` char(1) COLLATE latin1_general_ci NOT NULL,
  `KonsentrasiID` int(11) NOT NULL DEFAULT '0',
  `No_kartu` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `foto2` blob,
  `nama_p` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `ID_ABSEN` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul_skripsi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `judul_skripsi_en` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NIMKO` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `fp1` binary(1) DEFAULT NULL,
  `fp2` binary(1) DEFAULT NULL,
  `fp3` binary(1) DEFAULT NULL,
  `passortu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `levelortu` int(11) DEFAULT NULL,
  `tgl_lulus` date DEFAULT NULL,
  `no_transkrip` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `nirl` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`MhswID`),
  UNIQUE KEY `ID_ABSEN` (`ID_ABSEN`),
  KEY `Login` (`Login`),
  KEY `NIRM` (`NIRM`),
  KEY `TahunID` (`TahunID`),
  KEY `KodeID` (`KodeID`),
  KEY `BIPOTID` (`BIPOTID`),
  KEY `StatusAwalID` (`StatusAwalID`),
  KEY `StatusMhswID` (`StatusMhswID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `PenasehatAkademik` (`PenasehatAkademik`),
  KEY `Kelamin` (`Kelamin`),
  KEY `Keluar` (`Keluar`),
  KEY `NIMAN` (`NIMAN`)
) ENGINE=MyISAM AUTO_INCREMENT=13663 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel Mhsw';

/*Table structure for table `mhswpindahan` */

DROP TABLE IF EXISTS `mhswpindahan`;

CREATE TABLE `mhswpindahan` (
  `MhswPindahanID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Login` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LevelID` int(11) NOT NULL DEFAULT '120',
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBFormJualID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PSSBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BatasStudi` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'UKRIDA',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusAwalID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kelamin` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RW` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalPT` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswIDAsalPT` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiAsalPT` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LulusAsalPT` enum('Y','N') COLLATE latin1_general_ci DEFAULT NULL,
  `TglLulusAsalPT` date DEFAULT NULL,
  `IPKAsalPT` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Harga` double NOT NULL DEFAULT '0',
  `SudahBayar` enum('Y','N','R') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `NomerUjian` int(11) DEFAULT NULL,
  `NilaiUjian` float unsigned NOT NULL DEFAULT '0',
  `GradeNilai` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLulus` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Lulus dari perguruan tinggi',
  `Syarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SyaratLengkap` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `BuktiSetoranMhsw` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalSetoranMhsw` date DEFAULT NULL,
  `TotalBiayaMhsw` bigint(20) NOT NULL DEFAULT '0',
  `TotalSetoranMhsw` bigint(20) NOT NULL DEFAULT '0',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JudulDispensasi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `CatatanDispensasi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JumlahSetara` int(11) NOT NULL DEFAULT '0',
  `IPK` decimal(4,2) NOT NULL DEFAULT '0.00',
  `TotalSKS` int(11) NOT NULL DEFAULT '0',
  `SKMasuk` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKMasuk` date DEFAULT NULL,
  `Sudah` tinyint(4) NOT NULL DEFAULT '0',
  `SKPenyetaraan` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSKPenyetaraan` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`MhswPindahanID`),
  KEY `MhswID` (`MhswID`),
  KEY `TahunID` (`TahunID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel Mhsw Pindahan';

/*Table structure for table `mhswpindahansetara` */

DROP TABLE IF EXISTS `mhswpindahansetara`;

CREATE TABLE `mhswpindahansetara` (
  `KRSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KHSID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `MhswID` int(11) NOT NULL DEFAULT '0',
  `MhswPindahanID` bigint(20) NOT NULL DEFAULT '0',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JadwalID` bigint(20) NOT NULL DEFAULT '0',
  `MKID` bigint(20) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `SKS` int(11) NOT NULL DEFAULT '0',
  `HargaStandar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `Bayar` bigint(20) NOT NULL DEFAULT '0',
  `Tugas1` int(11) NOT NULL DEFAULT '0',
  `Tugas2` int(11) NOT NULL DEFAULT '0',
  `Tugas3` int(11) NOT NULL DEFAULT '0',
  `Tugas4` int(11) NOT NULL DEFAULT '0',
  `Tugas5` int(11) NOT NULL DEFAULT '0',
  `Presensi` int(11) NOT NULL DEFAULT '0',
  `UTS` int(11) NOT NULL DEFAULT '0',
  `UAS` int(11) NOT NULL DEFAULT '0',
  `Responsi` int(11) NOT NULL DEFAULT '0',
  `NilaiAkhir` decimal(4,2) NOT NULL DEFAULT '0.00',
  `GradeNilai` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '-',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `StatusKRSID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'A',
  `Tinggi` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Setara` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SetaraKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraGrade` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraNama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SetaraSKS` smallint(6) NOT NULL DEFAULT '0',
  `sudah` tinyint(4) NOT NULL DEFAULT '0',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiOleh` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalDispensasi` date NOT NULL DEFAULT '0000-00-00',
  `CatatanDispensasi` text COLLATE latin1_general_ci,
  `Catatan` text COLLATE latin1_general_ci,
  `CatatanError` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`KRSID`),
  KEY `KHSID` (`KHSID`),
  KEY `MhswID` (`MhswPindahanID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `MKID` (`MKID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Penyetaraan mhsw pindahan';

/*Table structure for table `minggu` */

DROP TABLE IF EXISTS `minggu`;

CREATE TABLE `minggu` (
  `MingguID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`MingguID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Table Minggu -> untuk honor dosen';

/*Table structure for table `mk` */

DROP TABLE IF EXISTS `mk`;

CREATE TABLE `mk` (
  `MKID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KurikulumID` int(11) DEFAULT '0',
  `NoUrut` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KonsentrasiID` int(11) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '',
  `Nama_en` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Singkatan` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Wajib` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Responsi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `JenisMKID` int(11) NOT NULL DEFAULT '0',
  `JenisPilihanID` int(11) NOT NULL DEFAULT '0',
  `JenisKurikulumID` int(11) NOT NULL DEFAULT '0',
  `Sesi` int(11) NOT NULL DEFAULT '1',
  `Deskripsi` text COLLATE latin1_general_ci,
  `AdaResponsi` enum('Y','N','P','S') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `SKSTatapMuka` int(11) NOT NULL DEFAULT '0',
  `SKSPraktikum` int(11) NOT NULL DEFAULT '0',
  `SKSPraktekLap` int(11) NOT NULL DEFAULT '0',
  `SKSMin` int(11) NOT NULL DEFAULT '0',
  `IPKMin` double(4,2) NOT NULL DEFAULT '0.00',
  `Penanggungjawab` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Prasyarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `p1` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p2` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p3` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `TugasAkhir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MKSetara` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `file1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `file2` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`MKID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KonsentrasiID` (`KonsentrasiID`),
  KEY `MKKode` (`MKKode`),
  KEY `KurikulumID` (`KurikulumID`),
  KEY `Sesi` (`Sesi`)
) ENGINE=MyISAM AUTO_INCREMENT=677 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Mata kuliah';

/*Table structure for table `mk1` */

DROP TABLE IF EXISTS `mk1`;

CREATE TABLE `mk1` (
  `MKID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KurikulumID` int(11) DEFAULT '0',
  `NoUrut` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KonsentrasiID` int(11) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama_en` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Singkatan` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Wajib` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Responsi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `JenisMKID` int(11) NOT NULL DEFAULT '0',
  `JenisPilihanID` int(11) NOT NULL DEFAULT '0',
  `JenisKurikulumID` int(11) NOT NULL DEFAULT '0',
  `Sesi` int(11) NOT NULL DEFAULT '1',
  `Deskripsi` text COLLATE latin1_general_ci,
  `AdaResponsi` enum('Y','N','P','S') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `SKSTatapMuka` int(11) NOT NULL DEFAULT '0',
  `SKSPraktikum` int(11) NOT NULL DEFAULT '0',
  `SKSPraktekLap` int(11) NOT NULL DEFAULT '0',
  `SKSMin` int(11) NOT NULL DEFAULT '0',
  `IPKMin` double(4,2) NOT NULL DEFAULT '0.00',
  `Penanggungjawab` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Prasyarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `TugasAkhir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MKSetara` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `altid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MKID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KonsentrasiID` (`KonsentrasiID`),
  KEY `MKKode` (`MKKode`),
  KEY `KurikulumID` (`KurikulumID`),
  KEY `Sesi` (`Sesi`)
) ENGINE=MyISAM AUTO_INCREMENT=1033 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Mata kuliah';

/*Table structure for table `mk-1` */

DROP TABLE IF EXISTS `mk-1`;

CREATE TABLE `mk-1` (
  `A` int(3) DEFAULT NULL,
  `B` int(2) DEFAULT NULL,
  `C` int(1) DEFAULT NULL,
  `D` int(2) DEFAULT NULL,
  `E` varchar(6) DEFAULT NULL,
  `F` int(2) DEFAULT NULL,
  `G` int(1) DEFAULT NULL,
  `H` varchar(7) DEFAULT NULL,
  `I` varchar(33) DEFAULT NULL,
  `J` varchar(10) DEFAULT NULL,
  `K` varchar(10) DEFAULT NULL,
  `L` varchar(1) DEFAULT NULL,
  `M` varchar(1) DEFAULT NULL,
  `N` int(1) DEFAULT NULL,
  `O` int(1) DEFAULT NULL,
  `P` int(1) DEFAULT NULL,
  `Q` int(1) DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `S` varchar(1) DEFAULT NULL,
  `T` int(1) DEFAULT NULL,
  `U` int(1) DEFAULT NULL,
  `V` int(1) DEFAULT NULL,
  `W` int(1) DEFAULT NULL,
  `X` int(1) DEFAULT NULL,
  `Y` decimal(3,2) DEFAULT NULL,
  `Z` varchar(10) DEFAULT NULL,
  `AA` varchar(10) DEFAULT NULL,
  `AB` varchar(1) DEFAULT NULL,
  `AC` varchar(10) DEFAULT NULL,
  `AD` varchar(10) DEFAULT NULL,
  `AE` varchar(19) DEFAULT NULL,
  `AF` varchar(10) DEFAULT NULL,
  `AG` varchar(19) DEFAULT NULL,
  `AH` varchar(6) DEFAULT NULL,
  `AI` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `mkkode` */

DROP TABLE IF EXISTS `mkkode`;

CREATE TABLE `mkkode` (
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `mkkode` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `mkmap` */

DROP TABLE IF EXISTS `mkmap`;

CREATE TABLE `mkmap` (
  `MKID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KurikulumID` int(11) DEFAULT '0',
  `NoUrut` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA' COMMENT 'TAZKIA',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KonsentrasiID` int(11) NOT NULL DEFAULT '0',
  `MKKode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama_en` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Singkatan` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Wajib` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Responsi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `JenisMKID` int(11) NOT NULL DEFAULT '0',
  `JenisPilihanID` int(11) NOT NULL DEFAULT '0',
  `JenisKurikulumID` int(11) NOT NULL DEFAULT '0',
  `Sesi` int(11) NOT NULL DEFAULT '1',
  `Deskripsi` text COLLATE latin1_general_ci,
  `AdaResponsi` enum('Y','N','P','S') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `SKS` int(11) NOT NULL DEFAULT '0',
  `SKSTatapMuka` int(11) NOT NULL DEFAULT '0',
  `SKSPraktikum` int(11) NOT NULL DEFAULT '0',
  `SKSPraktekLap` int(11) NOT NULL DEFAULT '0',
  `SKSMin` int(11) NOT NULL DEFAULT '0',
  `IPKMin` double(4,2) NOT NULL DEFAULT '0.00',
  `Penanggungjawab` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Prasyarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `p1` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p2` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `p3` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `TugasAkhir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MKSetara` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `file1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `file2` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`MKID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KonsentrasiID` (`KonsentrasiID`),
  KEY `MKKode` (`MKKode`),
  KEY `KurikulumID` (`KurikulumID`),
  KEY `Sesi` (`Sesi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Mata kuliah';

/*Table structure for table `mkpaket` */

DROP TABLE IF EXISTS `mkpaket`;

CREATE TABLE `mkpaket` (
  `MKPaketID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KurikulumID` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`MKPaketID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KurikulumID` (`KurikulumID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Paket matakuliah';

/*Table structure for table `mkpaketisi` */

DROP TABLE IF EXISTS `mkpaketisi`;

CREATE TABLE `mkpaketisi` (
  `MKPaketIsiID` int(11) NOT NULL AUTO_INCREMENT,
  `MKPaketID` int(11) NOT NULL DEFAULT '0',
  `KurikulumID` int(11) NOT NULL DEFAULT '0',
  `MKID` int(11) NOT NULL DEFAULT '0',
  `TglTambah` datetime DEFAULT NULL,
  `LoginTambah` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`MKPaketIsiID`),
  KEY `MKPaketID` (`MKPaketID`),
  KEY `KurikulumID` (`KurikulumID`),
  KEY `MKID` (`MKID`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `mkpra` */

DROP TABLE IF EXISTS `mkpra`;

CREATE TABLE `mkpra` (
  `MKPraID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MKID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PraID` bigint(20) unsigned DEFAULT NULL,
  `NilaiID` int(10) unsigned DEFAULT NULL,
  `Bobot` double(5,2) DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MKKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MKPra` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MKAlternatif` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nilai` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT 'F',
  PRIMARY KEY (`MKPraID`),
  KEY `MKID` (`MKID`),
  KEY `PraID` (`PraID`)
) ENGINE=MyISAM AUTO_INCREMENT=451 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Prasyarat Matakuliah';

/*Table structure for table `negara` */

DROP TABLE IF EXISTS `negara`;

CREATE TABLE `negara` (
  `IDNegara` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KodeBenua` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaBenua` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeNegara` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaNegara` varchar(70) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`IDNegara`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `nilai` */

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `NilaiID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Bobot` double(4,2) NOT NULL DEFAULT '0.00',
  `Lulus` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NilaiMin` double(4,2) NOT NULL DEFAULT '0.00',
  `NilaiMax` double(5,2) NOT NULL DEFAULT '0.00',
  `MaxSKS` int(11) NOT NULL DEFAULT '0',
  `HitungIPK` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `Deskripsi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`NilaiID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Master Nilai';

/*Table structure for table `nonsks` */

DROP TABLE IF EXISTS `nonsks`;

CREATE TABLE `nonsks` (
  `MhswID` varchar(10) NOT NULL,
  `TahunID` varchar(6) NOT NULL,
  `MkKode` varchar(8) NOT NULL,
  `Pelajaran` varchar(30) NOT NULL,
  `Hasil` varchar(30) NOT NULL,
  `NA` varchar(1) NOT NULL DEFAULT 'N',
  `UlangTgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `panduan` */

DROP TABLE IF EXISTS `panduan`;

CREATE TABLE `panduan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `PegawaiID` int(10) NOT NULL AUTO_INCREMENT,
  `Login` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIK` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TempatLahir` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalLahir` date DEFAULT '0000-00-00',
  `LevelID` int(10) unsigned NOT NULL DEFAULT '99',
  `KTP` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text COLLATE latin1_general_ci,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Gelar` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaID` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `KelaminID` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `GolonganDarah` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusPajak` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanTerakhir` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Lulusan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Jabatan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kondite` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pangkat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `UnitKerja` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBekerja` datetime DEFAULT NULL,
  `NamaBank` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaAkun` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerAkun` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `kunjungan` int(11) NOT NULL,
  PRIMARY KEY (`PegawaiID`),
  KEY `LevelID` (`LevelID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel Pegawai';

/*Table structure for table `pegawaipelatihan` */

DROP TABLE IF EXISTS `pegawaipelatihan`;

CREATE TABLE `pegawaipelatihan` (
  `PegawaiPelatihanID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PegawaiID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nomor` int(11) NOT NULL DEFAULT '0',
  `Topik` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Lembaga` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalPelaksanaan` date NOT NULL DEFAULT '0000-00-00',
  `Sertifikat` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PegawaiPelatihanID`),
  KEY `PegawaiID` (`PegawaiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `pejabat` */

DROP TABLE IF EXISTS `pejabat`;

CREATE TABLE `pejabat` (
  `PejabatID` int(11) NOT NULL AUTO_INCREMENT,
  `PeriodeJabatanID` int(11) DEFAULT NULL,
  `JenisJabatanID` int(11) DEFAULT NULL,
  `KodeID` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'SISFO',
  `Urutan` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeJabatan` varchar(50) NOT NULL DEFAULT '',
  `Jabatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NIP` varchar(50) DEFAULT NULL,
  `FakultasID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` date DEFAULT NULL,
  `LoginBuat` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  `LoginEdit` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PejabatID`),
  KEY `KodeID` (`KodeID`),
  KEY `FakultasID` (`FakultasID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `pekerjaanortu` */

DROP TABLE IF EXISTS `pekerjaanortu`;

CREATE TABLE `pekerjaanortu` (
  `Pekerjaan` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Pekerjaan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Jenis Pekejaan Orang Tua';

/*Table structure for table `pendidikanortu` */

DROP TABLE IF EXISTS `pendidikanortu`;

CREATE TABLE `pendidikanortu` (
  `Pendidikan` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Pendidikan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tingkat Pendidikan Orang Tua';

/*Table structure for table `pendidikanterakhir` */

DROP TABLE IF EXISTS `pendidikanterakhir`;

CREATE TABLE `pendidikanterakhir` (
  `PendidikanTerakhir` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Urutan` int(11) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PendidikanTerakhir`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `penelitian` */

DROP TABLE IF EXISTS `penelitian`;

CREATE TABLE `penelitian` (
  `penID` bigint(20) NOT NULL AUTO_INCREMENT,
  `mhswid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `yg_dituju` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `lembaga` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `judul` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `hp` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `kota` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `nomor` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`penID`),
  KEY `mhswid` (`mhswid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `pengaduan` */

DROP TABLE IF EXISTS `pengaduan`;

CREATE TABLE `pengaduan` (
  `PengaduanID` int(11) NOT NULL AUTO_INCREMENT,
  `BagianID` char(30) NOT NULL,
  `Masalah` text NOT NULL,
  `Perihal` varchar(20) NOT NULL,
  `tanggaladuan` date NOT NULL,
  `TindakLanjut` text NOT NULL,
  `Progress` decimal(5,0) NOT NULL,
  `Pengadu` varchar(30) NOT NULL,
  `Catatan` text NOT NULL,
  `tanggalclosed` date NOT NULL,
  `status` enum('Closed','Pending','Open') NOT NULL,
  PRIMARY KEY (`PengaduanID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `penghasilanortu` */

DROP TABLE IF EXISTS `penghasilanortu`;

CREATE TABLE `penghasilanortu` (
  `penghasilanortuID` int(11) NOT NULL,
  `Penghasilanortu` varchar(30) NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `perguruantinggi` */

DROP TABLE IF EXISTS `perguruantinggi`;

CREATE TABLE `perguruantinggi` (
  `PerguruanTinggiID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `SingkatanNama` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat1` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat2` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(20) COLLATE latin1_general_ci DEFAULT '0',
  `JenisPerguruanTinggiID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Grup` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Website` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JabatanKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`PerguruanTinggiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Asal perguruan tinggi mahasiswa';

/*Table structure for table `periodejabatan` */

DROP TABLE IF EXISTS `periodejabatan`;

CREATE TABLE `periodejabatan` (
  `PeriodeJabatanID` int(11) NOT NULL AUTO_INCREMENT,
  `TahunJabatan` varchar(5) NOT NULL DEFAULT '',
  `Nama` varchar(50) NOT NULL DEFAULT '',
  `KodeID` varchar(20) NOT NULL DEFAULT '',
  `TglAwalJabatan` date NOT NULL DEFAULT '0000-00-00',
  `TglAkhirJabatan` date NOT NULL DEFAULT '0000-00-00',
  `Catatan` text NOT NULL,
  `Def` enum('N','Y') NOT NULL DEFAULT 'N',
  `TglBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginBuat` varchar(50) NOT NULL DEFAULT '',
  `TglEdit` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) NOT NULL DEFAULT '',
  `NA` enum('N','Y') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PeriodeJabatanID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `pernahkuliah` */

DROP TABLE IF EXISTS `pernahkuliah`;

CREATE TABLE `pernahkuliah` (
  `PernahKuliahID` char(1) NOT NULL,
  `PernahKuliah` varchar(20) NOT NULL,
  `NA` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pmb` */

DROP TABLE IF EXISTS `pmb`;

CREATE TABLE `pmb` (
  `PMBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBRef` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBFormulirID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBPeriodID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBFormJualID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PSSBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MhswID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `BIPOTID` int(11) DEFAULT NULL,
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusAwalID` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusMundur` enum('N','Y') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `MhswPindahanID` bigint(20) NOT NULL DEFAULT '0',
  `ProgramID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kelamin` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `GolonganDarah` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `WargaNegara` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `Kebangsaan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Agama` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `StatusSipil` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `TinggiBadan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `BeratBadan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` text COLLATE latin1_general_ci,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RW` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatAsal` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RTAsal` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RWAsal` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponAsal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaAyah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaAyah` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanAyah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HidupAyah` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `NamaIbu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AgamaIbu` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `PekerjaanIbu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HidupIbu` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatOrtu` text COLLATE latin1_general_ci,
  `KotaOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RTOrtu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RWOrtu` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePosOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PropinsiOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NegaraOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TeleponOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneOrtu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailOrtu` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `PendidikanTerakhir` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JenisSekolahID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `AlamatSekolah` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `KotaSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JurusanSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NilaiSekolah` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TahunLulus` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalPT` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiAsalPT` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LulusAsalPT` enum('Y','N') COLLATE latin1_general_ci DEFAULT NULL,
  `TglLulusAsalPT` date DEFAULT NULL,
  `Pilihan1` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pilihan2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Pilihan3` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Harga` double NOT NULL DEFAULT '0',
  `SudahBayar` enum('Y','N','R') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `TanggalUjian` date DEFAULT NULL,
  `LulusUjian` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `RuangID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerUjian` int(11) DEFAULT NULL,
  `NilaiUjian` float unsigned NOT NULL DEFAULT '0',
  `DetailNilai` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `GradeNilai` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Catatan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NomerSurat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Syarat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SyaratLengkap` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `BuktiSetoranMhsw` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalSetoranMhsw` date DEFAULT NULL,
  `TotalBiaya` bigint(20) NOT NULL DEFAULT '0',
  `TotalBayar` bigint(20) NOT NULL DEFAULT '0',
  `CetakKartu` smallint(6) NOT NULL DEFAULT '0',
  `Dispensasi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `DispensasiID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JudulDispensasi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `CatatanDispensasi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`PMBID`),
  KEY `PMBFormulirID` (`PMBFormulirID`),
  KEY `PMBPeriodID` (`PMBPeriodID`),
  KEY `PMBFormJualID` (`PMBFormJualID`),
  KEY `PSSBID` (`PSSBID`),
  KEY `KodeID` (`KodeID`),
  KEY `BIPOTID` (`BIPOTID`),
  KEY `StatusAwalID` (`StatusAwalID`),
  KEY `StatusMundur` (`StatusMundur`),
  KEY `ProgramID` (`ProgramID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `Kelamin` (`Kelamin`),
  KEY `GolonganDarah` (`GolonganDarah`),
  KEY `Agama` (`Agama`),
  KEY `StatusSipil` (`StatusSipil`),
  KEY `PendidikanTerakhir` (`PendidikanTerakhir`),
  KEY `Pilihan1` (`Pilihan1`),
  KEY `Pilihan2` (`Pilihan2`),
  KEY `Pilihan3` (`Pilihan3`),
  KEY `MhswID` (`MhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel PMB';

/*Table structure for table `pmbformjual` */

DROP TABLE IF EXISTS `pmbformjual`;

CREATE TABLE `pmbformjual` (
  `PMBFormJualID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBFormulirID` int(10) unsigned DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `Tanggal` date DEFAULT NULL,
  `PMBPeriodID` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BuktiSetoran` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `Jumlah` bigint(20) unsigned NOT NULL DEFAULT '0',
  `CetakanKe` int(10) unsigned NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Batal` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `OK` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PMBFormJualID`),
  KEY `PMBFormulirID` (`PMBFormulirID`),
  KEY `KodeID` (`KodeID`),
  KEY `PMBPeriodID` (`PMBPeriodID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Penjualan formulir PMB';

/*Table structure for table `pmbformulir` */

DROP TABLE IF EXISTS `pmbformulir`;

CREATE TABLE `pmbformulir` (
  `PMBFormulirID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'UKRIDA',
  `JumlahPilihan` int(10) unsigned NOT NULL DEFAULT '1',
  `Harga` bigint(20) NOT NULL DEFAULT '0',
  `HanyaProdi1` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `KecualiProdi1` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `HanyaProdi2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `KecualiProdi2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `HanyaProdi3` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `KecualiProdi3` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `USM` text COLLATE latin1_general_ci,
  `Keterangan` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`PMBFormulirID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Formulir PMB';

/*Table structure for table `pmbgrade` */

DROP TABLE IF EXISTS `pmbgrade`;

CREATE TABLE `pmbgrade` (
  `GradeNilai` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`GradeNilai`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Grade Nilai PMB';

/*Table structure for table `pmbmhsw` */

DROP TABLE IF EXISTS `pmbmhsw`;

CREATE TABLE `pmbmhsw` (
  `PMBMhswID` smallint(6) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PMBMhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Penentuan tabel: PMB atau Mhsw?';

/*Table structure for table `pmbmundur` */

DROP TABLE IF EXISTS `pmbmundur`;

CREATE TABLE `pmbmundur` (
  `PMBMundurID` int(11) NOT NULL AUTO_INCREMENT,
  `PMBID` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBPeriodID` varchar(6) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglProses` date NOT NULL DEFAULT '0000-00-00',
  `NoSurat` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSurat` date NOT NULL DEFAULT '0000-00-00',
  `Alasan` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BiayaAdministrasi` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Proses` int(1) NOT NULL DEFAULT '1',
  `LoginBuat` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBuat` date NOT NULL DEFAULT '0000-00-00',
  `NA` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`PMBMundurID`),
  KEY `PMBID` (`PMBID`),
  KEY `PMBPeriodID` (`PMBPeriodID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `pmbperiod` */

DROP TABLE IF EXISTS `pmbperiod`;

CREATE TABLE `pmbperiod` (
  `PMBPeriodID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'UKRIDA',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglMulai` date DEFAULT NULL,
  `TglSelesai` date DEFAULT NULL,
  `UjianMulai` date DEFAULT NULL,
  `UjianSelesai` date DEFAULT NULL,
  `BayarMulai` date DEFAULT NULL,
  `BayarSelesai` date DEFAULT NULL,
  `TelitiBayarProdi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`PMBPeriodID`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Periode PMB';

/*Table structure for table `pmbsyarat` */

DROP TABLE IF EXISTS `pmbsyarat`;

CREATE TABLE `pmbsyarat` (
  `PMBSyaratID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StatusAwalID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ProdiID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  PRIMARY KEY (`PMBSyaratID`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `pmbusm` */

DROP TABLE IF EXISTS `pmbusm`;

CREATE TABLE `pmbusm` (
  `PMBUSMID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`PMBUSMID`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Ujian Saringan Masuk';

/*Table structure for table `pmbusmfile` */

DROP TABLE IF EXISTS `pmbusmfile`;

CREATE TABLE `pmbusmfile` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PMBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBPeriodID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglLahir` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeTest` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglUjian` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Jawaban` text COLLATE latin1_general_ci,
  `Lain` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Benar` int(11) NOT NULL DEFAULT '0',
  `Nilai` float NOT NULL DEFAULT '0',
  `DetailNilai` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SPC` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `PMBID` (`PMBID`),
  KEY `PMBPeriodID` (`PMBPeriodID`),
  KEY `KodeTest` (`KodeTest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Penampung sementara file ujian';

/*Table structure for table `pmbusmkey` */

DROP TABLE IF EXISTS `pmbusmkey`;

CREATE TABLE `pmbusmkey` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PMBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBPeriodID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglLahir` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeTest` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglUjian` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Jawaban` text COLLATE latin1_general_ci,
  `Lain` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Benar` int(11) NOT NULL DEFAULT '0',
  `Nilai` float NOT NULL DEFAULT '0',
  `DetailNilai` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `SPC` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `KodeTest` (`KodeTest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `predikat` */

DROP TABLE IF EXISTS `predikat`;

CREATE TABLE `predikat` (
  `PredikatID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `IPKMin` double(4,2) NOT NULL DEFAULT '0.00',
  `IPKMax` double(4,2) NOT NULL DEFAULT '0.00',
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('N','Y') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Script` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBuat` date DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`PredikatID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `presensi` */

DROP TABLE IF EXISTS `presensi`;

CREATE TABLE `presensi` (
  `PresensiID` bigint(11) NOT NULL AUTO_INCREMENT,
  `HonorDosenID` bigint(20) NOT NULL DEFAULT '0',
  `TahunID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `JadwalID` int(11) NOT NULL DEFAULT '0',
  `Pertemuan` int(11) NOT NULL DEFAULT '0',
  `DosenID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `JamMulai` time NOT NULL DEFAULT '00:00:00',
  `JamSelesai` time NOT NULL DEFAULT '00:00:00',
  `Hitung` enum('Y','N','D') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Catatan` text COLLATE latin1_general_ci,
  `SKSHonor` int(11) NOT NULL DEFAULT '0',
  `TunjanganSKS` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTransport` bigint(20) NOT NULL DEFAULT '0',
  `TunjanganTetap` bigint(20) NOT NULL DEFAULT '0',
  `NA` enum('Y','N','D') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tgl_absen` date DEFAULT NULL,
  `jam_absen` time DEFAULT NULL,
  PRIMARY KEY (`PresensiID`),
  KEY `HonorDosenID` (`HonorDosenID`),
  KEY `TahunID` (`TahunID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `DosenID` (`DosenID`)
) ENGINE=MyISAM AUTO_INCREMENT=137838 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Presensi Kuliah';

/*Table structure for table `presensimhsw` */

DROP TABLE IF EXISTS `presensimhsw`;

CREATE TABLE `presensimhsw` (
  `PresensiMhswID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JadwalID` int(11) NOT NULL DEFAULT '0',
  `KRSID` int(11) NOT NULL DEFAULT '0',
  `PresensiID` int(11) NOT NULL DEFAULT '0',
  `MhswID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JenisPresensiID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nilai` int(11) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `tap` datetime DEFAULT NULL,
  PRIMARY KEY (`PresensiMhswID`),
  KEY `JadwalID` (`JadwalID`),
  KEY `KRSID` (`KRSID`),
  KEY `PresensiID` (`PresensiID`),
  KEY `MhswID` (`MhswID`),
  KEY `JenisPresensiID` (`JenisPresensiID`)
) ENGINE=MyISAM AUTO_INCREMENT=1106906 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Presensi Mhsw';

/*Table structure for table `prestasi` */

DROP TABLE IF EXISTS `prestasi`;

CREATE TABLE `prestasi` (
  `PrestasiID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00',
  `JenisPrestasi` smallint(6) NOT NULL DEFAULT '0',
  `Judul` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PrestasiID`),
  KEY `MhswID` (`MhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Prestasi & Wanprestasi Mhsw';

/*Table structure for table `problem` */

DROP TABLE IF EXISTS `problem`;

CREATE TABLE `problem` (
  `ProblemID` int(5) NOT NULL,
  `Problem` varchar(30) NOT NULL,
  `Uraian` text NOT NULL,
  `oleh` varchar(20) NOT NULL,
  `progres` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `TanggalUpdate` date NOT NULL,
  `Status` varchar(6) NOT NULL,
  `Ulasan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `prodi` */

DROP TABLE IF EXISTS `prodi`;

CREATE TABLE `prodi` (
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'UKRIDA',
  `FakultasID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama_en` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JenjangID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Gelar` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiDiktiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaSesi` varchar(50) COLLATE latin1_general_ci DEFAULT 'Semester',
  `Akreditasi` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `NoSKDikti` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKDikti` date DEFAULT NULL,
  `NoSKBAN` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglSKBAN` date DEFAULT NULL,
  `PajakHonorDosen` int(11) NOT NULL DEFAULT '10',
  `Pejabat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Jabatan` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `FormatNIM` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `DapatPindahProdi` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DefSKS` int(11) NOT NULL DEFAULT '0',
  `TotalSKS` int(11) NOT NULL DEFAULT '0',
  `DefKehadiran` int(11) NOT NULL DEFAULT '16',
  `BatasStudi` int(11) NOT NULL DEFAULT '0',
  `JumlahSesi` int(11) NOT NULL DEFAULT '0',
  `CekPrasyarat` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `PersenPMB` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `StartNoProdi` bigint(20) NOT NULL DEFAULT '0',
  `NoProdi` bigint(20) NOT NULL DEFAULT '0',
  `Denda1` int(11) NOT NULL DEFAULT '0',
  `Denda2` int(11) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `inisial` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `jabatan_eng` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `NO_SKBAN` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `TGL_BAN` date DEFAULT NULL,
  `jenjang` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ProdiID`),
  KEY `KodeID` (`KodeID`),
  KEY `FakultasID` (`FakultasID`),
  KEY `JenjangID` (`JenjangID`),
  KEY `ProdiDiktiID` (`ProdiDiktiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Program Studi';

/*Table structure for table `prodidikti` */

DROP TABLE IF EXISTS `prodidikti`;

CREATE TABLE `prodidikti` (
  `ProdiDiktiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ProdiDiktiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `prodiusm` */

DROP TABLE IF EXISTS `prodiusm`;

CREATE TABLE `prodiusm` (
  `ProdiUSMID` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PMBUSMID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `PMBPeriodID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Urutan` tinyint(3) unsigned DEFAULT NULL,
  `TanggalUjian` datetime DEFAULT NULL,
  `RuangID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `JumlahSoal` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ProdiUSMID`),
  KEY `PMBUSMID` (`PMBUSMID`),
  KEY `PMBPeriodID` (`PMBPeriodID`),
  KEY `ProdiID` (`ProdiID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='USM utk tiap Prodi';

/*Table structure for table `program` */

DROP TABLE IF EXISTS `program`;

CREATE TABLE `program` (
  `ProgramID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeID` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` date DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`ProgramID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Program Pendidikan';

/*Table structure for table `propinsi` */

DROP TABLE IF EXISTS `propinsi`;

CREATE TABLE `propinsi` (
  `ProvID` tinyint(4) NOT NULL,
  `Provinsi` varchar(50) NOT NULL,
  `JumlahPenduduk` int(10) NOT NULL,
  `JumlahKursi` tinyint(3) NOT NULL,
  `a` int(11) NOT NULL,
  `Singkatan` varchar(12) NOT NULL,
  `NA` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ProvID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `propinsilama` */

DROP TABLE IF EXISTS `propinsilama`;

CREATE TABLE `propinsilama` (
  `PropinsiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaPropinsi` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DaerahID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NamaDaerah` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Luas` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JmlPenduduk` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `JMDPTTBPRO` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`PropinsiID`,`DaerahID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `prosesfiskal` */

DROP TABLE IF EXISTS `prosesfiskal`;

CREATE TABLE `prosesfiskal` (
  `AssetID` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `HargaBeli` bigint(20) NOT NULL DEFAULT '0',
  `LokasiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KelompokID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SusutSMKomersil` bigint(20) NOT NULL DEFAULT '0',
  `SusutSMFiskal` bigint(20) NOT NULL DEFAULT '0',
  `AkumulasiSMKomersil` bigint(20) NOT NULL DEFAULT '0',
  `AkumulasiSMFiskal` bigint(20) NOT NULL DEFAULT '0',
  `BukuSMKomersil` bigint(20) NOT NULL DEFAULT '0',
  `BukuSMFiskal` bigint(20) NOT NULL DEFAULT '0',
  `Bulan` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tahun` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginProses` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglProses` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `proseskomersil` */

DROP TABLE IF EXISTS `proseskomersil`;

CREATE TABLE `proseskomersil` (
  `AssetID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `HargaBeli` bigint(20) NOT NULL DEFAULT '0',
  `LokasiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KelompokID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `SusutGLKomersil` bigint(20) NOT NULL DEFAULT '0',
  `SusutGLFiskal` bigint(20) NOT NULL DEFAULT '0',
  `AkumulasiGLKomersil` bigint(20) NOT NULL DEFAULT '0',
  `AkumulasiGLFiskal` bigint(20) NOT NULL DEFAULT '0',
  `BukuGLKomersil` bigint(20) NOT NULL DEFAULT '0',
  `BukuGLFiskal` bigint(20) NOT NULL DEFAULT '0',
  `Bulan` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tahun` varchar(4) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Loginproses` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Tglproses` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `pssb` */

DROP TABLE IF EXISTS `pssb`;

CREATE TABLE `pssb` (
  `PSSBID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kelamin` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Agama` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `Alamat` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `RT` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `RW` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AsalSekolah` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Diskon` int(11) NOT NULL DEFAULT '0',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `LoginBuat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`PSSBID`),
  KEY `TahunID` (`TahunID`),
  KEY `KodeID` (`KodeID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `ProdiID` (`ProdiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Khusus PSSB (tampungan sementara)';

/*Table structure for table `rekening` */

DROP TABLE IF EXISTS `rekening`;

CREATE TABLE `rekening` (
  `RekeningID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `COAID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Bank` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`RekeningID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `ruang` */

DROP TABLE IF EXISTS `ruang`;

CREATE TABLE `ruang` (
  `RuangID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'TAZKIA',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KampusID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Lantai` smallint(5) unsigned DEFAULT '1',
  `ProdiID` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `RuangKuliah` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'Y',
  `Kapasitas` int(10) unsigned DEFAULT '0',
  `KapasitasUjian` int(10) unsigned DEFAULT '0',
  `KolomUjian` smallint(6) DEFAULT '1',
  `UntukUSM` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`RuangID`,`KodeID`),
  KEY `KampusID` (`KampusID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Ruangan';

/*Table structure for table `rumahsakit` */

DROP TABLE IF EXISTS `rumahsakit`;

CREATE TABLE `rumahsakit` (
  `RSID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `KodePos` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Propinsi` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Negara` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Telephone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Website` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `JabatanKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `HandphoneKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailKontak` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`RSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `rumahsakitdivisi` */

DROP TABLE IF EXISTS `rumahsakitdivisi`;

CREATE TABLE `rumahsakitdivisi` (
  `RSDID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RSID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MKKode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kapasitas` int(11) NOT NULL DEFAULT '0',
  `Durasi` int(11) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglBuat` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`RSDID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `saat` */

DROP TABLE IF EXISTS `saat`;

CREATE TABLE `saat` (
  `SaatID` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`SaatID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Saat penarikan biaya atau pemberian potongan';

/*Table structure for table `sasaranmutu` */

DROP TABLE IF EXISTS `sasaranmutu`;

CREATE TABLE `sasaranmutu` (
  `sarID` int(11) NOT NULL,
  `puket` tinyint(2) NOT NULL,
  `bagian` varchar(20) NOT NULL,
  `Uraian` text NOT NULL,
  `sasaran` varchar(20) NOT NULL,
  `persen` tinyint(4) NOT NULL,
  `b1` varchar(20) NOT NULL,
  `b2` varchar(20) NOT NULL,
  `b3` varchar(20) NOT NULL,
  `b4` varchar(20) NOT NULL,
  `b5` varchar(20) NOT NULL,
  `b6` varchar(20) NOT NULL,
  `b7` varchar(20) NOT NULL,
  `b8` varchar(20) NOT NULL,
  `b9` varchar(20) NOT NULL,
  `b10` varchar(20) NOT NULL,
  `b11` varchar(20) NOT NULL,
  `b12` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `semester` */

DROP TABLE IF EXISTS `semester`;

CREATE TABLE `semester` (
  `Semester` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Semester`),
  KEY `Nama` (`Nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `SettingID` varchar(10) NOT NULL,
  `TahunID` varchar(5) NOT NULL,
  `Pejabat` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Angkatan` varchar(4) NOT NULL,
  `Tanggal` date NOT NULL,
  `Text1` varchar(100) NOT NULL,
  `Text2` varchar(100) NOT NULL,
  `Text3` varchar(100) NOT NULL,
  `Int1` int(10) NOT NULL,
  `Group` varchar(10) NOT NULL,
  `Text4` varchar(100) NOT NULL,
  `Text5` varchar(100) NOT NULL,
  `Text6` varchar(100) NOT NULL,
  `NA` tinyint(1) NOT NULL,
  PRIMARY KEY (`SettingID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `statusawal` */

DROP TABLE IF EXISTS `statusawal`;

CREATE TABLE `statusawal` (
  `StatusAwalID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BeliFormulir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `JalurKhusus` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TanpaTest` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Catatan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusAwalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Status Awal Mahasiswa';

/*Table structure for table `statusdosen` */

DROP TABLE IF EXISTS `statusdosen`;

CREATE TABLE `statusdosen` (
  `StatusDosenID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `HonorMengajar` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusDosenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `statuskerja` */

DROP TABLE IF EXISTS `statuskerja`;

CREATE TABLE `statuskerja` (
  `StatusKerjaID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusKerjaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `statuskrs` */

DROP TABLE IF EXISTS `statuskrs`;

CREATE TABLE `statuskrs` (
  `StatusKRSID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Ikut` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Hitung` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusKRSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `statuslulus` */

DROP TABLE IF EXISTS `statuslulus`;

CREATE TABLE `statuslulus` (
  `StatusLulusID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Lulus` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusLulusID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `statusmhsw` */

DROP TABLE IF EXISTS `statusmhsw`;

CREATE TABLE `statusmhsw` (
  `StatusMhswID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nilai` smallint(6) NOT NULL DEFAULT '0',
  `Keluar` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Def` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Lulus` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusMhswID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `statussipil` */

DROP TABLE IF EXISTS `statussipil`;

CREATE TABLE `statussipil` (
  `StatusSipil` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`StatusSipil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Status Sipil (Perkawinan)';

/*Table structure for table `t_dosen_j` */

DROP TABLE IF EXISTS `t_dosen_j`;

CREATE TABLE `t_dosen_j` (
  `id_dosen_j` bigint(20) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(5) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_dosen_j`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `t_finger` */

DROP TABLE IF EXISTS `t_finger`;

CREATE TABLE `t_finger` (
  `id_finger` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `template` blob,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_finger`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `t_group1` */

DROP TABLE IF EXISTS `t_group1`;

CREATE TABLE `t_group1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_group` bigint(20) DEFAULT NULL,
  `nim` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_masgroup` */

DROP TABLE IF EXISTS `t_masgroup`;

CREATE TABLE `t_masgroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_mentor` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `nama_group` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_pegawai` */

DROP TABLE IF EXISTS `t_pegawai`;

CREATE TABLE `t_pegawai` (
  `id_pegawai` bigint(20) NOT NULL AUTO_INCREMENT,
  `NIK` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `cad` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `t_perangkat` */

DROP TABLE IF EXISTS `t_perangkat`;

CREATE TABLE `t_perangkat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(20) DEFAULT NULL,
  `nama_kelas` varchar(35) DEFAULT NULL,
  `ip_mesin` varchar(16) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `na` varchar(1) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Table structure for table `t_pes_dosen` */

DROP TABLE IF EXISTS `t_pes_dosen`;

CREATE TABLE `t_pes_dosen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dosenid` varchar(20) DEFAULT NULL,
  `jadwalID` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `t_pres_mhs` */

DROP TABLE IF EXISTS `t_pres_mhs`;

CREATE TABLE `t_pres_mhs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mhsid` varchar(20) DEFAULT NULL,
  `jadwalid` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `kelasid` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=latin1;

/*Table structure for table `t_skrip` */

DROP TABLE IF EXISTS `t_skrip`;

CREATE TABLE `t_skrip` (
  `id_skrip` bigint(20) NOT NULL AUTO_INCREMENT,
  `nim` varchar(15) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `pt` varchar(60) DEFAULT NULL,
  `p1` varchar(60) DEFAULT NULL,
  `p2` varchar(60) DEFAULT NULL,
  `uji1` varchar(60) DEFAULT NULL,
  `uji2` varchar(60) DEFAULT NULL,
  `uji3` varchar(60) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_skrip`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `user_name` varchar(14) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_defpassword` varchar(7) NOT NULL,
  `level_kd` int(2) NOT NULL,
  `kyw_nik` varchar(10) DEFAULT NULL,
  `cmb_kd` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`user_name`),
  KEY `FK_admin_1` (`kyw_nik`),
  KEY `FK_level_1` (`level_kd`),
  KEY `FK_cmhs_1` (`cmb_kd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ta` */

DROP TABLE IF EXISTS `ta`;

CREATE TABLE `ta` (
  `TAID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'SISFO',
  `TglDaftar` date NOT NULL DEFAULT '0000-00-00',
  `TglMulai` date NOT NULL DEFAULT '0000-00-00',
  `TglSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglUjian` date NOT NULL DEFAULT '0000-00-00',
  `Judul` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Deskripsi` text COLLATE latin1_general_ci,
  `Pembimbing` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Penguji` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  `StatusLulusID` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Lulus` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `GradeNilai` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BobotNilai` decimal(4,2) NOT NULL DEFAULT '0.00',
  `SKYudisium` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglSKYudisium` date NOT NULL DEFAULT '0000-00-00',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TanggalEdit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`TAID`),
  KEY `TahunID` (`TahunID`),
  KEY `MhswID` (`MhswID`),
  KEY `KodeID` (`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Manajemen Skripsi';

/*Table structure for table `tadosen` */

DROP TABLE IF EXISTS `tadosen`;

CREATE TABLE `tadosen` (
  `TADosenID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TAID` bigint(20) NOT NULL DEFAULT '0',
  `Tipe` smallint(6) NOT NULL DEFAULT '0',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosenID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`TADosenID`),
  KEY `TAID` (`TAID`),
  KEY `MhswID` (`MhswID`),
  KEY `DosenID` (`DosenID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel dosen pembimbing pendamping';

/*Table structure for table `tahun` */

DROP TABLE IF EXISTS `tahun`;

CREATE TABLE `tahun` (
  `TahunID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProdiID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ProgramID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglKRSMulai` date DEFAULT NULL,
  `TglKRSSelesai` date DEFAULT NULL,
  `TglKRSOnlineMulai` date NOT NULL DEFAULT '0000-00-00',
  `TglKRSOnlineSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglUbahKRSMulai` date NOT NULL DEFAULT '0000-00-00',
  `TglUbahKRSSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglCetakKSS1` date NOT NULL DEFAULT '0000-00-00',
  `TglCetakKSS2` date NOT NULL DEFAULT '0000-00-00',
  `TglCuti` date DEFAULT NULL,
  `TglMundur` date DEFAULT NULL,
  `TglBayarMulai` date NOT NULL DEFAULT '0000-00-00',
  `TglBayarSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglAutodebetSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglAutodebetSelesai2` date NOT NULL DEFAULT '0000-00-00',
  `TglKembaliUangKuliah` date DEFAULT NULL,
  `TglKuliahMulai` datetime DEFAULT NULL,
  `TglKuliahSelesai` datetime DEFAULT NULL,
  `TglUTSMulai` datetime DEFAULT NULL,
  `TglUTSSelesai` datetime DEFAULT NULL,
  `TglUASMulai` datetime DEFAULT NULL,
  `TglUASSelesai` datetime DEFAULT NULL,
  `TglNilai` datetime DEFAULT NULL,
  `TglAkhirKSS` datetime DEFAULT '0000-00-00 00:00:00',
  `HanyaAngkatan` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `ProsesBuka` int(11) NOT NULL DEFAULT '0',
  `ProsesIPK` int(11) NOT NULL DEFAULT '0',
  `ProsesTutup` int(11) NOT NULL DEFAULT '0',
  `SP` enum('N','Y') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `TglBuat` datetime DEFAULT NULL,
  `LoginBuat` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` datetime DEFAULT NULL,
  `LoginEdit` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Catatan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Status_penilaian` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`TahunID`,`KodeID`,`ProdiID`,`ProgramID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `tb_finger` */

DROP TABLE IF EXISTS `tb_finger`;

CREATE TABLE `tb_finger` (
  `id_fp` bigint(20) NOT NULL AUTO_INCREMENT,
  `mhswid` varchar(20) DEFAULT NULL,
  `f_number` bigint(20) DEFAULT NULL,
  `template` text,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_fp`)
) ENGINE=MyISAM AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_level` */

DROP TABLE IF EXISTS `tbl_level`;

CREATE TABLE `tbl_level` (
  `level_kd` int(2) NOT NULL AUTO_INCREMENT,
  `level_nama` varchar(20) NOT NULL,
  `mastertabel_nama` varchar(20) NOT NULL,
  `mastertabel_0` varchar(20) NOT NULL,
  `mastertabel_1` varchar(20) NOT NULL,
  `mastertabel_2` varchar(20) NOT NULL,
  PRIMARY KEY (`level_kd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `tblusr` */

DROP TABLE IF EXISTS `tblusr`;

CREATE TABLE `tblusr` (
  `TblUsr` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Keterangan` text COLLATE latin1_general_ci,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`TblUsr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Tabel User';

/*Table structure for table `tempattinggal` */

DROP TABLE IF EXISTS `tempattinggal`;

CREATE TABLE `tempattinggal` (
  `TempatTinggalID` char(3) NOT NULL,
  `TempatTinggal` varchar(30) NOT NULL,
  `NA` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `templet` */

DROP TABLE IF EXISTS `templet`;

CREATE TABLE `templet` (
  `TempletID` int(11) NOT NULL AUTO_INCREMENT,
  `ProdiID` varchar(10) NOT NULL,
  `KonsentrasiID` varchar(10) NOT NULL,
  `MKID` int(11) NOT NULL,
  `Angkatan` int(11) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `NA` enum('Y','N','','') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`TempletID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1 COMMENT='templet';

/*Table structure for table `trx` */

DROP TABLE IF EXISTS `trx`;

CREATE TABLE `trx` (
  `TrxID` int(11) NOT NULL DEFAULT '0',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`TrxID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `tsql` */

DROP TABLE IF EXISTS `tsql`;

CREATE TABLE `tsql` (
  `sqlID` int(10) NOT NULL AUTO_INCREMENT,
  `Fungsi` varchar(100) NOT NULL,
  `tsql` text NOT NULL,
  `prodi` varchar(2) NOT NULL,
  `ket` varchar(30) NOT NULL,
  `NA` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`sqlID`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;

/*Table structure for table `useriso` */

DROP TABLE IF EXISTS `useriso`;

CREATE TABLE `useriso` (
  `UserID` varchar(20) NOT NULL,
  `Jabatan` varchar(50) NOT NULL,
  `Level` varchar(5) NOT NULL,
  `password` varchar(10) NOT NULL,
  `Departemen` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `VendorID` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Alamat` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Telp` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `Fax` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `KodeId` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginAdd` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglAdd` date NOT NULL DEFAULT '0000-00-00',
  `LoginEdit` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglEdit` date NOT NULL DEFAULT '0000-00-00',
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`VendorID`),
  KEY `VendorID` (`VendorID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `waktu` */

DROP TABLE IF EXISTS `waktu`;

CREATE TABLE `waktu` (
  `WaktuID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Mulai` time NOT NULL DEFAULT '00:00:00',
  `Selesai` time NOT NULL DEFAULT '00:00:00',
  `Ket` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `NA` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`WaktuID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `warganegara` */

DROP TABLE IF EXISTS `warganegara`;

CREATE TABLE `warganegara` (
  `WargaNegara` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`WargaNegara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Kewarganegaraan';

/*Table structure for table `wisuda` */

DROP TABLE IF EXISTS `wisuda`;

CREATE TABLE `wisuda` (
  `WisudaID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KodeID` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TahunID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `TglMulai` date NOT NULL DEFAULT '0000-00-00',
  `TglSelesai` date NOT NULL DEFAULT '0000-00-00',
  `TglWisuda` date NOT NULL DEFAULT '0000-00-00',
  `Jumlah` int(11) NOT NULL DEFAULT '0',
  `NoUniversitas` bigint(20) NOT NULL DEFAULT '0',
  `NoFakultas` bigint(20) NOT NULL DEFAULT '0',
  `NoProdi` bigint(20) NOT NULL DEFAULT '0',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`WisudaID`),
  KEY `KodeID` (`KodeID`),
  KEY `TahunID` (`TahunID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Wisuda';

/*Table structure for table `wisudaprasyarat` */

DROP TABLE IF EXISTS `wisudaprasyarat`;

CREATE TABLE `wisudaprasyarat` (
  `PrasyaratID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Nama` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglBuat` date DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TglEdit` date DEFAULT NULL,
  `NA` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`PrasyaratID`,`KodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `wisudawan` */

DROP TABLE IF EXISTS `wisudawan`;

CREATE TABLE `wisudawan` (
  `WisudawanID` bigint(20) NOT NULL AUTO_INCREMENT,
  `WisudaID` bigint(20) NOT NULL DEFAULT '0',
  `KodeID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'SISFO',
  `TahunID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MhswID` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Judul` text COLLATE latin1_general_ci,
  `Predikat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Toga` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `UkuranToga` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Topi` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `UkuranTopi` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Ijazah` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `NomerIjazah` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Kalung` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Undangan` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Foto` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `PrasyaratLengkap` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `Prasyarat` text COLLATE latin1_general_ci,
  `LoginBuat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalBuat` datetime DEFAULT NULL,
  `LoginEdit` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`WisudawanID`),
  KEY `MhswID` (`MhswID`),
  KEY `KodeID` (`KodeID`),
  KEY `WisudaID` (`WisudaID`),
  KEY `TahunID` (`TahunID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `yatidak` */

DROP TABLE IF EXISTS `yatidak`;

CREATE TABLE `yatidak` (
  `YaTidakID` char(1) NOT NULL,
  `YaTidak` varchar(5) NOT NULL,
  `NA` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `view_jadwal` */

DROP TABLE IF EXISTS `view_jadwal`;

/*!50001 DROP VIEW IF EXISTS `view_jadwal` */;
/*!50001 DROP TABLE IF EXISTS `view_jadwal` */;

/*!50001 CREATE TABLE  `view_jadwal`(
 `JadwalID` bigint(20) NULL ,
 `JadwalPar` bigint(20) NULL ,
 `JadwalSer` bigint(20) NULL ,
 `KodeID` varchar(10) NULL ,
 `TahunID` varchar(10) NULL ,
 `ProdiID` varchar(255) NULL ,
 `ProgramID` varchar(255) NULL ,
 `NamaKelas` varchar(50) NULL ,
 `MKID` int(11) NULL ,
 `JenisJadwalID` varchar(10) NULL ,
 `AdaResponsi` varchar(1) NULL ,
 `MKKode` varchar(20) NULL ,
 `Nama` varchar(50) NULL ,
 `HariID` smallint(6) NULL ,
 `JamMulai` time NULL ,
 `JamSelesai` time NULL ,
 `TglMulai` date NULL ,
 `TglSelesai` date NULL ,
 `SKSAsli` int(11) NULL ,
 `SKS` int(11) NULL ,
 `SKSHonor` int(11) NULL ,
 `DosenID` varchar(20) NULL ,
 `RencanaKehadiran` int(11) NULL ,
 `Kehadiran` int(11) NULL ,
 `KehadiranMin` int(11) NULL ,
 `JumlahMhsw` int(11) NULL ,
 `JumlahMhswKRS` int(11) unsigned NULL ,
 `Kapasitas` int(11) NULL ,
 `RuangID` varchar(255) NULL ,
 `kodenilai` varchar(20) NULL ,
 `JumlahKelasSerial` int(11) NULL ,
 `JumlahPraKRS` int(11) NULL ,
 `TugasMandiri` decimal(5,2) NULL ,
 `Tugas1` decimal(5,2) NULL ,
 `Tugas2` decimal(5,2) NULL ,
 `Tugas3` decimal(5,2) NULL ,
 `Tugas4` decimal(5,2) NULL ,
 `Tugas5` decimal(5,2) NULL ,
 `Presensi` decimal(5,2) NULL ,
 `UTS` decimal(5,2) NULL ,
 `UAS` decimal(5,2) NULL ,
 `Final` varchar(1) NULL ,
 `Responsi` decimal(5,2) NULL ,
 `UTSTanggal` date NULL ,
 `UTSJamMulai` time NULL ,
 `UTSJamSelesai` time NULL ,
 `UTSRuangID` varchar(255) NULL ,
 `UASTanggal` date NULL ,
 `UASJamMulai` time NULL ,
 `UASJamSelesai` time NULL ,
 `UASRuangID` varchar(255) NULL ,
 `Penilaian` varchar(10) NULL ,
 `Gagal` varchar(1) NULL ,
 `CatatanGagal` text NULL ,
 `NilaiGagal` char(2) NULL ,
 `CatatanDPNA` text NULL ,
 `NoSurat` varchar(50) NULL ,
 `BiayaKhusus` varchar(1) NULL ,
 `Biaya` bigint(20) NULL ,
 `TglSurat` date NULL ,
 `TglBuat` datetime NULL ,
 `LoginBuat` varchar(20) NULL ,
 `TglEdit` datetime NULL ,
 `LoginEdit` varchar(20) NULL ,
 `NA` varchar(1) NULL ,
 `NilaiMasuk` tinyint(4) NULL ,
 `Catatan` text NULL ,
 `TglNilai` date NULL ,
 `TglNilaiUpdate` date NULL ,
 `excel` varchar(100) NULL ,
 `jadwaldosenid` varchar(20) NOT NULL  default '' 
)*/;

/*Table structure for table `view_jadwaldosen` */

DROP TABLE IF EXISTS `view_jadwaldosen`;

/*!50001 DROP VIEW IF EXISTS `view_jadwaldosen` */;
/*!50001 DROP TABLE IF EXISTS `view_jadwaldosen` */;

/*!50001 CREATE TABLE  `view_jadwaldosen`(
 `jadwalid` bigint(20) NULL  default '0' ,
 `jadwalpar` bigint(20) NULL  default '0' ,
 `jadwalser` bigint(20) NULL  default '0' ,
 `kodeid` varchar(10) NULL  default '' ,
 `tahunid` varchar(10) NULL  default '' ,
 `prodiid` varchar(255) NULL  default '' ,
 `programid` varchar(255) NULL  default '' ,
 `namakelas` varchar(50) NULL ,
 `mkid` int(11) NULL  default '0' ,
 `jenisjadwalid` varchar(10) NULL  default 'K' ,
 `adaresponsi` enum('Y','N') NULL  default 'N' ,
 `mkkode` varchar(20) NULL ,
 `nama` varchar(50) NULL ,
 `hariid` smallint(6) NULL  default '1' ,
 `jammulai` time NULL  default '08:00:00' ,
 `jamselesai` time NULL  default '09:59:00' ,
 `tglmulai` date NULL ,
 `tglselesai` date NULL ,
 `sksasli` int(11) NULL  default '0' ,
 `sks` int(11) NULL  default '0' ,
 `skshonor` int(11) NULL  default '0' ,
 `dosenid` varchar(20) NULL ,
 `rencanakehadiran` int(11) NULL  default '0' ,
 `kehadiran` int(11) NULL  default '0' ,
 `kehadiranmin` int(11) NULL  default '0' ,
 `jumlahmhsw` int(11) NULL  default '0' ,
 `jumlahmhswkrs` int(10) unsigned NULL  default '0' ,
 `kapasitas` int(11) NULL  default '0' ,
 `ruangid` varchar(255) NULL ,
 `kodenilai` varchar(20) NULL ,
 `jumlahkelasserial` int(11) NULL  default '0' ,
 `jumlahprakrs` int(11) NULL  default '0' ,
 `tugasmandiri` decimal(5,2) NULL  default '0.00' ,
 `tugas1` decimal(5,2) NULL  default '0.00' ,
 `tugas2` decimal(5,2) NULL  default '0.00' ,
 `tugas3` decimal(5,2) NULL  default '0.00' ,
 `tugas4` decimal(5,2) NULL  default '0.00' ,
 `tugas5` decimal(5,2) NULL  default '0.00' ,
 `presensi` decimal(5,2) NULL  default '0.00' ,
 `uts` decimal(5,2) NULL  default '0.00' ,
 `uas` decimal(5,2) NULL  default '0.00' ,
 `final` enum('Y','N') NULL  default 'N' ,
 `responsi` decimal(5,2) NULL  default '0.00' ,
 `utsTanggal` date NULL  default '0000-00-00' ,
 `UTSJamMulai` time NULL  default '00:00:00' ,
 `UTSJamSelesai` time NULL  default '00:00:00' ,
 `UTSRuangID` varchar(255) NULL  default '' ,
 `UASTanggal` date NULL  default '0000-00-00' ,
 `UASJammulai` time NULL  default '00:00:00' ,
 `uasjamselesai` time NULL  default '00:00:00' ,
 `UASRuangid` varchar(255) NULL  default '' ,
 `Penilaian` varchar(10) NULL  default 'web' ,
 `Gagal` enum('Y','N') NULL  default 'N' ,
 `Catatangagal` text NULL ,
 `NilaiGagal` char(2) NULL  default '' ,
 `CatatanDPNA` text NULL ,
 `Nosurat` varchar(50) NULL  default '' ,
 `BiayaKhusus` enum('Y','N') NULL  default 'N' ,
 `Biaya` bigint(20) NULL  default '0' ,
 `TglSurat` date NULL  default '0000-00-00' ,
 `TglBuat` datetime NULL ,
 `LoginBuat` varchar(20) NULL ,
 `TglEdit` datetime NULL ,
 `LoginEdit` varchar(20) NULL ,
 `NA` enum('Y','N') NULL  default 'N' ,
 `NilaiMasuk` tinyint(4) NULL ,
 `Catatan` text NULL ,
 `TglNilai` date NULL ,
 `TglNilaiUpdate` date NULL ,
 `excel` varchar(100) NULL ,
 `jadwaldosenid` bigint(20) NOT NULL  default '0' 
)*/;

/*View structure for view view_jadwal */

/*!50001 DROP TABLE IF EXISTS `view_jadwal` */;
/*!50001 DROP VIEW IF EXISTS `view_jadwal` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`untaz_tazkia01`@`119.18.159.166` SQL SECURITY DEFINER VIEW `view_jadwal` AS (select `jadwal`.`JadwalID` AS `JadwalID`,`jadwal`.`JadwalPar` AS `JadwalPar`,`jadwal`.`JadwalSer` AS `JadwalSer`,`jadwal`.`KodeID` AS `KodeID`,`jadwal`.`TahunID` AS `TahunID`,`jadwal`.`ProdiID` AS `ProdiID`,`jadwal`.`ProgramID` AS `ProgramID`,`jadwal`.`NamaKelas` AS `NamaKelas`,`jadwal`.`MKID` AS `MKID`,`jadwal`.`JenisJadwalID` AS `JenisJadwalID`,`jadwal`.`AdaResponsi` AS `AdaResponsi`,`jadwal`.`MKKode` AS `MKKode`,`jadwal`.`Nama` AS `Nama`,`jadwal`.`HariID` AS `HariID`,`jadwal`.`JamMulai` AS `JamMulai`,`jadwal`.`JamSelesai` AS `JamSelesai`,`jadwal`.`TglMulai` AS `TglMulai`,`jadwal`.`TglSelesai` AS `TglSelesai`,`jadwal`.`SKSAsli` AS `SKSAsli`,`jadwal`.`SKS` AS `SKS`,`jadwal`.`SKSHonor` AS `SKSHonor`,`jadwal`.`DosenID` AS `DosenID`,`jadwal`.`RencanaKehadiran` AS `RencanaKehadiran`,`jadwal`.`Kehadiran` AS `Kehadiran`,`jadwal`.`KehadiranMin` AS `KehadiranMin`,`jadwal`.`JumlahMhsw` AS `JumlahMhsw`,`jadwal`.`JumlahMhswKRS` AS `JumlahMhswKRS`,`jadwal`.`Kapasitas` AS `Kapasitas`,`jadwal`.`RuangID` AS `RuangID`,`jadwal`.`kodenilai` AS `kodenilai`,`jadwal`.`JumlahKelasSerial` AS `JumlahKelasSerial`,`jadwal`.`JumlahPraKRS` AS `JumlahPraKRS`,`jadwal`.`TugasMandiri` AS `TugasMandiri`,`jadwal`.`Tugas1` AS `Tugas1`,`jadwal`.`Tugas2` AS `Tugas2`,`jadwal`.`Tugas3` AS `Tugas3`,`jadwal`.`Tugas4` AS `Tugas4`,`jadwal`.`Tugas5` AS `Tugas5`,`jadwal`.`Presensi` AS `Presensi`,`jadwal`.`UTS` AS `UTS`,`jadwal`.`UAS` AS `UAS`,`jadwal`.`Final` AS `Final`,`jadwal`.`Responsi` AS `Responsi`,`jadwal`.`UTSTanggal` AS `UTSTanggal`,`jadwal`.`UTSJamMulai` AS `UTSJamMulai`,`jadwal`.`UTSJamSelesai` AS `UTSJamSelesai`,`jadwal`.`UTSRuangID` AS `UTSRuangID`,`jadwal`.`UASTanggal` AS `UASTanggal`,`jadwal`.`UASJamMulai` AS `UASJamMulai`,`jadwal`.`UASJamSelesai` AS `UASJamSelesai`,`jadwal`.`UASRuangID` AS `UASRuangID`,`jadwal`.`Penilaian` AS `Penilaian`,`jadwal`.`Gagal` AS `Gagal`,`jadwal`.`CatatanGagal` AS `CatatanGagal`,`jadwal`.`NilaiGagal` AS `NilaiGagal`,`jadwal`.`CatatanDPNA` AS `CatatanDPNA`,`jadwal`.`NoSurat` AS `NoSurat`,`jadwal`.`BiayaKhusus` AS `BiayaKhusus`,`jadwal`.`Biaya` AS `Biaya`,`jadwal`.`TglSurat` AS `TglSurat`,`jadwal`.`TglBuat` AS `TglBuat`,`jadwal`.`LoginBuat` AS `LoginBuat`,`jadwal`.`TglEdit` AS `TglEdit`,`jadwal`.`LoginEdit` AS `LoginEdit`,`jadwal`.`NA` AS `NA`,`jadwal`.`NilaiMasuk` AS `NilaiMasuk`,`jadwal`.`Catatan` AS `Catatan`,`jadwal`.`TglNilai` AS `TglNilai`,`jadwal`.`TglNilaiUpdate` AS `TglNilaiUpdate`,`jadwal`.`excel` AS `excel`,'' AS `jadwaldosenid` from `jadwal`) union (select `view_jadwaldosen`.`jadwalid` AS `JadwalID`,`view_jadwaldosen`.`jadwalpar` AS `JadwalPar`,`view_jadwaldosen`.`jadwalser` AS `JadwalSer`,`view_jadwaldosen`.`kodeid` AS `KodeID`,`view_jadwaldosen`.`tahunid` AS `TahunID`,`view_jadwaldosen`.`prodiid` AS `ProdiID`,`view_jadwaldosen`.`programid` AS `ProgramID`,`view_jadwaldosen`.`namakelas` AS `NamaKelas`,`view_jadwaldosen`.`mkid` AS `MKID`,`view_jadwaldosen`.`jenisjadwalid` AS `JenisJadwalID`,`view_jadwaldosen`.`adaresponsi` AS `AdaResponsi`,`view_jadwaldosen`.`mkkode` AS `MKKode`,`view_jadwaldosen`.`nama` AS `Nama`,`view_jadwaldosen`.`hariid` AS `HariID`,`view_jadwaldosen`.`jammulai` AS `JamMulai`,`view_jadwaldosen`.`jamselesai` AS `JamSelesai`,`view_jadwaldosen`.`tglmulai` AS `TglMulai`,`view_jadwaldosen`.`tglselesai` AS `TglSelesai`,`view_jadwaldosen`.`sksasli` AS `SKSAsli`,`view_jadwaldosen`.`sks` AS `SKS`,`view_jadwaldosen`.`skshonor` AS `SKSHonor`,`view_jadwaldosen`.`dosenid` AS `DosenID`,`view_jadwaldosen`.`rencanakehadiran` AS `RencanaKehadiran`,`view_jadwaldosen`.`kehadiran` AS `Kehadiran`,`view_jadwaldosen`.`kehadiranmin` AS `KehadiranMin`,`view_jadwaldosen`.`jumlahmhsw` AS `JumlahMhsw`,`view_jadwaldosen`.`jumlahmhswkrs` AS `JumlahMhswKRS`,`view_jadwaldosen`.`kapasitas` AS `Kapasitas`,`view_jadwaldosen`.`ruangid` AS `RuangID`,`view_jadwaldosen`.`kodenilai` AS `kodenilai`,`view_jadwaldosen`.`jumlahkelasserial` AS `JumlahKelasSerial`,`view_jadwaldosen`.`jumlahprakrs` AS `JumlahPraKRS`,`view_jadwaldosen`.`tugasmandiri` AS `TugasMandiri`,`view_jadwaldosen`.`tugas1` AS `Tugas1`,`view_jadwaldosen`.`tugas2` AS `Tugas2`,`view_jadwaldosen`.`tugas3` AS `Tugas3`,`view_jadwaldosen`.`tugas4` AS `Tugas4`,`view_jadwaldosen`.`tugas5` AS `Tugas5`,`view_jadwaldosen`.`presensi` AS `Presensi`,`view_jadwaldosen`.`uts` AS `UTS`,`view_jadwaldosen`.`uas` AS `UAS`,`view_jadwaldosen`.`final` AS `Final`,`view_jadwaldosen`.`responsi` AS `Responsi`,`view_jadwaldosen`.`utsTanggal` AS `UTSTanggal`,`view_jadwaldosen`.`UTSJamMulai` AS `UTSJamMulai`,`view_jadwaldosen`.`UTSJamSelesai` AS `UTSJamSelesai`,`view_jadwaldosen`.`UTSRuangID` AS `UTSRuangID`,`view_jadwaldosen`.`UASTanggal` AS `UASTanggal`,`view_jadwaldosen`.`UASJammulai` AS `UASJamMulai`,`view_jadwaldosen`.`uasjamselesai` AS `UASJamSelesai`,`view_jadwaldosen`.`UASRuangid` AS `UASRuangID`,`view_jadwaldosen`.`Penilaian` AS `Penilaian`,`view_jadwaldosen`.`Gagal` AS `Gagal`,`view_jadwaldosen`.`Catatangagal` AS `CatatanGagal`,`view_jadwaldosen`.`NilaiGagal` AS `NilaiGagal`,`view_jadwaldosen`.`CatatanDPNA` AS `CatatanDPNA`,`view_jadwaldosen`.`Nosurat` AS `NoSurat`,`view_jadwaldosen`.`BiayaKhusus` AS `BiayaKhusus`,`view_jadwaldosen`.`Biaya` AS `Biaya`,`view_jadwaldosen`.`TglSurat` AS `TglSurat`,`view_jadwaldosen`.`TglBuat` AS `TglBuat`,`view_jadwaldosen`.`LoginBuat` AS `LoginBuat`,`view_jadwaldosen`.`TglEdit` AS `TglEdit`,`view_jadwaldosen`.`LoginEdit` AS `LoginEdit`,`view_jadwaldosen`.`NA` AS `NA`,`view_jadwaldosen`.`NilaiMasuk` AS `NilaiMasuk`,`view_jadwaldosen`.`Catatan` AS `Catatan`,`view_jadwaldosen`.`TglNilai` AS `TglNilai`,`view_jadwaldosen`.`TglNilaiUpdate` AS `TglNilaiUpdate`,`view_jadwaldosen`.`excel` AS `excel`,`view_jadwaldosen`.`jadwaldosenid` AS `jadwaldosenid` from `view_jadwaldosen`) */;

/*View structure for view view_jadwaldosen */

/*!50001 DROP TABLE IF EXISTS `view_jadwaldosen` */;
/*!50001 DROP VIEW IF EXISTS `view_jadwaldosen` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`untaz_tazkia01`@`119.18.159.166` SQL SECURITY DEFINER VIEW `view_jadwaldosen` AS select `ja`.`JadwalID` AS `jadwalid`,`ja`.`JadwalPar` AS `jadwalpar`,`ja`.`JadwalSer` AS `jadwalser`,`ja`.`KodeID` AS `kodeid`,`ja`.`TahunID` AS `tahunid`,`ja`.`ProdiID` AS `prodiid`,`ja`.`ProgramID` AS `programid`,`ja`.`NamaKelas` AS `namakelas`,`ja`.`MKID` AS `mkid`,`ja`.`JenisJadwalID` AS `jenisjadwalid`,`ja`.`AdaResponsi` AS `adaresponsi`,`ja`.`MKKode` AS `mkkode`,`ja`.`Nama` AS `nama`,`ja`.`HariID` AS `hariid`,`ja`.`JamMulai` AS `jammulai`,`ja`.`JamSelesai` AS `jamselesai`,`ja`.`TglMulai` AS `tglmulai`,`ja`.`TglSelesai` AS `tglselesai`,`ja`.`SKSAsli` AS `sksasli`,`ja`.`SKS` AS `sks`,`ja`.`SKSHonor` AS `skshonor`,coalesce(`jb`.`DosenID`,`ja`.`DosenID`) AS `dosenid`,`ja`.`RencanaKehadiran` AS `rencanakehadiran`,`ja`.`Kehadiran` AS `kehadiran`,`ja`.`KehadiranMin` AS `kehadiranmin`,`ja`.`JumlahMhsw` AS `jumlahmhsw`,`ja`.`JumlahMhswKRS` AS `jumlahmhswkrs`,`ja`.`Kapasitas` AS `kapasitas`,`ja`.`RuangID` AS `ruangid`,`ja`.`kodenilai` AS `kodenilai`,`ja`.`JumlahKelasSerial` AS `jumlahkelasserial`,`ja`.`JumlahPraKRS` AS `jumlahprakrs`,`ja`.`TugasMandiri` AS `tugasmandiri`,`ja`.`Tugas1` AS `tugas1`,`ja`.`Tugas2` AS `tugas2`,`ja`.`Tugas3` AS `tugas3`,`ja`.`Tugas4` AS `tugas4`,`ja`.`Tugas5` AS `tugas5`,`ja`.`Presensi` AS `presensi`,`ja`.`UTS` AS `uts`,`ja`.`UAS` AS `uas`,`ja`.`Final` AS `final`,`ja`.`Responsi` AS `responsi`,`ja`.`UTSTanggal` AS `utsTanggal`,`ja`.`UTSJamMulai` AS `UTSJamMulai`,`ja`.`UTSJamSelesai` AS `UTSJamSelesai`,`ja`.`UTSRuangID` AS `UTSRuangID`,`ja`.`UASTanggal` AS `UASTanggal`,`ja`.`UASJamMulai` AS `UASJammulai`,`ja`.`UASJamSelesai` AS `uasjamselesai`,`ja`.`UASRuangID` AS `UASRuangid`,`ja`.`Penilaian` AS `Penilaian`,`ja`.`Gagal` AS `Gagal`,`ja`.`CatatanGagal` AS `Catatangagal`,`ja`.`NilaiGagal` AS `NilaiGagal`,`ja`.`CatatanDPNA` AS `CatatanDPNA`,`ja`.`NoSurat` AS `Nosurat`,`ja`.`BiayaKhusus` AS `BiayaKhusus`,`ja`.`Biaya` AS `Biaya`,`ja`.`TglSurat` AS `TglSurat`,`ja`.`TglBuat` AS `TglBuat`,`ja`.`LoginBuat` AS `LoginBuat`,`ja`.`TglEdit` AS `TglEdit`,`ja`.`LoginEdit` AS `LoginEdit`,`ja`.`NA` AS `NA`,`ja`.`NilaiMasuk` AS `NilaiMasuk`,`ja`.`Catatan` AS `Catatan`,`ja`.`TglNilai` AS `TglNilai`,`ja`.`TglNilaiUpdate` AS `TglNilaiUpdate`,`ja`.`excel` AS `excel`,`jb`.`JadwalDosenID` AS `jadwaldosenid` from (`jadwaldosen` `jb` left join `jadwal` `ja` on((`ja`.`JadwalID` = `jb`.`JadwalID`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
