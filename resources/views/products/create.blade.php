@extends('layouts.master')
@section('content')

<h2>Vous pouvez ajouter des produits ici</h2>
<div class="container">
<a class= "btn btn-info float-end mb-4" href="{{ url('/') }}">Go Back</a>
  <form method="post" action="{{ url('/add-product') }}" enctype="multipart/form-data">
  {{ csrf_field() }}

  <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Title</label>
    <input type="text" value="{{ old('title') }}" name="title" class="form-control"  placeholder="Title">
  </div>

  <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Price</label>
    <input type="number" value="{{ old('price') }}" name="price" class="form-control"  placeholder="price">
  </div>

  <div class="mb-3">
    <select name="category_id" class="form-select" id="ExampleFormControllerSelect1">
      @foreach($categories as $category)
        <option value="{{$category->id}}">{{$category->name}}</option>
      @endforeach
    </select>
  </div>
  <div class="form-group mt-2">
    <label for="exampleFormControlInput1" class="form-label">Select Product Image</label>
    <input type="file" value="" name="image" class="form-control"  placeholder="Import image">
  </div>
  <button class="btn btn-primary mt-3">Submit</button>
  </form>
</div>   
@endsection 