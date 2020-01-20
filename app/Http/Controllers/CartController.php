<?php

namespace App\Http\Controllers;

use Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function carts()
    {
        $carts = Cart::getContent();

        //Get the cart from database

        //Add it to local cart



        return view('carts', compact('carts'));
    }

    public function add(Request $request)
    {
        //dd($request->all());
        Cart::add($request->course_id, $request->name, $request->price, $request->quantity, array());

        //Add the cart to database

        return back();
    }

    public function remove($id)
    {
        Cart::remove($id);

        //Remove the cart from database

        return back();
    }
}
