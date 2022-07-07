import 'cMahasiswa.dart';
import 'cPegawai.dart';

void main(List<String> arguments) {
  var dosenTetap = DosenTetap("DosenTetap: Pak Ada", 5000000);
  var dosenLB = DosenLB("DosenLB: Bu Ona", 3000000);
  var dosenTamu = DosenTamu("DosenTamu: Bu Anna", 0);
  var mahasiswa = Mahasiswa('Felicia', '26416080');

  print(dosenTetap.nama);
  dosenTetap.getPenghasilan();
  dosenTetap.matkul = 40;
  dosenTetap.getPenghasilan();
  dosenTetap.absen();
  dosenTetap.getPenghasilan();
  dosenTetap.tunjangan = -50000;
  dosenTetap.tunjangan = 50000;
  dosenTetap.getPenghasilan();

  print('\n');

  print(dosenLB.nama);
  dosenLB.getPenghasilan();
  dosenLB.matkul = 40;
  dosenLB.getPenghasilan();

  print('\n');

  print(dosenTamu.nama);
  dosenTamu.getPenghasilan();
  dosenTamu.matkul = 40;
  dosenTamu.getPenghasilan();
  dosenTamu.absen();
  dosenTamu.getPenghasilan();
  dosenTamu.tunjangan = -50000;
  dosenTamu.tunjangan = 50000;
  dosenTamu.getPenghasilan();

  print('\n');

  print(mahasiswa.nama);
  mahasiswa.nrp('26416080');
  mahasiswa.status;
  mahasiswa.ambilsks(20);
  mahasiswa.ipk;
  mahasiswa.ips;
}
