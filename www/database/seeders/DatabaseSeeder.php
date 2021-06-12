<?php

namespace Database\Seeders;

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
        $user = \App\Models\User::factory()->create(
            ['email' => 'administrator@user.com',
                'name' => 'Adam Administrator',]
        );

        \App\Models\Team::factory()->create(
            ['user_id' => $user->id,]
        );

    }
}
