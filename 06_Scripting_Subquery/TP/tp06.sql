/*
 
 Source Server         : DBSE
 Source Server Type    : Oracle
 Source Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 Source Schema         : DBSE

 Target Server Type    : Oracle
 Target Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 File Encoding         : 65001

 Date: 04/03/2024 10:42:47
*/


-- ----------------------------
-- Table structure for FILM
-- ----------------------------
DROP TABLE "FILM";
CREATE TABLE "FILM6" (                       //103122400064 ini nim saya kak, maaf lupa ganti 
  "ID_FILM" CHAR(5 BYTE) NOT NULL,           // kalo diulang banyak banget
  "JUDUL" VARCHAR2(100 BYTE) NOT NULL,
  "SINOPSIS" VARCHAR2(1000 BYTE),
  "TAHUN" NUMBER,
  "DURASI" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FILM
-- ----------------------------
INSERT INTO "FILM6" VALUES ('F0101', 'Keluarga Cemara', 'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.', '2019', '110');
INSERT INTO "FILM6" VALUES ('F0102', 'Habibie Ainun 3', 'Habibie Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie Ainun. Bila Rudy Habibie merupakan prekuel dari kisah Habibie muda, maka Habibie Ainun 3 ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019.', '2019', '96');
INSERT INTO "FILM6" VALUES ('F0103', 'Taufiq', 'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.', '2019', '105');
INSERT INTO "FILM6" VALUES ('F0104', 'Buya Hamka', 'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.', '2019', '110');

SELECT * FROM FILM6;

-- ----------------------------
-- Table structure for INVENTORI
-- ----------------------------
DROP TABLE "INVENTORI";
CREATE TABLE "INVENTORI6" (
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "NOMOR_KURSI" VARCHAR2(5 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of INVENTORI
-- ----------------------------
INSERT INTO "INVENTORI6" VALUES ('IN1001', 'Teater 1', 'A1');
INSERT INTO "INVENTORI6" VALUES ('IN1002', 'Teater 1', 'A2');
INSERT INTO "INVENTORI6" VALUES ('IN1003', 'Teater 1', 'A3');
INSERT INTO "INVENTORI6" VALUES ('IN1004', 'Teater 1', 'A4');
INSERT INTO "INVENTORI6" VALUES ('IN1005', 'Teater 1', 'A5');
INSERT INTO "INVENTORI6" VALUES ('IN1006', 'Teater 2', 'A6');
INSERT INTO "INVENTORI6" VALUES ('IN1007', 'Teater 2', 'A7');
INSERT INTO "INVENTORI6" VALUES ('IN1008', 'Teater 2', 'A8');
INSERT INTO "INVENTORI6" VALUES ('IN1009', 'Teater 2', 'B1');
INSERT INTO "INVENTORI6" VALUES ('IN1010', 'Teater 2', 'B2');
INSERT INTO "INVENTORI6" VALUES ('IN1011', 'Teater 3', 'C1');
INSERT INTO "INVENTORI6" VALUES ('IN1012', 'Teater 3', 'C2');

SELECT * FROM INVENTORI6;


-- ----------------------------
-- Table structure for JADWAL
-- ----------------------------
DROP TABLE "JADWAL";
CREATE TABLE "JADWAL6" (
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "PERIODE_START" DATE,
  "PERIODE_END" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of JADWAL
-- ----------------------------
INSERT INTO "JADWAL6" VALUES ('JT001', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT002', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT003', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT004', 'F0101', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT005', 'F0103', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT006', 'F0102', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT007', 'F0104', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT008', 'F0102', 'Teater 3', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT009', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JADWAL6" VALUES ('JT010', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for MEMBER
-- ----------------------------
DROP TABLE "MEMBER";
CREATE TABLE "MEMBER6" (
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "NAMA" VARCHAR2(255 BYTE) NOT NULL,
  "NO_HP" VARCHAR2(20 BYTE) NOT NULL,
  "EMAIL" VARCHAR2(20 BYTE),
  "TGL_LAHIR" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBER
-- ----------------------------
INSERT INTO "MEMBER6" VALUES ('MM0111', 'Anto', '085267656789', 'Anto2016@gmail.com', TO_DATE('1989-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0112', 'Budi', '081367589632', 'Budi2016@gmail.com', TO_DATE('1985-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0113', 'Ari', '081267867543', 'Ari2016@gmail.com', TO_DATE('1983-11-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0114', 'Rahmi', '085267935678', 'Rahmi2016@gmail.com', TO_DATE('1981-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0115', 'Fahmi', '085767298908', 'Fahmi2016@gmail.com', TO_DATE('1986-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0116', 'Rusli', '085643755398', 'Rusli2016@gmail.com', TO_DATE('1988-02-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0117', 'Doni', '081398426789', 'Doni2016@gmail.com', TO_DATE('1986-04-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0118', 'Tati', '085245289074', 'Tati2016@gmail.com', TO_DATE('1985-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0119', 'Dono', '081287234567', 'Dono2016@gmail.com', TO_DATE('1990-07-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MEMBER6" VALUES ('MM0120', 'Joko', '081223670942', 'Joko2016@gmail.com', TO_DATE('1988-07-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

SELECT * FROM MEMBER6;

-- ----------------------------
-- Table structure for THEATER
-- ----------------------------
DROP TABLE "THEATER";
CREATE TABLE "THEATER6" (
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "KELAS" VARCHAR2(20 BYTE),
  "HARGA" NUMBER NOT NULL,
  "KAPASITAS" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THEATER
-- ----------------------------
INSERT INTO "THEATER6" VALUES ('Teater 1', 'Reguler', '30000', '50');
INSERT INTO "THEATER6" VALUES ('Teater 2', 'Sweetbox', '100000', '50');
INSERT INTO "THEATER6" VALUES ('Teater 3', '4D', '75000', '50');
INSERT INTO "THEATER6" VALUES ('Teater 4', 'Velvet', '80000', '50');
INSERT INTO "THEATER6" VALUES ('Teater 5', '3D', '50000', '50');

-- ----------------------------
-- Table structure for TRANSAKSI
-- ----------------------------
DROP TABLE "TRANSAKSI";
CREATE TABLE "TRANSAKSI6" (
  "KODE_PEMESANAN" CHAR(6 BYTE) NOT NULL,
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "TANGGAL" DATE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of TRANSAKSI
-- ----------------------------
INSERT INTO "TRANSAKSI6" VALUES ('P10001', 'MM0111', 'JT001', 'IN1010', TO_DATE('2019-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10002', 'MM0112', 'JT006', 'IN1009', TO_DATE('2019-06-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10003', 'MM0113', 'JT008', 'IN1008', TO_DATE('2019-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10004', 'MM0114', 'JT001', 'IN1007', TO_DATE('2019-06-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10005', 'MM0115', 'JT006', 'IN1006', TO_DATE('2019-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10006', 'MM0116', 'JT001', 'IN1001', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'bayar');
INSERT INTO "TRANSAKSI6" VALUES ('P10007', 'MM0117', 'JT008', 'IN1011', TO_DATE('2019-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10008', 'MM0118', 'JT001', 'IN1003', TO_DATE('2019-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10009', 'MM0119', 'JT006', 'IN1004', TO_DATE('2019-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO "TRANSAKSI6" VALUES ('P10010', 'MM0120', 'JT008', 'IN1005', TO_DATE('2019-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'checkin');

SELECT * FROM TRANSAKSI6;

-- ----------------------------
-- Primary Key structure for table FILM
-- ----------------------------
ALTER TABLE "FILM6" ADD CONSTRAINT "FILM6_PK" PRIMARY KEY ("ID_FILM");


-- ----------------------------
-- Primary Key structure for table INVENTORI
-- ----------------------------
ALTER TABLE "INVENTORI6" ADD CONSTRAINT "INVENTORI6_PK" PRIMARY KEY ("ID_INVENTORI");


-- ----------------------------
-- Primary Key structure for table JADWAL
-- ----------------------------
ALTER TABLE "JADWAL6" ADD CONSTRAINT "JADWAL6_PK" PRIMARY KEY ("ID_JADWAL");


-- ----------------------------
-- Primary Key structure for table MEMBER
-- ----------------------------
ALTER TABLE "MEMBER6" ADD CONSTRAINT "MEMBER6_PK" PRIMARY KEY ("ID_MEMBER");


-- ----------------------------
-- Primary Key structure for table THEATER
-- ----------------------------
ALTER TABLE "THEATER6" ADD CONSTRAINT "THEATER6_PK" PRIMARY KEY ("ID_THEATER");


-- ----------------------------
-- Primary Key structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE "TRANSAKSI6" ADD CONSTRAINT "TRANSAKSI6_PK" PRIMARY KEY ("KODE_PEMESANAN");

-- ----------------------------
-- Foreign Keys structure for table INVENTORI
-- ----------------------------
ALTER TABLE "INVENTORI6" ADD CONSTRAINT "INVENTORI6_FK1" FOREIGN KEY ("ID_THEATER") REFERENCES "THEATER6" ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table JADWAL
-- ----------------------------
ALTER TABLE "JADWAL6" ADD CONSTRAINT "JADWAL6_FK1" FOREIGN KEY ("ID_FILM") REFERENCES "FILM6" ("ID_FILM") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JADWAL6" ADD CONSTRAINT "JADWAL6_FK2" FOREIGN KEY ("ID_THEATER") REFERENCES "THEATER6" ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE "TRANSAKSI6" ADD CONSTRAINT "TRANSAKSI6_FK1" FOREIGN KEY ("ID_JADWAL") REFERENCES "JADWAL6" ("ID_JADWAL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "TRANSAKSI6" ADD CONSTRAINT "TRANSAKSI6_FK2" FOREIGN KEY ("ID_INVENTORI") REFERENCES "INVENTORI6" ("ID_INVENTORI") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "TRANSAKSI6" ADD CONSTRAINT "TRANSAKSI6_FK3" FOREIGN KEY ("ID_MEMBER") REFERENCES "MEMBER6" ("ID_MEMBER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

SELECT f.JUDUL,
       (SELECT MIN(TRUNC(MONTHS_BETWEEN(SYSDATE, m.TGL_LAHIR)/12))
        FROM MEMBER52 m
        JOIN TRANSAKSI52 t ON m.ID_MEMBER = t.ID_MEMBER
        JOIN JADWAL52 j ON t.ID_JADWAL = j.ID_JADWAL
        WHERE j.ID_FILM = f.ID_FILM
       ) AS umur_termuda
FROM FILM52 f
WHERE DURASI = (
    SELECT MIN(DURASI) FROM FILM52
);

SELECT th.ID_THEATER, th.KELAS, COUNT(t.KODE_PEMESANAN) AS total_pemakaian
FROM THEATER52 th
JOIN JADWAL52 j ON th.ID_THEATER = j.ID_THEATER
JOIN TRANSAKSI52 t ON j.ID_JADWAL = t.ID_JADWAL
GROUP BY th.ID_THEATER, th.KELAS
HAVING COUNT(t.KODE_PEMESANAN) = (
    SELECT MAX(jumlah)
    FROM (
        SELECT COUNT(t2.KODE_PEMESANAN) AS jumlah
        FROM JADWAL52 j2
        JOIN TRANSAKSI52 t2 ON j2.ID_JADWAL = t2.ID_JADWAL
        GROUP BY j2.ID_THEATER
    )
);
