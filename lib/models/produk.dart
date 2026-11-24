abstract class Produk  {
final String kode;
String nama;
String kategori;
double _harga;
int _stok;
bool tersedia;
// Constructor utama. "tersedia" dihitung otomatis dari stok
// lewat initializer list (bagian setelah tanda ':'), bukan di dalam body.
Produk(this.kode, this.nama, this.kategori, this._harga, this._stok)
: tersedia = _stok > 0;
// Named constructor: untuk produk baru yang stoknya belum diisi (stok = 0).
Produk.baru(String kode, String nama, String kategori, double harga)
: this(kode, nama, kategori, harga, 0);
// Named constructor: untuk produk yang langsung didaftarkan dengan stok awal.

Produk.restok(
    String kode,
    String nama,
    String kategori,
    double harga,
    int stokAwal,
    ) : this(kode, nama, kategori, harga, stokAwal);

Produk.habis(String kode, String nama, String kategori, double harga)
    : this(kode, nama, kategori, harga, 0);

// Getter: cara BACA _harga dari luar class.
  double get harga => _harga;

// Setter: cara UBAH _harga dari luar class, sekaligus tempat validasi.
  set harga(double nilai) {
    if (nilai < 0) throw ArgumentError('Harga tidak boleh negatif');
    _harga = nilai;
  }
  int get stok => _stok;

// Positional biasa: parameter wajib, urutan penting.
  String tampilkanInfo(String prefix) => '$prefix$nama - Rp${_harga.toStringAsFixed(0)}';
// Optional positional: catatan boleh diisi, boleh tidak (diapit [ ]).
void tambahStok(int jumlah, [String? catatan]) {
  _stok += jumlah;
  tersedia = _stok > 0;
  if (catatan != null) print('Catatan restok: $catatan');
}

// Named wajib: persen HARUS diisi lewat nama parameternya, alasan opsional.
  void aturDiskon({required double persen, String? alasan}) {
    final potongan = harga * persen / 100;
    harga -= potongan;
    print('Diskon $persen% diterapkan${alasan != null ? ' ($alasan)' : ''}');
  }
// Optional named dengan default value: includeDiskon boleh diabaikan.
  String cetakStruk({bool includeDiskon = false}) {
    final buffer = StringBuffer()
      ..writeln('$nama ($kategori)')
      ..writeln('Harga: Rp${harga.toStringAsFixed(0)}')
      ..writeln('Stok tersisa: $stok');
    return buffer.toString();
  }
  double hitungPajak();

}










