Nama  : Dien Fitriani Azzahra

Kelas : PBP-F

NPM   : 2206828033

# TUGAS 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON tanpa membuat model terlebih dahulu merupakan pendekatan yang memungkinkan dalam pengembangan perangkat lunak. Namun, keberhasilannya sering kali tergantung pada kompleksitas dan kebutuhan proyek yang sedang dikerjakan. Sementara itu, pembuatan model sebelumnya memiliki keunggulan tersendiri. Proses ini memungkinkan pengembang untuk lebih terfokus dalam membaca dan menginterpretasi data dengan lebih efisien. Dalam konteks ini, model memainkan peran penting dalam mengidentifikasi potensi kesalahan atau bug yang mungkin muncul saat pengambilan data. Selain itu, model memungkinkan untuk mengatur struktur data yang diambil sesuai dengan kebutuhan yang telah ditetapkan sebelumnya, mengurangi risiko kesalahan interpretasi atau ketidaksesuaian data. Oleh karena itu, meskipun membutuhkan investasi lebih awal dalam pembuatan model, langkah ini dapat membawa manfaat jangka panjang dengan memastikan integritas, keakuratan, dan keandalan data yang diambil dalam proyek pengembangan perangkat lunak.  Jadi, dalam kondisi di mana sumber daya dan waktu memungkinkan, strategi membuat model terlebih dahulu sebelum mengambil data JSON mungkin lebih disarankan untuk memastikan integritas dan keakuratan informasi yang diperoleh.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` adalah sebuah kelas yang memiliki fungsi khusus dalam pengiriman permintaan HTTP yang melibatkan penggunaan cookie. Ketika sebuah instance dari `CookieRequest` dibuat, ini memungkinkan penyisipan informasi cookie ke dalam permintaan HTTP yang akan dikirim. Ini terbukti sangat berguna ketika ingin mengirim permintaan ke server dengan menyertakan data cookie yang telah disimpan dalam aplikasi.

Pentingnya membagikan instance `CookieRequest` ke semua komponen di dalam aplikasi Flutter terletak pada kemampuannya untuk mempertahankan konsistensi identitas pengguna. Dengan memiliki instance yang sama dari `CookieRequest` yang dibagikan di berbagai komponen aplikasi, memastikan bahwa setiap permintaan HTTP yang dibuat akan menyertakan informasi cookie yang sama. Hal ini penting karena memungkinkan server untuk mengidentifikasi pengguna secara konsisten dan mengaitkan setiap permintaan dengan identitas yang sama. Dengan demikian, pengguna dapat tetap terautentikasi dan memiliki akses ke informasi yang relevan serta personalisasi yang sesuai dengan penggunaan sebelumnya. Ini menciptakan konsistensi antara klien (aplikasi Flutter) dan server, memastikan bahwa pengguna dikenali dengan benar dan mendapatkan layanan yang konsisten setiap kali berinteraksi dengan aplikasi.


## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Pertama, langkah awalnya adalah menambahkan dependensi `http` ke dalam proyek Flutter yang bertujuan untuk melakukan pertukaran HTTP request. Setelah itu, langkah kedua melibatkan pembuatan model yang sesuai dengan respons data dari web service yang akan digunakan. Dalam hal ini, kita menggunakan sebuah alat seperti situs web Quicktype untuk menghasilkan model Dart dari data JSON yang diambil dari endpoint yang sudah disiapkan sebelumnya.

Setelah mendapatkan kode model dari Quicktype, langkah selanjutnya adalah membuat permintaan HTTP ke web service menggunakan dependensi `http` yang telah ditambahkan sebelumnya. Data yang diperoleh dari web service kemudian perlu dikonversi ke dalam objek yang sesuai dengan model yang telah dibuat pada langkah sebelumnya.

Penggunaan `FutureBuilder` di Flutter memungkinkan tampilan aplikasi untuk menampilkan data yang telah diambil dari web service secara asinkron. Proses ini memungkinkan pembangunan UI aplikasi dengan respons yang diperoleh dari web service.

Sebagai contoh, setelah mendapatkan kode model dari Quicktype, langkah selanjutnya adalah membuat file `product.dart` di dalam folder `lib/models` dalam proyek Flutter dan menempelkan kode yang telah dihasilkan dari Quicktype ke dalamnya. Proses ini memungkinkan untuk memetakan struktur data JSON menjadi objek Dart yang dapat digunakan dalam proyek Flutter.

