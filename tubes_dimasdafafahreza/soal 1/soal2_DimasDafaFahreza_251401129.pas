program Soal2_251401129_DimasDafaFahreza;
{ Sistem verifikasi kata sandi dengan repeat-until dan break }

var
  password, rahasia: string;
  percobaan: integer;
  berhasil: boolean;

begin
  rahasia := 'pascal123';
  percobaan := 0;
  berhasil := false;

  writeln('=== LOGIN ===');

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/3): ');
    readln(password);

    if password = rahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Kata sandi salah.');

  until percobaan >= 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.