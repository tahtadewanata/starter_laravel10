<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('edufans', function (Blueprint $table) {

            $table->text('deskripsi')->nullable()->change();; // Mengizinkan nilai NULL
            $table->string('cover')->nullable()->change();; // Mengizinkan nilai NULL
            $table->string('filename')->nullable()->change();; // Mengizinkan nilai NULL
            $table->string('slug')->nullable()->change();; // Mengizinkan nilai NULL
            $table->integer('views')->nullable()->change();; // Mengizinkan nilai NULL
            $table->smallInteger('status')->nullable()->change();; // Mengizinkan nilai NULL

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('edufans');
    }
};
