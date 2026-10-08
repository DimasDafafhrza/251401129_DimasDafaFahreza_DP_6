program Soal10_251401129_DimasDafaFahreza;
{ Menampilkan nama hari berdasarkan nomor hari }

var
  nomor: integer;

begin
  writeln('=== PROGRAM NAMA HARI ===');
  write('Masukkan nomor hari (1-7): ');
  readln(nomor);

  case nomor of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Nomor hari tidak valid. Masukkan angka 1-7.');
  end;

  readln;
end.