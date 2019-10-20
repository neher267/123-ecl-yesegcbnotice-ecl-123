<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notice;

class NoticeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_title = "Manage Notice";
        if($type = request()->type)
        {
            $results = Notice::where('type', $type)->latest()->get();
        }
        else{
            $results = Notice::latest()->get();
        }
        
        return view('pages.backend.notice.index', compact('results', 'page_title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = "Create Notice";
        return view('pages.backend.notice.create', compact('page_title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $file_name = time().'.'.$request->file->getClientOriginalExtension();    
        $request->file->move(public_path('notice'), $file_name);

        $data = new Notice;
        $data->title = $request->title;
        $data->type = $request->type;
        $data->file = 'notice/'.$file_name;

        $data->save();

        return redirect('dashboard/manage-notice')->withSuccess("Saved!");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $notice = Notice::findOrFail($id);
        if (file_exists($notice->file)) {
            unlink($notice->file);
        }
        
        $notice->delete();
        return redirect('dashboard/manage-notice')->withSuccess("Delete!");
    }
}
