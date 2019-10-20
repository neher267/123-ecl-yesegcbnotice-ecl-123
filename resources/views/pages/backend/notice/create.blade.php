
@extends('layouts.backend.app')

@section('content')
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">             
                <!-- fa-arrow-left fa-plus -->
                <a href="{{route('manage-notice.index')}}" class="btn btn-round btn-default"><i class="fa fa-arrow-left fa-icon"></i>Back</a>
              @include('layouts.backend.partials._panel-toolbox')
            </div>
            <div class="page-title">{{$page_title}}</div>

            <div class="x_content">
                <br />
                <form action="{{route('manage-notice.store')}}" method="post" class="form-horizontal form-label-left" enctype="multipart/form-data">
                    {{csrf_field()}}

                    <div class="form-group">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Title<span class="required">*</span>
                        </label>
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <input type="text" id="name" name="title" required class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>   

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="type">Notice type <span class="required">*</span>
                        </label>
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <select id="type" name="type" required class="form-control col-md-7 col-xs-12">
                                <option value="">Select</option>
                                <option value="general">General</option>
                                <option value="noc">NOC</option>
                                <option value="meeting">Meeting</option>
                                <option value="miscellaneous">Miscellaneous</option>
                            </select>
                        </div>
                    </div>

                    

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="file">File(.pdf)<span class="required">*</span>
                        </label>
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <input type="file" id="file" name="file" required class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>                    
                    
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button type="submit" class="btn btn-success">Save</button>
                        </div>
                    </div>
                </form>

                <!-- <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="category">Notice type</label>
                            <div class="col-sm-7">
                                <select name="category" class="form-control " id="ln" required>     
                                    <option value="">Select</option>
                                    <option value="General">General</option>
                                    <option value="NOC">NOC</option>
                                    <option value="Meeting">Meeting</option>
                                    <option value="Miscellaneous">Miscellaneous</option>
                                </select>
                            </div>
                        </div>

                        <legend>Add Notice</legend>
                         <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Notice Title:</label>
                            <div class="col-sm-7">          
                                <input type="text" name="notice_title" class="form-control " id="pwd" placeholder="Enter Title of Notice">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Select Notice file to upload:</label>
                            <div class="col-sm-7">          
                                <input type="file" name="notice"id="myFile" size="50" multiple>
                            </div>
                        </div> 

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="closing_date">End Date</label>
                            <div class="col-sm-7">
                                <input type="text" name="closing_date" class="form-control datepicker" id="closing_date" required>
                            </div>
                        </div>                       

                        <div class="form-actions">
                            <button style="margin-left:180px" type="submit" class="btn btn-primary" name="btn">Save Notice</button>
                        </div>
                    </fieldset>
                </form> -->
            </div>
        </div>
    </div>
</div>

@endsection