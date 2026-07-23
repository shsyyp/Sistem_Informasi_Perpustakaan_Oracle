CREATE OR REPLACE PROCEDURE prosedur_pinjam_buku (
    p_id_anggota IN NUMBER,
    p_id_buku IN NUMBER,
    p_tanggal_pinjam IN DATE
)
AS
BEGIN
    INSERT INTO peminjaman (
        id_anggota,
        id_buku,
        tanggal_pinjam,
        status
    )
    VALUES (
        p_id_anggota,
        p_id_buku,
        p_tanggal_pinjam,
        'Dipinjam'
    );

    COMMIT;
END;
/