program Soal4_251401129_DimasDafaFahreza;
{ Kalkulator sederhana menggunakan case-of dan repeat-until }

var
  pilihan: integer;
  a, b, hasil: real;
  lanjut: char;
  divHasil: integer;
  modHasil: integer;

begin
  repeat
    writeln;
    writeln('=== KALKULATOR ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi: ');
    readln(pilihan);

    if (pilihan >= 1) and (pilihan <= 5) then
    begin
      write('Masukkan angka pertama: ');
      readln(a);
      write('Masukkan angka kedua: ');
      readln(b);

      case pilihan of
        1:
          begin
            hasil := a + b;
            writeln('Hasil = ', hasil:0:2);
          end;
        2:
          begin
            hasil := a - b;
            writeln('Hasil = ', hasil:0:2);
          end;
        3:
          begin
            hasil := a * b;
            writeln('Hasil = ', hasil:0:2);
          end;
        4:
          begin
            if b = 0 then
              writeln('Error: pembagian dengan nol tidak diperbolehkan.')
            else
            begin
              hasil := a / b;
              writeln('Hasil = ', hasil:0:2);
            end;
          end;
        5:
          begin
            if (b = 0) then
              writeln('Error: DIV dan MOD dengan nol tidak diperbolehkan.')
            else
            begin
              divHasil := trunc(a) div trunc(b);
              modHasil := trunc(a) mod trunc(b);
              writeln('Hasil DIV = ', divHasil);
              writeln('Hasil MOD = ', modHasil);
            end;
          end;
      end;
    end
    else
      writeln('Pilihan tidak valid.');

    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lanjut);
  until (lanjut = 'T') or (lanjut = 't');

  writeln('Program selesai.');
  readln;
end.