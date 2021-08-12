<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\Product;
use App\Models\Category;


class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with('category')->paginate(5);
        return view('welcome', compact('products'));
    }
    public function create ()
    {
        $categories = Category::all();
        return view('products.create', compact('categories'));
    }
    
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|min:3',
            'price' => 'required'
        ]);
        $input = $request->all();
        if($request->hasFile('image'))
        {
            $destination_path='public/images/products';
            $image = $request->file('image');
            $image_name = $image->getClientOriginalName();
            $path = $request->file('image')->storeAs($destination_path, $image_name);

            $input['image'] = $image_name;
        }

        $product = Product::create($input);

        /*Mail::send('emails.productCreated',$product->toArray(),
        function ($message){
            $message->to('nmarcel257@gmail.com', 'Ma Chaine')->subject('Product Created Sbject');
        });*/

        session()->flash('message',$input['title'].' succesfully saved');
        return redirect('/');
    }
    public function edit($product)
    {
        $categories = Category::all();
        $product = Product::find($product);
        return view('products.edit', compact('product', 'categories'));
    }
    public function update(Request $request, $product)
    {
        $input = $request->all();

        $product = Product::find($product);
        $product->title = $input['title'];
        $product->price = $input['price'];
        $product->category_id = $input['category_id'];

        $product->save();
        session()->flash('message',$input['title'].' succesfully updated');
        return redirect('/');
    }
    public function delete($product)
    {
        Product::find($product)->delete();
        session()->flash('message','Product succesfully deleted');
        return redirect()->back();
    }
    public function search()
    {
        $search_test = $_GET['query'];
        $products = Product::where('title', 'LIKE', '%'.$search_test.'%')->with('category')->get();
        return view('products.search', compact('products'));
    }
}
