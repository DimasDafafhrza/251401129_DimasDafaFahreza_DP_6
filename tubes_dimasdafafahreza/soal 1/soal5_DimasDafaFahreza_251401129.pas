program Soal5_251401129_DimasDafaFahreza;
{ Rekapitulasi nilai mahasiswa dengan nested for-do }

var
  M, N, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
  writeln('=== REKAPITULASI NILAI MAHASISWA ===');
  write('Masukkan jumlah mahasiswa: ');
  readln(M);
  write('Masukkan jumlah tugas: ');
  readln(N);

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

    if N > 0 then
      rata := total / N
    else
      rata := 0;

    writeln('  Rata-rata: ', rata:0:2);

    if rata >= 65 then
    begin
      writeln('  Status: LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('  Status: TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('=== HASIL REKAP ===');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS: ', tidakLulus);

  readln;
end.