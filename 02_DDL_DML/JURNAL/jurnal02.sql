-- nama: Hanif
-- nim: 103122400039

-- =====================
-- CREATE TABLE
-- =====================
CREATE TABLE Film (
    id_film INT PRIMARY KEY,
    judul VARCHAR2(200),
    sinopsis VARCHAR2(200),
    tahun INT,
    durasi INT
);

CREATE TABLE Theater (
    id_theater INT PRIMARY KEY,
    harga INT,
    kapasitas INT,
    kelas VARCHAR2(20)
);

CREATE TABLE Member (
    id_member INT PRIMARY KEY,
    nama VARCHAR2(200),
    no_hp VARCHAR2(20),
    tgl_lahir DATE,
    email VARCHAR2(200)
);

CREATE TABLE Jadwal (
    id_jadwal INT PRIMARY KEY,
    id_film INT,
    id_theater INT,
    periode_start DATE,
    periode_end DATE,
    FOREIGN KEY (id_film) REFERENCES Film(id_film),
    FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
);

CREATE TABLE Inventaris (
    id_inventaris INT PRIMARY KEY,
    id_theater INT,
    nomor_kursi VARCHAR2(10),
    FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
);

CREATE TABLE Transaksi (
    kode_pemesanan INT PRIMARY KEY,
    id_jadwal INT,
    id_member INT,
    status VARCHAR2(20),
    tanggal DATE,
    total_harga INT,
    FOREIGN KEY (id_jadwal) REFERENCES Jadwal(id_jadwal),
    FOREIGN KEY (id_member) REFERENCES Member(id_member)
);

-- =====================
-- INSERT DATA
-- =====================

INSERT INTO Film VALUES (1,'Avengers','Film superhero',2019,180);
INSERT INTO Film VALUES (2,'Inception','Film sci-fi',2010,148);

INSERT INTO Theater VALUES (1,50000,100,'Reguler');
INSERT INTO Theater VALUES (2,75000,80,'VIP');

INSERT INTO Member VALUES 
(1,'Hanif','082326122529',TO_DATE('2004-05-10','YYYY-MM-DD'),'hanifbhq26@gmail.com');

INSERT INTO Member VALUES
(2,'Rafi','08129876543',TO_DATE('2003-02-01','YYYY-MM-DD'),'rafi@email.com');

INSERT INTO Jadwal VALUES
(1,1,1,
 TO_DATE('2026-03-11 13:00:00','YYYY-MM-DD HH24:MI:SS'),
 TO_DATE('2026-03-11 16:00:00','YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO Jadwal VALUES
(2,2,2,
 TO_DATE('2026-03-11 17:00:00','YYYY-MM-DD HH24:MI:SS'),
 TO_DATE('2026-03-11 19:30:00','YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO Inventaris VALUES (1,1,'A1');
INSERT INTO Inventaris VALUES (2,1,'A2');

INSERT INTO Transaksi VALUES
(1,1,1,'Lunas',TO_DATE('2026-03-11','YYYY-MM-DD'),50000);

INSERT INTO Transaksi VALUES
(2,2,2,'Pending',TO_DATE('2026-03-11','YYYY-MM-DD'),75000);

-- =====================
-- SELECT (PISAH BARIS!)
-- =====================
SELECT * FROM Film;
SELECT * FROM Theater;
SELECT * FROM Member;
SELECT * FROM Jadwal;
SELECT * FROM Inventaris;
SELECT * FROM Transaksi;

-- =====================
-- UPDATE
-- =====================
UPDATE Film SET durasi = 185 WHERE id_film = 1;
UPDATE Theater SET harga = 55000 WHERE id_theater = 1;
UPDATE Member SET no_hp = '08222222222' WHERE id_member = 1;

UPDATE Jadwal
SET periode_end = TO_DATE('2026-03-11 16:10:00','YYYY-MM-DD HH24:MI:SS')
WHERE id_jadwal = 1;

UPDATE Transaksi SET status = 'Lunas' WHERE kode_pemesanan = 2;

-- =====================
-- DELETE (URUTAN BENAR)
-- =====================

-- hapus child dulu
DELETE FROM Transaksi WHERE id_jadwal = 2;

-- baru parent
DELETE FROM Jadwal WHERE id_jadwal = 2;
DELETE FROM Film WHERE id_film = 2;

-- cek hasil
SELECT * FROM Film;