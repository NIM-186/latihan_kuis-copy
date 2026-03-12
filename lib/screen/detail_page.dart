// Mengimpor library Material Flutter untuk komponen UI
import 'package:flutter/material.dart';

// Mengimpor model MovieModel yang berisi struktur data movie
import 'package:latihan_kuis_a/models/movie_model.dart';

// Mengimpor package url_launcher untuk membuka link di browser
import 'package:url_launcher/url_launcher.dart';


// Membuat halaman DetailPage menggunakan StatefulWidget
// StatefulWidget digunakan karena ada data yang bisa berubah
// seperti bookmark dan review
class DetailPage extends StatefulWidget {

  // Constructor dengan parameter model yang berisi data movie
  const DetailPage({super.key, required this.model});

  // Variabel model untuk menyimpan data movie yang dikirim dari halaman sebelumnya
  final MovieModel model;

  @override
  State<DetailPage> createState() => _DetailPageState();
}


// Class state untuk DetailPage
class _DetailPageState extends State<DetailPage> {

  // Controller untuk mengambil dan mengontrol input dari TextField review
  final TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // Scaffold sebagai struktur dasar halaman
    return Scaffold(

      // AppBar di bagian atas halaman
      appBar: AppBar(
        title: const Text("Movies Detail"),

        actions: [

          // Tombol bookmark untuk menandai movie sebagai favorite
          IconButton(
            onPressed: () {
              setState(() {
                // 1. Balikkan status favorit (Toggle)
                widget.model.isfav = !widget.model.isfav;

                // 2. Hapus SnackBar yang sedang tampil (biar nggak antre kalau diklik cepat)
                ScaffoldMessenger.of(context).hideCurrentSnackBar();

                // 3. Tampilkan SnackBar dengan logika dinamis
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    // Cek status isfav: jika true berarti baru ditambah, jika false berarti dihapus
                    content: Text(
                      widget.model.isfav 
                        ? "Berhasil ditambahkan ke bookmark" 
                        : "Berhasil dihapus dari bookmark"
                    ),
                    backgroundColor: widget.model.isfav 
                        ? Colors.green  // Hijau untuk nambah
                        : Colors.red,   // Merah untuk hapus
                    duration: const Duration(seconds: 1), // Biar nggak kelamaan munculnya
                  ),
                );
              });
            },

            // Icon berubah sesuai status favorite
            icon: Icon(
              widget.model.isfav
                  ? Icons.bookmark
                  : Icons.bookmark_border,

              // Warna icon juga berubah
              color: widget.model.isfav ? Colors.blue : Colors.white,
            ),
          ),
        ],
      ),

      // Body halaman
      body: SingleChildScrollView(

        // SingleChildScrollView digunakan agar halaman bisa discroll
        // jika konten lebih panjang dari layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Menampilkan gambar movie dari URL
            Image.network(
              widget.model.imgUrl,

              width: double.infinity,
              height: 300,

              // menyesuaikan gambar agar tidak terpotong
              fit: BoxFit.contain,
              // error handling jika gagal memuat url gambar
              errorBuilder: (context, error, stackTrace) => 
                            const Icon(Icons.broken_image, size: 100),
            ),

            // Padding untuk memberi jarak isi konten
            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  // Menampilkan judul movie dan tahun rilis
                  Text(
                    "${widget.model.title} (${widget.model.year})",

                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Menampilkan nama director
                  Text(
                    "Director: ${widget.model.director}",
                    style: const TextStyle(
                        fontStyle: FontStyle.italic),
                  ),

                  const SizedBox(height: 16),

                  // Judul bagian synopsis
                  const Text(
                    "Synopsis",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 4),

                  // Menampilkan sinopsis movie
                  Text(widget.model.synopsis),

                  const SizedBox(height: 16),

                  // Menampilkan genre movie
                  Text("Genre: ${widget.model.genre}"),

                  const SizedBox(height: 8),

                  // Menampilkan daftar cast
                  // join(', ') digunakan untuk menggabungkan list menjadi string
                  Text("Casts: ${widget.model.casts.join(', ')}"),

                  const SizedBox(height: 8),

                  // Menampilkan rating movie
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange),
                      const SizedBox(width: 4),
                      Text("${widget.model.rating}/10"),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Judul bagian review terakhir
                  const Text(
                    "Last Review",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 5),

                  // Menampilkan review terakhir
                  Text(
                    widget.model.lastRev,
                    style: const TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 20),

                  // TextField untuk menambahkan review baru
                  TextField(

                    // controller untuk mengambil teks dari input
                    controller: reviewController,

                    decoration: const InputDecoration(
                      labelText: "Add New Review",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Tombol untuk submit review
                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: () {

                        // Jika input kosong maka tidak melakukan apa-apa
                        if (reviewController.text.isEmpty) return;

                        // Update review terakhir
                        setState(() {

                          widget.model.lastRev =
                              reviewController.text;

                        });

                        // Mengosongkan TextField setelah submit
                        reviewController.clear();
                      },

                      child: const Text("Submit Review"),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Tombol untuk membuka halaman wikipedia
                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: () async {

                        // Mengubah string URL menjadi object Uri
                        final Uri url =
                            Uri.parse(widget.model.movieUrl);

                        // Membuka URL menggunakan browser
                        if (!await launchUrl(url)) {

                          // Jika gagal membuka URL maka tampilkan SnackBar
                          ScaffoldMessenger.of(context)
                              .showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Tidak dapat membuka wikipedia"),
                            ),
                          );
                        }
                      },

                      child: const Text("Go to Wikipedia"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}