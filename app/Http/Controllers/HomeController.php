<?php

namespace App\Http\Controllers;

use App\Category;
use App\Course;
use App\Carts;
use Cart;
use Illuminate\Http\Request;
use function MongoDB\BSON\toJSON;

class HomeController extends Controller
{
    public function index()
    {
        if (auth()->user() != null) {
            //Load the cart
            $latest_carts = Carts::with('course')->get();

            //Add the cart to the live cart
            if (count($latest_carts) > 0)
                foreach ($latest_carts as $cart_item) {
                    Cart::add($cart_item->course->id, $cart_item->course->title, $cart_item->course->price, 1, array('image_url' => $cart_item->course->image_url));
                }
        }

        // $carts = Cart::getContent();
        // Cart::clear();
        // foreach ($carts as $a_singleCart) {
        //     dd($a_singleCart->attributes['image_url']);
        // }
        // dd($carts);

        $courses = Course::orderBy('created_at', 'desc')->take(10)->get();
        return view('home', compact('courses'));
    }

    // courses by category
    public function courses_by_category(Category $category)
    {
        return view('courses_by_category')
            ->with('category', $category)
            ->with('courses', $category->courses()->paginate(6));
    }

    // course details
    public function course_detail(Course $course)
    {

        // dd($course);
        return view('course_details', compact('course'));
    }

    public function course_search(Request $request)
    {
        // dd($request->input('keyword'));
        $keyword = $request->input('keyword');
        $courses = Course::orderBy('created_at', 'desc')
            ->where('title', 'like', '%' . $keyword . '%')
            ->paginate(3);

        return view('course_search', compact('courses'));
    }

    public function checkAuth()
    {
        $isLoggedIn = auth()->check() ? true : false;
        return response()->json(['success' => $isLoggedIn]);
    }
}
