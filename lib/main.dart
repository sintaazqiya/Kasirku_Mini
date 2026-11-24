import 'models/models.dart';

void main() {
  //final nasiGoreng = Produk.restok('MKN001', 'Nasi Goreng', 'Makanan Berat', 15000, 20);
  //final esTeh = Produk.baru('MNM001', 'Es Teh Manis', 'Minuman Dingin', 5000);
  //final tehWangi = Produk.habis('MNM001', 'Teh Wangi', 'Minuman', 7000);
  //print('${nasiGoreng.nama}: stok ${nasiGoreng.stok}, tersedia: ${nasiGoreng.tersedia}');
  //print('${esTeh.nama}: stok ${esTeh.stok}, tersedia: ${esTeh.tersedia}');
  //print('${tehWangi.nama}: stok ${tehWangi.stok}, tersedia ${tehWangi.tersedia}');

  //print(nasiGoreng.tampilkanInfo('Menu: '));
  //nasiGoreng.tambahStok(5, 'kiriman pagi');
  //nasiGoreng.aturDiskon(persen: 10, alasan: 'promo akhir pekan');
  //print(nasiGoreng.cetakStruk());

  //final kategoriUnik = <String>{};
  //kategoriUnik.add('Makanan Berat');
  //kategoriUnik.add('Minuman Dingin');
  //kategoriUnik.add('Makanan Berat'); // duplikat, akan diabaikan
  //print(kategoriUnik); // hanya 2 elemen

  final List<Produk> katalog = [
    ProdukMakanan.restok('MKN001', 'Nasi Goreng', 15000, 10),
    ProdukMinuman.restok('MNM001', 'Es Teh Manis', 5000, 20),
  ];
// Loop yang SAMA, method yang SAMA namanya, tapi hasil BEDA per jenis produk.
  for (final produk in katalog) {
  print('${produk.nama}: pajak Rp${produk.hitungPajak()}');
  }
}






