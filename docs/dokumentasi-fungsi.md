# DOKUMENTASI FUNGSI
## Aplikasi Peminjaman Buku Berbasis Web

### 1. Model Book

**Lokasi:** `app/Models/Book.php`

Model Book digunakan untuk merepresentasikan data buku yang tersimpan di dalam database.

Fungsi utamanya:
- Menghubungkan aplikasi dengan tabel buku.
- Menentukan atribut yang dapat diisi.
- Menjadi penghubung antara proses pengolahan data buku dengan database.

Contoh kode:

```php
protected $fillable = [
    'title',
    'author',
    'publisher',
    'year',
    'stock',
];
```

**Penjelasan:**

Properti `$fillable` menentukan kolom yang diperbolehkan untuk diisi melalui proses mass assignment. Dengan demikian, data buku dapat disimpan melalui proses pengolahan data Laravel.

### 2. Model Loan

**Lokasi:** `app/Models/Loan.php`

Model Loan digunakan untuk mengelola data transaksi peminjaman buku.

Fungsi utamanya:
- Merepresentasikan transaksi peminjaman.
- Menghubungkan data transaksi dengan informasi buku.
- Mengelola informasi peminjaman yang disimpan dalam database.

### 3. Database Migration

**Lokasi:** `database/migrations/`

Migration digunakan untuk membuat dan mengatur struktur tabel database.

Dalam aplikasi ini terdapat tabel utama:
- `users`: menyimpan data pengguna.
- `books`: menyimpan data buku.
- `loans`: menyimpan data transaksi peminjaman.

Migration membantu pengembang membuat struktur database secara terorganisasi melalui kode PHP.

### 4. Database Seeder

**Lokasi:** `database/seeders/`

Seeder digunakan untuk memasukkan data awal ke dalam database.

Contoh kode:

```php
Book::firstOrCreate(
    ['title' => 'Laskar Pelangi', 'author' => 'Andrea Hirata'],
    [
        'publisher' => 'Bentang',
        'year' => 2005,
        'stock' => 4,
    ]
);
```

**Penjelasan:**

Method `firstOrCreate()` digunakan untuk mencari data berdasarkan atribut yang ditentukan. Jika data belum ditemukan, Laravel akan membuat data baru menggunakan informasi yang diberikan.

Dengan demikian, data buku awal dapat dimasukkan tanpa membuat duplikasi data yang sama.

### 5. Filament Resource

**Lokasi:** `app/Filament/Resources/`

Filament Resource digunakan untuk mengatur pengelolaan data melalui panel administrasi.

Bagian penting yang umumnya terdapat pada Resource:

- **Form:** mengatur kolom input ketika pengguna menambahkan atau mengubah data.
- **Table:** mengatur tampilan data dalam bentuk tabel.
- **Actions:** menyediakan tindakan seperti melihat, mengubah, dan menghapus data.

Resource membantu proses pengelolaan data menjadi lebih praktis tanpa harus membuat seluruh halaman administrasi secara manual.

### 6. Routing

**Lokasi:** `routes/web.php`

Routing digunakan untuk menentukan alamat atau URL yang dapat diakses oleh pengguna dalam aplikasi.

Route menghubungkan permintaan pengguna dengan fungsi atau halaman yang sesuai.

### 7. Konfigurasi Database

**Lokasi:** `.env`

File `.env` digunakan untuk mengatur koneksi aplikasi dengan database, seperti nama database, username, password, dan host.

Contoh konfigurasi:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=peminjaman_buku
DB_USERNAME=root
DB_PASSWORD=
```

**Penjelasan:**

Konfigurasi tersebut menghubungkan aplikasi Laravel dengan database MySQL yang dijalankan melalui XAMPP.

### 8. Kesimpulan

Setiap bagian kode memiliki fungsi masing-masing dalam mendukung sistem aplikasi. Model digunakan untuk mengelola representasi data, migration untuk membuat struktur database, seeder untuk memasukkan data awal, Filament Resource untuk pengelolaan data, dan routing untuk mengatur akses halaman aplikasi.
