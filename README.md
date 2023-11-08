Nama  : Dien Fitriani Azzahra

Kelas : PBP-F

NPM   : 2206828033


# TUGAS 8
## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
`Navigator.push()` dan `Navigator.pushReplacement()` merupakan dua opsi navigasi yang tersedia dalam framework Flutter. Kedua metode ini digunakan untuk menambahkan rute tambahan ke dalam stack tampilan saat ini. Namun, perbedaan signifikan antara keduanya adalah sebagai berikut:
1. Metode `Navigator.push()` digunakan dalam Flutter untuk menambahkan rute baru ke dalam stack rute saat ini dalam aplikasi. Ketika menggunakan `Navigator.push()`, rute baru ditambahkan di atas rute yang sedang ditampilkan. Sebagai hasilnya, halaman sebelumnya tetap ada dalam stack rute, dan pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol kembali atau dengan perintah "pop" yang sesuai. Ini memungkinkan pengguna untuk menjelajahi riwayat navigasi aplikasi dan kembali ke langkah sebelumnya.
   
Contoh penggunaan Navigator.push():
             
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ShopFormPage()));

2. Metode `Navigator.pushReplacement()` digunakan untuk menggantikan rute sebelumnya dengan rute baru dalam stack rute. Ketika Anda menggunakan Navigator.pushReplacement(), halaman sebelumnya dihapus dari stack rute, dan hanya rute baru yang ditampilkan. Oleh karena itu, pengguna tidak dapat kembali ke halaman sebelumnya menggunakan tombol kembali atau perintah "pop." Ini berguna ketika Anda ingin menggantikan konten halaman saat ini sepenuhnya dengan halaman baru, seperti ketika mencapai langkah terakhir dalam suatu alur aplikasi.

Contoh penggunaan Navigator.pushReplacement():
 
     Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ));

Secara umum perbedaan dalam penggunaannya yakni jika ingin mempertahankan riwayat navigasi dan kemampuan pengguna untuk kembali ke halaman sebelumnya (Navigator.push()) atau jika ingin menggantikan halaman sebelumnya dengan halaman baru dan menghilangkan opsi pengguna untuk kembali ke halaman sebelumnya (Navigator.pushReplacement()).

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Container: Container adalah widget tata letak serbaguna yang digunakan untuk mengelilingi widget lain dan mengatur properti-properti seperti padding, margin, warna latar belakang, dan batas (border). Ini sangat berguna untuk mengatur tampilan widget dalam kotak.

Column: Column adalah widget tata letak vertikal yang mengatur anak-anaknya dalam satu kolom. Ini berguna ketika Anda ingin menumpuk widget secara vertikal, misalnya untuk membuat tampilan daftar.

Row: Row adalah widget tata letak horizontal yang mengatur anak-anaknya dalam satu baris. Ini berguna untuk mengatur widget secara horizontal, seperti dalam pembuatan baris tombol atau ikon.

ListView: ListView adalah widget yang menggulungkan daftar anaknya secara vertikal atau horizontal, tergantung pada jenis ListView yang Anda gunakan. Ini cocok untuk membuat daftar item yang dapat digulungkan, seperti daftar berita atau daftar kontak.

Stack: Stack adalah widget yang memungkinkan Anda menempatkan anak-anaknya dalam lapisan (layer) yang tumpang tindih. Anda dapat mengatur posisi anak-anaknya dengan tepat dalam lapisan-lapisan ini, yang berguna untuk pembuatan tampilan yang kompleks, seperti tumpukan kartu atau tampilan overlay.

Expanded: Expanded adalah widget yang digunakan di dalam Column atau Row untuk memberikan anak-anaknya ruang tambahan. Ini digunakan untuk mengatur bagaimana ruang yang tersedia dibagi di antara anak-anak dalam tata letak kolom atau baris.

Card: Card adalah widget yang menggambarkan permukaan materi (material surface) yang terangkat dan berfungsi sebagai wadah untuk konten terkait. Ini sering digunakan untuk menampilkan informasi seperti kartu kontak atau entri berita dalam desain Material Design.