Dengan demikian, dari langkah-langkah tersebut, data yang diambil dari web service dapat diubah ke dalam objek Dart sesuai dengan model yang telah dibuat sebelumnya, dan kemudian dapat ditampilkan di aplikasi Flutter dengan menggunakan `FutureBuilder`. Ini memungkinkan aplikasi untuk menampilkan data eksternal yang telah diambil dari web service secara langsung dalam tampilan yang sesuai dengan UI aplikasi yang telah dibuat.


## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi dari input data akun pada aplikasi Flutter hingga tampilnya menu setelah autentikasi oleh server Django melibatkan beberapa langkah penting dalam mengatur interaksi antara kedua platform tersebut. Pertama, dalam pengaturan Django, langkah-langkah termasuk pembuatan app 'authentication' dan integrasinya ke dalam proyek, pengaturan CORS untuk memungkinkan komunikasi lintas domain, serta penggunaan library seperti 'django-cors-headers' untuk mengelola permintaan lintas domain. Selanjutnya, pengaturan view untuk proses login dalam Django memungkinkan autentikasi menggunakan username dan password yang dikirim melalui permintaan HTTP POST. Di sisi Flutter, penggunaan package 'pbp_django_auth' memfasilitasi komunikasi dengan web service Django, sementara penggunaan Provider dalam Flutter memungkinkan penyediaan `CookieRequest` ke seluruh komponen aplikasi. Pembuatan halaman login dalam Flutter memungkinkan pengguna untuk memasukkan kredensial login, dan saat permintaan login dikirim ke server Django melalui `CookieRequest`, respons dari server akan mempengaruhi pengalihan halaman ke menu utama jika autentikasi berhasil. Keseluruhan proses ini membentuk kerangka kerja yang menghubungkan antara aplikasi Flutter dan server Django untuk menjalankan proses autentikasi dengan memastikan kredensial yang tepat untuk memungkinkan akses ke menu dalam aplikasi Flutter setelah autentikasi berhasil.


## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

Scaffold: Menyediakan struktur dasar untuk sebuah halaman dengan AppBar, body, dan fungsi-fungsi dasar lainnya seperti Drawer atau BottomNavigationBar.

Container: Mengizinkan pengaturan padding, margin, background, ukuran, dan berfungsi sebagai wadah untuk elemen-elemen lainnya dengan fleksibilitas.

AppBar: Menampilkan judul aplikasi dan mengatur warna latar belakang serta teks di bagian atas sebuah halaman.

ElevatedButton: Tombol dengan tampilan yang lebih tinggi yang dapat digunakan untuk memicu aksi tertentu.

Form: Memungkinkan pengelompokan elemen-elemen input untuk validasi dan manipulasi data.

TextFormField: Widget untuk mengambil input teks dari pengguna dalam sebuah form.

Text: Menampilkan teks dalam aplikasi.

Drawer: Menyediakan struktur untuk menu navigasi yang dapat diakses dengan menggeser dari sisi.

Column: Menyusun widgets atau item secara vertikal.

ListView: Menyusun widget-widget agar dapat di-scroll, berguna ketika menampilkan daftar item.

ListTile: Menampilkan item dalam ListView dengan tampilan yang konsisten.

Navigator: Bertanggung jawab atas perpindahan antar halaman dalam aplikasi.

MaterialPageRoute: Mengatur transisi antara halaman-halaman dalam aplikasi Flutter.

Material: Lapisan dasar yang memberikan efek elevasi dan respons terhadap sentuhan pada widget seperti InkWell.

InkWell: Area responsif terhadap sentuhan pengguna dengan efek visual.

Card: Mengelompokkan informasi dalam tampilan kartu dengan bayangan dan sudut yang lebih lembut.

CircularProgressIndicator: Menampilkan indikator loading sementara ketika data produk diambil atau proses tertentu sedang berlangsung.

SingleChildScrollView: Memungkinkan halaman untuk dapat di-scroll secara vertikal saat kontennya melebihi ukuran layar.

GridView.count: Tata letak grid dengan jumlah kolom yang dapat diatur.

Future: Representasi nilai atau kesalahan yang mungkin terjadi di masa depan.

