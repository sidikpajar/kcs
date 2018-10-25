-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2018 at 08:07 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `divisi_id` int(1) NOT NULL,
  `divisi_nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`divisi_id`, `divisi_nama`) VALUES
(1, 'Sahabat Alam dan Sosial'),
(2, 'Sahabat Anak dan Bermain'),
(3, 'Sahabat Belajar');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `jurusan_id` varchar(2) NOT NULL,
  `jurusan_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`jurusan_id`, `jurusan_nama`) VALUES
('AK', 'Akuntansi'),
('AR', 'Arsitektur'),
('BC', 'Broadcasting'),
('CI', 'Business in Creative Industry'),
('DC', 'Advertising and Digital Communication'),
('DV', 'Desain Komunikasi Visual'),
('GC', 'Game Computing and Technology'),
('IF', 'Informatika'),
('MB', 'Matematika Bisnis'),
('MN', 'Manajemen'),
('SC', 'Strategic Communication'),
('SI', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan_id` varchar(2) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `kota` varchar(16) NOT NULL,
  `tanggal` varchar(15) NOT NULL,
  `alamat` varchar(121) NOT NULL,
  `tlp` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `ig` varchar(32) DEFAULT NULL,
  `idline` varchar(32) NOT NULL,
  `divisi_id` int(11) NOT NULL,
  `tujuan` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nim`, `nama`, `jurusan_id`, `jk`, `kota`, `tanggal`, `alamat`, `tlp`, `email`, `ig`, `idline`, `divisi_id`, `tujuan`) VALUES
