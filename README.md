# Hari 1

## Commit 1
- refactor(structure): memisahkan kode ke dalam file main.dart dan profile_page.dart
- fix(layout): membungkus Column dengan SingleChildScrollView dan konfigurasi ListView.builder
- fix(row): memperbaiki arah SizedBox dan tipe data pada StatItem

## Commit 2
- refactor: extract avatar and info into custom widgets

## Commit 3
- feat: menambahkan Container berdekorasi dengan latar belakang warna biru muda dan sudut melengkung untuk wadah statistik
- feat: menambahkan widget Row dengan penataan spaceAround di dalam wadah statistik
- feat: menambahkan komponen StatItem untuk menampilkan data jumlah dan label "Proyek" (15)
- feat: menambahkan komponen StatItem untuk menampilkan data jumlah dan label "Followers" (1.2K)
- feat: menambahkan komponen StatItem untuk menampilkan data jumlah dan label "Following" (42) 

## Commit 4
- refactor: mengekstrak bagian baris statistik (Row dan Container) menjadi Custom Widget mandiri bernama ProfileStats
- refactor: menggantikan kode kontainer statistik inline di dalam ProfilePage dengan pemanggilan widget ProfileStats
- feat: memastikan widget StatItem tetap reusable di dalam ProfileStats untuk menampilkan data Proyek, Followers, dan Following

## Commit 5
- refactor: menghapus SingleChildScrollView dari bodi utama agar widget Expanded dapat berfungsi dengan baik pada Column
- feat: menambahkan variabel list array dummy data baru berupa daftar pengalaman backend engineering (backendExperiences)
- feat: membungkus ListView.builder dengan widget Expanded di bagian bawah layar untuk menangani daftar item yang dinamis
- feat: memperbarui judul bagian dan ikon pada ListTile menjadi bertema backend engineering (ikon kode)

## Commit 6
feat: membagi ruang tampilan menggunakan dua widget Expanded untuk mengakomodasi dua ListView.builder (backendExperiences dan achievements)
feat: menerapkan Custom Widget ExperienceCard yang dilengkapi dengan parameter teks judul dan ikon yang reusable
feat: merapikan struktur tampilan Card dengan menambahkan elevation, padding, serta rounded border