FutureBuilder: Mengelola state Future untuk menangani data asynchronous dan membangun tampilan berdasarkan status Future tersebut.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
### Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
![image](https://github.com/dienzahraaa/circle_d_mobile/assets/124993970/f6c739a4-52d2-4a14-812b-170291a31283)
### Penjelasan checklists

Langkah pertama yang saya lakukan adalah memastikan proyek Flutter telah memiliki dependensi yang diperlukan untuk integrasi dengan web service Django. Setelah menginstal package pbp_django_auth yang disediakan oleh tim asisten dosen, langkah selanjutnya adalah memodifikasi root widget, dalam kasus ini MyApp, untuk menggunakan Provider dan menyediakan CookieRequest ke seluruh aplikasi. Hal ini dilakukan dengan cara membuat objek Provider baru dan mengembalikan instance CookieRequest untuk digunakan oleh semua komponen aplikasi Flutter.

Kemudian, saya membuat file baru dengan nama login.dart di dalam folder screens untuk menangani halaman login. Di dalamnya, saya membuat LoginPage sebagai StatefulWidget yang memiliki field untuk input username dan password menggunakan TextEditingController. Saya menggunakan context.watch<CookieRequest>() untuk mendapatkan instance CookieRequest dari Provider yang telah disediakan sebelumnya. Saat tombol login ditekan, saya mengambil nilai dari field input, melakukan permintaan login dengan menggunakan request.login() dari package pbp_django_auth dengan mengirimkan username dan password ke endpoint yang ditentukan. Jika login berhasil, saya melakukan navigasi ke halaman utama aplikasi (MyHomePage) dan menampilkan pesan selamat datang. Namun, jika terjadi kegagalan dalam proses login, saya tampilkan dialog peringatan dengan pesan yang sesuai. Terakhir, saya melakukan perubahan pada file main.dart untuk mengarahkan aplikasi ke halaman login (LoginPage) sebagai halaman utama. Dengan langkah-langkah ini, aplikasi Flutter yang saya buat memiliki halaman login yang terhubung dengan web service Django untuk proses autentikasi. Pengguna dapat memasukkan kredensial login, dan berdasarkan respons dari server Django, aplikasi akan menavigasikan pengguna ke halaman utama jika proses autentikasi berhasil atau menampilkan pesan kesalahan jika gagal. (Kode dapat dilihat pada berkas login.dart)

Selanjutnya, langkah pertama dalam membuat model kustom sesuai dengan proyek aplikasi Django adalah dengan membuka endpoint JSON yang sudah dibuat sebelumnya pada tutorial sebelumnya. Data JSON dari endpoint tersebut kemudian disalin dan dibawa ke situs web Quicktype. Pada situs web Quicktype, saya mengatur setup dengan mengubah nama menjadi "Product", memilih source type sebagai JSON, dan language menjadi Dart. Data JSON yang telah disalin sebelumnya kemudian saya tempel ke dalam textbox yang tersedia pada Quicktype. Setelah itu, saya memilih opsi "Copy Code" pada Quicktype untuk mengambil hasil kode model yang dihasilkan. Contoh hasilnya berupa kode model Dart yang dibuat berdasarkan data JSON yang telah dimasukkan. Selanjutnya, saya membuka proyek Flutter dan membuat file baru di dalam folder `lib/models` dengan nama `product.dart`. Di dalam file tersebut, saya menempelkan kode yang sudah disalin dari Quicktype. Dengan langkah ini, model Dart untuk objek "Product" yang sesuai dengan struktur data JSON dari proyek aplikasi Django telah berhasil dibuat dan siap digunakan dalam proyek Flutter.

Langkah pertama dalam membuat halaman yang menampilkan daftar semua item dari endpoint JSON di Django yang telah dideploy adalah dengan menambahkan dependensi HTTP pada proyek Flutter. Saya menggunakan perintah `flutter pub add http` di terminal untuk menambahkan package http yang dibutuhkan. Selanjutnya, saya memodifikasi file `android/app/src/main/AndroidManifest.xml` dengan menambahkan kode untuk memperbolehkan akses Internet pada aplikasi Flutter. Ini dilakukan untuk memastikan aplikasi memiliki izin untuk mengambil data dari Internet. Setelah melakukan langkah-langkah konfigurasi ini, saya membuat file baru bernama `list_product.dart` di dalam folder `lib/screens`. Di file tersebut, saya mengimpor library yang dibutuhkan dan membuat sebuah stateful widget `ProductPage`. Dalam stateful widget `ProductPage`, saya membuat fungsi `fetchProduct()` yang menggunakan package `http` untuk melakukan permintaan GET ke endpoint JSON yang ditentukan dari proyek Django. Respons dari permintaan ini akan di-decode menjadi bentuk JSON dan kemudian dikonversi menjadi objek `Product` menggunakan metode `Product.fromJson(d)`. Pada method `build()`, saya menggunakan `FutureBuilder` untuk menampilkan daftar produk. Saat data belum tersedia, ditampilkan `CircularProgressIndicator`. Jika data telah diterima dan tidak kosong, saya menampilkan daftar produk dalam `ListView.builder`, menampilkan atribut `name`, `price`, dan `description` dari setiap item. Untuk mengakses halaman detail setiap item, saya akan membuat halaman detail terpisah dan menavigasi ke halaman tersebut saat salah satu item pada daftar produk diklik. Saya juga menambahkan navigasi ke `ProductPage` di dalam `LeftDrawer`, sehingga pengguna dapat mengakses daftar produk dari menu navigasi. Terakhir, saya mengimpor file yang diperlukan dan menjalankan aplikasi untuk melihat hasilnya. Dengan melakukan langkah-langkah ini, aplikasi Flutter akan menampilkan daftar semua item dari endpoint JSON yang telah di-deploy di Django, serta memungkinkan pengguna untuk melihat detail setiap item dan kembali ke halaman daftar produk.

## BONUS
![image](https://github.com/dienzahraaa/circle_d_mobile/assets/124993970/0f1a40a5-a808-471e-8603-ed62b7f3f0ce)

# TUGAS 8
## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
**`Navigator.push()`** dan **`Navigator.pushReplacement()`** merupakan dua opsi navigasi yang tersedia dalam framework Flutter. Kedua metode ini digunakan untuk menambahkan rute tambahan ke dalam stack tampilan saat ini. Namun, perbedaan signifikan antara keduanya adalah sebagai berikut:
1. Metode **`Navigator.push()`** digunakan dalam Flutter untuk menambahkan rute baru ke dalam stack rute saat ini dalam aplikasi. Ketika menggunakan `Navigator.push()`, rute baru ditambahkan di atas rute yang sedang ditampilkan. Sebagai hasilnya, halaman sebelumnya tetap ada dalam stack rute, dan pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol kembali atau dengan perintah "pop" yang sesuai. Ini memungkinkan pengguna untuk menjelajahi riwayat navigasi aplikasi dan kembali ke langkah sebelumnya.
   
Contoh penggunaan Navigator.push():
             
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ShopFormPage()));

