

class DataWisata {
  final String nama, gambarUrl, kategori, deskripsi;

  const DataWisata({
    required this.nama,
    required this.gambarUrl,
    required this.kategori,
    required this.deskripsi,
  });

  static DataWisata fromJson(json) => DataWisata(
    nama: json['nama'],
    gambarUrl: json['gambar_url'],
    kategori: json['kategori'],
    deskripsi: json['deskripsi'],
  );
}