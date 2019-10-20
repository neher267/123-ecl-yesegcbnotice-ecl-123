<html lang="en">
<head>
    <title>EGCB</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <link rel="shortcut icon" href="http://localhost/egcb-project/egcb-update/admin/img/icon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <link href="http://localhost/egcb-project/egcb-update/css/bootstrap.css" rel="stylesheet">
    <link href="http://localhost/egcb-project/egcb-update/css/style.css" rel="stylesheet">
    <link href="http://localhost/egcb-project/egcb-update/css/menu.css" rel="stylesheet">
</head>

<body>
    <header style="z-index: 99999;">
        <div class="container">
            <div class="" style=" font-size:22px; text-align:center;color:#FFF; font-weight:bold;margin-left:-16px"><img alt="logo" src="http://localhost/egcb-project/egcb-update/resource/images/Banner/1522838513.png">
            </div>
        </div>

    </header>
    <div class="container">
        <div class="row" style="margin-top: 93px;">
            <div class="col-md-12" style="/* float:right; */min-height:600px;">
                <div style="margin:0;padding:0">
                    <h4 style="text-align: center;font-weight: bold; background:#C2F7A4;padding:7px;color:black;font-family:arial">Notice</h4>
                </div>

                <div style="margin-left:0px">
                    <div class="box-content">
                        <div style="text-align: center;">
                            <a class="btn btn-success" href="http://localhost/egcb-project/egcb-update/welcome/notice/All">All</a>
                            <a class="btn btn-success" href="http://localhost/egcb-project/egcb-update/welcome/notice/General">General Notice</a>
                            <a class="btn btn-success" href="http://localhost/egcb-project/egcb-update/welcome/notice/NOC">NOC Notice</a>
                            <a class="btn btn-success" href="http://localhost/egcb-project/egcb-update/welcome/notice/Meeting">Meeting Notice</a>
                            <a class="btn btn-success" href="http://localhost/egcb-project/egcb-update/welcome/notice/Miscellaneous">Miscellaneous Notice</a>
                        </div>
                    </div>
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
                        <li>
                            <a href="{{ route('logout') }}" onclick="event.preventDefault();
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
    <script src="http://localhost/egcb-project/egcb-update/js/bootstrap.min.js"></script>
</body>
</html>