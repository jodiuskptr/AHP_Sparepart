<?php

use Illuminate\Database\Seeder;
use App\Models\User;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $user = User::create([
            'name' => 'Admin',
            'username' => 'Admin1',
            'email' => 'Admin@gmail.com',
            'password' => bcrypt('admin123')
        ]);
        $user->assignRole('admin');
    }
}