GridView: GridView adalah widget yang digunakan untuk mengatur anak-anaknya dalam grid atau kotak-kotak berbaris. Anda dapat mengatur jumlah baris dan kolom, serta tata letak anak-anaknya.

Wrap: Wrap adalah widget yang mengatur anak-anaknya dalam beberapa baris atau kolom dan, jika perlu, memindahkan widget ke baris atau kolom berikutnya jika ruang terbatas. Ini berguna ketika Anda ingin mengelola daftar item yang dapat berubah dalam jumlah dan ukuran.

SingleChildScrollView: SingleChildScrollView adalah widget yang digunakan untuk membuat area bergulir yang hanya memiliki satu anak. Ini berguna untuk menggulungkan satu widget besar dalam satu arah (vertikal atau horizontal).

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Column, 
## Bagaimana penerapan clean architecture pada aplikasi Flutter?

# TUGAS 7
## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Dalam pengembangan aplikasi Flutter, perbedaan utama antara Stateless Widget dan Stateful Widget terletak pada kemampuannya dalam mengelola dan merubah keadaan (state) tampilan. Stateless Widget adalah widget yang tidak dapat berubah atau tetap konstan sepanjang siklus hidup aplikasi. Ini cocok untuk tampilan statis yang tidak mengalami perubahan. Stateless widget tidak menyimpan informasi status(state) internal. Sebaliknya, Stateful Widget adalah widget yang dapat mengelola dan merubah keadaan selama siklus hidup aplikasi. Ini digunakan untuk tampilan yang memerlukan pembaruan, perubahan data, atau respons terhadap interaksi pengguna. Stateful Widget menggunakan objek state terpisah untuk menyimpan dan mengelola keadaan, sehingga mereka dapat memperbarui tampilan saat keadaan berubah. Sehingga, tampilan aplikasi akan selalu up to date dengan aksi atau data yang diberikan oleh user. Dapat ditarik kesimpulan bahwa, Stateless Widget digunakan untuk elemen tampilan yang tidak berubah dan Stateful Widget digunakan untuk elemen tampilan yang memerlukan dinamika dan perubahan.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- MyApp: sebagai widget utama Circle D untuk mengatur tema dan berisi halaman utama yang ditampilkan saat aplikasi dijalankan.
- MaterialApp : mengatur berbagai atribut, mengatur tema aplikasi dan konfigurasi aplikasi
- MyHomePage :  widget yang menggambarkan halaman utama aplikasi, dan menampilkan judul aplikasi di app bar dan daftar item.
- Scaffold: struktur dasar untuk menyusun elemen-elemen tampilan seperti AppBar dan body aplikasi, serta menentukan app bar dan tampilan utama yang dapat discroll.
- AppBar: menampilkan judul aplikasi ("Circle D") di atas halaman, dan mengatur warna latar belakang dan teks judul.
- SingleChildScrollView: wrapper untuk tampilan utama yang dapat discroll jika kontennya lebih panjang dari layar.
- Padding: menambahkan padding ke dalam tampilan utama untuk memberikan jarak antara elemen-elemen tampilan.
- Column: mengatur elemen-elemen tampilan secara vertikal dalam satu kolom.
- Text: menampilkan teks yang diperlukan dengan gaya tertentu
- GridView.count: menampilkan daftar ShopItem dalam grid layout dengan tiga kolom.
- ShopCard (StatelessWidget): widget untuk menampilkan kartu (card) untuk setiap item toko di dalam grid. 
- InkWell : membuat area yang responsif terhadap sentuhan. Sebagai contoh ketika diklik, menampilkan SnackBar yang memberikan umpan balik ke pengguna tentang item yang dipilih.
- Material: Menerapkan warna latar belakang pada kartu dengan menggunakan Material widget.
- Icon: Menampilkan ikon dari ShopItem.
- SnackBar: menampilkan pesan dalam bentuk bar di bagian bawah aplikasi saat suatu aksi dilakukan. 

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
