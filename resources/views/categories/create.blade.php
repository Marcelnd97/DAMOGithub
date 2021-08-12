@extends('layouts.master')
@section('content')


<div class="container">
    <h2>Vous pouvez ajouter des categories ici</h2>
  <form method="post" action="{{ url('/add-category') }}">
  {{ csrf_field() }}

  <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Name</label>
    <input type="text" name="name" class="form-control"  placeholder="Enter Category name">
  </div>
  <button class="btn btn-primary mt-3">Submit</button>
  </form>
</div>  
@endsection  