(2014101308, 'Chrysanta Tessalonika', 'SI', 'Perempuan', 'Jakarta', '12/05/1996', 'Jl. Janur Indah VII Blok LA 19 No. 1', '82233080259', 'chrysnth@outlook.com', 'chrysnth', 'chrysleith', 1, 'sebagai suatu kebahagiaan tersendiri dalam membantu sesama makhluk hidup.'),
(2015101535, 'Haris', 'CI', 'Laki-laki', 'Jakarta', '10/26/1991', 'Jl pulomas 7b no 11a', '81314761496', 'johannesharris09@gmail.com', 'Harisjohanes2', 'liverpooltillidie', 2, 'Mengembangkan potensi dalam diri saya.'),
(2016102534, 'Febrianty laowo', 'BC', 'Perempuan', 'Bogor', '02/04/1997', 'Bukit cimanggu city bogor', '85817192799', 'Ebyellsteel04@gmail.com', 'Derrythores', 'Shemi26', 1, 'Biar bisa menyatu dengan alam ,biar bisa lebih mengenal lingkungan sekitar'),
(2017003070, 'Elsa Agustinah', 'AK', 'Perempuan', 'Tanggerang', '8/25/1998', 'Jl. Jati V C No.10 A', '81299024209', 'agustinahelsa@yahoo.com', 'Elsaagustinah', 'elsaagustinah', 1, 'Menjadi lebih baik lagi dan bisa menjadi berkat bagi orang lain'),
(2017003234, 'Dortia alves soares', 'AK', 'Perempuan', 'Aileu', '1/25/1998', 'Jl jati vc nomor 10a sugai bambu', '82236844929', 'Dortiasoares25@gmail.com', 'Dortiaalvessoares', 'Dortiasoares97', 1, 'Mau belajar lebih lagi dalam membantu masyarakat, dapat bersosialisasi dengan baik, baik dalam kegiatan kelompok, dan belajar banyak hal yang positif .'),
(2017003464, 'Andiani Nurvani Faujiah', 'AK', 'Perempuan', 'Kebumen', '11/07/1998', 'Jl paguyuban II No.21 rt005 rw005', '89605503131', 'andianinurvani123@gmail.com', 'andianinf_', 'vani_321', 1, 'Ingin menambah pengalaman dan lebih tau lagi tentang alam'),
(2017003686, 'William Andrew Punuh', 'AK', 'Laki-laki', 'Jakarta', '06/05/1999', 'Jl. Raya bogor kampung kramat', '82299719205', 'Willdrew214@gmail.com', '#', 'Will.a', 1, 'Menambah pengalaman dalam kegiatan lapangan dan organisasi'),
(2017003708, 'Lorenz josua', 'AK', 'Laki-laki', 'Jakarta', '8/24/1998', 'Pulomas', '82112727004', 'Lorenzjosua154@yahoo.com', 'Lorenzjosua24', 'Lorenzowen', 1, 'Membentuk karakter saya lebih baik lagi'),
(2017103017, 'Rezki Misdyanti', 'BC', 'Perempuan', 'Jakarta', '6/25/1999', 'Jl puntadew rt 005/05, no.16, munjul, cipayung, jakarta timur', '87879333631', 'rezrezki25@gmail.com', 'photorezki', 'rezkirezki', 3, 'Saya ingin saling berbagi pengalaman dengan orang lain dan membuat pengalaman baru dengan orang lain agar pengetahuan saya terus bertambah'),
(2017103028, 'Joshua Sulistiyo', 'SC', 'Laki-laki', 'Bekasi', '11/07/1999', 'Pondok Ungu Permai D10/2 Kelurahan Kaliabang Tengah Kecamatan Bekasi Utara', '81317402605', 'joshuasulistiyo@gmail.com', 'joshuas__', 'pangdem', 1, 'Berupaya menjadi manusia yang tinggi akan rasa sosial terhadap sesama, juga berorganisasi dengan baik.'),
(2017103105, 'Mayuari ramadhanti', 'MN', 'Perempuan', 'Jakarta', '05/01/2000', 'Jl. Anggrek Raya E8 perumahan taman setia mekar , bekasi timur', '85697903034', 'Mayuarishinta@gmail.com', 'shintamayuari', 'shintamyr', 1, 'Ingin menambah pengalaman dan mencintai alam semesta'),
(2017103128, 'Harneet kaur nisha', 'SC', 'Perempuan', 'Medan', '2/16/2018', 'Jl. Lapangan pors IX no. 31 serdang kemayoran jakarta pusat', '87886594242', 'Nishakaur032@gmail.com', 'Nishnishaaaa', 'Nishnisha16', 2, 'Setelah setahun melihat program kcs, kegiatan kegiatan kcs membuat saya tertarik untuk mengikuti program kcs, tujuan saya adalah agar saya dapat banyak bersosialisasi dengan masyarakat sekitar, serta membangun kerja sama yang baik dari dalam diri saya ( saya mengisi formulir Ini yang kedua kalinya sebagai ralat divisi ) formulir ini yang benar, terima kasih.'),
(2017103204, 'Ariel Hizkia', 'SC', 'Laki-laki', 'Jakarta', '4/13/1999', 'Jalan Bondan blok M. No21, kelapa gading', '81318054401', 'Arielganur@gmail.com', 'Ariel_hizkiaa', 'Arielll26', 1, 'Ingin menambah pengalaman dan memperoleh ilmu-ilmu baru di alam.'),
(2017103211, 'Julius Bintang Saputra', 'SC', 'Laki-laki', 'Jakarta', '5/27/1999', 'Jl raya kampung sawah, gang ursula rt 005 rw 04', '81382455586', 'juliusbintang0@gmail.com', 'Julius_bintang', 'juliusbintang13', 1, 'Ingin membantu orang lain lebih'),
(2017103254, 'Claudylieka Aureymelida Santoso', 'MN', 'Perempuan', 'Bekasi', '1/26/1999', 'Pondok ungu permai B15 no 8', '81318555164', 'claudylieka26@gmail.com', 'claudylieaurey', 'clyyylieka_', 2, 'Ingin menambah pengalaman dan wawasan'),
(2017103399, 'Levina Alviani', 'BC', 'Perempuan', 'Jakarta', '06/06/1999', 'Sunter Muara 01/05 no. 10', '84875629883', 'alvianilevina@gmail.com', '#', 'levinalviani', 3, 'Menambah pengalaman'),
(2017103465, 'Feby Nur Janah', 'MN', 'Perempuan', 'Jakarta', '2/25/1999', 'Jl. Muara Bahari 004/01 no.49', '81294489916', 'febyn712@gmail.com', 'feby_nurjanah', 'febynj_', 1, 'Karena saya memang suka bersosialisi, dan membantu orang yang sedang kesulitan atau butuh bantuan'),
(2017103481, 'Ryan widny pratan', 'BC', 'Laki-laki', 'Jakata', '04/06/2000', 'Jln kmp bahari gang 5 a6 no 34 rt003 rw02 kelurahan tanjung priok kecamatan tanjung priok', '85775238292', 'ryanwindy64@gmail.com', 'rynwndy06', 'ryan_ei', 2, 'Menambah wawasan dalam sebuah organisasi'),
(2017103483, 'Siti Aminah', 'SC', 'Perempuan', 'Jakarta', '6/19/1999', 'Jl. H. M. Darpi no.06 Jakarta Utara', '81212773959', 'aminahs881@gmail.com', 'minahsa', 'minahh', 1, 'mencoba keluar dari zona nyaman'),
(2017103498, 'Chika aulia oktavia', 'SC', 'Perempuan', 'Jakarta', '10/22/1999', 'Jl kasuari raya no 5 as 2 komplek kranggan permai', '87782452816', 'chikauliaa@yahoo.co.id', 'chikaulia', '.chikaa', 1, 'menambah pengalaman dan menyukai kegiatan sosial'),
(2017103542, 'Alvin Parasakti Laurent', 'BC', 'Laki-laki', 'Jakarta', '06/12/1998', 'Jl. Sunter Pulo Kecil HR 1C', '87888204098', 'Alvinlaurent12@gmail.com', '#’', 'Alvinlau12', 2, 'Saya ingin membantu sesama melalui Kalbis Care Share'),
(2017103554, 'Dea Monica Claudia', 'SC', 'Perempuan', 'Kuningan', '5/15/1999', 'Jl. Sumber Pelita GG.CC No.13 Rt 08 Rw 01 Kel. Sumur Batu, Kec. Kemayoran, Jakarta Pusat', '81546219169', 'deamonicaclaudia22@gmail.com', 'deacldy', 'deamonicaclaudi_', 2, 'Menambah pengalaman dan menyukai anak kecil'),
(2017103590, 'Syella Effendy', 'BC', 'Perempuan', 'Jakarta', '6/29/1999', 'Kab. Bogor, parung. Perum. Permata lebak wangi blok F no 1', '895635722591', 'Syella555e@gmail.com', 'Syella_a', 'Syella55', 2, 'Membangun rasa kepedulian'),
(2017103594, 'Fidelia', 'AK', 'Perempuan', 'Parit Tiga Jebus', '11/30/1997', 'Perum. Metland Menteng, blok k9 No.45, Cakung, Jakarta Timur', '81296757038', 'Fideliasitorus@gmail.com', 'Fideliaass', 'Fideliaa_sasmiithaa', 3, 'Ingin sharing kemampuan kepada yang membutuhkan, menolong sesama dan ingin menambah pengalaman dan wawasan juga...'),
(2017103604, 'Maria Palentina', 'MN', 'Perempuan', 'Jakarta', '8/29/1999', 'Jalan Pendidikan IX No 72, Duren Sawit (Jakarta Timur)', '0895635865828??', 'mariapalentina28@gmail.com', 'maria_alent', 'palentina29', 1, 'Mau mencari pengalaman membantu sesama dan berkomunikasi secara luas serta mengamalkan tenaga dan kemampuan untuk lebih peduli kepada yg membutuhkan'),
(2017103615, 'Bagas Radityo Wicaksono', 'BC', 'Laki-laki', 'Jakarta', '11/20/1999', 'Permata Harapan Baru Blok F1 No.7', '8991505938', 'bagasradityo45@gmail.com', 'bagasradityo7', 'bagasraditito', 3, 'Agar dapat berorganisasi dan mempunyai pengalaman baru di organisasi kcs'),
(2017103621, 'Meyralda Mayesti Sambokaraeng', 'MN', 'Perempuan', 'Jakarta', '05/03/1999', 'Asrama Polri Cipinang blok K/6, Jakarta Timur', '85811409973', 'Meyraldamayestis@gmail.com', 'Myrldms', 'Myrldams', 1, 'masuk ke dalam komunitas untuk banyak bersosialisasi dan mendapatkan pengalaman'),
(2017103644, 'jesica putri karo sekali', 'BC', 'Perempuan', 'bekasi', '3/29/1998', 'jl.bintara jaya II no21, rt08/rw03 bekasi barat', '82249861459', 'jesicaputriks@gmail.com', 'jesicaputriks', 'jesicapks', 2, 'mencari pengalaman dan menambah wawasan guna meningkatkan peduli terhadap sesama'),
(2017103646, 'Brigita Dwi indarti', 'MN', 'Perempuan', 'Jakarta', '8/16/1999', 'Jl. Jati Kenari No.22', '8119716162', 'Brigitadwiindarti16@gmail.com', 'Brigitaaindartii', 'Brigitaaindarti', 1, 'Ingin mendapat tantangan baru'),
(2017103692, 'Stefanus fernando agafi', 'SC', 'Laki-laki', 'Jakarta', '10/10/2018', 'Jln otista gg tanjung lengkong', '895635175610', 'stefanusfernandoagafi@gmail.com', 'Fernando_agafi', 'Fica12', 1, 'Mengabdi diri untuk sesama'),
(2017103701, 'Paulus hubertus dopo nono', 'SC', 'Laki-laki', 'Jakarta', '01/05/1999', 'Jln kebonanas cipinang besar kampung jembatan rt01rw06 no. 45', '85889180200', 'Paulushubertus29@gmail.com', 'Paulus_hubertus', 'Paulus25hubertus', 1, 'Karena saya ingin membatu orang banyak sekaligus mahluk sosial yang seutuhnya'),
(2017103721, 'Immanuel', 'BC', 'Laki-laki', 'Jakarta', '5/13/1999', 'JL. MESJID DARUL CHAEROT RT 007/008 NO. 25 CAWANG III KEL. KEBON PALA KEC. MAKASAR JAKARTA TIMUR 13650', '85817860375', 'immanuelh10@gmail.com', 'nuel_kazuki', 'nuel13sao', 2, 'Mencoba mempelajari hal baru tentang keluarga dan kerjasama serta tolong menolong, karna setelah melihat dan mengikuti beberapa acara kcs, solidaritas dan kebersamaan mereka sangatlah kuat.'),
(2017103744, 'indah permatasari', 'BC', 'Perempuan', 'garut', '4/21/1999', 'jln kko usman dan harun no.26A', '82128102221', 'ipermatasari05@gmail.com', 'cunengd_69', 'cuneng21', 2, 'menambah teman dan pengalaman'),
(2018003837, 'Anita Hariyani', 'AK', 'Perempuan', 'Bekasi', '8/31/2000', 'Jln. Perjuangan Gg.Abadi No 27B, Marga Mulya - Bekasi Utara', '87877919122', 'hariyanianita31@gmail.com', 'anitahryn', 'anitahyn', 2, 'Saya ingin berbagi ilmu serta pengalaman saya kepada siapapun termasuk adik2 dibawah saya^^'),
(2018003962, 'Ersa Nur Anggraeni', 'AK', 'Perempuan', 'Jakarta', '02/04/2018', 'Jl ayub otista , bidara cina , jatinegara , jakarta timur', '85921729503', 'ersa.anggreani@yahoo.com', 'Ersaanggrn_', 'Ersaanggrn', 1, 'Untuk melihat prespektif baru yang sebelumnya saya belum pernah tau , untuk punya kesempatan lebih mengenal diri saya dan likungan saya'),
(2018004069, 'Ayunda Mita Syarif', 'AK', 'Perempuan', 'Jakarta', '8/18/2018', 'Jln. Kemuning bendungan rt04/01 Jakarta timur', '85876707228', 'Ayundamita99@gmail.com', 'Ayundamsyarif', 'Ayundamsyarif', 1, 'Karena saya menyukai alam dan tantangan'),
(2018004109, 'Raden febri amriyanti Rahmalita sapitri', 'AK', 'Perempuan', 'Jakarta', '04/02/1999', 'Jalan Ancol Selatan 2 number 41', '85881772287', 'Feby.rahmalita@gmail.com', 'Febyrahmalita', 'Fbyrahmalita', 2, 'Karna ingin Lebih perduli terhadap sesama manusia dan mencoba menjadi orang yang lbh perduli terhadap sekitar dan saya ingin menjadi orang yang selalu bisa membantu orang lain'),
(2018004181, 'Dindha Adhistika', 'AK', 'Perempuan', 'Jakarta', '8/16/1999', 'Jl. flamboyan no 30 Kayu putih, pulogadung, jakarta timur', '89647974419', 'dindhaadhistika64@gmail.com', 'dindadhstk', 'hujankelabu', 1, 'saya ingin mengetahui lebih banyak tentang kalbiscareshare sekaligus untuk belajar peduli untuk sesama maka dari itu saya memilih untuk menjadi sahabat alam dan sosial'),
(2018004182, 'Andrean', 'AK', 'Laki-laki', 'Bekasi', '4/27/1999', 'Perum bji danita jl. Anggrek 1 blok D8/5 Rt 03/13, 17112', '81284108916', 'andreanaja99@gmail.com', 'Luandrean', 'Luandrean.', 1, 'Ingin menambah wawasan serta pengalaman baru'),
(2018004212, 'Neng karyati', 'AK', 'Perempuan', 'Lebak', '07/10/2000', 'Jl plumpang semper kamp tegal kunir rt/rw 02/13 no 26', '895336857792', 'karyatineng07@gmail.con', 'Ngkryt', 'Ngkrytt_', 1, 'Ingin menjadi yg lebih peduli terhadap lingkungan sekitar'),
(2018004214, 'Vina Febianti Putri', 'AK', 'Perempuan', 'Jakarta', '12/02/2000', 'Jl. Waru No.12 A RT 007/ RW 007 Kel. Rawamangun Kec. Pulogadung Jakarta Timur', '81294457510', 'vinafebianti.putri@gmail.com', 'vna_fp', 'vina_1202', 1, 'menambah pengalaman baru'),
(2018004337, 'Jhon Lucas Manurung', 'AK', 'Laki-laki', 'medan', '6/13/2000', 'Jl.Maduratna Jakarta Utara', '895612123750', '-', 'jhnlucass', 'jhonlucass', 1, 'Ingin dekat lansung dengan alam dan menjaganya agar bisa bermanfaat bagi manusia'),
(2018004370, 'Elizabeth', 'AK', 'Perempuan', 'Jakarta', '3/28/2002', 'Jalan baladewa no 14', '85775776926', 'Elzbth2803@gmail.com', 'Margarethae28', 'Margarethae28', 1, 'Ingin mengenal alam lebih dalam'),
(2018103809, 'Joel Reinhard Bagenda', 'BC', 'Laki-laki', 'Wonogiri', '9/16/2018', 'Komplek bulevar hijau blok i 25 no. 18, harapan indah, bekasi', '81318761050', 'joelreinhard2000@gmail.com', 'reinhaard22', 'reinhaard16', 1, 'ingin menjadi bagian dri kalbis care share yg berguna untuk membantu org banyak'),
(2018103811, 'Khaisya nur haliza', 'MN', 'Perempuan', 'Jakarta', '7/24/2000', 'Jl nyiur melambai3 blok LL no 09 alurlaut plumpang', '82122592650', 'Khaisyahaliza00@gmail.com', 'Khaisyasoumoukil', 'Khaisyahaliza24', 1, 'Ingin mencoba pengalaman baru'),
(2018103823, 'Aprilia agatha', 'CI', 'Perempuan', 'Jakarta', '4/14/2000', 'Jl songsi 2 no 4 rt 4 rw 6', '8996673677', 'Apriliaagatha646@yahoo.com', 'Pcy_april', 'Aprilchan61', 2, 'Karena tujuan saya masuk kalbis itu untuk mengikuti volunteer ini , ingin menambah pengalaman dan saya juga suka anak kecil.'),
(2018103828, 'Stella Oktaviani', 'AK', 'Perempuan', 'jakarta', '10/22/1996', 'Cipinang kebembem rt.005.rw.013 no.41', '85776388248', 'Stellaoktaviani64@yahoo.com', 'stella_oktaviani22', 'stellarahelo', 2, 'karena saya menyukai dengan kegiatan Kalbis care share'),
(2018103833, 'George adolf pakasi', 'BC', 'Laki-laki', 'Jakarta', '8/29/2018', 'Jl gang eddy 1 no 17 rt/rw: 12/06 guntur jakarta selatan', '87785292385', 'Georgepakasi@gmail.com', 'Adolfpakasi', 'Adoppp', 1, 'Ingin menyalurkan rasa empati kepada orang yang membutuhkan bantuan'),
(2018103834, 'Christophorus Reza', 'SC', 'Laki-laki', 'Jakarta', '12/25/1998', 'Menteng atas I', '81298446848', 'cristoforusrio25@gmail.com', 'cristoforusrezaaa', 'cristoforusrio7', 1, 'Ingin meningkatkan jiwa sosial'),
(2018103836, 'Primadino fachrul rochman', 'BC', 'Laki-laki', 'Jakarta', '03/11/1999', 'Komp.jatibening 2 blok D no.53', '85711199501', 'dinoprifaro@gmail.com', 'Dinoprifaro', 'prifaro', 1, 'Ingin menjadi relawan yng trjun langsung ke lapangan'),
(2018103843, 'Josua Natanael Nababan', 'BC', 'Laki-laki', 'Jakarta', '12/30/1998', 'Menteng atas rt 12 rw 06 no 21 kel. Menteng atas kec. Setia budi. Jakarta selatan', '87886725396', 'josuanababan505@yahoo.com', 'josua98__', 'travy98', 1, 'Karna saya ingin peduli dengan sosial dan alam'),
(2018103882, 'Evania febianty', 'AK', 'Perempuan', 'Tangerang', '02/01/2000', 'Jl. Pulomas selatan', '87889379066', 'Febiantyevania@gmail.com', 'Eva_febianty', 'Febiannty', 2, 'Supaya bisa berorganisasi dengan masyarakat yang lain.'),
(2018103900, 'Ghaaziillah Salsatsabitah', 'CI', 'Perempuan', 'Jakarta', '10/25/2000', 'Villa Nusa Indah 5. Blok SG 2 nomer 6. Cluster Rajawali. Ciangsana. Gunung putri. Bogor', '89659171006', 'Ghaaziillahsalsatsabitah@gmail.com', 'Ghaaziillah25', 'Ghaaziillah25', 2, 'Saya senang bermain dengan anak kecil'),
(2018103903, 'Friska Oktiani', 'MN', 'Perempuan', 'Jakarta', '10/08/2000', 'Jalan melati tugu IV nomor 29. Jakarta Utara kecamatan koja kelurahan tugu utara', '85841966095', 'Friskaoktiani37@gmail.com', 'Fris.kao', 'Oktianifriska', 2, 'ingin ikut merasakan apa yang mereka rasakan, dan ingin terjun membantu apa yang mereka butuhkan, karena kita pantas untuk tersenyum dan bahagia bersama'),
(2018103908, 'Catherina maria', 'SC', 'Perempuan', 'Jakarta', '2/15/2000', 'Jl.melati no.15a tonjong ,Parung-Bogor', '87888592629', 'Cathmonicaa@gmail.com', 'Cath_monica', 'Catherz', 2, '\"Ingin berbagi kecerian berbagi kebahagiaan berbagi pengetahuan berbagi apa yang saya punya kepada mereka . Ingin mempelajari pengalaman hidup mereka agar menjadi motivasi bagi diri saya untuk selalu bersyukur dengan keadaan saya \"'),
(2018103958, 'Ignatius edward olsen ledjap', 'BC', 'Laki-laki', 'Jakarta', '7/29/2000', 'Jl.Warakas IV Gg.7 No.39A', '81388397623', 'olsenlejap134@gmail.com', 'Ohcen', 'Olsenlejap29', 1, 'Mahasiswa baru,jadi harus aktif'),
(2018103960, 'Andrian Prastyo', 'BC', 'Laki-laki', 'Jakarta', '5/18/2000', 'jln haji saibun rt 10 rw 04 no 57 kel. Susukan kec. Ciracas Jakarta timur', '87889273789', 'andrian.prastyo11111@gmail.com', 'ndprs', 'andrian_p', 1, 'Tujuannya ingin membantu sesama di daerah-daerah yang sedang membutuhkan bantuan.'),
(2018103968, 'Erika Tania Michelle', 'GC', 'Perempuan', 'Jakarta', '07/04/1999', 'Komp. Lembah Hijau, Jl. Rajawali No.22, Mekarsari, Cimanggis, Depok. 16452', '81380803611', 'erikataniamichelle@gmail.com', 'bikyuuu', 'michellerika', 1, 'Dengan mengikuti kegiatan volunteer di KCS dalam divisi sahabat alam dan sosial, saya berharap bisa berkontribusi lebih untuk menjaga alam dan lingkungan di indonesia, serta memberikan pengetahuan mengenai pemisahan limbah2 kepada masyarakat sekitar.'),
(2018103975, 'Swadeshianne Amara Khansa', 'CI', 'Perempuan', 'Jakarta', '12/23/1999', 'Jl. Kayu iii no 1 kayu putih pulogadung jakarta timur', '87782060659', 'yanneamarak@gmail.com', 'yanneamara', 'yanne_', 2, 'Untuk menambah pengalaman dan saya ingin berusaha untuk membuat kehidupan masyarakat menjadi lebih baik.'),
(2018104002, 'Kefas Yezkiel Amadio', 'BC', 'Laki-laki', 'Jakarta', '5/24/2000', 'Jl. Taman Dahlia IV, Taman Harapan Baru L4/8, RT 01 RW 023, Kelurahan Pejuang, Kecamatan Medan Satria, Bekasi, Jawa Barat', '87788848835', 'kefasyezkiel@gmail.com', 'wwekefas', 'kefas_yezkiel', 1, 'Karena saya ingin mempraktekan salah satu nilai Kalbis Institute di kehidupan saya, yaitu peduli'),
(2018104005, 'Sandro Dwi Andika', 'BC', 'Laki-laki', 'Jakarta', '03/08/1999', 'Kemayoran Gempol Rt.010 Rw.006 No.33, Kel. Kebon Kosong, Kec. Kemayoran, 10630', '82112550041', 'Sandrodwi24@gmail.com', 'sandrodwiandikaa', 'sandroandika1', 1, 'karena saya ingin membantu sesama manusia'),
(2018104007, 'Daffa azriel setiawan', 'SC', 'Laki-laki', 'Jakarta', '10/12/2000', 'Jl. Matraman Jaya Rt 013 Rw 06 No. 18', '81294740758', 'Daffaazriel13@gmail.com', 'Daffaazriel12', 'Azrieldaf', 1, 'Karna saya ingin terjun langsung untuk membantu masyarakat yang terkena musibah'),
(2018104020, 'Diah sri mulyani', 'MN', 'Perempuan', 'Lamongan', '10/27/1999', 'Jalan telaga murni IV rt 24/rw 01, Sunter Kangkungan Jakarta Pusat', '87773252451', 'diahmulyani735@gmail.com', 'diahmulyani27', 'diahsrimulyani', 2, 'Agar bisa menambah wawasan saya menjadi lebih luas. Dan mengenal dunia'),
(2018104023, 'Nabilah', 'BC', 'Perempuan', 'Jakarta', '11/12/1999', 'Jalan peralihan sungai begog rt 09 rw 03 no 51 cilincing jakarta utara', '83811576634', 'nblhpc12@gmail.com', 'Bilefy', 'elibpc', 2, 'Ingin membantu anak anak yang terkena bencana agar bisa tersenyum lagi'),
(2018104026, 'Sari Widiastuti', 'BC', 'Perempuan', 'Jakarta', '10/17/2000', 'Jalan Utan Panjang II No. 32 RT010/09 Kemayoran - Jakarta Pusat 10680', '81280644349', 'sariwidiastuti1710@gmail.com', 'sarisawi', 'sawhyyy', 1, 'Ingin ikut berpatisipasi dalam melakukan kegiatan peduli terhadap lingkungan sekitar yg membutuhkan perhatian seperti yang terdapat dalam nilai kalbis institute.'),
(2018104028, 'Anjung Mauidhotun Hasanah', 'BC', 'Perempuan', 'Boyolali', '2/27/2000', 'Jl.muara baru gang IX no 36c rt 021 rw 017 penjaringan,jakarta utara', '89519826888', 'Anjunghasanah@gmail.com', 'Anjunghasanah', 'Anjungmh227', 2, 'Karena ingin berbagi kebahagiaan bersama anak anak yang membutuhkan'),
(2018104041, 'Alvindra Taufik Pratama', 'MN', 'Laki-laki', 'Jakarta', '07/10/2018', 'Jl.Raya condet rt11/05 no.7 Cililitan, Jakarta Timur 13640', '81288528612', 'alvindra96@gmail.com', 'alvindraa20', 'alvindra20', 1, 'saya ingin meningkatkan jiwa sosial saya, dan saya ingin ikut serta dalam kegiatan2 sosial yang di jalankan oleh KCS ini'),
(2018104046, 'Muhammad Farhan Hakim', 'SC', 'Laki-laki', 'Jakarta', '02/10/2000', 'Jl. Mangga no 24 kec. Koja', '81717143603', 'Fhakim081@gmail.com', 'Hakim_production', 'Farhancoolstyle', 2, 'Ingin menambah pengalaman'),
(2018104047, 'Syafiyah Nabilla S', 'BC', 'Perempuan', 'Jakarta', '11/28/2000', 'Jalan Cempaka Sari 1 No.15 RT04/RW08, Kelurahan Harapan Mulya, Kecamatan Kemayoran, JAKARTA PUSAT 10640', '85814235262', 'syafiyahnabilla.s@gmail.com', 'syaafyh', 'syaafyh_', 1, '\"Maaf kak form yang tadi siang belum terisi lengkap, jadi saya ingin mengisi ulang formnya. Tujuan saya mengikuti kegiatan volunteer Kalbis Care Share yaitu karena Saya tertarik dengan kegiatan-kegiatan yang dilakukan oleh Kalbis Care Share dan Saya ingin turut serta dalam berbagai kegiatan bakti sosial atau kegiatan volunteer lainnya yang dapat memberikan banyak manfaat bagi orang lain dan juga lingkungan sekitar.\"'),
(2018104056, 'denaldy gou', 'AK', 'Laki-laki', 'bekasi', '12/25/2000', 'pondok gede housing 1 jl.cipts bakti blok M no.9', '82186457983', 'denaldygou28', 'denaldygou28', 'DG28', 1, 'saya sangat suka berbagi kepada sesama yang membutuhkan, menyalurkan rasa kepedulian saya melalui kegiatan ini :)'),
(2018104058, 'Leonardus eleazar eggrey', 'BC', 'Laki-laki', 'Jakarta', '6/22/1999', 'Taman jatisari permai cluster bali 2 blok AX1/9', '85697102778', 'Eggrey123456@gmail.com', 'Eggrey_99', 'eggreyreynara21', 1, 'Karena ingin mempelajari dalam mengatasimasyarakat yang terkena bencana alam'),
(2018104071, 'Lourentia febi septianingrum', 'AK', 'Perempuan', 'jakarta', '9/21/2000', 'Jl. Haji mawar rt12/03 no.24', '87789305086', 'lourentia.febi21@gmail.com', 'lourentia_febi', 'lourentia_febi', 1, 'karna saya tertarik dengan kegiatan alam dan sosial'),
(2018104072, 'Febriko Hartito Putra', 'GC', 'Laki-laki', 'Bogor', '2/27/2000', 'Kampung tlajung udik rt 02 rw 06 nomer 60 gunungputri kab.bogor', '82210368728', 'Febrikohputra27@gmail.com', 'febrikohputra', 'febriko_hputra', 2, 'Saya ingin mengikuti Kalbis Care Share, karena saya ingin berpatisipasi dalam memajukan bangsa Indonesia. Saya memilih Divisi Sahabat Anak dan Bermain karena saya merasa sikap anak jaman sekarang yang terlalu fokus bermain dengan sosial media, saya ingin mencoba mengubah pandangan anak jaman sekarang bahwa kehidupan sosial dimasyarakat lebih menyenangkan daripada sosial media.'),
(2018104091, 'Raihan Fadel', 'MN', 'Laki-laki', 'Jakarta', '6/18/2000', 'Jalan Gembira UB.6 RT005 RW07 Kel.Sungai Bambu Kec.Tanjung Priok', '87884578627', 'raihanfadel68@gmail.com', 'raihannnfk', 'rhnfdl_', 1, 'karna saya ingin mencari pengalaman yang baru mas'),
(2018104097, 'Emmanuel Head', 'DV', 'Laki-laki', 'Jakarta', '7/25/2000', 'Jl. Summagung I blok H5/5, Klp. Gading, jakarta utara', '85856697649', 'heathledger06@gmail.com', 'emmanuelheazler', 'emmaa..', 1, 'Saya ingin membantu dalam merawat dan melestarikan keindaham alam mulai dari Jakarta sampai seluruh Indonesia'),
(2018104098, 'Farah salsabila', 'SC', 'Perempuan', 'Jakarta', '8/29/2000', 'Jln. Serdang baru 7 rt3 rw5 kemayoran jakpus', '81319655392', 'farahsalsabila86@yahoo.com', 'Salsabilafar', 'salsabilaafar', 1, 'Tujuan saya mengikuti kegiatan volunteer ini adalah. Saya akan mempunyai pengalaman langsung dalam berbagi dan menjaga lingkungan sekitar. Saya juga berharap dengan bergabung di dalam organisasi kcs ini saya dapat membentuk pribadi yang lebih peka dalam membantu sesama dan dapat menjadi manusia berguna untuk orang lain.'),
(2018104105, 'marini alifia', 'SI', 'Perempuan', 'Jakarta', '05/05/2000', 'Jl.kebon bawang x no.14 rt009/001, tg.priok-jakarta utara', '81212867895', 'marinialf05@gmail.com', 'skawmar', 'marini.alf', 1, 'ingin menyalurkan tenaga bantuan dengan berkontribusi langsung dengan masyarakat yg membutuhkan'),
(2018104108, 'Asyera Majesti', 'BC', 'Perempuan', 'Jakarta', '09/06/2000', 'Jalan maduratna no. 30 rt:011/rw:04. Kelurahan : Rawa Badak Selatan. Kecamatan : Koja. Kota Jakarta Utara', '81319760138', 'Asyeram09@gmail.com', 'As__yera', 'Asyeramajesti', 2, 'Untuk membagi keceriaan dan semangat kepada anak-anak'),
(2018104115, 'Talitha dindakanti', 'MN', 'Perempuan', 'Jakarta', '04/07/2000', 'Jl cililita besar no 98 jakarta timur', '85811726122', 'Talithadinds@gmail.com', 'Talithadinds', 'Talithadinds', 1, 'Menambah pengalaman baru dan bisa membantu orang lain'),
(2018104123, 'Tera Shalza Nabilla', 'MN', 'Perempuan', 'Cilacap', '06/06/2000', 'Jl. Bentengan Mas 7 No.2 Sunter Jaya, Jakarta Utara', '89680730940', 'tera.shalza@gmail.com', 'terashalzan', 'terashalzan', 2, 'Ikut berpartisipasi dan membantu kegiatan sosial dalam memajukan bangsa Indonesia'),
(2018104128, 'Adelin Audya Shifa', 'CI', 'Perempuan', 'Jakarta', '10/01/2000', 'Jalan Haji oyar, pegangsaan II kelapa gading jakarta utara no 16', '87881551544', 'adelinaudya@gmail.com', 'adelinaudyas', 'adelinaudya', 2, 'karna senang bermain bersama anak-anak dan ingin menambah wawasan'),
(2018104134, 'Agus sagita manurung', 'AK', 'Perempuan', 'Sie putih', '10/07/2018', 'Pulo gebang', '81262909679', 'Agussagita.manurung@gmail.com', 'Manurung sita', '1081996', 1, 'Ingin dekat dengan alam'),
(2018104160, 'Pegy febrianty', 'BC', 'Perempuan', 'Jakarta', '7/16/1999', 'Jalan swasembada barat 5 no. 6 rt/014 rw/009 kel. Kebon bawang kec. Tanjung priok. Kota. Jakarta utara', '81818715972', 'pegyfebrianty16@gmail.com', 'Pegyfbrnty', 'Pegyfbrnty', 2, 'Ingin membuat anak-anak senang dan bisa tertawa bersama'),
(2018104161, 'Yasmine Zahradina Rizaldi', 'CI', 'Perempuan', 'Jakarta', '03/03/2000', 'Jalan mangga besar XIII rt 01 rw 01 nomor 1', '82246626213', 'Yasminezahradina@ymail.com', 'Yasmineeeey', 'Yasminezahradina', 1, 'Saya suka mengikuti kegiatan alam dan sosialisasi, dan saya suka mempunyai banyak teman dan kenalan. Saya mau menjadi orang yang bisa berguna untuk orang lain dengan cara yang saya bisa'),
(2018104176, 'Niken Alfina Sandrinur', 'IF', 'Perempuan', 'Jakarta', '7/17/2000', 'Jl Malaka 4 no 34 RT 4 RW 8 Kelurahan Malaka Sari kecamatan duren sawit Jakarta timur', '82112991067', 'alfina207@yahoo.com', 'Nikenalfina', 'Nikenalfina17', 2, 'Menambah pengalaman'),
(2018104183, 'Kalila azkya', 'SC', 'Perempuan', 'Jakarta', '7/23/2000', 'Jl. Pangeran rt.03/rw.02 no.7d condet balekambang', '81285713326', 'Kalilaatn@gmail.com', 'Azkkal', 'Azkyakal', 1, 'Sekarang mungkin saya belum dapat berkontribusi secara langsung kepada saudara disekitar saya, namun dengan kegiatan ini insyaallah saya dapat membantu saudara sebangsa dan setanah air. Serta mendapat pengalaman baru yang belum pernah saya rasakan.'),
(2018104187, 'Rahel kezia', 'SC', 'Perempuan', 'Jakarga', '7/31/2000', 'Rgtc blok cendana', '82316666696', 'Rahelkezia31@gmail.com', 'Rahelkezia', 'Rahelkezia31', 1, 'Saya ingin merasakan berbagi dan peduli kepada teman teman saya yang ada diluar sana'),
(2018104199, 'Savira Nurulita', 'SC', 'Perempuan', 'Jakarta', '4/27/2000', 'Jl. Marzuki 2 RT010/001 No.34 Penggilingan, Cakung, Jakarta Timur 13940', '81908487627', 'snurulitaa@gmail.com', 'saviranurulita_', 'snurulita', 1, 'berbagi ke sesama'),
(2018104207, 'Istiazah perdana putri', 'DV', 'Perempuan', 'Palu', '6/21/2000', 'Jl. Ekorkuning IV no 51', '081e84365874', 'Perdanadfcb@gmail.com', 'Putri_istiazah', 'ipprwn', 1, 'Saya ingin menjadikan alam indonesia menjadi lebih bersih dan baik lagi'),
(2018104219, 'Akbar Maulana Ali', 'BC', 'Laki-laki', 'Jakarta', '3/26/1999', 'GG. Al-Ikhlas 3 no:145 RT:001/015, ujung harapan, Babelan, Bekasi Utara.', '81317966736', 'akbarmaung98@gmail.com', 'amaulanaa26', 'akbar.m_a', 1, 'Ingin membantu orang yang membutuhkan bantuan'),
(2018104227, 'Salsabila Khendra', 'CI', 'Perempuan', 'Jakarta', '10/01/2000', 'Jl. Sunter karya selatan v blok HA 1 NO.4 RT. 017 RW. 013', '82112318779', 'Lazula.sasya@gmail.com', 'Lazula_sasya', 'Mey2_salsabila', 2, 'Saya ingin mengisi waktu dengan kegiatan yang bermanfaat seperti, menciptakan kegiatan sosial yang kreatif di lingkungan masyarakat melalui KCS. Selain itu, saya juga ingin belajar bagaimana cara berorganisasi di KCS.'),
(2018104238, 'Raden Adityo Priyo Harjuno', 'GC', 'Laki-laki', 'Jakarta', '5/27/2000', 'Jalan madrasah VI rt 03/09 no 25 pekayon, pasar rebo, jakarta timur', '87888945998', 'Cowmangler2000@gmail.com', 'Radenadityoo', 'radenadityoo', 1, 'Ingin menambah wawasan dan pengalaman dalam bidang sosial, dan ingin tahu lebih lanjut tentang apa saja yg di alami oleh orang lain dan juga ingin membantu'),
(2018104248, 'Larasati', 'AK', 'Perempuan', 'Jakarta', '10/26/1998', 'Jalan mardani raya no.12 rt 14 rw 05', '81332321033', 'lalalrst@gmail.com', 'lalaarst', 'lalalrst', 1, 'Karena saya ingin mengubah dunia bukan dari perkataan saja, tapi juga dari tangan dan kemampuan yang saya punya. Membantu sesama dan saya ingin melihat dunia dari bermacam-macam kehidupan, berbagi kebahagiaan bukan untuk diri sendiri dan ruang lingkup kecil saya saja, tetapi bisa tuk seluruh alam semesta dan juga penghuni didalamnya.'),
(2018104252, 'Friska Synthia Simangunsong', 'SC', 'Perempuan', 'Tebing Tinggi', '5/21/2000', 'Jln. Pulo Mas Timur II C No.4', '81292420080', 'friskasyn@gmail.com', 'fssmg_', 'friskasmg', 1, 'Saya ingin belajar berbagi dan tau bagaimana saya belajar peduli kepada teman teman diluar sana'),
(2018104253, 'Natasha Gunawan', 'CI', 'Perempuan', 'Sidney', '6/29/2000', 'Taman modern blok c5 no 14, Cakung, Jakarta Timur', '895391030140', 'natashagunawan10@gmail.com', NULL, 'natnatashaa_', 1, 'Karena saya suka turut terjun kedalam kegiatan bakti sosial seperti membantu orang orang sekitar saya dan saya turut senang ketika orang yang saya bantu bisa turut tersenyum gembira karna bantuan yang saya berikan'),
(2018104264, 'Astri Nailah Aurelia', 'CI', 'Perempuan', 'Jakarta', '6/15/1999', 'Perumahan dukuh zamrud blok M 12 No.8, Bekasi', '87788369042', 'astrilia99@gmail.com', 'astri_nailah', 'astri_nailah', 3, 'Saya memiliki Autoimun. Tapi saya ingin ikut peduli kepada orang-orang disekitar lingkungan saya.'),
(2018104271, 'dhinda firizky farhanah', 'DV', 'Perempuan', 'jakarta', '8/17/2000', 'Kost Papago Guest House Jakarta Pusat alamat Jl. Cempaka Putih Timur XIV No.72A Jakarta Pusat.', '81290721804', 'dhindafarhanah1708@gmail.com', 'dhindaff', 'dhindafarhanah', 1, 'menambah wawasan'),
(2018104273, 'Risqina aulia khansa', 'IF', 'Perempuan', 'Jakarta', '11/03/2000', 'Jalan gorongtalo v no 1c', '87886213118', 'risqinaauliak@gmail.com', 'risqinaauliak', 'qinnna', 1, 'Karena saya ingin sekali membantu masyarakat sekitar dan saya peduli terhadap sesama'),
(2018104281, 'Annisa Vellisca Aditya', 'SC', 'Perempuan', 'Jakarta', '8/28/2000', 'Grand Prima Bintara', '82215650731', 'annisavellisca@gmail.com', 'velliscaditya', 'velliscaad', 2, 'ingin bersosialisasi, menambah pengalaman dan membantu orang lain'),
(2018104285, 'Maisyita Sakinah Putri', 'MB', 'Perempuan', 'Jakarta', '05/10/2000', 'Taman Modern Blok i1/28 RT 16 RW 06 Ujung Menteng, Cakung, Jakarta Timur. 13960', '85813918520', 'maaisyita51000@gmail.com', 'maisyitasakinah', 'maaisyita', 1, 'tujuan saya mengikuti kegiatan ini agar bisa menambah pengalaman dan malatih softskill saya dan juga menambah teman. dengan menjadi volunteer saya ingin berbuat kebaikan untuk orang lain karena hal itu bisa membuat diri saya merasa bangga dengan hal hal positive yang saya lakukan itu dan jg bisa membuat diri saya lebih percaya diri.'),
(2018104290, 'Claudia ayuningtyas', 'AK', 'Perempuan', 'Jakarta', '6/14/2000', 'Jalan labkes a5 no.4 rt 01 rw 04 sunter jaya', '85894754044', 'claudiaayu00@gmail.com', 'Clauddiaaa0', 'Claudiaaa14', 2, 'Karna saya menyukai kegiatan sosial'),
(2018104299, 'Illyasa fiqtiah emayanti', 'SC', 'Perempuan', 'Jakarta', '5/31/1999', 'Jln kayu manis utara matraman jakarta timur', '87780272784', 'Illyasafiqriahe@gmail.com', 'Illyasaf', 'Illyasaf', 1, 'Saya ingin menambah pengetahuan . pengalaman dan teman teman baru'),
(2018104307, 'Lisna Anggraeni Siregar', 'DV', 'Perempuan', 'DKI Jakarta', '8/29/2018', 'Jln.Cempaka warna No.37 RT07 RW04 Kel.Cempaka putih timur Kec.cempaka putih Kode pos.10510 Kota.jakarta pusat', '81212104595', 'lisnaanggraenii@gmail.com', 'lisnasiregar29', 'lisnaanggraenii', 1, 'Tujuan saya masuk ke kcs ingin memperdalam lg tentang ilmu sosial, dapat meringankan beban oranglain, hati menjadi tentram dan ikhlas karena membantu sesama, cinta terhadap sesama.'),
(2018104309, 'Nabila Maharani Santoso', 'AK', 'Perempuan', 'Bekasi', '06/10/2000', 'Pulo Gebang Permai Blok D1 No 8', '81382622081', 'nabilamaharani100600@gmail.com', 'nabilasant_', 'nblsnt', 2, 'Buat nambah pengalaman & pengetahuan'),
(2018104327, 'Angel Aprilia', 'AK', 'Perempuan', 'Jakarta', '4/20/2000', 'Jalan bangun cipta sarana RT 03/05 no.132 klp gdg Jakarta utara', '895615763788', 'Angel_apriliasb7@gmail.com', 'Angelapriliasb', 'angelapriliasb', 1, 'Nambah pengalaman'),
(2018104330, 'Fatma Dwiani Pertiwi', 'DV', 'Perempuan', 'Jakarta', '9/25/2000', 'Aneka Elok Blok D 5 No 11', '85695052136', 'defasantosa2509@yahoo.com', 'Defasantosa', 'defasantosa25', 1, 'Ingin mencoba belajar terhadap alam dan ingin memperdalam lagi ilmu sosial'),
(2018104332, 'Cikal nur padila', 'MN', 'Perempuan', 'Bandung', '6/18/2000', 'Jl komp uka blok ag no 7', '81317480300', 'Cikalnurp@gmail.com', 'Cikalnds', 'Tojannah', 1, 'Setidaknya saya berguna bagi sesama'),
(2018104333, 'Salsabilah risangayu', 'MN', 'Perempuan', 'Jakarta', '04/09/2001', 'Jalan lorong 101 timur no.91 koja jakarta utara', '81284954570', 'Salsabilahrisang@gmail.com', 'Salsabilahrisang', 'Salsabillahrisangayu', 1, 'Ingin menambah pengalaman dan menunjukan kepedulian sesama agar hidup lebih berguna juga bermanfaat'),
(2018104352, 'Muhammad Nur', 'BC', 'Laki-laki', 'Pandeglang', '11/11/1999', 'Jl.waringin 2 no 39 Rt 06 Rw 08 kelurahan kayu putih kec.pulo gadung. Jakarta Timur', '81918981854', 'muhammadnur1234567890@gmail.com', 'muhammadnur2059', 'muhammadnur123456789000', 1, 'Dapat Turut serta secara aktif dan langsung berbakti pada negeri dengan membantu sanak saudara sebangsa dan setanah air yang membutuhkan pertolongan dalam menyelesaikan permasalahan sosial. Serta bisa bekerja sama bahu membahu menjaga kelestarian alam dan menjamin kelangsungan ekosistem di dalamnya,dengan demikian melihat sepak terjang kakak kakak kcs di media sosial bahkan pernah secara langsung di daerahku belitung timur saat terjadi musibah banjir.maka saya tarik kesimpulan inilah jalan menuju bakti nyata untuk negri tercinta.'),
(2018104353, 'Lestari', 'CI', 'Perempuan', 'Manggar', '08/04/2000', 'Jl. Waringin 2 No. 39, Kayu Putih', '87896477739', 'lestari.horan48@gmail.com', 'les.tarii', 'lesstariii', 1, 'Karena saya ingin mengembangkan kepedulian saya kepada alam dan lingkungan. Saya juga ingin membantu orang-orang yang sedang membutuhkan serta mengabdikan diri saya pada kesejahteraan sosial di Indonesia.'),
(2018104355, 'Maria Ernesta Gua', 'MN', 'Perempuan', 'Bajawa', '1/17/2000', 'Jalan waringin 2, nomor 20 kosan putri', '81239216452', 'Irnagua@gmail.com', 'Irna Gua', 'Irna1100', 3, 'Agar lebih peduli terhadap lingkungan , dan orang lain. Dengan kegiatan ini bisa menambah wawasan saya'),
(2018104367, 'Fandya pandai tana maing', 'BC', 'Laki-laki', 'Jakarta', '12/18/2000', 'Jalan kebon bawang II no.27 Rt.010 Rw.007 kel. Kebon bawang kec. Tanjung priok', '87883135078', 'Pandiapandai@gmail.com', 'Pandia17', 'Pandia10', 1, 'Saya ingin ikut berpartisipasi dan siap membantu orang orang yg sedang mengalami kesusahan.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_nim` int(11) NOT NULL,
  `user_level` varchar(7) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_nim`, `user_level`, `user_password`) VALUES
(2013100566, 2013100566, 'admin', '2013100566'),
(2014101308, 2014101308, 'anggota', '2014101308'),
(2015101535, 2015101535, 'anggota', '2015101535'),
(2016102534, 2016102534, 'anggota', '2016102534'),
(2017003070, 2017003070, 'anggota', '2017003070'),
(2017003234, 2017003234, 'anggota', '2017003234'),
(2017003464, 2017003464, 'anggota', '2017003464'),
(2017003686, 2017003686, 'anggota', '2017003686'),
(2017003708, 2017003708, 'anggota', '2017003708'),
(2017103017, 2017103017, 'anggota', '2017103017'),
(2017103028, 2017103028, 'anggota', '2017103028'),
(2017103105, 2017103105, 'anggota', '2017103105'),
(2017103128, 2017103128, 'anggota', '2017103128'),
(2017103204, 2017103204, 'anggota', '2017103204'),
(2017103211, 2017103211, 'anggota', '2017103211'),
(2017103254, 2017103254, 'anggota', '2017103254'),
(2017103399, 2017103399, 'anggota', '2017103399'),
(2017103465, 2017103465, 'anggota', '2017103465'),
(2017103481, 2017103481, 'anggota', '2017103481'),
(2017103483, 2017103483, 'anggota', '2017103483'),
(2017103498, 2017103498, 'anggota', '2017103498'),
(2017103542, 2017103542, 'anggota', '2017103542'),
(2017103554, 2017103554, 'anggota', '2017103554'),
(2017103590, 2017103590, 'anggota', '2017103590'),
(2017103594, 2017103594, 'anggota', '2017103594'),
(2017103604, 2017103604, 'anggota', '2017103604'),
(2017103615, 2017103615, 'anggota', '2017103615'),
(2017103621, 2017103621, 'anggota', '2017103621'),
(2017103644, 2017103644, 'anggota', '2017103644'),
(2017103646, 2017103646, 'anggota', '2017103646'),
(2017103692, 2017103692, 'anggota', '2017103692'),
(2017103701, 2017103701, 'anggota', '2017103701'),
(2017103721, 2017103721, 'anggota', '2017103721'),
(2017103744, 2017103744, 'anggota', '2017103744'),
(2018003837, 2018003837, 'anggota', '2018003837'),
(2018003962, 2018003962, 'anggota', '2018003962'),
(2018004069, 2018004069, 'anggota', '2018004069'),
(2018004109, 2018004109, 'anggota', '2018004109'),
(2018004181, 2018004181, 'anggota', '2018004181'),
(2018004182, 2018004182, 'anggota', '2018004182'),
(2018004212, 2018004212, 'anggota', '2018004212'),
(2018004214, 2018004214, 'anggota', '2018004214'),
(2018004337, 2018004337, 'anggota', '2018004337'),
(2018004370, 2018004370, 'anggota', '2018004370'),
(2018103809, 2018103809, 'anggota', '2018103809'),
(2018103811, 2018103811, 'anggota', '2018103811'),
(2018103823, 2018103823, 'anggota', '2018103823'),
(2018103828, 2018103828, 'anggota', '2018103828'),
(2018103833, 2018103833, 'anggota', '2018103833'),
(2018103834, 2018103834, 'anggota', '2018103834'),
(2018103836, 2018103836, 'anggota', '2018103836'),
(2018103843, 2018103843, 'anggota', '2018103843'),
(2018103882, 2018103882, 'anggota', '2018103882'),
(2018103900, 2018103900, 'anggota', '2018103900'),
(2018103903, 2018103903, 'anggota', '2018103903'),
(2018103908, 2018103908, 'anggota', '2018103908'),
(2018103958, 2018103958, 'anggota', '2018103958'),
(2018103960, 2018103960, 'anggota', '2018103960'),
(2018103968, 2018103968, 'anggota', '2018103968'),
(2018103975, 2018103975, 'anggota', '2018103975'),
(2018104002, 2018104002, 'anggota', '2018104002'),
(2018104005, 2018104005, 'anggota', '2018104005'),
(2018104007, 2018104007, 'anggota', '2018104007'),
(2018104020, 2018104020, 'anggota', '2018104020'),
(2018104023, 2018104023, 'anggota', '2018104023'),
(2018104026, 2018104026, 'anggota', '2018104026'),
(2018104028, 2018104028, 'anggota', '2018104028'),
(2018104041, 2018104041, 'anggota', '2018104041'),
(2018104046, 2018104046, 'anggota', '2018104046'),
(2018104047, 2018104047, 'anggota', '2018104047'),
(2018104056, 2018104056, 'anggota', '2018104056'),
(2018104058, 2018104058, 'anggota', '2018104058'),
(2018104071, 2018104071, 'anggota', '2018104071'),
(2018104072, 2018104072, 'anggota', '2018104072'),
(2018104091, 2018104091, 'anggota', '2018104091'),
(2018104097, 2018104097, 'anggota', '2018104097'),
(2018104098, 2018104098, 'anggota', '2018104098'),
(2018104105, 2018104105, 'anggota', '2018104105'),
(2018104108, 2018104108, 'anggota', '2018104108'),
(2018104115, 2018104115, 'anggota', '2018104115'),
(2018104123, 2018104123, 'anggota', '2018104123'),
(2018104128, 2018104128, 'anggota', '2018104128'),
(2018104134, 2018104134, 'anggota', '2018104134'),
(2018104160, 2018104160, 'anggota', '2018104160'),
(2018104161, 2018104161, 'anggota', '2018104161'),
(2018104176, 2018104176, 'anggota', '2018104176'),
(2018104183, 2018104183, 'anggota', '2018104183'),
(2018104187, 2018104187, 'anggota', '2018104187'),
(2018104199, 2018104199, 'anggota', '2018104199'),
(2018104207, 2018104207, 'anggota', '2018104207'),
(2018104219, 2018104219, 'anggota', '2018104219'),
(2018104227, 2018104227, 'anggota', '2018104227'),
(2018104238, 2018104238, 'anggota', '2018104238'),
(2018104248, 2018104248, 'anggota', '2018104248'),
(2018104252, 2018104252, 'anggota', '2018104252'),
(2018104253, 2018104253, 'anggota', '2018104253'),
(2018104264, 2018104264, 'anggota', '2018104264'),
(2018104271, 2018104271, 'anggota', '2018104271'),
(2018104273, 2018104273, 'anggota', '2018104273'),
(2018104281, 2018104281, 'anggota', '2018104281'),
(2018104285, 2018104285, 'anggota', '2018104285'),
(2018104290, 2018104290, 'anggota', '2018104290'),
(2018104299, 2018104299, 'anggota', '2018104299'),
(2018104307, 2018104307, 'anggota', '2018104307'),
(2018104309, 2018104309, 'anggota', '2018104309'),
(2018104327, 2018104327, 'anggota', '2018104327'),
(2018104330, 2018104330, 'anggota', '2018104330'),
(2018104332, 2018104332, 'anggota', '2018104332'),
(2018104333, 2018104333, 'anggota', '2018104333'),
(2018104352, 2018104352, 'anggota', '2018104352'),
(2018104353, 2018104353, 'anggota', '2018104353'),
(2018104355, 2018104355, 'anggota', '2018104355'),
(2018104367, 2018104367, 'anggota', '2018104367');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`divisi_id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`jurusan_id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
