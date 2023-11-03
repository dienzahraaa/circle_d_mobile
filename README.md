Nama  : Dien Fitriani Azzahra

Kelas : PBP-F

NPM   : 2206828033

# TUGAS 7
## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi Flutter, perbedaan utama antara Stateless Widget dan Stateful Widget terletak pada kemampuan mereka dalam mengelola dan merubah keadaan (state) tampilan. Stateless Widget adalah widget yang tidak dapat berubah atau tetap konstan sepanjang siklus hidupnya. Ini cocok untuk tampilan statis yang tidak mengalami perubahan. Sebaliknya, Stateful Widget adalah widget yang dapat mengelola dan merubah keadaan selama siklus hidup aplikasi. Mereka digunakan untuk tampilan yang memerlukan pembaruan, perubahan data, atau respons terhadap interaksi pengguna. Stateful Widget menggunakan objek state terpisah untuk menyimpan dan mengelola keadaan, sehingga mereka dapat memperbarui tampilan saat keadaan berubah. Dalam praktiknya, pemilihan antara keduanya sangat tergantung pada kebutuhan aplikasi, dengan Stateless Widget digunakan untuk elemen tampilan yang tidak berubah dan Stateful Widget digunakan untuk elemen tampilan yang memerlukan dinamika dan perubahan.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1. MyHomePage (StatelessWidget):  widget yang menggambarkan halaman utama aplikasi Anda, dan menampilkan judul aplikasi di app bar dan daftar ShopItem dalam GridView.
2. Scaffold: struktur dasar untuk menyusun elemen-elemen tampilan seperti AppBar dan body aplikasi, serta menentukan app bar dan tampilan utama yang dapat discroll.
3. AppBar: menampilkan judul aplikasi ("Circle D") di atas halaman, dan mengatur warna latar belakang dan teks judul.
4. SingleChildScrollView: wrapper untuk tampilan utama yang dapat discroll jika kontennya lebih panjang dari layar.
5. Padding: menambahkan padding ke dalam tampilan utama untuk memberikan jarak antara elemen-elemen tampilan.
6. Column: mengatur elemen-elemen tampilan secara vertikal dalam satu kolom.
7. Text: menampilkan teks yang diperlukan dengan gaya tertentu.
8. GridView.count: menampilkan daftar ShopItem dalam grid layout dengan tiga kolom.
9. ShopItem (Model Class): model class yang merepresentasikan item toko dengan nama dan ikonnya.
10. ShopCard (StatelessWidget): widget yang mewakili kartu untuk setiap item toko di dalam grid. Menggunakan InkWell untuk membuat area yang responsif terhadap sentuhan. Ketika diklik, menampilkan SnackBar yang memberikan umpan balik ke pengguna tentang item yang dipilih.
11. Material: Menerapkan warna latar belakang pada kartu dengan menggunakan Material widget.
12. Icon: Menampilkan ikon dari ShopItem.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
### Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
Pertama-tama, saya perlu menginstall Flutter. Penginstallan dilakukan dengan mengikuti panduan yang tertera di situs web Flutter di halaman https://docs.flutter.dev/get-started/install/windows. Setelah mengunduh Flutter, saya perlu mengekstrak folder instalasinya ke direktori yang saya inginkan di komputer. Selanjutnya, saya menambahkan direktori instalasi Flutter ke dalam variabel PATH di sistem. Dengan begitu, saya dapat menjalankan perintah Flutter dari mana saja dalam command prompt. Setelah menginstall Flutter, saya mulai membuat proyek Flutter dengan tema inventaris bernama CircleD. Tahapan ini saya lakukan dengan membuka command prompt (cmd) atau terminal di direktori tempat saya ingin menyimpan proyek aplikasi CircleD. Saya menggunakan perintah `cd` untuk berpindah direktori ke lokasi yang sesuai. Setelah berada di direktori yang tepat, saya menjalankan perintah berikut untuk membuat proyek Flutter baru dengan nama "CircleD":

    flutter create circle_d

Dengan command tersebut saya telah menghasilkan struktur dasar proyek Flutter dengan semua file dan folder yang diperlukan.
Setelah proyek "CircleD" berhasil dibuat, Anda perlu pindah ke direktori proyek tersebut menggunakan perintah 

    cd circle_d

Setelah itu saya dapat memeriksa apakah instalasi Flutter telah berjalan dengan baik dan proyeknya dapat dijalankan dengan perintah

    flutter run
    