2. Metode **`Navigator.pushReplacement()`** digunakan untuk menggantikan rute sebelumnya dengan rute baru dalam stack rute. Ketika Anda menggunakan Navigator.pushReplacement(), halaman sebelumnya dihapus dari stack rute, dan hanya rute baru yang ditampilkan. Oleh karena itu, pengguna tidak dapat kembali ke halaman sebelumnya menggunakan tombol kembali atau perintah "pop." Ini berguna ketika Anda ingin menggantikan konten halaman saat ini sepenuhnya dengan halaman baru, seperti ketika mencapai langkah terakhir dalam suatu alur aplikasi.

Contoh penggunaan Navigator.pushReplacement():
 
     Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ));

Secara umum perbedaan dalam penggunaannya yakni jika ingin mempertahankan riwayat navigasi dan kemampuan pengguna untuk kembali ke halaman sebelumnya (Navigator.push()) atau jika ingin menggantikan halaman sebelumnya dengan halaman baru dan menghilangkan opsi pengguna untuk kembali ke halaman sebelumnya (Navigator.pushReplacement()).

## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1. **`Align`**: Digunakan untuk menempatkan widget anak tepat di tengah atau di lokasi yang diinginkan dalam suatu container.

         Align(
           alignment: Alignment.center,
           child: Text('Hello, World!'),
         )

