program Soal3_251401129_DimasDafaFahreza;
{ Menampilkan deret ganjil/genap dengan while dan continue }

var
  N, i, pilihan: integer;

begin
  writeln('=== PROGRAM DERET ANGKA ===');
  write('Masukkan nilai N: ');
  readln(N);

  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori deret: ');
  readln(pilihan);

  if (pilihan <> 1) and (pilihan <> 2) then
  begin
    writeln('Pilihan kategori tidak valid.');
    readln;
    halt;
  end;

  writeln('Hasil deret:');
  i := 1;

  while i <= N do
  begin
    { Lewati angka yang tidak sesuai kategori }
    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Lewati kelipatan 5 }
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
  readln;
end.