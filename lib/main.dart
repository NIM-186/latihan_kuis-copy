// Mengimpor library Material Flutter
// Library ini berisi komponen UI seperti MaterialApp, Scaffold, Text, Button, dll
import 'package:flutter/material.dart';

// Mengimpor halaman LoginPage yang akan menjadi halaman pertama aplikasi
import 'package:latihan_kuis_a/screen/login_page.dart';


// Fungsi utama (entry point) dari aplikasi Flutter
// Program akan mulai dijalankan dari fungsi main()
void main() {

  // runApp digunakan untuk menjalankan aplikasi Flutter
  // Widget pertama yang dijalankan adalah MainApp
  runApp(const MainApp());
}


// Membuat widget utama aplikasi
// StatelessWidget digunakan karena widget ini tidak memiliki state yang berubah
class MainApp extends StatelessWidget {

  // Constructor widget
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    // MaterialApp adalah root widget dari aplikasi berbasis Material Design
    return const MaterialApp(

      // Judul aplikasi
      // Biasanya muncul pada task switcher di Android
      title: 'Latihan Kuis',

      // Halaman pertama yang dibuka ketika aplikasi dijalankan
      // Di sini diarahkan ke halaman LoginPage
      home: LoginPage(),
    );
  }
}