2. **`AspectRatio`**: Berguna ketika ingin menjaga rasio aspek dari suatu widget, seperti gambar, untuk tetap konsisten.

         AspectRatio(
           aspectRatio: 16 / 9,
           child: Image.network('https://example.com/image.jpg'),
         )

3. **`Center`**: Memusatkan widget anak di tengah container, sering digunakan untuk menempatkan teks atau gambar di tengah.

         Center(
           child: Text('Centered Text'),
         )

4. **`ConstrainedBox`**: Digunakan ketika ingin membatasi ukuran widget anak, misalnya, untuk memastikan bahwa sebuah teks tidak terlalu lebar.

         ConstrainedBox(
           constraints: BoxConstraints(
             minWidth: 100,
             minHeight: 50,
           ),
           child: Text('Constrained Text'),
         )

5. **`Container`**: Cocok untuk menggabungkan berbagai properti styling dan layout dalam satu widget, seperti menentukan warna, lebar, dan tinggi.

         Container(
           color: Colors.blue,
           width: 200,
           height: 100,
           child: Text('Blue Container'),
         )

6. **`CustomSingleChildLayout`**: Berguna ketika ingin membuat tata letak kustom untuk widget anak tunggal.

         CustomSingleChildLayout(
           delegate: MyCustomLayoutDelegate(),
           child: Text('Custom Layout'),
         )

7. **`Expanded`**: Digunakan untuk memperluas widget anak agar mengisi sebanyak mungkin ruang yang tersedia.

         Row(
           children: [
             Expanded(
               child: Text('Left'),
             ),
             Expanded(
               child: Text('Right'),
             ),
           ],
         )

8. **`FittedBox`**: Berguna ketika ingin memastikan bahwa kontennya sesuai dengan kotak, misalnya, dalam penyesuaian gambar.

         FittedBox(
           fit: BoxFit.contain,
           child: Image.asset('assets/image.png'),
         )

9. **`FractionallySizedBox`**: Digunakan ketika ingin menentukan ukuran widget sebagai fraksi dari ukuran total yang tersedia.

         FractionallySizedBox(
           widthFactor: 0.5,
           heightFactor: 0.3,
           child: Text('Fractional Box'),
         )

10. **`IntrinsicHeight`** dan **`IntrinsicWidth`**: Menjaga tinggi atau lebar intrinsik anak sesuai dengan kontennya.

         IntrinsicHeight(
           child: Row(
             children: [
               Text('Left'),
               Text('Right'),
             ],
           ),
         )

11. **`LimitedBox`**: Digunakan untuk membatasi ukuran widget anak, tetapi hanya jika widget anak tersebut tidak terbatas.

         LimitedBox(
           maxWidth: 200,
           child: Text('Limited Text'),
         )

12. **`Offstage`**: Berguna ketika ingin menyembunyikan widget dari tampilan tanpa menghapusnya dari pohon widget.

         Offstage(
           offstage: shouldHide,
           child: Text('Visible when shouldHide is false'),
         )

13. **`OverflowBox`**: Digunakan ketika ingin mengizinkan widget anak untuk melebihi batas ukuran yang seharusnya.
         
         OverflowBox(
           maxHeight: 100,
           maxWidth: 150,
           child: Text('Overflowing Text'),
         )

14. **`Padding`**: Menambahkan padding di sekitar widget anak, sering digunakan untuk memberikan ruang di sekitar teks atau gambar.

         Padding(
           padding: EdgeInsets.all(16.0),
           child: Text('Padded Text'),
         )

15. **`SizedBox`**: Widget ini memaksa anaknya memiliki lebar dan/atau tinggi tertentu. Sehingga dapat mengatur ukuran menggunakan properti width dan height

         SizedBox(
           width: 100,
           height: 50,
           child: Container(
             color: Colors.blue,
             child: Text('Fixed Size Box'),
           ),
         )

16. **`Transform`**: Digunakan untuk menerapkan transformasi pada widget anak, seperti rotasi atau pergeseran posisi atau perubahan skala.

         Transform.rotate(
           angle: 0.5, // Rotasi sebesar 0.5 radian (sekitar 28 derajat)
           child: Text('Rotated Text'),
         )

## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Dalam tugas ini, saya memanfaatkan 3 **`TextFormField`** untuk mengumpulkan informasi mengenai item, jumlah, dan deskripsi pada formulir penambahan item baru. Pemilihan TextFormField dipilih agar input dari pengguna untuk ketiga aspek item tersebut serta dapat diberikan validasi. Dengan menggunakan TextFormField, saya dapat memastikan bahwa tidak boleh ada field yang kosong atau tidak diisi, serta melakukan validasi pada input jumlah agar hanya menerima angka. Penggunaan elemen input ini didasarkan pada kebutuhan spesifik untuk masing-masing aspek informasi yang dibutuhkan, dan kelebihan TextFormField memberikan kontrol yang baik terhadap validasi data, memastikan bahwa data yang dimasukkan oleh pengguna sesuai dengan format yang diinginkan.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture pada aplikasi Flutter memberikan pendekatan desain perangkat lunak yang terstruktur dengan memisahkan komponen-komponen ke dalam lapisan-lapisan terpisah. Lapisan Presentasi (UI) menangani antarmuka pengguna, Lapisan Domain (Logika Bisnis) berfokus pada aturan bisnis inti, Lapisan Data mengelola pengambilan dan penyimpanan data, Lapisan Sumber Daya menangani aset-aset, dan Lapisan Perpustakaan Bersama menyediakan kode bersama. Prinsip separasi kekhawatiran memastikan setiap lapisan memiliki tanggung jawab yang jelas, memungkinkan pemeliharaan dan pengembangan yang lebih mudah. Dengan struktur ini, setiap bagian aplikasi dapat diperbarui secara independen, menciptakan kode yang bersih, terpisah, dan mudah diuji, serta meningkatkan skalabilitas dan pemeliharaan aplikasi Flutter secara keseluruhan.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
1. Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
   - Memakai minimal tiga elemen input, yaitu name, amount, description. 
   - Memiliki sebuah tombol Save.
   - Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut: Setiap elemen input tidak boleh kosong, Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

**Penjelasan** : Langkah awal adalah membuat sebuah berkas baru dalam proyek Flutter dengan nama `shoplist_form.dart`. Struktur ini akan menjadi wadah untuk kode-kode yang berkaitan dengan halaman formulir tambah item. Selanjutnya, dalam berkas ini, dilakukan inisialisasi form menggunakan widget `Form` dan penggunaan kunci global (`GlobalKey<FormState>`) untuk mengelola status formulir. Selain itu,` variabel _name`, `_amount`, dan `_description` dideklarasikan sebagai bagian dari State untuk menyimpan nilai dari elemen input. Dalam formulir, ketiga elemen tersebut ditambahkan menggunakan widget `TextFormField`. Setiap elemen input diberikan atribut decoration untuk menyesuaikan UI, dan fungsi `onChanged` untuk mengupdate nilai yang sesuai saat input berubah. Validasi juga diterapkan menggunakan properti validator untuk memastikan bahwa setiap input tidak boleh kosong

            ....
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Item",
                  labelText: "Nama Item",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            // ... (sama untuk amount dan description)
Untuk elemen input amount, diperlakukan validasi tambahan untuk memastikan bahwa nilai yang dimasukkan berupa angka, menggunakan fungsi `int.tryParse(value)`.

      ...
      validator: (String? value) {
         if (value == null || value.isEmpty) {
           return "Harga tidak boleh kosong!";
         }
         if (int.tryParse(value) == null) {
           return "Harga harus berupa angka!";
         }
         return null;
       },
       ...

Tombol "Save" ditambahkan dengan menggunakan widget `ElevatedButton`. Aksi yang akan dilakukan ketika tombol ini ditekan didefinisikan di dalam blok `onPressed`. Sebelum melakukan aksi, kondisi` if (_formKey.currentState!.validate())` digunakan untuk memastikan bahwa formulir telah berhasil divalidasi. Jika valid, maka dialog sukses ditampilkan, dan formulir di-reset untuk persiapan input berikutnya.

      ...
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            showDialog(
              // ... (tampilkan dialog sukses)
              _formKey.currentState!.reset();
            }
          },
          // ... (tombol Save)
        ),
        ...

2.  Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

**Penjelasan** : Pertama, terdapat pengecekan terhadap nama item yang dipilih. Jika nama item sama dengan "Tambah Item", maka blok kode di dalamnya akan dieksekusi. Jika tidak, program akan memeriksa kondisi berikutnya.

         if (item.name == "Tambah Item") {
             // ...
         } else if (item.name == "Lihat Item") {
             // ...
         }

