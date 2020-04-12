-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2019 pada 20.21
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubespbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adopsi`
--

CREATE TABLE `adopsi` (
  `NoAdposi` varchar(250) NOT NULL,
  `Id_Adopsi` int(11) NOT NULL,
  `Nama_Pengadopsi` varchar(250) NOT NULL,
  `Alamat_Pengadopsi` varchar(250) NOT NULL,
  `Jenis_HewanAdopsi` varchar(250) NOT NULL,
  `Jenis_KelaminHewanAdopsi` varchar(250) NOT NULL,
  `Notlp_Pengadopsi` varchar(250) NOT NULL,
  `Umur_hewanAdopsi` varchar(250) NOT NULL,
  `Tgladopsi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adopsi`
--

INSERT INTO `adopsi` (`NoAdposi`, `Id_Adopsi`, `Nama_Pengadopsi`, `Alamat_Pengadopsi`, `Jenis_HewanAdopsi`, `Jenis_KelaminHewanAdopsi`, `Notlp_Pengadopsi`, `Umur_hewanAdopsi`, `Tgladopsi`) VALUES
('19112433001', 18, 'hilal', 'jl.sukapura', 'Abyssinian', 'Betina', '12312313', '12', '2019-11-24'),
('19112833001', 19, 'Fresya', 'jl.sukapura', 'Siamese', 'Betina', '0831231212', '12', '2019-11-28'),
('19112833002', 20, 'bayu', 'jl.sukapura', 'Abyssinian', 'Betina', '081122231', '2', '2019-11-28'),
('19120333001', 21, 'Surya', 'jl.sukabirus', 'Munchkin', 'Betina', '0811231122', '2', '2019-12-03'),
('19120333002', 22, 'Bagus', 'jl.sukabirus', 'Russian Blue', 'Jantan', '0811231231', '1', '2019-12-03'),
('19120333003', 23, 'irfan', 'jl.adhyaksa', 'Burmese', 'Jantan', '0811421062', '3', '2019-12-03'),
('19120333004', 24, 'azzam', 'jl.adhyaksa 4', 'Maine Coon', 'Betina', '0812212312', '2,5', '2019-12-03'),
('19120333005', 25, 'welsy', 'jl.ciganitrit', 'Ragdoll', 'Betina', '0851122211', '3', '2019-12-03'),
('19120333006', 26, 'alfath', 'jl.margahayu', 'PUG', 'Jantan', '081112221', '1', '2019-12-03'),
('19120533001', 27, 'deny', 'Jl.Sukapura', 'Maine Coon', 'Jantan', '0897523122', '2', '2019-12-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_perawatan`
--

