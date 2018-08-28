<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manager_Store extends Model
{
	protected $table = "manager_stores";

    protected $fillable = [
		'manager_id', 'store_id'
	];

}
