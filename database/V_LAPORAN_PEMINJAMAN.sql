CREATE OR REPLACE VIEW V_LAPORAN_PEMINJAMAN AS
SELECT
    p.id_peminjaman,
    a.nama AS nama_anggota,
    b.judul AS judul_buku,
    p.tanggal_pinjam,
    p.tanggal_kembali,
    p.status
FROM peminjaman p
INNER JOIN anggota a
ON p.id_anggota = a.id_anggota
INNER JOIN buku b
ON p.id_buku = b.id_buku
