<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Product;
use App\User;

// use App\Category
class ShopController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index($id = null){
        // $categories = Category::all();, 'categories','id'
        $categories = Category::all();
        $products = Product::paginate(6);
        return view('shop.index', compact('products','categories','id'));
    }
    public function category($id){
        $categories = Category::all();
        $products = Product::where('category_id', $id)->paginate(6);
        return view('shop.index', compact('products', 'categories','id'));
    }
    // public function category($id){
    //     $categories = Category::all();
    //     $product = Product::where('category_id',$id)->paginate(6);
    //     return view('categories', compact());
    // }
    public function show($id){
        $product = Product::findOrFail($id);
        
        // $c=$category->get();
        // $product = Product::join('users', 'user_id', '=', 'users.id')->get();
        // $user=User::findOrFail($product->user_id);
        return view('shop.show', compact('product'));

    }
}
