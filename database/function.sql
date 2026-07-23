create or replace function fn_stok_buku (
   p_id_buku in number
) return number as
   v_stok number;
begin
   select stok
     into v_stok
     from buku
    where id_buku = p_id_buku;

   return v_stok;
end;