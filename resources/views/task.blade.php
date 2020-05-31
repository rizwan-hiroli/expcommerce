<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Experience Commerce</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/pnotify/3.2.1/pnotify.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/pnotify/3.2.1/pnotify.buttons.css" rel="stylesheet">
    </head>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="pr-4" href="https://www.experiencecommerce.com">
      <img src="https://www.experiencecommerce.com/themes/bootstrap/images/footer-logo.png" width="120px">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Intoducing Us</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Blogs</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Showcase</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Careers</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <body>

        <div class="loader" id="loader"></div>
        <div class="content pt-5 justify-content-center d-flex" id="photos">
            <div class="card col-md-8 justify-content-center" style="border:0px">
            <div class="card-header">
                <div class="row">
                <h3 class="col-md-10">Excel Importer</h3> 
                <a class="btn btn-dark pull-right" style="color: white" data-toggle="modal" data-target="#convertModal">
                  <i class="fa fa-download icon"></i>  Import 
                </a>
                </div>
            </div>
            <div class="card-body">
              

              

            </div>
        </div>
        </div>

        <!-- modal to import currency -->
        <div class="modal fade subscriptionModal" id="convertModal" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header d-block">
                  <button type="button" class="close closemodal pull-right" data-dismiss="modal"><span aria-hidden="true">×</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel"> Import Excel</h4>
                </div>
                <div class="modal-body">
                  {{ Form::open(['url' => 'admin/result/import','method_type' => 'POST','id' => 'resultImportForm','name' => 'resultImportForm'])}}
                  <input type="hidden" name="_token" id="_token" value="{{csrf_token()}}">
                  
                <input type="hidden" name="routeName" id="routeName" value="/admin/result/import">
                  
                  <div class="item form-group mt30">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Select File
                      <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12 padding-left-0">
                      <input type="file" accept=".xlsx" name="file" id='file' />
                    </div>
                    {{-- <p>Allowed Extensions: .csv</p> --}}
                    <div class="row">
                      <div class="col-md-8 col-md-offset-3">
                        <div class="id-file-error-div title commonError error_flash hide"></div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="item form-group mt30">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">
                    </label>
                    <div class="col-md-12 col-sm-12 col-xs-12 padding-left-0">
                      <p id="importLink"></p>
                    </div>
                  </div>
                  
                  {{ Form::close() }}
                </div>
                <div class="modal-footer">
                    
                    <a href="{{asset('templates/template.xlsx')}}">
                      <input type = "button" class="btn btn-dark" name="Download Sample Sheet" value="Download Template" style="position: absolute;left:0;margin-left: 10px;margin-top:-20px">
                    </a>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button id='upload' type="submit" name="upload" class="btn btn-dark" data-loading-text="<i class='fa fa-circle-o-notch fa-spin '></i> Loading...">Upload</button>
                    
                </div>
                
                </div>
            </div>
          </div>

        
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pnotify/3.2.1/pnotify.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pnotify/3.2.1/pnotify.buttons.js"></script>
    <script src="js/import.js"></script>
    
</html>