Jika nama item sama dengan "Tambah Item", maka  `Navigator.push` digunakan untuk memulai navigasi ke halaman baru. Dalam hal ini, menggunakan `MaterialPageRoute` untuk membungkus `ShopFormPage `sebagai halaman tujuan.
    
          if (item.name == "Tambah Item") {
               Navigator.push(context,
               MaterialPageRoute(builder: (context) => const ShopFormPage()));
          } 

3. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru

**Penjelasan** : Sebelum menampilkan pop-up, terlebih dahulu dilakukan validasi formulir dengan menggunakan `if (_formKey.currentState!.validate())` untuk memastikan bahwa semua elemen input pada formulir telah diisi sesuai dengan kriteria validasi yang telah ditentukan sebelumnya. Jika formulir valid, maka dilakukan pemanggilan `showDialog` untuk menampilkan pop-up. Dalam `builder` dari` showDialog`, sebuah `AlertDialog` ditampilkan. Konten dari pop-up adalah suatu widget `Column` yang berisi elemen-elemen `Text`. Elemen-elemen `Text` ini menampilkan data yang diisi oleh pengguna dalam formulir, yaitu nama, jumlah, dan deskripsi.

        content: SingleChildScrollView(
             child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                     Text('Nama: $_name'),
                     Text('Harga: $_amount'),
                     Text('Deskripsi: $_description'),
                 ],
             ),
         ),
Terdapat tombol "OK" pada pop-up yang dapat ditekan oleh pengguna. Ketika tombol ini ditekan, Navigator.pop(context) dipanggil untuk menutup pop-up.

      actions: [
          TextButton(
              child: const Text('OK'),
              onPressed: () {
                  Navigator.pop(context);
              },
          ),
      ],
Setelah pop-up ditutup, formulir direset menggunakan `_formKey.currentState!.reset()` agar input user di form bersih dan formulir siap untuk pengisian data yang baru.

4. Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
   -    Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
   -    Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
   -    Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

**Penjelasan** : Pertama-tama, drawer diimplementasikan sebagai bagian dari aplikasi Flutter. Drawer ini memiliki struktur dasar yang terdiri dari sebuah `DrawerHeader` dan `ListView` yang berisi opsi-opsi menu. `DrawerHeader` digunakan untuk bagian header drawer. Di dalamnya terdapat teks "Circle D" dan deskripsi singkat. Warna latar belakang dan teks diatur sesuai dengan gaya desain yang diinginkan. Selanjutnya, dua opsi menu ditambahkan ke dalam `ListView` drawer. Setiap opsi menu direpresentasikan sebagai widget` ListTile`. Opsi menu pertama adalah "Halaman Utama" dengan ikon rumah, dan opsi menu kedua adalah "Tambah Item" dengan ikon keranjang belanja.

            ListTile(
                 leading: const Icon(Icons.home_outlined),
                 title: const Text('Halaman Utama'),
                 onTap: () {
                   // ... (aksi untuk memilih Halaman Utama)
                 },
               ),
               ListTile(
                 leading: const Icon(Icons.add_shopping_cart),
                 title: const Text('Tambah Item'),
                 onTap: () {
                   // ... (aksi untuk memilih Tambah Item)
                 },
               ),
Pada` onTap` dari `ListTile` pertama, ditambahkan aksi untuk mengarahkan pengguna ke halaman utama. Dalam kasus ini, `Navigator.pushReplacement` digunakan untuk mengganti halaman saat ini dengan halaman utama (`MyHomePage`).

         onTap: () {
           Navigator.pushReplacement(
             context,
             MaterialPageRoute(
               builder: (context) => MyHomePage(),
             ),
           );
         },
Pada` onTap` dari `ListTile` pertama, ditambahkan aksi untuk mengarahkan pengguna ke halaman form tambah item baru. Pengguna akan diarahkan ke halaman `ShopFormPage` menggunakan `Navigator.pushReplacement`.

      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShopFormPage(),
          ),
        );
      },

## BONUS 
![image](https://github.com/dienzahraaa/circle_d_mobile/assets/124993970/655a829f-7f79-4adc-9d18-3bb7b779ec26)


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