### Membuat tiga tombol sederhana dengan ikon dan teks untuk: (1)Melihat daftar item (Lihat Item) (2)Menambah item (Tambah Item) (3)Logout (Logout)
Pertama saya mengimpor terlebih dahulu package Flutter yang diperlukan, seperti `material.dart` dan `menu.dart`, sehingga memungkinkan saya untuk mengakses komponen-komponen Flutter dan kelas-kelas yang diperlukan dalam proyek CircleD. Selanjutnya saya juga menset-up terlebih dahulu tampilan utama dari aplikasi saya. Dalam file `menu.dart`, saya membuat kelas `ShopItem` yang digunakan untuk merepresentasikan setiap item dalam daftar dengan nama (teks) dan ikon. Daftar item ini didefinisikan dalam kelas `MyHomePage` sebagai `items`. Setelah itu, saya membuat tampilan utama aplikasi dalam kelas `MyHomePage`, yang berfungsi sebagai widget utama. Saya menggunakan  `Scaffold` untuk membuat tampilan aplikasi dengan AppBar, tubuh utama yang dapat di-scroll, dan grid untuk menampilkan tombol-tombol. AppBar menampilkan judul "Circle D" dengan teks putih dan latar belakang warna indigo. Untuk tubuh aplikasi dibungkus dalam SingleChildScrollView agar dapat di-scroll, dan saya juga membuat judul "PBP Shop" yang ditampilkan di tengah layar dengan ukuran besar dan tebal. Untuk menampilkan ketiga tombol tersebut, saya menggunakan grid dengan tiga kolom menggunakan GridView.count. Untuk setiap item dalam daftar items, saya membuat widget ShopCard yang menampilkan ikon dan teks. Melalui iterasi tersebut, saya menghasilkan daftar kartu yang akan ditampilkan dalam grid. Kelas `ShopCard` digunakan untuk membuat kartu dengan ikon dan teks, di mana setiap kartu merespons klik dengan menampilkan pesan Snackbar yang memberi tahu pengguna tombol mana yang telah mereka klik. Kartu-kartu ini memiliki latar belakang warna indigo dan menampilkan ikon dan teks dengan warna putih.
Step di atas saya capai dengan menuliskan kodingan berikut untuk membuad widget card dengan respons klik

    class ShopCard extends StatelessWidget {
      final ShopItem item;
    
      const ShopCard(this.item, {Key? key}) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Material(
          color: Colors.indigo,
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Anda telah menekan tombol ${item.name}!")));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    }

### Memunculkan Snackbar dengan tulisan: (1)"Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan. (2)"Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan. (3)"Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
Untuk mencapai checklist ini saya memodifikasi pada kelas `Shopcard`. Dalam kelas `ShopCard` yang digunakan untuk membuat tombol-tombol di checklist sebelumya, saya perlu menambahkan kode untuk menentukan pesan yang akan ditampilkan dalam Snackbar saat tombol ditekan. Dengan cara menambahkan if conditions. Jadi, saya memeriksa nama tombol yang ditekan (misalnya, "Melihat Daftar Item," "Menambah Item," atau "Logout") dan menetapkan pesan yang sesuai ke dalam variabel message.

    ...
    onTap: () {
          String message = "";

          if (item.name == "Melihat Daftar Item") {
            message = "Kamu telah menekan tombol Lihat Item";
          } else if (item.name == "Menambah Item") {
            message = "Kamu telah menekan tombol Tambah Item";
          } else if (item.name == "Logout") {
            message = "Kamu telah menekan tombol Logout";
          }

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(message),
      ...

## BONUS
    @override
    Widget build(BuildContext context) {
      Color backgroundColor; // Menyimpan warna latar belakang
  
      if (item.name == "Lihat Item") {
        backgroundColor = Colors.blue; // Atur warna latar belakang untuk "Lihat Item"
      } else if (item.name == "Tambah Item") {
        backgroundColor = Colors.green; // Atur warna latar belakang untuk "Tambah Item"
      } else if (item.name == "Logout") {
        backgroundColor = Colors.red; // Atur warna latar belakang untuk "Logout"
      } else {
        backgroundColor = Colors.indigo; // Warna default jika tidak ada yang cocok
      }
![image](https://github.com/dienzahraaa/circle_d_mobile/assets/124993970/a2d01cfd-fe5b-4d3e-a515-8c669ebe1c9d)
