// Mengimpor library Material Flutter untuk komponen UI seperti Scaffold, AppBar, IconButton, dll
import 'package:flutter/material.dart';

// Mengimpor model MovieModel yang berisi struktur data movie
import 'package:latihan_kuis_a/models/movie_model.dart';

// Mengimpor halaman LoginPage untuk navigasi saat logout
import 'package:latihan_kuis_a/screen/login_page.dart';

// Mengimpor MovieScreen yang menampilkan daftar film
import 'package:latihan_kuis_a/screen/movie_screen.dart';


// Membuat widget MovieListPage yang menggunakan StatefulWidget
// StatefulWidget digunakan karena ada state yang bisa berubah (favorite movie)
class MovieListPage extends StatefulWidget {

  // Constructor dengan parameter username yang wajib diisi
  const MovieListPage({super.key, required this.username});

  // Variabel untuk menyimpan username yang dikirim dari halaman login
  final String username;

  // Method untuk membuat state dari widget ini
  @override
  State<MovieListPage> createState() => _MovielListPageState();
}


// Class state untuk MovieListPage
class _MovielListPageState extends State<MovieListPage> {

  @override
  Widget build(BuildContext context) {

    // Fungsi untuk mengubah status favorite movie
    // Parameter movie bertipe MovieModel
    void toggleFavorite(MovieModel movie) {

      // setState digunakan untuk memperbarui UI ketika data berubah
      setState(() {

        // Jika sebelumnya bukan favorite maka akan menjadi favorite
        // Jika sudah favorite maka akan dihapus dari favorite
        movie.isfav = !movie.isfav;

      });
    }

    // Scaffold sebagai struktur utama halaman
    return Scaffold(

      // AppBar sebagai header halaman
      appBar: AppBar(

        // Menampilkan teks selamat datang dengan username yang dikirim dari LoginPage
        title: Text("welcome, ${widget.username} !" ),

        actions: [

          // IconButton untuk tombol logout
          IconButton(

            // Icon logout
            icon: const Icon(Icons.logout),

            // Event ketika tombol ditekan
            onPressed: () {

              // Navigasi kembali ke halaman login
              // pushReplacement digunakan agar halaman ini diganti
              // sehingga user tidak bisa kembali dengan tombol back
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
        ],
      ),

      // Body halaman
      body: 

      // Memanggil widget MovieScreen
      // dan mengirim fungsi toggleFavorite
      MovieScreen(

        // Fungsi ini akan dipanggil dari MovieScreen ketika user menekan tombol favorite
        onToggleFav: toggleFavorite,

      ),
    );
  }
}