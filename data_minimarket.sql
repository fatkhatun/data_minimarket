CREATE TABLE penjualan (
    id                 VARCHAR(10) PRIMARY KEY,
    order_kode         VARCHAR(10) NOT NULL,
    penjual_name       VARCHAR(50) NOT NULL,
    pembeli_name       VARCHAR(50) NOT NULL,
    alamat_pengiriman  VARCHAR(70) NOT NULL,
    alamat_desa        VARCHAR(50) NOT NULL,
    alamat_jalan       VARCHAR(50) NOT NULL,
    alamat_provinsi    VARCHAR(40) NOT NULL,
    alamat_kota        VARCHAR(40) NOT NULL,
    kode_pos           VARCHAR(10) NOT NULL
);

SELECT * FROM penjualan;

ALTER TABLE penjualan
    ADD COLUMN created_at TIMESTAMP NOT NULL;

	SELECT * FROM penjualan;	

	INSERT INTO penjualan (id, order_kode, penjual_name, pembeli_name, alamat_pengiriman, alamat_desa, alamat_jalan, alamat_provinsi, alamat_kota, kode_pos, created_at)
VALUES 
('1', '1134', 'src ragile', 'rina', 'karangreja, jl dpu, jawa tengah, cilacap', 'karangreja', 'jl dpu', 'jawa tengah', 'cilacap', '23526', NOW()),
('2', '1139', 'src ragile', 'putri', 'karangreja, jl dpu, jawa tengah, cilacap', 'karangreja', 'jl dpu', 'jawa tengah', 'cilacap', '23526', NOW()),
('3', '1140', 'src ragile', 'puput', 'karangreja, jl dpu, jawa tengah, cilacap', 'karangreja', 'jl dpu', 'jawa tengah', 'cilacap', '23526', NOW()),
('4', '1142', 'src ragile', 'ayu', 'karangreja, jl dpu, jawa tengah, cilacap', 'karangreja', 'jl dpu', 'jawa tengah', 'cilacap', '23526', NOW());

SELECT * FROM penjualan;

CREATE TABLE produk_new (
    kode_produk    VARCHAR(10) PRIMARY KEY,
    nama_produk    VARCHAR(100) NOT NULL,
    harga_produk   VARCHAR(100) NOT NULL,
    jumlah_produk  INT NOT NULL
);

SELECT * FROM produk_new;


ALTER TABLE produk_new 
ADD COLUMN created_at TIMESTAMP NOT NULL;

SELECT * FROM produk_new;


INSERT INTO produk_new (kode_produk, nama_produk, harga_produk, jumlah_produk, created_at)
VALUES 
('2243', 'le mineral', '20000', 1, NOW()),
('6634', 'the pucuk', '3000', 2, NOW()),
('3445', 'susu uht', '7000', 1, NOW()),
('1223', 'sprite', '5000', 1, NOW()),
('2267', 'coklat', '2000', 2, NOW()),
('2290', 'yakult', '3000', 2, NOW()),
('5590', 'mie sedap', '4000', 1, NOW()),
('6457', 'kopiko', '11000', 1, NOW());


SELECT * FROM produk_new;

CREATE TABLE id_order_new (
    id_order      VARCHAR(10) NOT NULL,
    kode_pos      VARCHAR(15) NOT NULL,
    kode_produk   VARCHAR(20) NOT NULL
);


SELECT *FROM id_order_new;

ALTER TABLE id_order_new 
ADD COLUMN created_at TIMESTAMP NOT NULL;

SELECT * FROM id_order_new;


INSERT INTO id_order_new (id_order, kode_pos, kode_produk, created_at)
VALUES 
('1134', '23526', '2243', NOW()),
('1139', '23526', '6634', NOW()),
('1140', '23526', '3445', NOW()),
('1142', '23526', '1223', NOW());

SELECT * FROM id_order_new;

CREATE TABLE harga_produk (
    kode_produk   VARCHAR(50) NOT NULL,
    harga_produk  VARCHAR(50) NOT NULL,
    total_produk  VARCHAR(20) NOT NULL
);

SELECT * FROM harga_produk;

ALTER TABLE harga_produk 
ADD COLUMN created_at TIMESTAMP NOT NULL;

SELECT* FROM harga_produk;

INSERT INTO harga_produk (kode_produk,harga_produk,total_produk, created_at)
VALUES 
( '2243','20000',1, NOW()),
( '6634','3000', 2, NOW()),
('3445','7000', 1, NOW()),
('1223','5000',1, NOW());


select * from harga_produk;








