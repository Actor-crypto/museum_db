
CREATE DATABASE museum;
USE museum;

CREATE TABLE koleksi (
    id_koleksi INT AUTO_INCREMENT PRIMARY KEY,
    nama_koleksi VARCHAR(100) NOT NULL,
    jenis_koleksi VARCHAR(100),
    tahun_dibuat INT,
    asal VARCHAR(100)
);

CREATE TABLE ruangan (
    id_ruangan INT AUTO_INCREMENT PRIMARY KEY,
    nama_ruangan VARCHAR(100) NOT NULL,
    lantai INT
);

CREATE TABLE petugas (
    id_petugas INT AUTO_INCREMENT PRIMARY KEY,
    nama_petugas VARCHAR(100),
    jabatan VARCHAR(100)
);

CREATE TABLE pengunjung (
    id_pengunjung INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengunjung VARCHAR(100),
    tanggal_kunjungan DATE
);

CREATE TABLE kunjungan (
    id_kunjungan INT AUTO_INCREMENT PRIMARY KEY,
    id_pengunjung INT,
    id_petugas INT,
    id_ruangan INT,
    id_koleksi INT,
    FOREIGN KEY (id_pengunjung) REFERENCES pengunjung(id_pengunjung),
    FOREIGN KEY (id_petugas) REFERENCES petugas(id_petugas),
    FOREIGN KEY (id_ruangan) REFERENCES ruangan(id_ruangan),
    FOREIGN KEY (id_koleksi) REFERENCES koleksi(id_koleksi)
);

INSERT INTO koleksi (nama_koleksi, jenis_koleksi, tahun_dibuat, asal) VALUES
('Arca Ganesha', 'Patung', 1200, 'Jawa Tengah'),
('Keramik Dinasti Ming', 'Keramik', 1500, 'Tiongkok'),
('Tombak Pusaka', 'Senjata Tradisional', 1800, 'Sumatera');

INSERT INTO ruangan (nama_ruangan, lantai) VALUES
('Galeri Sejarah', 1),
('Galeri Etnografi', 2),
('Galeri Seni Rupa', 3);

INSERT INTO petugas (nama_petugas, jabatan) VALUES
('Rina Kartika', 'Pemandu'),
('Andi Pratama', 'Keamanan'),
('Siti Nurhaliza', 'Kurator');

INSERT INTO pengunjung (nama_pengunjung, tanggal_kunjungan) VALUES
('Ali Prakoso', '2025-07-01'),
('Dewi Sartika', '2025-07-01'),
('Bambang Sutrisno', '2025-07-01');

INSERT INTO kunjungan (id_pengunjung, id_petugas, id_ruangan, id_koleksi) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);
