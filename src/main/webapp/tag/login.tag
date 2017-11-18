<login>

  <!-- html -->
  <div class="jumbotron vertical-center">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-sm-offset-2 text">
          <h1 class="app_title">Tech Excavator</h1>
            <div class="description">
              <p class="caption">
                Choose your crops | Find your flowers | Plot your land | Build your garden
              </p>
            </div>
        </div>
      </div>
      <div class="row logRegBox">
        <div class="col-md-6 col-md-offset-3">
          <div class="panel panel-login">
            <div class="panel-heading">
              <div class="row">
                <div class="col-xs-6">
                  <a href="#" class="active" id="login-form-link">Login</a>
                </div>
                <div class="col-xs-6">
                  <a href="#" id="register-form-link">Register</a>
                </div>
              </div>
              <hr>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-12">
                  <form id="login-form" action="#" method="POST" role="form" style="display: block;">
                    <p>{errorMessage}</p>
                    <div class="form-group">
                      <input type="text" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                    </div>
                    <div class="form-group">
                      <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-lg-12">
                          <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In" onclick="{login}">
                        </div>
                      </div>
                    </div>
                  </form>
                  <form id="register-form" action="#" method="post" role="form" style="display: none;">
                    <p>{errorMessage}</p>
                    <div class="form-group">
                      <input type="text" name="email" id="register-email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                    </div>
                    <div class="form-group pw_req_div">
                      <p class="pw_requirements">At Least 6 Characters and 1 Capital Letter</p>
                    </div>
                    <div class="form-group">
                      <input type="password" name="password" id="register-password" tabindex="2" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                    </div>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-lg-12">
                          <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now" onclick="{register}">
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!-- css -->
  <style>
    .app_title {
      font-family: 'Fugaz One';
      color: #2E7F39;
    }

    .caption {
      font-family: 'Quicksand';
    }

    * {
      font-family: 'Barlow';
    }

    .form-control {
      color: white;
    }

    .logRegBox {
      padding-top: 5px;
    }

    .caption {
      font-size: 16px;
    }

    .pw_req_div {
      margin-bottom: 5px;
    }

    .pw_requirements {
      color: white;
      font-size: 12px;
      padding-left: 5px;
      margin-bottom: 5px;
    }

    .vertical-center {
      background-color:transparent !important;
      min-height: 100%;  /* Fallback for browsers do NOT support vh unit */
      min-height: 100%; /* These two lines are counted as one :-)       */

      display: flex;
      align-items: center;
    }

    .app_title {
      font-weight: 300;
    }

    .text {
      font-family: 'Roboto', sans-serif;
      font-size: 16px;
      font-weight: 300;
      color: #888;
      line-height: 30px;
      text-align: center;
    }

    .top-content .description {
      margin: 20px 0 10px 0;
    }

    .top-content .description a {
      border-bottom: 1px dotted #2E7F39;
    }
    .top-content .description a:hover, 
    .top-content .description a:focus { border: 0; }

    .panel-login {
      border-color: #45BF55;
      -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
      -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
      box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    }

    .panel-body {
      background-color: #45BF55;
    }

    .panel-login>.panel-heading {
      color: #00415d;
      background-color: #45BF55;
      border-color: #45BF55;
      text-align:center;
    }
    .panel-login>.panel-heading a{
      text-decoration: none;
      color: #2E7F39;
      font-weight: bold;
      font-size: 15px;
      -webkit-transition: all 0.1s linear;
      -moz-transition: all 0.1s linear;
      transition: all 0.1s linear;
    }

    .panel-login>.panel-heading a.active{
      color: white;
      font-size: 18px;
    }
    .panel-login>.panel-heading hr{
      margin-top: 10px;
      margin-bottom: 0px;
      clear: both;
      border: 0;
      height: 1px;
      background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
      background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
      background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
      background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    }

    #username {
      color: white;
    }

    input[type="text"]::-moz-placeholder, input[type="password"]::-moz-placeholder { color: #fff; }

    input[type="text"]:-ms-input-placeholder, input[type="password"]:-ms-input-placeholder { color: #fff; }

    input[type="text"]::-webkit-input-placeholder, input[type="password"]::-webkit-input-placeholder { color: #fff; }

    .panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
      height: 45px;
      background-color: #45BF55;
      border: 2px solid #2E7F39;
      font-size: 16px;
      -webkit-transition: all 0.1s linear;
      -moz-transition: all 0.1s linear;
      transition: all 0.1s linear;
    }
    .panel-login input:hover,
    .panel-login input:focus {
      outline:none;
      -webkit-box-shadow: none;
      -moz-box-shadow: none;
      box-shadow: none;
    }
    .btn-login {
      width: 100%;
      background-color: #2E7F39;
      outline: none;
      color: white;
      font-size: 14px;
      height: auto;
      font-weight: normal;
      padding: 14px 0;
      text-transform: uppercase;
    }
    .btn-login:hover,
    .btn-login:focus {
      color: #2E7F39;
      background-color: white;
    }
    .forgot-password {
      text-decoration: underline;
      color: white;
    }
    .forgot-password:hover,
    .forgot-password:focus {
      text-decoration: underline;
      color: #666;
    }

    .btn-register {
      width: 100%;
      background-color: #2E7F39;
      outline: none;
      color: #fff;
      font-size: 14px;
      height: auto;
      font-weight: normal;
      padding: 14px 0;
      text-transform: uppercase;
    }
    .btn-register:hover,
    .btn-register:focus {
      color: #2E7F39;
      background-color: white;
    }
  </style>


  <!-- script -->
  <script>

    //Variables
    this.errorMessage = "";
    this.email=$("#email").val();
    this.password=$("#password").val();
    var root = "http://localhost:8080/capstone/";

    //RIOT Mount
    this.on('mount', function() {
    });

    //AJAX
    this.login = function(event) {
      event.stopPropagation();
      event.preventDefault();
      $.ajax({
        type: "POST",
        url: 'http://localhost:8080/capstone/user/login?password=Password&email=trial@user.edu',
        dataType: "json",
      }).then(function(data){
        alert(data.userId);
      });

    }

    this.register = function(event) {
      event.preventDefault();
    }

    //Transition from Login to Register tabs and back
    $(function() {
      $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
      });
      $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
      });
    });

  </script>

</login>