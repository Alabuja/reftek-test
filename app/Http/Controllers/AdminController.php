<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Manager;
use App\Store;
use App\Product;
use App\Product_Store;
use App\Manager_Store;

class AdminController extends Controller
{

	public function __construct(
		Manager $manager, 
		Product $product, 
		Store $store, 
		Product_Store $product_store, 
		Manager_Store $manager_store
	)

	{
		$this->manager  		= 	$manager;
		$this->store  			= 	$store;
		$this->product  		= 	$product;
		$this->product_store  	= 	$product_store;
		$this->manager_store  	= 	$manager_store;
	}

    public function storeManager(Request $request)
    {
    	$this->validate($request, [
    		'name' 		=> 	'required',
    		'email' 	=>	'required|unique:managers',
    		'password'	=>	'required|min:6'
    	]);

    	$this->manager->name 			=	$request->name;
    	$this->manager->email 			=	$request->email;
    	$this->manager->password 		=	bcrypt($request->password);

    	$this->manager->save();

    	$request->session()->flash('success', 'New Manager Added');
    	return back();
    }

    public function store(Request $request)
    {
    	$this->validate($request, [
    		'name' 			=> 	'required',
    		'location' 		=>	'required',
    	]);

    	$this->store->name 				=	$request->name;
    	$this->store->location 			=	$request->location;

    	$this->store->save();

    	$request->session()->flash('success', 'New Store Added');
    	return back();
    }

    public function createProduct(Request $request)
    {
    	$this->validate($request, [
    		'name' 			=> 	'required',
    	]);

    	$this->product->name 				=	$request->name;

    	$this->product->save();

    	$request->session()->flash('success', 'New Product Added');
    	return back();
    }

    public function assignProduct(Request $request)
    {
    	$this->validate($request, [
    		'product_id' 			=> 	'required',
    		'store_id' 				=> 	'required'
    	]);

    	$this->product_store->product_id 			=	$request->product_id;
    	$this->product_store->store_id 				=	$request->store_id;

    	$this->product_store->save();

    	$request->session()->flash('success', 'Product Assign to Store');
    	return back();
    }

    public function assignManager(Request $request)
    {
    	$this->validate($request, [
    		'manager_id' 			=> 	'required',
    		'store_id' 				=> 	'required'
    	]);

    	$this->manager_store->manager_id 			=	$request->manager_id;
    	$this->manager_store->store_id 				=	$request->store_id;

    	$this->manager_store->save();

    	$request->session()->flash('success', 'Manager Assign to Store');
    	return back();
    }
}
