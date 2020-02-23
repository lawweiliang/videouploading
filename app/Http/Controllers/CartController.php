<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

use Cart;
use App\Carts;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function carts()
    {
        $carts = Cart::getContent();

        // dd($carts);

        if (Auth::check()) {
            if (count($carts) > 0) {
                foreach ($carts as $cart_item) {
                    // dd($cart_item->id);
                    $db_cart = Carts::where(['user_id' => auth()->user()->id, 'course_id' => $cart_item->id])->get();

                    // dd(count($db_cart));

                    //Add the item into the dababase table cart
                    if (count($db_cart) <= 0) {
                        $carts = new Carts;
                        $carts->user_id = auth()->user()->id;
                        $carts->course_id = $cart_item->id;
                        $carts->save();
                    }
                }
            }

            //Clear the live cart
            Cart::clear();

            //Load the cart from the database
            $latest_carts = Carts::with('course')->get();

            //Add the cart to the live cart
            if (count($latest_carts) > 0)
                foreach ($latest_carts as $cart_item) {
                    Cart::add($cart_item->course->id, $cart_item->course->title, $cart_item->course->price, 1, array('image_url' => $cart_item->course->image_url));
                }
        }

        return view('carts', compact('carts'));
    }

    public function add(Request $request)
    {
        // dd($request->all());
        Cart::add($request->course_id, $request->name, $request->price, $request->quantity, array('image_url' => $request->image_url));

        //Add the cart to database
        if (auth()->user() != null) {
            $carts = new Carts;
            $carts->user_id = auth()->user()->id;
            $carts->course_id = $request->course_id;
            $carts->save();
        }

        return back();
    }

    public function remove($id)
    {
        Cart::remove($id);

        //Remove the cart from database
        $db_cart = Carts::where(['user_id' => auth()->user()->id, 'course_id' => $id])->get();
        $db_cart->delete();

        return back();
    }

    public function checkout()
    {
        $carts = Cart::getContent();
        return view('checkout', compact('carts'));
    }
}
