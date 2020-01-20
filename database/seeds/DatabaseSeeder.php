<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        Factory(App\User::class, 10)->create();
        Factory(App\Lesson::class, 10)->create();
        Factory(App\Course::class, 10)->create();
        Factory(App\Category::class, 10)->create();
    }
}
