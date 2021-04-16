<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('slug');
            $table->string('image');
            $table->integer('stock');
            $table->integer('price');
            $table->integer('sale');
            $table->integer('position');
            $table->integer('is_active');
            $table->integer('is_hot');
            $table->integer('category_id');
            $table->integer('brand_id');
            $table->integer('vendor_id');
            $table->string('url');
            $table->string('sku');
            $table->string('summary');
            $table->string('description');
            $table->string('meta_title');
            $table->string('meta_description');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
