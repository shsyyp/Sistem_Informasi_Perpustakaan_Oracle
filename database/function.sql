CREATE OR REPLACE FUNCTION fn_stok_buku (
    p_id_buku IN NUMBER
)
RETURN NUMBER
AS
    v_stok NUMBER;
BEGIN
    SELECT stok
    INTO v_stok
    FROM buku
    WHERE id_buku = p_id_buku;

    RETURN v_stok;
END;
