Nama  : Dien Fitriani Azzahra
Kelas : PBP-F
NPM   : 2206828033

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
