<html lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>EGCB</title>
    
    <link rel="shortcut icon" href="http://localhost/egcb-project/egcb-update/admin/img/icon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <link href="{{asset('css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <link href="{{asset('css/menu.css')}}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"><style type="text/css">
        .link a {
            margin-left: 0; 
            padding: 10px;
        }
    </style>
</head>

<body>
    <header style="z-index: 99999;">
        <div class="container">
            <div class="" style=" font-size:22px; text-align:center;color:#FFF; font-weight:bold;margin-left:-16px"><img alt="logo" src="{{asset('images/1522838513.png')}}">
            </div>
        </div>

    </header>
    <div class="container">
        <div class="row" style="margin-top: 93px; min-height:600px;">
            <div class="col-md-12">
                <div style="margin:0;padding:0">
                    <h4 style="text-align: center;font-weight: bold; background:#C2F7A4;padding:7px;color:black;font-family:arial">EGCB Official Notice</h4>
                </div>

                <div style="margin-left:0px">
                    <!-- Search form -->
        
                    <div class="box-content">
                        <div style="text-align: center;">
                            <form class="form-inline" method="GET">
                              <input name="query" class="form-control" type="text" placeholder="Search" aria-label="Search">
                              <button class="btn" type="submit"><i class="fa fa-search active" aria-hidden="true"></i></button>
                            </form>

                            <a class="btn btn-{{ request('type')=='all' ? 'success':'default' }} btn-sm" href="{{url('?type=all')}}">All</a>
                            @foreach($all_notice as $notice)
                                <a class="btn btn-{{ request('type')==$notice->id ? 'success':'default' }}  btn-sm" href="{{url('?type='.$notice->id)}}">{{$notice->name}}</a>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12" style="margin-top: 50px;">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    @if(count($results))
                    <thead>
                        <tr>
                            <td width="50px">Sr.No</td>
                            <td>Notice Title</td>
                            <td>Date</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i=0 ?>
                        @foreach($results as $result)
                        <tr>
                            <td class="power" style="text-align: center;width:100px">{{++$i}}</td>
                            <td class="link" style="text-align: left;">
                                @if($result->link)
                                <a href="{{$result->link}}" target="_blank">{{ $result->title }}</a>
                                @elseif($result->file)
                                <a href="{{url( $result->file )}}" target="_blank">{{ $result->title }}</a>
                                @else
                                {{ $result->title }}
                                @endif 
                            </td>
                            <td>
                                @if($result->notice_date != '0000-00-00 00:00:00')
                               
                                {{ date('d M, Y', strtotime($result->notice_date)) }} 
                                @else
                                 {{ date('d M, Y', strtotime($result->created_at)) }} 
                                @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody> 
                    @else
                    <tr>
                        <td>No results found.</td>
                    </tr>
                    @endif                   
                </table> 
                @if(count($results))
                <div class="col-md-offset-5 col-md-7">
                    {{ $results->appends('type',  $filter)->links() }}  
                </div>    
                @endif        
            </div>
        </div>
        
        <footer style="margin-right:-30px">
            <div class="scroll-top-wrapper">
                <span class="scroll-top-inner">
                    <i class="glyphicon glyphicon-upload"></i>
                </span>
            </div>

            <div class="col-md-12 " style="background:#669933;margin-left:-15px;height:50px;margin-top:5px;">
                <div class="col-md-9 terms">
                    <ul>
                        <li style="list-style: none;">
                            <a style="color: white; text-decoration: none; position: relative; top: 15px;" href="{{ route('logout') }}" onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                <i class="fa fa-sign-out" style="padding-left: 8px; padding-top: 4px;"></i>
                                <span style="float: left">Logout</span>
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: form-inline">
                                {{ csrf_field() }}
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="foot col-md-3">
                    <p style="font-size:10px;text-align:center;color:white;margin-top:18px;">©EGCB, Ltd. All rights reserved.</p>
                </div>
            </div>
        </footer>    
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
</body>
</html>