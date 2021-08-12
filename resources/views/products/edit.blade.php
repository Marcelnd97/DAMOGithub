@extends('layouts.master')
@section('content')

<h2>Vous pouvez modifier des produits ici</h2>
<a class= "btn btn-info float-end mb-4" href="{{ url('/') }}">Go Back</a>
  <form method="post" action="{{ url('/edit-product/'.$product->id) }}">
  {{ csrf_field() }}

  <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Title</label>
    <input type="text" name="title" value="{{ old('title') ?? $product->title }}" class="form-control"  placeholder="Title">
  </div>

  <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Price</label>
    <input type="number" name="price" value="{{ old('price') ?? $product->price }}"  class="form-control"  placeholder="Title">
  </div>

  <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Category</label>
    <select name="category_id"  class="form-select" id="ExampleFormControllerSelect1">
      @foreach($categories as $category)
        <option value="{{$category->id}}">{{$category->name}}</option>
      @endforeach
    </select>
  </div>
  <button class="btn btn-primary mt-3">Submit</button>
  </form>
@endsection   