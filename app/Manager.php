<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manager extends Model
{
    protected $fillable = [
    	'name', 'email', 'password',
    ];

    protected $hidden = [
    	'password', 'remember_token',
    ];

    public function store()
    {
    	return $this->belongsToMany(Store::class, 'manager_stores');
    }

    public function getManagers()
    {
    	$managers 	=	self::whereNotNull('name')->get();

    	return $managers;
    }
}
