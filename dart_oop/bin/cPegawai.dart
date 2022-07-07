// ignore_for_file: file_names, prefer_final_fields, unused_field

class Pegawai {
  String _nama;
  int _gaji = 10000;
  int _absen = 0;
  int _tunjangan = 0;

  Pegawai(this._nama, this._gaji);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  String get nama => this._nama;

  set gaji(int dtgaji) {
    _gaji = dtgaji;
  }

  int get gaji => this._gaji;

  void absen() {
    _absen++;
    print(_absen);
  }

  void getPenghasilan() {}

  set tunjangan(int dttunjang) {
    _tunjangan = dttunjang;
  }

  int get tunjangan => this._tunjangan;
}

class Dosen extends Pegawai {
  int _sks = 0;
  int _matkul = 0;
  Dosen(String nama, int gaji) : super(nama, gaji);

  set sks(int dtsks) {
    _sks = dtsks;
  }

  int get sks => this._sks;

  set matkul(int dtmatkul) {
    _matkul = dtmatkul;
  }

  int get matkul => this._matkul;

  @override
  void getPenghasilan() {}
}

class DosenLB extends Dosen {
  DosenLB(String nama, int gaji) : super(nama, gaji);
  @override
  void getPenghasilan() {
    var total = gaji + (matkul * 40000);
    print(total);
  }
}

class DosenTetap extends Dosen {
  int _tunjangan = 0;
  DosenTetap(String nama, int gaji) : super(nama, gaji);

  set tunjangan(int dttunjang) {
    if (dttunjang < 0) {
      print("Tunjangan tidak boleh negative");
    } else {
      _tunjangan = dttunjang;
    }
  }

  int get tunjangan => this._tunjangan;

  @override
  void getPenghasilan() {
    var total = gaji + (_absen * tunjangan) + (matkul * 40000);
    print(total);
  }
}

class DosenTamu extends Dosen {
  int _tunjangan = 0;
  DosenTamu(String nama, int gaji) : super(nama, 0);

  set tunjangan(int dttunjang) {
    if (dttunjang < 0) {
      print("Tunjangan tidak boleh negative");
    } else {
      _tunjangan = dttunjang;
    }
  }

  int get tunjangan => this._tunjangan;

  @override
  void getPenghasilan() {
    var total = (matkul * 40000) + (_absen * tunjangan);
    print(total);
  }
}

class Staf extends Pegawai {
  int _tunjangan = 0;
  int _cuti = 12;
  Staf(String nama, int gaji) : super(nama, gaji);

  @override
  void absen() {
    _absen++;
    _tunjangan = _absen * 50000;
  }

  void cuti() {
    if (_cuti <= 1) {
      _cuti--;
    } else {
      print("Jatah Cuti Habis");
    }
  }

  @override
  void getPenghasilan() {
    int total = gaji + _tunjangan;
    print(total);
  }
}
