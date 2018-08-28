<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;

class StoreController extends Controller
{
	public function __construct(Store $store)
	{
		$this->store 	=	$store;
	}

    public function showAllStores()
    {
    	$stores 		=	$this->store->getStores();

    	return view('stores', compact('stores'));	
    }

    public function singleStore($store_id)
    {
    	$store  		=	$this->store->getStore($store_id);

    	return view('single-store', compact('store'));
    }
}
