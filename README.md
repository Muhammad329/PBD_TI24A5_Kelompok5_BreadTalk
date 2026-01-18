# Final Project Pemrograman Basis Data - Kelompok 5
## Implementasi Basis Data: Studi Kasus Struk Transaksi BreadTalk

Proyek ini bertujuan untuk mendigitalisasi data transaksi dari struk belanja fisik BreadTalk ke dalam sistem basis data relasional yang terstruktur menggunakan MySQL.

---

### 📋 Deskripsi Proyek
Proyek ini mencakup perancangan dari tahap awal (ERD) hingga implementasi query kompleks untuk menghasilkan laporan transaksi yang akurat. Sistem ini mengelola data Kasir, Produk, dan rincian transaksi belanja.

### 🏗️ Struktur Basis Data
Berdasarkan perancangan EER Diagram, database ini terdiri dari 4 tabel utama:
1. **kasir**: Menyimpan identitas staff kasir.
2. **produk**: Daftar menu roti beserta harga satuannya.
3. **transaksi**: Header transaksi yang mencatat nomor struk, tanggal, dan total bayar.
4. **detail_transaksi**: Rincian item yang dibeli dalam satu transaksi (Relasi Many-to-Many).

### 🚀 Fitur SQL
- **DDL & Constraints**: Pembuatan skema database dengan Primary Key dan Foreign Key yang menjamin integritas data.
- **DML (Seeding)**: Pengisian data riil berdasarkan struk belanja BreadTalk.
- **Advanced Query**: 
  - Menggunakan **JOIN** untuk menggabungkan 4 tabel menjadi tampilan struk digital.
  - Menggunakan **Fungsi Agregasi (SUM)** dan **GROUP BY** untuk menghitung total pendapatan secara otomatis.

### 📁 Struktur Folder
- `/SQL`: Berisi file script `.sql` (DDL, DML, dan Query).
- `/Docs`: Berisi Laporan Akhir (PDF) dan Poster Project (PDF).
- `/Images`: Berisi screenshot hasil eksekusi query dan foto struk asli.

### 👥 Anggota Kelompok
- [Muhammad Irsyad] - [240103170]
- [Muhammad Rijal Febriyantono] - [240103168]
- [Billy Rafaelandri] - [240103157]

---
**Dosen Pengampu:** Ridwan Dwi Irawan, S.Kom, M.Kom  
**Program Studi:** Teknik Informatika  
**Universitas Duta Bangsa Surakarta**
