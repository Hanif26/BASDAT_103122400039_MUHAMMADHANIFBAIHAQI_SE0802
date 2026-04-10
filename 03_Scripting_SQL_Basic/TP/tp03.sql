CREATE TABLE Mahasiswa (
    id INT PRIMARY KEY,
    nama VARCHAR2(100),
    tempat_lahir VARCHAR2(100),
    tanggal_lahir DATE,
    no_hp VARCHAR2(20),
    email VARCHAR2(100),
    tinggi NUMBER(5,2),
    berat NUMBER(5,2)
);

INSERT INTO Mahasiswa VALUES (1,'Kevin','Semarang',TO_DATE('2004-05-10','YYYY-MM-DD'),'0811111111','kevin@email.com',170,60);
INSERT INTO Mahasiswa VALUES (2,'Rafi','Solo',TO_DATE('2003-02-01','YYYY-MM-DD'),'0822222222','rafi@email.com',168,58);
INSERT INTO Mahasiswa VALUES (3,'Budi','Jakarta',TO_DATE('2002-03-15','YYYY-MM-DD'),'0833333333','budi@email.com',172,65);
INSERT INTO Mahasiswa VALUES (4,'Andi','Bandung',TO_DATE('2004-01-20','YYYY-MM-DD'),'0844444444','andi@email.com',169,62);
INSERT INTO Mahasiswa VALUES (5,'Rina','Surabaya',TO_DATE('2003-07-11','YYYY-MM-DD'),'0855555555','rina@email.com',160,50);
INSERT INTO Mahasiswa VALUES (6,'Sari','Semarang',TO_DATE('2002-08-12','YYYY-MM-DD'),'0866666666','sari@email.com',158,48);
INSERT INTO Mahasiswa VALUES (7,'Dewi','Malang',TO_DATE('2003-09-10','YYYY-MM-DD'),'0877777777','dewi@email.com',162,52);
INSERT INTO Mahasiswa VALUES (8,'Agus','Solo',TO_DATE('2004-10-05','YYYY-MM-DD'),'0888888888','agus@email.com',175,70);
INSERT INTO Mahasiswa VALUES (9,'Rudi','Jakarta',TO_DATE('2002-11-21','YYYY-MM-DD'),'0899999999','rudi@email.com',171,66);
INSERT INTO Mahasiswa VALUES (10,'Fajar','Bandung',TO_DATE('2003-12-01','YYYY-MM-DD'),'0810101010','fajar@email.com',173,68);
INSERT INTO Mahasiswa VALUES (11,'Ayu','Semarang',TO_DATE('2002-06-14','YYYY-MM-DD'),'0811112222','ayu@email.com',159,49);
INSERT INTO Mahasiswa VALUES (12,'Nina','Malang',TO_DATE('2003-04-09','YYYY-MM-DD'),'0822223333','nina@email.com',161,51);
INSERT INTO Mahasiswa VALUES (13,'Bayu','Solo',TO_DATE('2004-03-03','YYYY-MM-DD'),'0833334444','bayu@email.com',176,72);
INSERT INTO Mahasiswa VALUES (14,'Dina','Surabaya',TO_DATE('2003-05-17','YYYY-MM-DD'),'0844445555','dina@email.com',163,54);
INSERT INTO Mahasiswa VALUES (15,'Eka','Jakarta',TO_DATE('2002-02-25','YYYY-MM-DD'),'0855556666','eka@email.com',167,59);

COMMIT;

-- Query Dasar & Manipulasi Huruf
SELECT * FROM Mahasiswa;
SELECT nama, LOWER(nama), UPPER(nama), INITCAP(nama) FROM Mahasiswa;

-- Karakter & Padding
SELECT CONCAT(nama, ' Mahasiswa') FROM Mahasiswa;
SELECT nama, LENGTH(nama), SUBSTR(nama, 1, 3) FROM Mahasiswa;
SELECT LPAD(nama, 10, '*'), RPAD(nama, 10, '*') FROM Mahasiswa;
SELECT LTRIM('   KEVIN'), RTRIM('KEVIN   ') FROM DUAL;
SELECT INSTR(nama, 'a') FROM Mahasiswa;

-- Manipulasi Data & Konversi (Satu Baris Satu Perintah)
SELECT REPLACE(nama, 'a', '@') FROM Mahasiswa;
SELECT tanggal_lahir, TO_CHAR(tanggal_lahir, 'DD/MM/YYYY') FROM Mahasiswa;

-- Fungsi Tanggal
SELECT SYSDATE FROM DUAL;
SELECT ADD_MONTHS(SYSDATE, 2) FROM DUAL;
SELECT LAST_DAY(SYSDATE) FROM DUAL;
SELECT NEXT_DAY(SYSDATE, 'MONDAY') FROM DUAL;

-- Konversi & Matematika
SELECT MONTHS_BETWEEN(SYSDATE, tanggal_lahir) FROM Mahasiswa;
SELECT TO_CHAR(SYSDATE, 'DD MON YYYY') FROM DUAL;
SELECT TO_NUMBER('12345') FROM DUAL;
SELECT TO_DATE('2024-01-01', 'YYYY-MM-DD') FROM DUAL;
SELECT ABS(-10), MOD(10, 3), FLOOR(12.8), POWER(2, 3) FROM DUAL;
SELECT ROUND(12.456, 2), CEIL(12.2) FROM DUAL;