<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notice;
use App\NoticeType;

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
        $all_notice = NoticeType::orderBy('name')->get();
        if($type = request()->type)
        {
            $type = NoticeType::findOrFail($type);
            $results = $type->notices()->latest()->get();
        }
        else{
            $results = Notice::latest()->get();
        }
        
        return view('pages.backend.notice.index', compact('results', 'page_title', 'all_notice'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $all_notice = NoticeType::orderBy('name')->get();
        $page_title = "Create Notice";
        return view('pages.backend.notice.create', compact('page_title','all_notice'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {  
        $data = new Notice;
        
        if($request->file) {
            $file_name = time().'.'.$request->file->getClientOriginalExtension();    
            $request->file->move(public_path('notice'), $file_name);
            $data->file = 'notice/'.$file_name;
        }
        
        $data->title = $request->title;
        $data->link = $request->link;
        $data->notice_type_id = $request->notice_type_id;
        $data->notice_date = $request->notice_date;
        

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
