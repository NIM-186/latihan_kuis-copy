// Mengimpor library Material Flutter untuk komponen UI
import 'package:flutter/material.dart';

// Mengimpor model MovieModel yang berisi struktur data film
import 'package:latihan_kuis_a/models/movie_model.dart';

// Mengimpor halaman DetailPage yang akan dituju ketika item movie diklik
import 'package:latihan_kuis_a/screen/detail_page.dart';


// Membuat widget MovieScreen yang menggunakan StatelessWidget
// StatelessWidget dipakai karena widget ini hanya menampilkan data
// dan tidak menyimpan state sendiri
class MovieScreen extends StatelessWidget {

  // Constructor yang menerima parameter onToggleFav
  const MovieScreen({super.key, required this.onToggleFav});

  // Callback function yang dikirim dari parent (MovieListPage)
  // digunakan untuk mengubah status favorite movie
  final Function(MovieModel) onToggleFav;


  @override
  Widget build(BuildContext context) {

    // SafeArea digunakan agar UI tidak tertutup notch, status bar, dll
    return SafeArea(

      // ListView.builder digunakan untuk membuat list secara dinamis
      // cocok untuk data yang jumlahnya banyak
      child: ListView.builder(

        // jumlah item dalam list
        itemCount: movieList.length,

        // builder akan dipanggil sebanyak jumlah item
        itemBuilder: (context, index) {

          // mengambil data movie berdasarkan index
          final movie = movieList[index];

          return Card(

            // memberikan jarak antar card
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

            child: InkWell(

              // InkWell membuat Card bisa ditekan (tap effect)
              onTap: () {

                // Navigasi ke halaman DetailPage
                Navigator.push(
                  context,
                  MaterialPageRoute(

                    // mengirim data movie ke halaman detail
                    builder: (context) => DetailPage(model: movie),
                  ),
                );
              },

              child: Padding(

                // memberi jarak isi card
                padding: const EdgeInsets.all(10.0),

                child: Row(

                  // membuat isi card tersusun horizontal
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    // ClipRRect digunakan untuk membuat gambar dengan sudut membulat
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),

                      child: Image.network(

                        // mengambil gambar dari URL
                        movie.imgUrl,

                        width: 100,
                        height: 140,

                        // membuat gambar menyesuaikan ukuran
                        fit: BoxFit.cover,
                      ),
                    ),

                    // jarak antara gambar dan teks
                    const SizedBox(width: 15),

                    // Expanded agar teks mengisi ruang yang tersedia
                    Expanded(

                      child: Column(

                        // membuat isi teks rata kiri
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          // menampilkan judul movie dan tahun
                          Text(
                            "${movie.title} (${movie.year})",

                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          // menampilkan genre movie
                          Text(
                            movie.genre,
                            style: const TextStyle(color: Colors.grey),
                          ),

                          const SizedBox(height: 10),

                          // Row untuk menampilkan rating
                          Row(
                            children: [

                              // icon bintang
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 18,
                              ),

                              const SizedBox(width: 4),

                              // menampilkan rating movie
                              Text("${movie.rating}/10"),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Tombol bookmark untuk favorite movie
                    IconButton(

                      // icon berubah tergantung status favorite
                      icon: Icon(

                        // jika movie.isfav true maka bookmark penuh
                        // jika false maka bookmark kosong
                        movie.isfav
                            ? Icons.bookmark
                            : Icons.bookmark_border,

                        // warna icon juga berubah
                        color: movie.isfav
                            ? Colors.blue
                            : Colors.grey,
                      ),

                      // ketika tombol ditekan
                      onPressed: () {

                        // memanggil fungsi callback dari parent
                        // untuk mengubah status favorite
                        onToggleFav(movie);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}