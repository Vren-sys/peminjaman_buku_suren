# APLIKASI PEMINJAMAN BUKU

Aplikasi Peminjaman Buku merupakan aplikasi berbasis web yang dikembangkan untuk membantu pengelolaan data buku dan administrasi peminjaman buku. Proyek ini dibuat menggunakan Laravel dan Filament dengan MySQL sebagai database.

Repository ini merupakan bagian dari pengumpulan Uji Kompetensi Keahlian (UKK) Rekayasa Perangkat Lunak.

## Tujuan Aplikasi

- Mempermudah pengelolaan data buku.
- Membantu pencatatan informasi dan stok buku.
- Mendukung pengelolaan data pengguna.
- Mempermudah administrasi peminjaman buku melalui panel admin.

## Teknologi yang Digunakan

| Teknologi | Fungsi |
|---|---|
| PHP | Bahasa pemrograman backend |
| Laravel 12 | Framework aplikasi web |
| Filament 4 | Panel administrasi |
| MySQL | Penyimpanan database |
| XAMPP | Menjalankan server lokal |
| Composer | Mengelola dependency PHP |

## Struktur Repository

```text
peminjaman_buku_suren/
├── app/                  # Model dan logika aplikasi
├── bootstrap/            # Proses awal aplikasi Laravel
├── config/               # Konfigurasi aplikasi
├── database/
│   ├── migrations/       # Struktur tabel database
│   ├── seeders/          # Data awal aplikasi
│   └── factories/        # Pembuatan data pengujian
├── public/               # File publik aplikasi
├── resources/            # Tampilan dan aset frontend
├── routes/               # Pengaturan URL aplikasi
├── storage/              # Penyimpanan file dan log
├── tests/                # Pengujian aplikasi
├── dokumentasi/          # Dokumentasi UKK
├── artisan               # CLI Laravel
├── composer.json         # Daftar dependency PHP
├── composer.lock         # Versi dependency
├── package.json          # Konfigurasi dependency frontend
├── .env.example          # Contoh konfigurasi lingkungan
├── database-ukk.sql      # Ekspor database
└── README.md             # Dokumentasi utama repository
```

## Penjelasan Folder Penting

- **app/**: Berisi kode utama aplikasi, termasuk model dan logika pengolahan data.
- **app/Models/**: Berisi model untuk berinteraksi dengan database.
- **app/Filament/**: Berisi komponen panel administrasi dan resource Filament.
- **database/migrations/**: Berisi kode untuk membuat dan mengubah struktur tabel database.
- **database/seeders/**: Berisi kode untuk memasukkan data awal ke database.
- **resources/**: Menyimpan template tampilan dan aset frontend.
- **routes/**: Mengatur alamat halaman yang dapat diakses.
- **config/**: Menyimpan konfigurasi aplikasi Laravel.
- **public/**: Menyediakan file publik yang digunakan aplikasi.
- **tests/**: Menyimpan kode pengujian aplikasi.
- **dokumentasi/**: Menyimpan dokumen pendukung pengumpulan UKK.

## Database

Database aplikasi menggunakan MySQL dan dapat dijalankan melalui XAMPP.

File `database-ukk.sql` disediakan untuk mempermudah proses pemulihan database pada komputer lain.

### Cara Mengimpor Database

1. Jalankan Apache dan MySQL pada XAMPP.
2. Buka phpMyAdmin melalui `http://localhost/phpmyadmin`.
3. Buat database bernama `peminjaman_buku`.
4. Pilih database tersebut.
5. Buka menu Import.
6. Pilih file `database-ukk.sql`.
7. Klik Import atau Go.

## Cara Menjalankan Aplikasi

### 1. Persiapan

Pastikan komputer telah memiliki:
- PHP dengan ekstensi yang dibutuhkan Laravel.
- Composer.
- MySQL atau MariaDB.
- Node.js dan npm jika proyek memerlukan proses build frontend.

### 2. Clone Repository

```bash
git clone https://github.com/Vren-sys/peminjaman_buku_suren.git
cd peminjaman_buku_suren
```

### 3. Instalasi Dependency

```bash
composer install
```

Jika proyek menggunakan dependency frontend:

```bash
npm install
npm run build
```

### 4. Konfigurasi Aplikasi

Salin file konfigurasi:

```bash
copy .env.example .env
```

Buat application key:

```bash
php artisan key:generate
```

Sesuaikan konfigurasi database dalam file `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=peminjaman_buku
DB_USERNAME=root
DB_PASSWORD=
```

### 5. Persiapan Database

Impor file SQL melalui phpMyAdmin. Jika database sudah diimpor, tidak perlu menjalankan `migrate:fresh` karena perintah tersebut dapat menghapus tabel yang sudah ada.

### 6. Menjalankan Aplikasi

```bash
php artisan serve
```

Buka aplikasi melalui:

`http://127.0.0.1:8000`

Panel administrasi Filament dapat diakses melalui:

`http://127.0.0.1:8000/admin`

## Dokumentasi UKK

Folder `dokumentasi/` digunakan untuk menyimpan dokumen pendukung proyek.

| Dokumen | Keterangan |
|---|---|
| `deskripsi-program.md` | Penjelasan tujuan, latar belakang, teknologi, dan fitur aplikasi |
| `dokumentasi-fungsi.md` | Penjelasan kode penting beserta kegunaannya |
| `debugging.md` | Catatan permasalahan selama pengembangan dan penyelesaiannya |
| `erd.png` | Diagram hubungan antarentitas dalam database |
| `evaluasi.md` | Evaluasi hasil pengembangan aplikasi |

## Pengujian dan Evaluasi

Pengujian dilakukan untuk memastikan fitur aplikasi dapat berjalan sesuai kebutuhan. Pengujian mencakup proses pengelolaan data buku, penyimpanan data, serta akses panel administrasi.

Evaluasi pengembangan digunakan untuk mencatat kelebihan, kekurangan, kendala teknis, dan kemungkinan pengembangan aplikasi selanjutnya.

## Pengembang

**Nama:** Surendra Wastujatmiko

**Keperluan:** Uji Kompetensi Keahlian (UKK) Rekayasa Perangkat Lunak.

## Penutup

Aplikasi Peminjaman Buku dikembangkan sebagai implementasi pembelajaran pengembangan aplikasi web menggunakan Laravel, Filament, dan MySQL. Repository ini memuat kode program serta dokumentasi pendukung untuk proses pemeriksaan dan pengumpulan UKK.
