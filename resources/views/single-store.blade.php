@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-4">
        	<p>Store Name:: {{$store->name}}</p>
        	<p>Location:: {{$store->location}}</p>

        	<p>Managers:: 
        	@foreach($store->manager as $manager)
        		<span>{{$manager->name or ''}}, </span>
        	@endforeach

        	</p>

        	<p>Products:: 
        	@foreach($store->product as $product)
        		<span>{{$product->name or ''}}, </span>
        	@endforeach
        	</p>
        	{{-- @foreach($products->store as $product)
        		<p>{{$product->pivot->name}}</p>
        	@endforeach --}}
        </div>
    </div>
</div>
@endsection
