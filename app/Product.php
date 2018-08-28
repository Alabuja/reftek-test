<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = [
		'name',
	];

    public function store()
    {
    	return $this->belongsToMany(Store::class, 'product_stores');
    }

    public function getProducts()
    {
    	$products 	=	self::whereNotNull('name')->get();

    	return $products;
    }
}
