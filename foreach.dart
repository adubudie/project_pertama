import 'dart:io';

void main() {
  List<Map<String, dynamic>> pegawai = [
    {'id': 1, 'nama': 'Andi', 'jabatan': 'Manager', 'gaji': 7000000},
    {'id': 2, 'nama': 'Budi', 'jabatan': 'Staff', 'gaji': 4500000},
    {'id': 3, 'nama': 'Citra', 'jabatan': 'Supervisor', 'gaji': 6000000},
    {'id': 4, 'nama': 'Dewi', 'jabatan': 'Staff', 'gaji': 5000000},
    {'id': 5, 'nama': 'Eka', 'jabatan': 'Staff', 'gaji': 4000000},
  ];

  print("\n=== Daftar Pegawai ===");
  pegawai.forEach((p) {
    print("${p['id']}. ${p['nama']} - ${p['jabatan']} - Rp${p['gaji']}");
  });

  // Menambahkan pegawai baru
  tambahPegawai(pegawai, {
    'id': 6,
    'nama': 'Fajar',
    'jabatan': 'Manager',
    'gaji': 8000000,
  });

  // Menghitung jumlah pegawai dengan gaji di atas 5 juta
  int jumlahGajiTinggi = pegawai.where((p) => p['gaji'] > 5000000).length;
  print("\nJumlah pegawai dengan gaji di atas Rp5.000.000: $jumlahGajiTinggi");

  // Mencari pegawai berdasarkan nama
  stdout.write("\nMasukkan nama pegawai yang ingin dicari: ");
  String cariNama = stdin.readLineSync()!;
  cariPegawai(pegawai, cariNama);
}

// Fungsi untuk menambahkan pegawai baru
void tambahPegawai(
  List<Map<String, dynamic>> pegawai,
  Map<String, dynamic> pegawaiBaru,
) {
  pegawai.add(pegawaiBaru);
  print("\nPegawai baru berhasil ditambahkan:");
  print(
    "${pegawaiBaru['id']}. ${pegawaiBaru['nama']} - ${pegawaiBaru['jabatan']} - Rp${pegawaiBaru['gaji']}",
  );
}

// Fungsi untuk mencari pegawai berdasarkan nama
void cariPegawai(List<Map<String, dynamic>> pegawai, String nama) {
  bool ditemukan = false;
  pegawai.forEach((p) {
    if (p['nama'].toLowerCase() == nama.toLowerCase()) {
      print(
        "\nPegawai ditemukan: ${p['id']}. ${p['nama']} - ${p['jabatan']} - Rp${p['gaji']}",
      );
      ditemukan = true;
    }
  });

  if (!ditemukan) {
    print("\nPegawai dengan nama '$nama' tidak ditemukan.");
  }
}
