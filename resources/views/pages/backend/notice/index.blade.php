@extends('layouts.backend.app')

@section('content')

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
        	<div class="x_title">            	
                <!-- fa-arrow-left fa-plus -->
                <a href="{{route('manage-notice.create')}}" class="btn btn-round btn-default"><i class="fa fa-plus fa-icon"></i>Add Notice</a>
                <a class="btn btn-default" href="{{route('manage-notice.index')}}?type=general"><i class="fa fa-search"></i> General Notice</a>
                <a class="btn btn-default" href="{{route('manage-notice.index')}}?type=noc"><i class="fa fa-search"></i> NOC Notice</a>
                <a class="btn btn-default" href="{{route('manage-notice.index')}}?type=meeting"><i class="fa fa-search"></i> Meeting Notice</a>
                <a class="btn btn-default" href="{{route('manage-notice.index')}}?type=miscellaneous"><i class="fa fa-search"></i> Miscellaneous Notice</a>
            	@include('layouts.backend.partials._panel-toolbox')
            </div>

            <div class="page-title">{{$page_title}}</div>

            <div class="x_content">                
                <table id="datatable-buttons" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Sr.No</th>
                            <th>Title</th>                                                      
                            <th>Type</th>                                                      
                            <th>Created</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                    	<?php $i=0 ?>
                    	@foreach($results as $result)
                        <tr>
                            <td>{{++$i}}</td>                            
                            <td>{{$result->title}}</td>                           
                            <td style="text-transform: capitalize;">{{$result->type}}</td>                           
                            <td>{{$result->created_at}}</td>                           
                            <td>
                                <!-- <a href="{{route('manage-notice.edit', $result)}}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a> -->
                            	<!-- <a href="{{url($result->file)}}" class="btn btn-info btn-xs"><i class="fa fa-eye"></i> View </a> -->

                                @if(Auth::user()->role == 'admin')
                                <form action="{{route('manage-notice.destroy', $result)}}" method="POST" style="display: inline;">
                                    {{ csrf_field() }}
                                    {{ method_field('DELETE') }}

                                    <button type="submit" class="btn btn-danger btn-xs" onclick="return confirm_user('delete')"><i class="fa fa-trash-o"></i> Delete </button>
                                </form>
                                @endif                            	
                            </td>
                        </tr>
                        @endforeach                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection