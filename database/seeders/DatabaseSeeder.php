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
            ['email' => 'siswa@perpus.test'],
            [
                'name' => 'Dimas',
                'password' => Hash::make('password'),
                'role' => 'siswa',
                'kelas' => 'XII RPL 2',
            ]
        );

        Book::firstOrCreate(
            ['title' => 'Laskar Pelangi', 'author' => 'Andrea Hirata'],
            [
                'publisher' => 'Bentang',
                'year' => 2005,
                'stock' => 4,
            ]
        );

        Book::firstOrCreate(
            ['title' => 'Bumi', 'author' => 'Tere Liye'],
            [
                'publisher' => 'Gramedia',
                'year' => 2014,
                'stock' => 3,
            ]
        );

        Book::firstOrCreate(
            ['title' => 'Belajar Laravel', 'author' => 'Budi Raharjo'],
            [
                'publisher' => 'Informatika',
                'year' => 2023,
                'stock' => 5,
            ]
        );

    }
}
