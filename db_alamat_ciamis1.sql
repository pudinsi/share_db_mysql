--
-- Pudin S. I
-- https://t.me/pudin_ira
-- www.pdn.my.id
-- https://instagram.com/pudin.ira
--
--
-- ALAMAT (DATA SEKABUPATEN CIAMIS)
--
CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id_kabupaten` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kabupaten_nama` varchar(128) NOT NULL,
  `kabupaten_tgl_input` datetime NOT NULL,
  `kabupaten_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kabupaten`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE `kabupaten` ADD INDEX(`id_kabupaten`);
  
CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id_kecamatan` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kecamatan_idkabupaten` int(11) unsigned NOT NULL,
  `kecamatan_nama` varchar(128) NOT NULL,
  `kecamatan_tgl_input` datetime NOT NULL,
  `kecamatan_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kecamatan`),
  CONSTRAINT `fk_kecamatan1` FOREIGN KEY (`kecamatan_idkabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE RESTRICT ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE `kecamatan` ADD INDEX(`id_kecamatan`);
  
CREATE TABLE IF NOT EXISTS `desa` (
  `id_desa` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `desa_idkecamatan` int(11) unsigned NOT NULL,
  `desa_nama` varchar(128) NOT NULL,
  `desa_tgl_input` datetime NOT NULL,
  `desa_tgl_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_desa`),
  CONSTRAINT `fk_desa1` FOREIGN KEY (`desa_idkecamatan`) REFERENCES `kecamatan` (`id_kecamatan`) ON DELETE RESTRICT ON UPDATE CASCADE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE `desa` ADD INDEX(`id_desa`);
  

--
-- DATANYA
--
INSERT INTO `kabupaten` (`id_kabupaten`, `kabupaten_nama`, `kabupaten_tgl_input`, `kabupaten_tgl_edit`) VALUES
(1, 'Ciamis', '2023-04-30 09:52:01', current_timestamp());
(2, 'Majalengka', '2023-04-30 09:52:01', current_timestamp());

--
--
--

INSERT INTO `kecamatan` (`id_kecamatan`, `kecamatan_idkabupaten`, `kecamatan_nama`, `kecamatan_tgl_input`, `kecamatan_tgl_edit`) VALUES
('1', '1', 'Banjaranyar', '2023-04-30 09:53:25', current_timestamp()),
('2', '1', 'Banjarsari', '2023-04-30 09:53:25', current_timestamp()),
('3', '1', 'Baregbeg', '2023-04-30 09:53:25', current_timestamp()),
('4', '1', 'Ciamis', '2023-04-30 09:53:25', current_timestamp()),
('5', '1', 'Cidolog', '2023-04-30 09:53:25', current_timestamp()),
('6', '1', 'Cihaurbeuti', '2023-04-30 09:53:25', current_timestamp()),
('7', '1', 'Cijenjing', '2023-04-30 09:53:25', current_timestamp()),
('8', '1', 'Cikoneng', '2023-04-30 09:53:25', current_timestamp()),
('9', '1', 'Cimagaras', '2023-04-30 09:53:25', current_timestamp()),
('10', '1', 'Cipaku', '2023-04-30 09:53:25', current_timestamp()),
('11', '1', 'Cisaga', '2023-04-30 09:53:25', current_timestamp()),
('12', '1', 'Jatinagara', '2023-04-30 09:53:25', current_timestamp()),
('13', '1', 'Kawali', '2023-04-30 09:53:25', current_timestamp()),
('14', '1', 'Lakbok', '2023-04-30 09:53:25', current_timestamp()),
('15', '1', 'Lumbung', '2023-04-30 09:53:25', current_timestamp()),
('16', '1', 'Pamarican', '2023-04-30 09:53:25', current_timestamp()),
('17', '1', 'Panjalu', '2023-04-30 09:53:25', current_timestamp()),
('18', '1', 'Panawangan', '2023-04-30 09:53:25', current_timestamp()),
('19', '1', 'Panumbangan', '2023-04-30 09:53:25', current_timestamp()),
('20', '1', 'Purwadadi', '2023-04-30 09:53:25', current_timestamp()),
('21', '1', 'Rajadesa', '2023-04-30 09:53:25', current_timestamp()),
('22', '1', 'Rancah', '2023-04-30 09:53:25', current_timestamp()),
('23', '1', 'Sadananya', '2023-04-30 09:53:25', current_timestamp()),
('24', '1', 'Sindangkasih', '2023-04-30 09:53:25', current_timestamp()),
('25', '1', 'Sukadana', '2023-04-30 09:53:25', current_timestamp()),
('26', '1', 'Sukamantri', '2023-04-30 09:53:25', current_timestamp()),
('27', '1', 'Tambaksari', '2023-04-30 09:53:25', current_timestamp());

--
--
--
INSERT INTO `desa`(`desa_idkecamatan`, `desa_nama`, `desa_tgl_input`, `desa_tgl_edit`) VALUES
('1','Banjaranyar', '2023-04-30 09:53:25', current_timestamp()),
('1','Cigayam', '2023-04-30 09:53:25', current_timestamp()),
('1','Cikaso', '2023-04-30 09:53:25', current_timestamp()),
('1','Cikupa', '2023-04-30 09:53:25', current_timestamp()),
('1','Kalijaya', '2023-04-30 09:53:25', current_timestamp()),
('1','Karyamukti', '2023-04-30 09:53:25', current_timestamp()),
('1','Langkapsari', '2023-04-30 09:53:25', current_timestamp()),
('1','Pasawahan', '2023-04-30 09:53:25', current_timestamp()),
('1','Sindangrasa', '2023-04-30 09:53:25', current_timestamp()),
('1','Tanjungsari', '2023-04-30 09:53:25', current_timestamp()),

('2','Banjarsari', '2023-04-30 09:53:25', current_timestamp()),
('2','Cibadak', '2023-04-30 09:53:25', current_timestamp()),
('2','Cicapar', '2023-04-30 09:53:25', current_timestamp()),
('2','Ciherang', '2023-04-30 09:53:25', current_timestamp()),
('2','Ciulu', '2023-04-30 09:53:25', current_timestamp()),
('2','Kawasen', '2023-04-30 09:53:25', current_timestamp()),
('2','Purwasari', '2023-04-30 09:53:25', current_timestamp()),
('2','Ratawangi', '2023-04-30 09:53:25', current_timestamp()),
('2','Sindangasih', '2023-04-30 09:53:25', current_timestamp()),
('2','Sindanghayu', '2023-04-30 09:53:25', current_timestamp()),
('2','Sindangsari', '2023-04-30 09:53:25', current_timestamp()),
('2','Sukasari', '2023-04-30 09:53:25', current_timestamp()),

INSERT INTO `desa`(`desa_idkecamatan`, `desa_nama`, `desa_tgl_input`, `desa_tgl_edit`) VALUES
('3','Baregbeg', '2023-04-30 09:53:25', current_timestamp()),
('3','Jelat', '2023-04-30 09:53:25', current_timestamp()),
('3','Karang Ampel', '2023-04-30 09:53:25', current_timestamp()),
('3','Mekarjaya', '2023-04-30 09:53:25', current_timestamp()),
('3','Petir Hilir', '2023-04-30 09:53:25', current_timestamp()),
('3','Pusakanagara', '2023-04-30 09:53:25', current_timestamp()),
('3','Saguling', '2023-04-30 09:53:25', current_timestamp()),
('3','Sukamaju', '2023-04-30 09:53:25', current_timestamp()),
('3','Sukamulya', '2023-04-30 09:53:25', current_timestamp()),

('4','Cisadap', '2023-04-30 09:53:25', current_timestamp()),
('4','Imbanagara Raya', '2023-04-30 09:53:25', current_timestamp()),
('4','Imbanagara', '2023-04-30 09:53:25', current_timestamp()),
('4','Panyingkiran', '2023-04-30 09:53:25', current_timestamp()),
('4','Pawindan', '2023-04-30 09:53:25', current_timestamp()),
('4','Benteng', '2023-04-30 09:53:25', current_timestamp()),
('4','Ciamis', '2023-04-30 09:53:25', current_timestamp()),
('4','Cigembor', '2023-04-30 09:53:25', current_timestamp()),
('4','Kertasari', '2023-04-30 09:53:25', current_timestamp()),
('4','Linggasari', '2023-04-30 09:53:25', current_timestamp()),
('4','Maleber', '2023-04-30 09:53:25', current_timestamp()),
('4','Sindangrasa', '2023-04-30 09:53:25', current_timestamp()),

('5','Cidolog', '2023-04-30 09:53:25', current_timestamp()),
('5','Ciparay', '2023-04-30 09:53:25', current_timestamp()),
('5','Hegarmanah', '2023-04-30 09:53:25', current_timestamp()),
('5','Janggala', '2023-04-30 09:53:25', current_timestamp()),
('5','Jelegong', '2023-04-30 09:53:25', current_timestamp()),
('5','Sukasari', '2023-04-30 09:53:25', current_timestamp()),

('6','Cihaurbeuti', '2023-04-30 09:53:25', current_timestamp()),
('6','Cijulang', '2023-04-30 09:53:25', current_timestamp()),
('6','Padamulya', '2023-04-30 09:53:25', current_timestamp()),
('6','Pamokolan', '2023-04-30 09:53:25', current_timestamp()),
('6','Pasirtamiang', '2023-04-30 09:53:25', current_timestamp()),
('6','Sukahaji', '2023-04-30 09:53:25', current_timestamp()),
('6','Sukahurip', '2023-04-30 09:53:25', current_timestamp()),
('6','Sukamaju', '2023-04-30 09:53:25', current_timestamp()),
('6','Sukamulya', '2023-04-30 09:53:25', current_timestamp()),
('6','Sukasetia', '2023-04-30 09:53:25', current_timestamp()),
('6','Sumberjaya', '2023-04-30 09:53:25', current_timestamp()),

('7','Bojongmengger', '2023-04-30 09:53:25', current_timestamp()),
('7','Ciharalang', '2023-04-30 09:53:25', current_timestamp()),
('7','Cijeungjing', '2023-04-30 09:53:25', current_timestamp()),
('7','Dewasari', '2023-04-30 09:53:25', current_timestamp()),
('7','Handapherang', '2023-04-30 09:53:25', current_timestamp()),
('7','Karanganyar', '2023-04-30 09:53:25', current_timestamp()),
('7','Karangkamulyan', '2023-04-30 09:53:25', current_timestamp()),
('7','Kertabumi', '2023-04-30 09:53:25', current_timestamp()),
('7','Kertaharja', '2023-04-30 09:53:25', current_timestamp()),
('7','Pamalayan', '2023-04-30 09:53:25', current_timestamp()),
('7','Utama', '2023-04-30 09:53:25', current_timestamp()),

('8','Cikoneng', '2023-04-30 09:53:25', current_timestamp()),
('8','Cimari', '2023-04-30 09:53:25', current_timestamp()),
('8','Darmacaang', '2023-04-30 09:53:25', current_timestamp()),
('8','Gegempalan', '2023-04-30 09:53:25', current_timestamp()),
('8','Kujang', '2023-04-30 09:53:25', current_timestamp()),
('8','Margaluyu', '2023-04-30 09:53:25', current_timestamp()),
('8','Nasol', '2023-04-30 09:53:25', current_timestamp()),
('8','Panaragan', '2023-04-30 09:53:25', current_timestamp()),
('8','Sindangsari', '2023-04-30 09:53:25', current_timestamp()),

('9','Beber', '2023-04-30 09:53:25', current_timestamp()),
('9','Bojongmalang', '2023-04-30 09:53:25', current_timestamp()),
('9','Cimaragas', '2023-04-30 09:53:25', current_timestamp()),
('9','Jayakarsa', '2023-04-30 09:53:25', current_timestamp()),
('9','Raksabaya', '2023-04-30 09:53:25', current_timestamp()),

('10','Bangbayang', '2023-04-30 09:53:25', current_timestamp()),
('10','Buniseuri', '2023-04-30 09:53:25', current_timestamp()),
('10','Ciakar', '2023-04-30 09:53:25', current_timestamp()),
('10','Cieurih', '2023-04-30 09:53:25', current_timestamp()),
('10','Cipaku', '2023-04-30 09:53:25', current_timestamp()),
('10','Gereba', '2023-04-30 09:53:25', current_timestamp()),
('10','Jalatrang', '2023-04-30 09:53:25', current_timestamp()),
('10','Mekarsari', '2023-04-30 09:53:25', current_timestamp()),
('10','Muktisari', '2023-04-30 09:53:25', current_timestamp()),
('10','Pusakasari', '2023-04-30 09:53:25', current_timestamp()),
('10','Selacai', '2023-04-30 09:53:25', current_timestamp()),
('10','Selamanik', '2023-04-30 09:53:25', current_timestamp()),
('10','Sukawening', '2023-04-30 09:53:25', current_timestamp()),

('11','Bangunharja', '2023-04-30 09:53:25', current_timestamp()),
('11','Cisaga', '2023-04-30 09:53:25', current_timestamp()),
('11','Danasari', '2023-04-30 09:53:25', current_timestamp()),
('11','Girimukti', '2023-04-30 09:53:25', current_timestamp()),
('11','Kepel', '2023-04-30 09:53:25', current_timestamp()),
('11','Karyamulya', '2023-04-30 09:53:25', current_timestamp()),
('11','Mekarmukti', '2023-04-30 09:53:25', current_timestamp()),
('11','Sidamulya', '2023-04-30 09:53:25', current_timestamp()),
('11','Sukahurip', '2023-04-30 09:53:25', current_timestamp()),
('11','Tanjungjaya', '2023-04-30 09:53:25', current_timestamp()),
('11','Wangunjaya', '2023-04-30 09:53:25', current_timestamp()),

('12','Bayasari', '2023-04-30 09:53:25', current_timestamp()),
('12','Cintanagara', '2023-04-30 09:53:25', current_timestamp()),
('12','Dayeuhluhur', '2023-04-30 09:53:25', current_timestamp()),
('12','Jatinagara', '2023-04-30 09:53:25', current_timestamp()),
('12','Mulyasari', '2023-04-30 09:53:25', current_timestamp()),
('12','Sukanagara', '2023-04-30 09:53:25', current_timestamp()),

('13','Citeureup', '2023-04-30 09:53:25', current_timestamp()),
('13','Karangpawitan', '2023-04-30 09:53:25', current_timestamp()),
('13','Kawali', '2023-04-30 09:53:25', current_timestamp()),
('13','Kawalimukti', '2023-04-30 09:53:25', current_timestamp()),
('13','Linggapura', '2023-04-30 09:53:25', current_timestamp()),
('13','Margamulya', '2023-04-30 09:53:25', current_timestamp()),
('13','Purwasari', '2023-04-30 09:53:25', current_timestamp()),
('13','Selasari', '2023-04-30 09:53:25', current_timestamp()),
('13','Sindangsari', '2023-04-30 09:53:25', current_timestamp()),
('13','Talagasari', '2023-04-30 09:53:25', current_timestamp()),
('13','Winduraja', '2023-04-30 09:53:25', current_timestamp()),

('14','Baregbeg', '2023-04-30 09:53:25', current_timestamp()),
('14','Cintajaya', '2023-04-30 09:53:25', current_timestamp()),
('14','Cintaratu', '2023-04-30 09:53:25', current_timestamp()),
('14','Kalapasawit', '2023-04-30 09:53:25', current_timestamp()),
('14','Kertajaya', '2023-04-30 09:53:25', current_timestamp()),
('14','Puloerang', '2023-04-30 09:53:25', current_timestamp()),
('14','Sidaharja', '2023-04-30 09:53:25', current_timestamp()),
('14','Sindangangin', '2023-04-30 09:53:25', current_timestamp()),
('14','Sukanagara', '2023-04-30 09:53:25', current_timestamp()),
('14','Tambakreja', '2023-04-30 09:53:25', current_timestamp()),

('15','Awiluar', '2023-04-30 09:53:25', current_timestamp()),
('15','Cikupa', '2023-04-30 09:53:25', current_timestamp()),
('15','Darmaraja', '2023-04-30 09:53:25', current_timestamp()),
('15','Lumbung', '2023-04-30 09:53:25', current_timestamp()),
('15','Lumbungsari', '2023-04-30 09:53:25', current_timestamp()),
('15','Rawa', '2023-04-30 09:53:25', current_timestamp()),
('15','Sadewata', '2023-04-30 09:53:25', current_timestamp()),
('15','Sukaraharja', '2023-04-30 09:53:25', current_timestamp()),

('16','Bangunsari', '2023-04-30 09:53:25', current_timestamp()),
('16','Bantarsari', '2023-04-30 09:53:25', current_timestamp()),
('16','Kertahayu', '2023-04-30 09:53:25', current_timestamp()),
('16','Margajaya', '2023-04-30 09:53:25', current_timestamp()),
('16','Mekarmulya', '2023-04-30 09:53:25', current_timestamp()),
('16','Neglasari', '2023-04-30 09:53:25', current_timestamp()),
('16','Pamarican', '2023-04-30 09:53:25', current_timestamp()),
('16','Pasirnagara', '2023-04-30 09:53:25', current_timestamp()),
('16','Sidaharja', '2023-04-30 09:53:25', current_timestamp()),
('16','Sidamulih', '2023-04-30 09:53:25', current_timestamp()),
('16','Sukahurip', '2023-04-30 09:53:25', current_timestamp()),
('16','Sukajadi', '2023-04-30 09:53:25', current_timestamp()),
('16','Sukajaya', '2023-04-30 09:53:25', current_timestamp()),
('16','Sukamukti', '2023-04-30 09:53:25', current_timestamp()),

('17','Bahara', '2023-04-30 09:53:25', current_timestamp()),
('17','Ciomas', '2023-04-30 09:53:25', current_timestamp()),
('17','Hujungtiwu', '2023-04-30 09:53:25', current_timestamp()),
('17','Kertamandala', '2023-04-30 09:53:25', current_timestamp()),
('17','Mandalare', '2023-04-30 09:53:25', current_timestamp()),
('17','Maparah', '2023-04-30 09:53:25', current_timestamp()),
('17','Panjalu', '2023-04-30 09:53:25', current_timestamp()),
('17','Sandingtaman', '2023-04-30 09:53:25', current_timestamp()),

('18','Bangunjaya', '2023-04-30 09:53:25', current_timestamp()),
('18','Cinyasag', '2023-04-30 09:53:25', current_timestamp()),
('18','Gardujaya', '2023-04-30 09:53:25', current_timestamp()),
('18','Girilaya', '2023-04-30 09:53:25', current_timestamp()),
('18','Indragiri', '2023-04-30 09:53:25', current_timestamp()),
('18','Jagabaya', '2023-04-30 09:53:25', current_timestamp()),
('18','Karangpaningal', '2023-04-30 09:53:25', current_timestamp()),
('18','Kertajaya', '2023-04-30 09:53:25', current_timestamp()),
('18','Kertayasa', '2023-04-30 09:53:25', current_timestamp()),
('18','Mekarbuana', '2023-04-30 09:53:25', current_timestamp()),
('18','Nagarajati', '2023-04-30 09:53:25', current_timestamp()),
('18','Nagarajaya', '2023-04-30 09:53:25', current_timestamp()),
('18','Nagarapageuh', '2023-04-30 09:53:25', current_timestamp()),
('18','Nagarawangi', '2023-04-30 09:53:25', current_timestamp()),
('18','Natanegara', '2023-04-30 09:53:25', current_timestamp()),
('18','Panawangan', '2023-04-30 09:53:25', current_timestamp()),
('18','Sadapaingan', '2023-04-30 09:53:25', current_timestamp()),
('18','Sagalaherang', '2023-04-30 09:53:25', current_timestamp()),

('19','Banjarangsana', '2023-04-30 09:53:25', current_timestamp()),
('19','Buanamekar', '2023-04-30 09:53:25', current_timestamp()),
('19','Golat', '2023-04-30 09:53:25', current_timestamp()),
('19','Jayagiri', '2023-04-30 09:53:25', current_timestamp()),
('19','Kertaraharja', '2023-04-30 09:53:25', current_timestamp()),
('19','Medanglayang', '2023-04-30 09:53:25', current_timestamp()),
('19','Panumbangan', '2023-04-30 09:53:25', current_timestamp()),
('19','Payungagung', '2023-04-30 09:53:25', current_timestamp()),
('19','Payungsari', '2023-04-30 09:53:25', current_timestamp()),
('19','Sindangbarang', '2023-04-30 09:53:25', current_timestamp()),
('19','Sindangherang', '2023-04-30 09:53:25', current_timestamp()),
('19','Sindangmukti', '2023-04-30 09:53:25', current_timestamp()),
('19','Sukakerta', '2023-04-30 09:53:25', current_timestamp()),
('19','Tanjungmulya', '2023-04-30 09:53:25', current_timestamp()),

('20','Bantardawa', '2023-04-30 09:53:25', current_timestamp()),
('20','Karangpaningal', '2023-04-30 09:53:25', current_timestamp()),
('20','Kutawaringin', '2023-04-30 09:53:25', current_timestamp()),
('20','Padaringan', '2023-04-30 09:53:25', current_timestamp()),
('20','Pasirlawang', '2023-04-30 09:53:25', current_timestamp()),
('20','Purwadadi', '2023-04-30 09:53:25', current_timestamp()),
('20','Purwajaya', '2023-04-30 09:53:25', current_timestamp()),
('20','Sidarahayu', '2023-04-30 09:53:25', current_timestamp()),
('20','Sukamulya', '2023-04-30 09:53:25', current_timestamp()),

('21','Andapraja', '2023-04-30 09:53:25', current_timestamp()),
('21','Purwaraja', '2023-04-30 09:53:25', current_timestamp()),
('21','Rajadesa', '2023-04-30 09:53:25', current_timestamp()),
('21','Sirnabaya', '2023-04-30 09:53:25', current_timestamp()),
('21','Sirnajaya', '2023-04-30 09:53:25', current_timestamp()),
('21','Sukaharja', '2023-04-30 09:53:25', current_timestamp()),
('21','Sukajaya', '2023-04-30 09:53:25', current_timestamp()),
('21','Tanjungjaya', '2023-04-30 09:53:25', current_timestamp()),
('21','Tanjungsari', '2023-04-30 09:53:25', current_timestamp()),
('21','Tanjungsukur', '2023-04-30 09:53:25', current_timestamp()),
('21','Tigaherang', '2023-04-30 09:53:25', current_timestamp()),

('22','Bojonggedang', '2023-04-30 09:53:25', current_timestamp()),
('22','Cileungsir', '2023-04-30 09:53:25', current_timestamp()),
('22','Cisontrol', '2023-04-30 09:53:25', current_timestamp()),
('22','Dadiharja', '2023-04-30 09:53:25', current_timestamp()),
('22','Giriharja', '2023-04-30 09:53:25', current_timestamp()),
('22','Jangalaharja', '2023-04-30 09:53:25', current_timestamp()),
('22','Kawunglarang', '2023-04-30 09:53:25', current_timestamp()),
('22','Karangpari', '2023-04-30 09:53:25', current_timestamp()),
('22','Kiarapayung', '2023-04-30 09:53:25', current_timestamp()),
('22','Patakaharja', '2023-04-30 09:53:25', current_timestamp()),
('22','Rancah', '2023-04-30 09:53:25', current_timestamp()),
('22','Situmandala', '2023-04-30 09:53:25', current_timestamp()),
('22','Wangunsari', '2023-04-30 09:53:25', current_timestamp()),

('23','Bendasari', '2023-04-30 09:53:25', current_timestamp()),
('23','Gunungsari', '2023-04-30 09:53:25', current_timestamp()),
('23','Mangkubumi', '2023-04-30 09:53:25', current_timestamp()),
('23','Sadananya', '2023-04-30 09:53:25', current_timestamp()),
('23','Sukajadi', '2023-04-30 09:53:25', current_timestamp()),
('23','Mekarjadi', '2023-04-30 09:53:25', current_timestamp()),
('23','Tanjungsari', '2023-04-30 09:53:25', current_timestamp()),
('23','Werasari', '2023-04-30 09:53:25', current_timestamp()),

('24','Budiasih', '2023-04-30 09:53:25', current_timestamp()),
('24','Budiharja', '2023-04-30 09:53:25', current_timestamp()),
('24','Gunungcupu', '2023-04-30 09:53:25', current_timestamp()),
('24','Sindangkasih', '2023-04-30 09:53:25', current_timestamp()),
('24','Sukamanah', '2023-04-30 09:53:25', current_timestamp()),
('24','Sukaraja', '2023-04-30 09:53:25', current_timestamp()),
('24','Sukaresik', '2023-04-30 09:53:25', current_timestamp()),
('24','Sukasenang', '2023-04-30 09:53:25', current_timestamp()),
('24','Wanasigra', '2023-04-30 09:53:25', current_timestamp()),

('25','Bunter', '2023-04-30 09:53:25', current_timestamp()),
('25','Ciparigi', '2023-04-30 09:53:25', current_timestamp()),
('25','Margaharja', '2023-04-30 09:53:25', current_timestamp()),
('25','Margajaya', '2023-04-30 09:53:25', current_timestamp()),
('25','Salakaria', '2023-04-30 09:53:25', current_timestamp()),
('25','Sukadana', '2023-04-30 09:53:25', current_timestamp()),

('26','Cibeureum', '2023-04-30 09:53:25', current_timestamp()),
('26','Mekarwangi', '2023-04-30 09:53:25', current_timestamp()),
('26','Sindanglaya', '2023-04-30 09:53:25', current_timestamp()),
('26','Sukamantri', '2023-04-30 09:53:25', current_timestamp()),
('26','Tenggerraharja', '2023-04-30 09:53:25', current_timestamp()),

('27','Kadupandak', '2023-04-30 09:53:25', current_timestamp()),
('27','Karangpaningal', '2023-04-30 09:53:25', current_timestamp()),
('27','Kaso', '2023-04-30 09:53:25', current_timestamp()),
('27','Mekarsari', '2023-04-30 09:53:25', current_timestamp()),
('27','Sukasari', '2023-04-30 09:53:25', current_timestamp()),
('27','Tambaksari', '2023-04-30 09:53:25', current_timestamp());

--
-- VIEW
--
CREATE VIEW v_all_alamat_id
AS
SELECT 
tb1.id_desa, tb1.desa_nama,
tb2.id_kecamatan, tb2.kecamatan_nama,
tb3.id_kabupaten, tb3.kabupaten_nama
FROM desa tb1
LEFT JOIN kecamatan tb2 ON tb1.desa_idkecamatan = tb2.id_kecamatan
LEFT JOIN kabupaten tb3 ON tb2.kecamatan_idkabupaten = tb3.id_kabupaten;

CREATE VIEW v_all_alamat
AS
SELECT 
tb1.desa_nama as desa,
tb2.kecamatan_nama as kecamatan,
tb3.kabupaten_nama as kabupaten
FROM desa tb1
LEFT JOIN kecamatan tb2 ON tb1.desa_idkecamatan = tb2.id_kecamatan
LEFT JOIN kabupaten tb3 ON tb2.kecamatan_idkabupaten = tb3.id_kabupaten;

CREATE VIEW v_jml_desa_perkecamatan
AS
SELECT
kecamatan_nama as kecamatan, COUNT(id_kecamatan) as jml_desa FROM `v_all_alamat_id`
GROUP BY id_kecamatan;

CREATE VIEW v_kec_kab_id
AS
SELECT 
tb1.kecamatan_nama, tb1.id_kecamatan,
tb2.kabupaten_nama, tb2.id_kabupaten
FROM kecamatan tb1
LEFT JOIN kabupaten tb2 ON tb1.kecamatan_idkabupaten = tb2.id_kabupaten;

CREATE VIEW v_jml_kecamatan_perkabupaten
AS
SELECT
kabupaten_nama as kabupaten, COUNT(id_kabupaten) as jml_kecamatan FROM `v_kec_kab_id`
GROUP BY id_kabupaten;

--
-- DATABASE MYSQL
--
