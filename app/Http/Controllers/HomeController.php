<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Notice;
use App\NoticeType;
use App\Notice;
use App\NoticeType;

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
        $all_notice = NoticeType::orderBy('name')->get();
        $type = request('type');
        $query = request('query');

        if(!empty($query)) {
            $results = Notice::where('title', 'like', "%$query%")->latest()->paginate(20); 
        }
        else if(empty($type) || $type == "all") {
            $results = Notice::latest()->paginate(20);            
        }         
        else {
            $type = NoticeType::findOrFail($type);
            $results = $type->notices()->latest()->paginate(20);
        }

        return view('notice', compact('results','all_notice'));
    }

    public function file($file = null)
    {
        dd($file);
    }

}

