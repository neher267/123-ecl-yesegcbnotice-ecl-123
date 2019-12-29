<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notice;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('frontend');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index($file = null)
    {
        $type = request()->type;

        if(empty($type) || $type == "all")
        {
            $results = Notice::latest()->paginate(20);            
        }
        else
        {
            $results = Notice::where('type', $type)->latest()->paginate(20);
        }

        return view('notice', compact('results', 'type'));
    }

    public function file($file = null)
    {
        dd($file);
    }
}
