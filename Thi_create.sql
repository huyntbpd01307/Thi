-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:45:03.722




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV varchar(10)  NOT NULL,
    TenNV nvarchar(40)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh bit  NOT NULL,
    Email varchar(60)  NOT NULL,
    MucLuong money  NOT NULL,
    TPhongban_MaPhong varchar(10)  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong varchar(10)  NOT NULL,
    TenPhong nvarchar(40)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanVien_TPhongban (table: TNhanVien)

ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongban 
    FOREIGN KEY (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

