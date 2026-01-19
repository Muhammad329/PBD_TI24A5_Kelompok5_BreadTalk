# Final Project Pemrograman Basis Data - Kelompok 5
## Implementasi Basis Data: Studi Kasus Struk Transaksi BreadTalk

Proyek ini bertujuan untuk mendigitalisasi data transaksi dari struk belanja fisik BreadTalk ke dalam sistem basis data relasional yang terstruktur menggunakan MySQL.

---

### 📋 Deskripsi Proyek
Proyek ini mencakup perancangan dari tahap awal (ERD) hingga implementasi query kompleks untuk menghasilkan laporan transaksi yang akurat. Sistem ini mengelola data Kasir, Produk, dan rincian transaksi belanja.

### 🖼️ Bukti Implementasi & Dokumentasi

#### 1. Struk Belanja Asli (Referensi Data)
Struk fisik dari BreadTalk yang digunakan sebagai acuan dasar dalam menentukan entitas, atribut, dan tipe data pada database.
![Struk Asli](Images/breadtalk.png)

#### 2. Perancangan EER Diagram
Hasil perancangan skema database yang menunjukkan relasi antar tabel (Kasir, Produk, Transaksi, dan Detail Transaksi).
![EER Diagram](Images/EER%20Diagram.png)

#### 3. Implementasi DDL & DML
Proses pembuatan tabel (Create Table) dan pengisian data (Insert Into) yang disesuaikan dengan data pada struk belanja.
![DDL DML](Images/implementasi%20ddl.png)

#### 4. Eksekusi Query Join & Agregasi
Pengujian pengambilan data untuk menghasilkan laporan struk digital dan perhitungan total pendapatan menggunakan fungsi SUM dan JOIN.
![Result Grid](Images/result%20gird.png)

---

### 🏗️ Struktur Basis Data
Berdasarkan perancangan EER Diagram, database ini terdiri dari 4 tabel utama:
1. **kasir**: Menyimpan identitas staff kasir.
2. **produk**: Daftar menu roti beserta harga satuannya.
3. **transaksi**: Header transaksi yang mencatat nomor struk, tanggal, dan total bayar.
4. **detail_transaksi**: Rincian item yang dibeli dalam satu transaksi.

### 📁 Struktur Folder
- `/SQL`: Berisi file script `.sql` (DDL, DML, dan Query).
- `/Docs`: Berisi Laporan Akhir (PDF) dan Poster Project (JPG).
- `/Images`: Berisi semua bukti screenshot dan aset gambar.

### 👥 Anggota Kelompok
- [Muhammad Irsyad] - [240103170]
- [Muhammad Rijal Febriyantono] - [240103168]
- [Billy Rafaelandri] - [240103157]

---
**Dosen Pengampu:** Ridwan Dwi Irawan, S.Kom, M.Kom  
**Program Studi:** Teknik Informatika  
**Universitas Duta Bangsa Surakarta**
