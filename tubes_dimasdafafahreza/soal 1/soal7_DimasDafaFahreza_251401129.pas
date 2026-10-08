program Soal7_251401129_DimasDafaFahreza;
{ Menghitung tarif parkir berdasarkan kode kendaraan }

var
  kode: char;
  jam, tarif, tarifJam, tarifMaksimal: integer;

begin
  writeln('=== TARIF PARKIR ===');
  write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(kode);
  write('Lama parkir (jam): ');
  readln(jam);

  if jam <= 0 then
  begin
    writeln('Lama parkir harus lebih dari 0 jam.');
    readln;
    halt;
  end;

  case kode of
    'M', 'm':
      begin
        tarifJam := 3000;
        tarifMaksimal := 30000;

        if jam = 1 then
          tarif := 5000
        else
          tarif := 5000 + ((jam - 1) * tarifJam);
      end;

    'K', 'k':
      begin
        tarifJam := 1000;
        tarifMaksimal := 10000;

        if jam = 1 then
          tarif := 2000
        else
          tarif := 2000 + ((jam - 1) * tarifJam);
      end;

    'B', 'b':
      begin
        tarifJam := 5000;
        tarifMaksimal := 50000;

        if jam = 1 then
          tarif := 10000
        else
          tarif := 10000 + ((jam - 1) * tarifJam);
      end;

  else
    begin
      writeln('Kode kendaraan tidak valid.');
      readln;
      halt;
    end;
  end;

  { Tarif maksimal berlaku jika lebih dari 10 jam }
  if jam > 10 then
    tarif := tarifMaksimal;

  writeln;
  writeln('Total tarif parkir: Rp', tarif);

  readln;
end.