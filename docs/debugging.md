# DOKUMENTASI DEBUGGING
## Aplikasi Peminjaman Buku Berbasis Web

### 1. Masalah Koneksi Database

**Error:**

```text
could not find driver
(Connection: sqlite)
```

**Penyebab:**

Driver SQLite pada PHP belum aktif atau belum tersedia pada konfigurasi PHP yang digunakan oleh Laravel.

**Penyelesaian:**

1. Membuka file konfigurasi `php.ini`.
2. Memastikan ekstensi `pdo_sqlite` dan `sqlite3` aktif.
3. Mengaktifkan ekstensi dengan menghilangkan tanda titik koma jika diperlukan.
4. Menjalankan kembali perintah Artisan.

**Perintah pengecekan:**

```bash
php -m
```

### 2. Masalah Kolom Password Tidak Ditemukan

**Error:**

```text
SQLSTATE[42S22]: Column not found: 1054
Unknown column 'password' in 'INSERT INTO'
```

**Penyebab:**

Tabel `users` belum memiliki kolom `password`, sedangkan proses seeding membutuhkan kolom tersebut untuk menyimpan informasi akun pengguna.

**Penyelesaian:**

1. Memeriksa struktur tabel `users`.
2. Membuat migration untuk menambahkan kolom `password`.
3. Menjalankan migration.
4. Menjalankan kembali database seeder.

**Perintah:**

```bash
php artisan make:migration add_password_to_users_table
php artisan migrate
php artisan db:seed
```

### 3. Masalah Kolom Updated_at Tidak Ditemukan

**Error:**

```text
SQLSTATE[42S22]: Column not found: 1054
Unknown column 'updated_at' in 'INSERT INTO'
```

**Penyebab:**

Kode aplikasi atau proses seeding mencoba mengisi kolom `updated_at`, tetapi struktur tabel yang digunakan belum memiliki kolom tersebut.

**Penyelesaian:**

Memeriksa migration dan struktur tabel yang mengalami error. Jika tabel menggunakan timestamp Laravel, pastikan migration menggunakan:

```php
$table->timestamps();
```

Jika tabel memang tidak menggunakan timestamp, sesuaikan konfigurasi model atau proses penyimpanan datanya.

### 4. Peringatan Deprecated PHP

**Peringatan:**

```text
PHP Deprecated:
Constant PDO::MYSQL_ATTR_SSL_CA is deprecated
since PHP 8.5.
```

**Penyebab:**

Konfigurasi database Laravel masih menggunakan konstanta PDO lama yang sudah ditandai deprecated pada PHP 8.5.

**Penyelesaian:**

Menyesuaikan konstanta pada `config/database.php` dengan konstanta pengganti yang disarankan PHP, yaitu:

```php
Pdo\Mysql::ATTR_SSL_CA
```

Peringatan ini merupakan peringatan kompatibilitas, bukan selalu penyebab kegagalan koneksi database.

### 5. Masalah Migration Table Not Found

**Pesan:**

```text
ERROR Migration table not found.
```

**Penyebab:**

Tabel `migrations` belum tersedia di database yang sedang digunakan. Hal ini dapat terjadi ketika database belum menjalankan proses migration.

**Penyelesaian:**

Menjalankan perintah:

```bash
php artisan migrate
```

Setelah itu, periksa kembali status migration menggunakan:

```bash
php artisan migrate:status
```

### 6. Kesimpulan Debugging

Proses debugging dilakukan dengan membaca pesan error, mengidentifikasi penyebab masalah, memeriksa konfigurasi maupun struktur database, kemudian melakukan perbaikan sesuai sumber masalah.

Proses ini membantu memastikan aplikasi dapat berjalan dengan baik dan setiap fitur dapat menggunakan database sesuai kebutuhan.