CREATE TABLE `data_perawatan` (
  `IdPerawatan` int(11) NOT NULL,
  `NamaPerawatan` varchar(250) NOT NULL,
  `HargaPerawatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_perawatan`
--

INSERT INTO `data_perawatan` (`IdPerawatan`, `NamaPerawatan`, `HargaPerawatan`) VALUES
(1, 'Grooming universal sticky buddy', '100000'),
(2, 'Grooming shampo anti jamur', '100000'),
(3, 'Grooming hand blower', '100000'),
(4, 'Tatto / Cat bulu', '150000'),
(5, 'Spa / Pijit', '200000'),
(6, 'Styling bulu', '150000'),
(7, 'Day Care', '500000'),
(8, 'Cats and Dogs Hotel', '550000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_stock`
--

CREATE TABLE `data_stock` (
  `IdStock` int(11) NOT NULL,
  `Merek` varchar(250) NOT NULL,
  `Nama_Stock` varchar(250) NOT NULL,
  `Kategori_Stock` varchar(250) NOT NULL,
  `Deskripsi_Stock` varchar(250) NOT NULL,
  `Kemasan_Stock` varchar(250) NOT NULL,
  `Harga_Stock` varchar(250) NOT NULL,
  `Jumlah_Stock` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_stock`
--

INSERT INTO `data_stock` (`IdStock`, `Merek`, `Nama_Stock`, `Kategori_Stock`, `Deskripsi_Stock`, `Kemasan_Stock`, `Harga_Stock`, `Jumlah_Stock`) VALUES
(10, 'Me-O', 'Meo Persian', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '70000', '100'),
(11, 'Me-O', 'Meo Adult tuna', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '65000', '100'),
(12, 'Me-O', 'Meo Adult Chiken', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '65000', '100'),
(13, 'Me-O', 'Meo Adult beef', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '65000', '100'),
(14, 'Me-O', 'Meo Kitten', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '65000', '100'),
(15, 'Royal Canin', 'Dewasa Maine Coon', 'Makanan', 'Makanan Kucing', 'Kemasan Sedang', '240000', '100'),
(16, 'Royal Canin', 'Dewasa Maine Coon', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '60000', '100'),
(17, 'Royal Canin', 'Dewasa Maine Coon', 'Makanan', 'Makanan Kucing', 'Kemasan Besar', '430000', '100'),
(18, 'Royal Canin', 'Royal Canin Dewasa Persian', 'Makanan', 'Makanan Kucing', 'Kemasan Sedang', '240000', '100'),
(19, 'Royal Canin', 'Royal Canin Dewasa Persian', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '60000', '100'),
(20, 'Royal Canin', 'Royal Canin Baby Cat Milk', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '300000', '100'),
(21, 'Royal Canin', 'Royal Canin Baby Cat', 'Makanan', 'Makanan Kucing', 'Kemasan Besar', '230000', '100'),
(22, 'Royal Canin', 'Royal Canin Exigent', 'Makanan', 'Makanan Kucing', 'Kemasan Besar', '230000', '100'),
(23, 'Royal Canin', 'Royal Canin Fit', 'Makanan', 'Makanan Kucing', 'Kemasan Super Besar', '800000', '100'),
(24, 'Felibite', 'Felibite kitten', 'Makanan', 'Makanan Kucing', 'Kemasan Sedang', '22000', '100'),
(25, 'Felibite', 'Felibite Adult', 'Makanan', 'Makanan Kucing', 'Kemasan Sedang', '25000', '100'),
(26, 'Felibite', 'Felibite Adult', 'Makanan', 'Makanan Kucing', 'Kemasan Besar', '174000', '100'),
(27, 'Felibite', 'Felibite Adult', 'Makanan', 'Makanan Kucing', 'Kemasan Super Besar', '400000', '100'),
(28, 'Frieskies', 'Frieskies 2 In 1gravy Coated', 'Makanan', 'Makanan Kucing', 'Kemasan Kecil', '67000', '100'),
(29, 'Equilibrio ', 'Equilibrio Dog Foods', 'Makanan', 'Makanan Anjing', 'Kemasan Kecil', '143000', '100'),
(30, 'Equilibrio ', 'Equilibrio Dog Foods', 'Makanan', 'Makanan Anjing', 'Kemasan Sedang', '200000', '100'),
(31, 'Equilibrio ', 'Equilibrio Dog Foods', 'Makanan', 'Makanan Anjing', 'Kemasan Besar', '607000', '100'),
(32, 'Country', 'Country Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Kecil', '50000', '100'),
(33, 'Country', 'Country Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Sedang', '100000', '100'),
(34, 'Country', 'Country Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Besar', '250000', '100'),
(35, 'Pro Plan', 'Pro Plan Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Kecil', '100000', '100'),
(36, 'Pro Plan', 'Pro Plan Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Sedang', '250000', '100'),
(37, 'Pro Plan', 'Pro Plan Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Besar', '800000', '100'),
(38, 'Pedigree', 'Pedigree Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Kecil', '55000', '100'),
(39, 'Pedigree', 'Pedigree Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Sedang', '155000', '100'),
(40, 'Pedigree', 'Pedigree Dog Food', 'Makanan', 'Makanan Anjing', 'Kemasan Besar', '500000', '100'),
(41, 'Royal Canin', 'Royal Canin Exigent', 'Makanan', 'Makanan Anjing', 'Kemasan Kecil', '57000', '100'),
(42, 'Royal Canin', 'Royal Canin Exigent', 'Makanan', 'Makanan Anjing', 'Kemasan Sedang', '114000', '100'),
(43, 'Royal Canin', 'Royal Canin Exigent', 'Makanan', 'Makanan Anjing', 'Kemasan Besar', '400000', '100'),
(44, 'Royal Canin', 'Royal Canin Exigent', 'Makanan', 'Makanan Anjing', 'Kemasan Super Besar', '800000', '100'),
(45, 'Growssy', 'Afilliate New Zealand Growssy Milk', 'Minuman', 'Minuman Kucing', 'Kemasan Kecil', '10000', '100'),
(46, 'Growssy', 'Afilliate New Zealand Growssy Milk', 'Minuman', 'Minuman Kucing', 'Kemasan Sedang', '35000', '100'),
(47, 'Growssy', 'Afilliate New Zealand Growssy Milk', 'Minuman', 'Minuman Kucing', 'Kemasan Besar', '80000', '100'),
(48, 'Bioline', 'Bioline Goat Milk for Cats', 'Minuman', 'Minuman Kucing', 'Kemasan Kecil', '8000', '99'),
(49, 'Bioline', 'Bioline Goat Milk for Cats', 'Minuman', 'Minuman Kucing', 'Kemasan Sedang', '28000', '100'),
(50, 'Bioline', 'Bioline Goat Milk for Cats', 'Minuman', 'Minuman Kucing', 'Kemasan Besar', '60000', '100'),
(51, 'Hartz', 'Hartz Kitten Milk Replacer Powdered Formula', 'Minuman', 'Minuman Kucing', 'Kemasan Kecil', '40000', '100'),
(52, 'Hartz', 'Hartz Kitten Milk Replacer Powdered Formula', 'Minuman', 'Minuman Kucing', 'Kemasan Sedang', '90000', '100'),
(53, 'Hartz', 'Hartz Kitten Milk Replacer Powdered Formula', 'Minuman', 'Minuman Kucing', 'Kemasan Sedang', '120000', '100'),
(54, 'GimCat', 'Gimborn GimCat Cat-Milk', 'Minuman', 'Minuman Kucing', 'Kemasan Kecil', '50000', '100'),
(55, 'GimCat', 'Gimborn GimCat Cat-Milk', 'Minuman', 'Minuman Kucing', 'Kemasan Sedang', '100000', '100'),
(56, 'GimCat', 'Gimborn GimCat Cat-Milk', 'Minuman', 'Minuman Kucing', 'Kemasan Besar', '150000', '100'),
(57, 'Bioline', 'Bioline Goat Milk for dogs', 'Minuman', 'Minuman Anjing', 'Kemasan Kecil', '8000', '100'),
(58, 'Bioline', 'Bioline Goat Milk for goats', 'Minuman', 'Minuman Anjing', 'Kemasan Sedang', '28000', '100'),
(59, 'Bioline', 'Bioline Goat Milk for dogs', 'Minuman', 'Minuman Anjing', 'Kemasan Besar', '60000', '100'),
(60, 'Growppy', 'Growppy Milk', 'Minuman', 'Minuman Anjing', 'Kemasan Kecil', '20000', '100'),
(61, 'Growppy', 'Growppy Milk', 'Minuman', 'Minuman Anjing', 'Kemasan Sedang', '40000', '100'),
(62, 'Growppy', 'Growppy Milk', 'Minuman', 'Minuman Anjing', 'Kemasan Besar', '60000', '100'),
(63, 'Dr. K', 'Dr. K Pet Milk', 'Minuman', 'Minuman Anjing', 'Kemasan Kecil', '23000', '100'),
(64, 'Dr. K', 'Dr. K Pet Milk', 'Minuman', 'Minuman Anjing', 'Kemasan Sedang', '46000', '100'),
(65, 'Dr. K', 'Dr. K Pet Milk', 'Minuman', 'Minuman Anjing', 'Kemasan Besar', '88000', '100'),
(66, 'Nutri+gen', 'Nutri+gen for diet', 'Vitamin', 'Vitamin Kucing', 'Kemasan Sedang', '100000', '100'),
(67, 'Virbac', 'Virbac Megaderm Nutri-Plus Gel', 'Vitamin', 'Vitamin Kucing', 'Kemasan Sedang', '20000', '100'),
(68, 'FaVor', 'FaVor Tablet', 'Vitamin', 'Vitamin Kucing', 'Kemasan Sedang', '120000', '100'),
(69, 'Kennel’s Favourite', 'Kennel’s Favourite Pastilles Biotin', 'Vitamin', 'Vitamin Anjing', 'Kemasan Sedang', '100000', '100'),
(70, 'Dermatrix', 'Dermatrix for Dogs', 'Vitamin', 'Vitamin Anjing', 'Kemasan Sedang', '110000', '100'),
(71, 'Pro Vet', 'Pro Vet Pastils Anti Parasits', 'Vitamin', 'Vitamin Anjing', 'Kemasan Sedang', '130000', '99'),
(72, 'Rockware', 'ROCKWARE Dog Leash Adjustable Harness Neck Collar Set Canvass Model Red', 'Accessories', 'Accessories Anjing', 'Ukuran Besar', '123000', '100'),
(73, 'Rockware', 'ROCKWARE Dog Leash Adjustable Harness Neck Collar Set Canvass Model Blue', 'Accessories', 'Accessories Kucing', 'Ukuran Besar', '123000', '100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `jual_tanggal` date NOT NULL,
  `jual_kasir` varchar(250) NOT NULL,
  `jual_total` int(250) NOT NULL,
  `jual_cash` varchar(250) NOT NULL,
  `jual_kembali` varchar(250) NOT NULL,
  `Notransaksi` varchar(250) NOT NULL,
  `idjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`jual_tanggal`, `jual_kasir`, `jual_total`, `jual_cash`, `jual_kembali`, `Notransaksi`, `idjual`) VALUES
('2019-11-22', 'Kasir', 100000, '100000', '0', '19112211001', 7),
('2019-11-24', 'Kasir', 1000000, '1000000', '0', '19112411001', 8),
('2019-11-28', 'Kasir', 24000, '25000', '1000', '19112811001', 10),
('2019-11-29', 'Kasir', 160000, '165000', '5000', '19112911001', 11),
('2019-11-29', 'Kasir', 100000, '100000', '0', '19112911002', 12),
('2019-11-29', 'Kasir', 80000, '85000', '5000', '19112911003', 13),
('2019-12-03', 'Kasir', 80000, '85000', '5000', '19120311001', 14),
('2019-12-05', 'Kasir', 138000, '140000', '2000', '19120511001', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual_detail`
--

CREATE TABLE `jual_detail` (
  `Notransaksi` varchar(250) NOT NULL,
  `jual_barangID` varchar(250) NOT NULL,
  `jual_harga` varchar(250) NOT NULL,
  `jual_qty` varchar(250) NOT NULL,
  `jual_subtotal` varchar(250) NOT NULL,
  `jual_time` datetime NOT NULL,
  `idtransaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jual_detail`
--

INSERT INTO `jual_detail` (`Notransaksi`, `jual_barangID`, `jual_harga`, `jual_qty`, `jual_subtotal`, `jual_time`, `idtransaksi`) VALUES
('19112211001', '3', '100000', '1', '100000', '2019-11-22 08:51:32', 8),
('19112311001', '5', '500000', '2', '1000000', '2019-11-23 06:12:09', 11),
('19112411001', '5', '500000', '2', '1000000', '2019-11-24 01:51:17', 12),
('19112611001', '5', '500000', '2', '1000000', '2019-11-26 02:29:34', 13),
('19112811001', '8', '12000', '2', '24000', '2019-11-28 01:05:38', 16),
('19112811002', '7', '80000', '2', '160000', '2019-11-28 09:59:22', 17),
('19112911001', '9', '80000', '2', '160000', '2019-11-29 12:28:32', 18),
('19112911002', '6', '50000', '2', '100000', '2019-11-29 12:35:33', 19),
('19112911003', '9', '80000', '1', '80000', '2019-11-29 01:04:51', 20),
('19120311001', '9', '80000', '1', '80000', '2019-12-03 02:09:27', 21),
('19120511001', '71', '130000', '1', '130000', '2019-12-05 02:14:49', 22),
('19120511001', '48', '8000', '1', '8000', '2019-12-05 02:14:59', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `Idkaryawan` int(11) NOT NULL,
  `Nama` varchar(250) NOT NULL,
  `Alamat` varchar(250) NOT NULL,
  `Kota` varchar(250) NOT NULL,
  `Telepon` varchar(250) NOT NULL,
  `Umur` varchar(250) NOT NULL,
  `JenisKelamin` varchar(250) NOT NULL,
  `Posisi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`Idkaryawan`, `Nama`, `Alamat`, `Kota`, `Telepon`, `Umur`, `JenisKelamin`, `Posisi`) VALUES
(12, 'Bob Charley', 'Jl.sentosa', 'Jakarta Barat', '08999212151', '23', 'Laki-Laki', 'Kasir'),
(13, 'Kayling', 'Jl.Raya indah', 'bandung', '081123443212', '25', 'Perempuan', 'Perawat'),
(14, 'Blaze', 'Jl.Mekar', 'bandung', '0811234432322', '25', 'Perempuan', 'Perawat'),
(15, 'Clare', 'Jl.Suropati', 'bandung', '0811234432322', '21', 'Perempuan', 'Perawat'),
(16, 'Jonas', 'Jl.buah batu', 'bandung', '085123443216', '20', 'Laki-Laki', 'Kasir'),
(17, 'Adelyn', 'Jl.sukapura', 'Bandung', '08513312398', '19', 'Perempuan', 'Kasir'),
(18, 'Wade', 'Jl.Sukabirus', 'Bandung', '082123444442', '20', 'Laki-Laki', 'Kasir'),
(19, 'Madden', 'Jl.Sukabirus', 'Bandung', '082131116743', '22', 'Laki-Laki', 'Perawat'),
(20, 'Tucker', 'Jl.Adhyaksa V', 'Bandung', '082999208414', '29', 'Laki-Laki', 'Kasir'),
(21, 'Andreas', 'Jl.Radio', 'Bandung', '082253773910', '26', 'Laki-Laki', 'Perawat'),
(22, 'Scarlet', 'JL.Sukapura', 'Bandung', '089525443777', '28', 'Perempuan', 'Perawat'),
(23, 'Anita', 'Jl.Batu indah', 'bandung', '089023833555', '22', 'Perempuan', 'Kasir'),
(24, 'Hendra', 'Jl.Parakan Asri', 'Bandung', '087143443900', '21', 'Laki-Laki', 'Perawat'),
(25, 'Andini', 'Jl.Batununggal Indah Raya', 'Bandung', '087120051111', '28', 'Perempuan', 'Kasir'),
(26, 'Dobleh', 'Jl.Sekelimus', 'Bandung', '0893417653876', '19', 'Laki-Laki', 'Perawat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Iduser` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `JenisUser` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Iduser`, `Username`, `Password`, `JenisUser`) VALUES
(1, 'nurhilal', 'h@mdi443G', 'Karyawan'),
(2, 'bayu', 'yunusbayu', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan`
--

CREATE TABLE `perawatan` (
  `NoPerawatan` varchar(250) NOT NULL,
  `perawatan_tanggal` date NOT NULL,
  `perawat` varchar(250) NOT NULL,
  `perawatan_total` int(250) NOT NULL,
  `perawatan_cash` varchar(250) NOT NULL,
  `perawatan_kembali` varchar(250) NOT NULL,
  `IDperawatanselesai` int(11) NOT NULL,
  `namapemilik` varchar(250) NOT NULL,
  `namapeliharaan` varchar(250) NOT NULL,
  `jenispeliharaan` varchar(250) NOT NULL,
  `jeniskelamin` varchar(250) NOT NULL,
  `telepon` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perawatan`
--

INSERT INTO `perawatan` (`NoPerawatan`, `perawatan_tanggal`, `perawat`, `perawatan_total`, `perawatan_cash`, `perawatan_kembali`, `IDperawatanselesai`, `namapemilik`, `namapeliharaan`, `jenispeliharaan`, `jeniskelamin`, `telepon`, `alamat`) VALUES
('19112100008', '2019-11-21', 'Aep Suwanda', 700000, '700000', '0', 13, 'Hilal', 'Sweety', 'Kucing Anggora', 'Jenis Kelamin', '081123123', 'Jl.Cigudug'),
('19112100009', '2019-11-21', 'Aep Suwanda', 200000, '200000', '0', 14, 'Bayu', 'Bruno venus', 'Bulldog black', 'Jantan', '0811223123', ''),
('19112100010', '2019-11-21', 'Bayu Ferguso', 150000, '200000', '', 15, 'bayu salam', 'meong', 'kucing', 'Jantan', '45454', 'ggg'),
('19112422001', '2019-11-24', 'Perawat', 100000, '120000', '20000', 16, 'fresya', 'sweety', 'kucing', 'Betina', '0812311231', 'jl.sukapura'),
('19112822001', '2019-11-28', 'Bayu Ferguso', 100000, '100000', '0', 17, 'hilal', 'sweetty', 'kucing', 'Betina', '08111221', 'jl.sukapura'),
('19112922001', '2019-11-29', 'Erlangga', 100000, '100000', '0', 18, 'hilal', 'buzz', 'anjing bulldog', 'Jantan', '08112312', 'jl.sukapura'),
('19120322001', '2019-12-03', 'Erlangga', 500000, '500000', '0', 19, 'surya', 'medley', 'anjing', 'Jantan', '0811234112', 'jl.sukabirus'),
('19120522001', '2019-12-05', 'Madden', 500000, '500000', '0', 20, 'ahmed', 'Pluim', 'anjing', 'Jantan', '0887655211', 'Jl.sukabirus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawatan_detail`
--

CREATE TABLE `perawatan_detail` (
  `NoPerawatan` varchar(250) NOT NULL,
  `IdDetailRawat` varchar(250) NOT NULL,
  `HargaPerawatan` varchar(250) NOT NULL,
  `PerawatanSubtotal` varchar(250) NOT NULL,
  `Perawatantime` datetime NOT NULL,
  `Idrawat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perawatan_detail`
--

INSERT INTO `perawatan_detail` (`NoPerawatan`, `IdDetailRawat`, `HargaPerawatan`, `PerawatanSubtotal`, `Perawatantime`, `Idrawat`) VALUES
('19112100001', '8', '550000', '550000', '2019-11-21 01:40:08', 49),
('19112100001', '6', '150000', '150000', '2019-11-21 01:49:45', 50),
('19112100002', '5', '200000', '200000', '2019-11-21 01:53:19', 51),
('19112100002', '2', '100000', '100000', '2019-11-21 01:53:23', 52),
('19112100003', '1', '100000', '100000', '2019-11-21 01:54:19', 53),
('19112100003', '2', '100000', '100000', '2019-11-21 01:54:21', 54),
('19112100004', '2', '100000', '100000', '2019-11-21 01:55:12', 55),
('19112100004', '3', '100000', '100000', '2019-11-21 01:55:21', 56),
('19112100005', '1', '100000', '100000', '2019-11-21 02:15:42', 57),
('19112100006', '6', '150000', '150000', '2019-11-21 02:16:11', 58),
('19112100007', '8', '550000', '550000', '2019-11-21 02:16:33', 59),
('19112100008', '1', '100000', '100000', '2019-11-21 02:26:47', 60),
('19112100008', '2', '100000', '100000', '2019-11-21 02:27:15', 61),
('19112100008', '7', '500000', '500000', '2019-11-21 02:45:21', 62),
('19112100009', '5', '200000', '200000', '2019-11-21 02:51:27', 63),
('19112100010', '4', '150000', '150000', '2019-11-21 04:20:01', 64),
('19112422001', '2', '100000', '100000', '2019-11-24 01:49:25', 65),
('19112422002', '', '', '', '2019-11-24 01:59:34', 66),
('19112422002', '2', '100000', '100000', '2019-11-24 02:09:37', 67),
('19112422002', '3', '100000', '100000', '2019-11-24 02:09:55', 68),
('19112822001', '2', '100000', '100000', '2019-11-28 01:08:01', 69),
('19112922001', '1', '100000', '100000', '2019-11-29 01:17:04', 70),
('19120322001', '7', '500000', '500000', '2019-12-03 02:15:59', 71),
('19120522001', '7', '500000', '500000', '2019-12-05 02:17:11', 72);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adopsi`
--
ALTER TABLE `adopsi`
  ADD PRIMARY KEY (`Id_Adopsi`);

--
-- Indeks untuk tabel `data_perawatan`
--
ALTER TABLE `data_perawatan`
  ADD PRIMARY KEY (`IdPerawatan`);

--
-- Indeks untuk tabel `data_stock`
--
ALTER TABLE `data_stock`
  ADD PRIMARY KEY (`IdStock`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`idjual`);

--
-- Indeks untuk tabel `jual_detail`
--
ALTER TABLE `jual_detail`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Idkaryawan`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Iduser`);

--
-- Indeks untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`IDperawatanselesai`);

--
-- Indeks untuk tabel `perawatan_detail`
--
ALTER TABLE `perawatan_detail`
  ADD PRIMARY KEY (`Idrawat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adopsi`
--
ALTER TABLE `adopsi`
  MODIFY `Id_Adopsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `data_perawatan`
--
ALTER TABLE `data_perawatan`
  MODIFY `IdPerawatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `data_stock`
--
ALTER TABLE `data_stock`
  MODIFY `IdStock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `jual`
--
ALTER TABLE `jual`
  MODIFY `idjual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `jual_detail`
--
ALTER TABLE `jual_detail`
  MODIFY `idtransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `Idkaryawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `Iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `IDperawatanselesai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `perawatan_detail`
--
ALTER TABLE `perawatan_detail`
  MODIFY `Idrawat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
