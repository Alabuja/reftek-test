<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Manager;
use App\Store;

class ProductController extends Controller
{
	public function __construct(Product $product, Manager $manager, Store $store)
	{
		$this->product 	=	$product;
		$this->manager 	=	$manager;
		$this->store 	=	$store;
	}

    public function assign()
    {
    	$products 		=	$this->product->getProducts();
    	$managers 		=	$this->manager->getManagers();
    	$stores 		=	$this->store->getStores();

    	return view('assign', compact('products', 'managers', 'stores'));
    }
}
