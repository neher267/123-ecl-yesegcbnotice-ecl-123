<html lang="en">
<head>
    <title>EGCB</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <link rel="shortcut icon" href="http://localhost/egcb-project/egcb-update/admin/img/icon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <link href="{{asset('css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <link href="{{asset('css/menu.css')}}" rel="stylesheet">
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
                    <div class="box-content">
                        <div style="text-align: center;">
                            <a class="btn btn-success" href="?type=all">All</a>
                            <a class="btn btn-success" href="?type=general">General Notice</a>
                            <a class="btn btn-success" href="?type=noc">NOC Notice</a>
                            <a class="btn btn-success" href="?type=meeting">Meeting Notice</a>
                            <a class="btn btn-success" href="?type=miscellaneous">Miscellaneous Notice</a>

                            <!-- <option value="">Select</option>
                                <option value="general">General</option>
                                <option value="noc">NOC</option>
                                <option value="meeting">Meeting</option>
                                <option value="miscellaneous">Miscellaneous</option> -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12" style="margin-top: 50px;">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    @if(count($results))
                    <tbody>
                        <?php $i=0 ?>
                        @foreach($results as $result)
                        <tr>
                            <td class="power" style="text-align: center;width:100px">{{++$i}}</td>
                            <td class="link" style="text-align: left;">
                                <a href="{{url( $result->file )}}" target="_blank">{{ $result->title }}</a>
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
                <div class="col-md-offset-5 col-md-7">
                    {{ $results->appends(['type' => $type])->links() }} 
                </div>            
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
                                <i class="fa fa-sign-out pull-right"></i>
                                Logout
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
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
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
</body>
</html>