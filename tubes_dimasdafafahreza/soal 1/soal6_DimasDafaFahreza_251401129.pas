program Soal6_251401129_DimasDafaFahreza;
{ Menentukan nilai akhir, status kelulusan, dan indeks huruf }

var
  tugas, uts, uas, kehadiran, nilaiAkhir: real;
  indeks: char;
  status: string;

begin
  writeln('=== PENENTUAN NILAI AKHIR ===');
  write('Nilai Tugas (30%): ');
  readln(tugas);
  write('Nilai UTS (30%): ');
  readln(uts);
  write('Nilai UAS (40%): ');
  readln(uas);
  write('Kehadiran (%): ');
  readln(kehadiran);

  nilaiAkhir := (tugas * 0.30) + (uts * 0.30) + (uas * 0.40);

  { Menentukan indeks huruf }
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  { Menentukan status kelulusan }
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';

  writeln;
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf: ', indeks);
  writeln('Kehadiran   : ', kehadiran:0:2, '%');
  writeln('Status      : ', status);

  readln;
end.