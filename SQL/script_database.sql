-- =============================================
-- FINAL PROJECT PEMROGRAMAN BASIS DATA
-- Studi Kasus: Struk BreadTalk
-- Dosen: Ridwan Dwi Irawan, S.Kom, M.Kom
-- =============================================

-- 1. IMPLEMENTASI DDL (Data Definition Language)
-- Membuat Schema/Database
CREATE SCHEMA IF NOT EXISTS `mydb`;
USE `mydb`;

-- Membuat Tabel Kasir
CREATE TABLE IF NOT EXISTS `kasir` (
  `id_kasir` INT NOT NULL AUTO_INCREMENT,
  `nama_kasir` VARCHAR(50) NULL,
  PRIMARY KEY (`id_kasir`)
) ENGINE = InnoDB;

-- Membuat Tabel Produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` INT NOT NULL AUTO_INCREMENT,
  `nama_produk` VARCHAR(100) NULL,
  `harga` DOUBLE NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE = InnoDB;

-- Membuat Tabel Transaksi Utama
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` INT NOT NULL AUTO_INCREMENT,
  `check_no` VARCHAR(20) NULL,
  `tgl_transaksi` DATETIME NULL,
  `totalbayar` DECIMAL NULL,
  `kasir_id_kasir` INT NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  CONSTRAINT `fk_transaksi_kasir`
    FOREIGN KEY (`kasir_id_kasir`)
    REFERENCES `kasir` (`id_kasir`)
) ENGINE = InnoDB;

-- Membuat Tabel Detail Transaksi (Relasi Many-to-Many)
CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `id_detail` INT NOT NULL AUTO_INCREMENT,
  `qty` INT NULL,
  `subtotal` DECIMAL NULL,
  `transaksi_id_transaksi` INT NOT NULL,
  `produk_id_produk` INT NOT NULL,
  PRIMARY KEY (`id_detail`),
  CONSTRAINT `fk_detail_transaksi_transaksi`
    FOREIGN KEY (`transaksi_id_transaksi`)
    REFERENCES `transaksi` (`id_transaksi`),
  CONSTRAINT `fk_detail_transaksi_produk`
    FOREIGN KEY (`produk_id_produk`)
    REFERENCES `produk` (`id_produk`)
) ENGINE = InnoDB;


-- 2. IMPLEMENTASI DML (Data Manipulation Language)
-- Mengisi Data Kasir
INSERT INTO kasir (nama_kasir) VALUES ('WINDA APRIANI P');

-- Mengisi Data Produk sesuai Struk
INSERT INTO produk (nama_produk, harga) VALUES 
('Bread Butter Pudding', 11500),
('Cream Bruille', 14000),
('Choco Croissant', 10500),
('Bank Of Chocolat', 7500);

-- Mengisi Data Transaksi Utama
INSERT INTO transaksi (check_no, tgl_transaksi, totalbayar, kasir_id_kasir) 
VALUES ('3059689', '2019-05-10 16:32:47', 43500, 1);

-- Mengisi Detail Item Belanja
INSERT INTO detail_transaksi (qty, subtotal, transaksi_id_transaksi, produk_id_produk) VALUES 
(1, 11500, 1, 1),
(1, 14000, 1, 2),
(1, 10500, 1, 3),
(1, 7500, 1, 4);


-- 3. PENGUJIAN QUERY (JOIN & AGREGASI)
-- Query menampilkan struk lengkap (JOIN)
SELECT 
    t.check_no AS 'No Struk', 
    k.nama_kasir AS 'Nama Kasir', 
    p.nama_produk AS 'Nama Produk', 
    dt.qty AS 'Jumlah', 
    p.harga AS 'Harga Satuan', 
    dt.subtotal AS 'Subtotal'
FROM detail_transaksi dt
JOIN transaksi t ON dt.transaksi_id_transaksi = t.id_transaksi
JOIN produk p ON dt.produk_id_produk = p.id_produk
JOIN kasir k ON t.kasir_id_kasir = k.id_kasir;

-- Query Agregasi menghitung Total Belanja (GROUP BY)
SELECT 
    check_no, 
    SUM(subtotal) AS 'Total Seluruhnya' 
FROM detail_transaksi 
JOIN transaksi ON detail_transaksi.transaksi_id_transaksi = transaksi.id_transaksi
GROUP BY check_no;
