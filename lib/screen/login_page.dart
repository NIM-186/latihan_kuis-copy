// Mengimpor library Material Flutter yang berisi komponen UI seperti Scaffold, Text, Button, dll
import 'package:flutter/material.dart';

// Mengimpor halaman MovieListPage yang akan dituju setelah login berhasil
import 'package:latihan_kuis_a/screen/moviel_list_page.dart';

// Membuat class LoginPage yang merupakan StatelessWidget
// StatelessWidget artinya widget ini tidak memiliki state yang berubah
class LoginPage extends StatelessWidget {
  // Constructor dengan parameter key
  const LoginPage({super.key});

  // Method build digunakan untuk membangun tampilan UI widget
  @override
  Widget build(BuildContext context) {

    // Variabel untuk menampung nilai input dari TextField
    String uNameValue = ''; // menyimpan username
    String PassValue = '';  // menyimpan password

    // Scaffold adalah struktur dasar halaman di Flutter
    return Scaffold(
      body: Padding(
        // Memberikan jarak 20 pixel dari tepi layar
        padding: const EdgeInsets.all(20.0),

        child: Column(
          // Mengatur agar isi Column berada di tengah secara vertikal
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset("assets/cappp.png",width: 120,),
            // Widget Text untuk menampilkan judul halaman
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 32, // ukuran font
                fontWeight: FontWeight.bold // membuat teks tebal
              ),
            ),

            // Memberikan jarak vertikal antar widget
            const SizedBox(height: 24),

            // TextField untuk input username
            TextField(

              // onChanged akan dipanggil setiap kali user mengetik
              // nilai yang diketik disimpan ke variabel uNameValue
              onChanged: (v) => uNameValue = v,

              decoration: InputDecoration(
                hintText: 'Username', // teks petunjuk di dalam input

                // Memberikan border kotak pada TextField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // membuat sudut membulat
                ),
              ),
            ),

            // Jarak antar TextField
            const SizedBox(height: 12),

            // TextField untuk input password
            TextField(

              // menyimpan input password ke variabel PassValue
              onChanged: (v) => PassValue = v,

              // obscureText membuat teks password disembunyikan (••••)
              obscureText: true,

              decoration: InputDecoration(
                hintText: 'Password',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // Jarak sebelum tombol login
            const SizedBox(height: 24),

            // SizedBox untuk membuat tombol selebar layar
            SizedBox(
              width: double.infinity,

              // Tombol login
              child: ElevatedButton(

                // Fungsi yang dijalankan ketika tombol ditekan
                onPressed: () {

                  // Mengecek apakah username dan password sesuai
                  if (uNameValue == "Najib" && PassValue == "186") {

                    // Menampilkan SnackBar sebagai notifikasi login berhasil
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Berhasil!"),
                        backgroundColor: Colors.green,
                      ),
                    );

                    // Navigasi ke halaman MovieListPage
                    // pushReplacement digunakan agar halaman login tidak bisa kembali
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        // Mengirim username ke halaman MovieListPage
                        builder: (context) => MovieListPage(username: uNameValue),
                      ),
                    );

                  }

                  // Jika username atau password kosong
                  else if (uNameValue.isEmpty || PassValue.isEmpty) {

                    // Menampilkan SnackBar peringatan
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Username/Password tidak boleh kosong"),
                        backgroundColor: Colors.orange,
                      ),
                    );

                  }

                  // Jika username atau password salah
                  else {

                    // Menampilkan SnackBar login gagal
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Gagal: Akun tidak ditemukan"),
                        backgroundColor: Colors.red,
                      ),
                    );

                  }
                },

                // Teks pada tombol
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}