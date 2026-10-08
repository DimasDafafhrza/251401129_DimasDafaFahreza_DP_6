program Soal8_251401129_DimasDafaFahreza;
{ Menghitung gaji karyawan berdasarkan golongan dan jam kerja }

var
  golongan: char;
  jamKerja, lembur, bonus: integer;
  gajiPokok, gajiLembur, totalGaji: integer;

begin
  writeln('=== PERHITUNGAN GAJI KARYAWAN ===');
  write('Masukkan golongan (A/B/C): ');
  readln(golongan);
  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);

  case golongan of
    'A', 'a': gajiPokok := 1500000;
    'B', 'b': gajiPokok := 2000000;
    'C', 'c': gajiPokok := 2500000;
  else
    begin
      writeln('Golongan tidak valid.');
      readln;
      halt;
    end;
  end;

  { Menghitung lembur jika jam kerja lebih dari 40 jam }
  if jamKerja > 40 then
    lembur := jamKerja - 40
  else
    lembur := 0;

  gajiLembur := lembur * 20000;
  bonus := 0;

  { Bonus khusus golongan C jika jam kerja > 50 jam }
  if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
    bonus := 100000;

  totalGaji := gajiPokok + gajiLembur + bonus;

  writeln;
  writeln('Gaji Pokok : Rp', gajiPokok);
  writeln('Lembur     : ', lembur, ' jam');
  writeln('Gaji Lembur: Rp', gajiLembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', totalGaji);

  readln;
end.