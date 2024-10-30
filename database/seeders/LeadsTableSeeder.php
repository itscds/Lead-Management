<?php

namespace Database\Seeders;

use App\Models\Lead;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class LeadsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $statuses = ['New', 'In Progress', 'Closed'];

        for ($i = 1; $i <= 30; $i++) {
            DB::table('leads')->insert([
                'lead_id' => $i,
                'name' => "Lead Name $i",
                'email' => "lead$i@example.com",
                'phone' => "098765432$i",
                'status' => $statuses[array_rand($statuses)], // Randomly assign status
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
