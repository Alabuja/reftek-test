@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        @if(count($stores) > 0)
        	@foreach($stores as $store)
        		<div class="col-md-4">
        			<p><a href="stores/{{$store->id}}" style="text-decoration: none;">{{$store->name}}</a></p> 
        		</div>
        	@endforeach
        @else
        	<h1>No Store Available Now</h1>
       	@endif
    </div>
</div>
@endsection
