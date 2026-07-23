CREATE OR REPLACE TRIGGER trg_kurangi_stok
AFTER INSERT ON peminjaman
FOR EACH ROW
BEGIN
    UPDATE buku
    SET stok = stok - 1
    WHERE id_buku = :NEW.id_buku;
END;

CREATE OR REPLACE TRIGGER trg_tambah_stok
AFTER UPDATE OF status ON peminjaman
FOR EACH ROW
WHEN (
    NEW.status = 'Dikembalikan'
    AND OLD.status <> 'Dikembalikan'
)
BEGIN
    UPDATE buku
    SET stok = stok + 1
    WHERE id_buku = :NEW.id_buku;
END;
