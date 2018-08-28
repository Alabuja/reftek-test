@extends('layouts.app')

@section('content')
<div class="container">

	<div class="row">
		{{-- @include('layouts.alerts') --}}
		<div class="col-md-6">
			<p>Assign Product to Store</p>
	    	<div class="row">
		    	<form method="POST" action="{{ url('assign-product') }}" aria-label="{{ __('Assign Product') }}">
		    		@csrf
		    		<div class="form-group row col-md-12">
		    		
				        @if(count($products) > 0)
				        	<select class="form-control" name="product_id" required>   
				        	@foreach($products as $product)
				        		<option value="{{$product->id}}">{{$product->name}}</option>
				        	@endforeach
				        	</select>
				        @else
				        	<select class="form-control" required>
				        		<option>No Product Available</option>
				        	</select>
				       	@endif
				    </div>

				    <div class="form-group row col-md-12"> 
				       	@if(count($stores) > 0)
				        	<select class="form-control" name="store_id" required>   
				        	@foreach($stores as $store)
				        		<option value="{{$store->id}}">{{$store->name}}</option>
				        	@endforeach
				        	</select>
				        @else
				        	<select class="form-control" required>
				        		<option>No Store Available</option>
				        	</select>
				       	@endif
			    	</div>

			    	<div class="form-group row col-md-12">
			            <div class="col-md-6 offset-md-3">
			                <button type="submit" class="btn btn-primary" id="">
			                    {{ __('Assign Product to Store') }}
			                </button>
			            </div>
			        </div>
		       	</form>
		    </div>
    	</div>

	    <div class="col-md-6">
	    	<p>Assign Manager to Store</p>
	    	<div class="row">
		    	<form method="POST" action="{{ url('assign-manager') }}" aria-label="{{ __('Assign Manager') }}">
		    		@csrf
		    		<div class="form-group row col-md-12">
		    		
				        @if(count($managers) > 0)
				        	<select class="form-control" name="manager_id" required>   
				        	@foreach($managers as $manager)
				        		<option value="{{$manager->id}}">{{$manager->name}}</option>
				        	@endforeach
				        	</select>
				        @else
				        	<select class="form-control" required>
				        		<option>No Manager Available</option>
				        	</select>
				       	@endif
				    </div>

				    <div class="form-group row col-md-12"> 
				       	@if(count($stores) > 0)
				        	<select class="form-control" name="store_id" required>   
				        	@foreach($stores as $store)
				        		<option value="{{$store->id}}">{{$store->name}}</option>
				        	@endforeach
				        	</select>
				        @else
				        	<select class="form-control" required>
				        		<option>No Store Available</option>
				        	</select>
				       	@endif
			    	</div>

			    	<div class="form-group row col-md-12">
			            <div class="col-md-6 offset-md-3">
			                <button type="submit" class="btn btn-primary" id="">
			                    {{ __('Assign Manager to Store') }}
			                </button>
			            </div>
			        </div>
		       	</form>
		    </div>
	    </div>
	</div>
</div>
@endsection
