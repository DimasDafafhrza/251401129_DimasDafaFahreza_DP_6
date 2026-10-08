program Soal1_251401129_DimasDafaFahreza;
{ Menghitung total belanja dan diskon }

var
  N, i: integer;
  harga: real;
  total, diskon, totalBayar: real;

begin
  writeln('=== PROGRAM TOTAL BELANJA ===');
  write('Masukkan jumlah barang: ');
  readln(N);

  total := 0;

  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  { Menentukan diskon dengan if-else }
  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;

  totalBayar := total - diskon;

  writeln;
  writeln('=== RINCIAN BELANJA ===');
  writeln('Total sebelum diskon : Rp', total:0:2);
  writeln('Besar diskon         : Rp', diskon:0:2);
  writeln('Total bayar akhir    : Rp', totalBayar:0:2);

  readln;
end.