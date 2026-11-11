<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Book;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        
        User::firstOrCreate(
            ['email' => 'admin@perpus.test'],
            [
                'name' => 'Admin',
                'password' => Hash::make('password'),
                'role' => 'admin',
            ]
        );

        User::firstOrCreate(
            ['email' => 'miko@perpus.test'],
            [
                'name' => 'miko',
                'password' => Hash::make('passwordmiko'),
                'role' => 'siswa',
                'kelas' => 'XII RPL 2',
            ]
        );

        User::firstOrCreate(
            ['email' => 'suren@perpus.test'],
            [
                'name' => 'suren',
                'password' => Hash::make('password231'),
                'role' => 'siswa',
                'kelas' => 'XII RPL 2',
            ]
        );

        Book::firstOrCreate(
            ['title' => 'Dilan 1990', 'author' => 'Pidi Baiq'],
            [
                'publisher' => 'Pastel Books',
                'year' => 2014,
                'stock' => 4,
            ]
        );

        Book::firstOrCreate(
            ['title' => 'Negeri 5 Menara', 'author' => 'Ahmad Fuadi'],
            [
                'publisher' => 'Gramedia Pustaka Utama',
                'year' => 2009,
                'stock' => 3,
            ]
        );

        Book::firstOrCreate(
            ['title' => 'Filosofi Teras', 'author' => 'Henry Manampiring'],
            [
                'publisher' => 'Kompas',
                'year' => 2018,
                'stock' => 5,
            ]
        );

    }
}
