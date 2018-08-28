<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
	protected $fillable = [
		'name', 'location'
	];

    public function manager()
    {
    	return $this->belongsToMany(Manager::class, 'manager_stores');
    }

    public function product()
    {
    	return $this->belongsToMany(Product::class, 'product_stores');
    }

    public function getStores()
    {
    	$stores 	=	self::whereNotNull('name')->get();

    	return $stores;
    }

    public function getStore($store_id)
    {
    	$store 		=	self::where('id', $store_id)->first();

    	return $store;
    }
}
