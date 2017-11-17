<login>

  <!-- html -->
  <div class="top-content">
      <div class="inner-bg">
          <div class="container">
              <div class="row">
                  <div class="col-sm-8 col-sm-offset-2 text">
                      <h1 class="app_title">Tech Excavator</h1>
                      <div class="description">
                        <p>
                          Choose your crops | Find your flowers | Plot your land | Build  garden
                        </p>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                      <div class="form-top-left">
                        <h3>Login to start building your garden.</h3>
                          <p>Please enter your username and password:</p>
                      </div>
                      <div class="form-top-right">
                        <i class="fa fa-lock"></i>
                      </div>
                      </div>
                      <div class="form-bottom">
                    <form role="form" action="" method="post" class="login-form">
                      <div class="form-group">
                        <label class="sr-only" for="form-username">Username</label>
                          <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
                        </div>
                        <div class="form-group">
                          <label class="sr-only" for="form-password">Password</label>
                          <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
                        </div>
                        <button type="submit" class="btn">Sign in!</button>
                    </form>
                  </div>
                  </div>
              </div>
          </div>
      </div>  
  </div>

  <!-- css -->
  <style>
    <!-- Login Style -->
    .text {
      font-family: 'Roboto', sans-serif;
      font-size: 16px;
      font-weight: 300;
      color: #888;
      line-height: 30px;
      text-align: center;
    }

    strong { font-weight: 500; }

    a, a:hover, a:focus {
      color: #45BF55;
      text-decoration: none;
        -o-transition: all .3s; -moz-transition: all .3s; -webkit-transition: all .3s; -ms-transition: all .3s; transition: all .3s;
    }

    h1, h2 {
      margin-top: 10px;
      font-size: 38px;
      font-weight: 100;
      color: #555;
      line-height: 50px;
    }

    h3 {
      font-size: 22px;
      font-weight: 300;
      color: #555;
      line-height: 30px;
    }

    img { max-width: 100%; }

    ::-moz-selection { background: #45BF55; color: #fff; text-shadow: none; }
    ::selection { background: #45BF55; color: #fff; text-shadow: none; }


    .btn-link-1 {
      margin: 0 15px;
      font-size: 42px;
      font-weight: 300;
      line-height: 42px;
      color: #45BF55;
    }
    .btn-link-1:hover, .btn-link-1:focus, .btn-link-1:active { outline: 0; color: #42bcc2; }


    /***** Top content *****/

    .inner-bg {
        padding: 100px 0 120px 0;
    }

    .top-content .description {
      margin: 20px 0 10px 0;
    }

    .top-content .description a {
      border-bottom: 1px dotted #ffa456;
    }
    .top-content .description a:hover, 
    .top-content .description a:focus { border: 0; }

    .form-box {
      margin-top: 35px;
    }

    .form-top {
      overflow: hidden;
      padding: 0 25px;
      background: #45BF55;
      -moz-border-radius: 4px 4px 0 0; -webkit-border-radius: 4px 4px 0 0; border-radius: 4px 4px 0 0;
      color: #fff;
      text-align: left;
    }

    .form-top-left {
      float: left;
      width: 75%;
      padding-top: 25px;
    }

    .form-top-left h3 { margin-top: 0; color: #fff; }

    .form-top-right {
      float: left;
      width: 25%;
      padding-top: 5px;
      font-size: 66px;
      color: #fff;
      line-height: 100px;
      text-align: right;
    }

    .form-bottom {
      padding: 15px 25px 30px 25px;
      background: #45BF55;
      -moz-border-radius: 0 0 4px 4px; -webkit-border-radius: 0 0 4px 4px; border-radius: 0 0 4px 4px;
      text-align: left;
    }

    .form-bottom form .input-error {
      background: #24a7ad;
    }

    .social-login {
      margin-top: 35px;
    }

    .social-login-buttons {
      margin-top: 35px;
    }


    /***** Media queries *****/

    @media (min-width: 992px) and (max-width: 1199px) {}

    @media (min-width: 768px) and (max-width: 991px) {}

    @media (max-width: 767px) {
      
      .inner-bg { padding: 60px 0 110px 0; }

    }

    @media (max-width: 415px) {
      
      h1, h2 { font-size: 32px; }
      
      .form-top-right { font-size: 42px; line-height: 90px; }

    }

    <!-- Form Elements -->

    input[type="text"], 
    input[type="password"] {
      height: 50px;
      margin: 0;
      padding: 0 20px;
      vertical-align: middle;
      background: none;
      border: 3px solid #2E7F39;
      font-family: 'Roboto', sans-serif;
      font-size: 16px;
      font-weight: 300;
      line-height: 50px;
      color: #fff;
      -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px;
      -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none;
      -o-transition: all .3s; -moz-transition: all .3s; -webkit-transition: all .3s; -ms-transition: all .3s; transition: all .3s;
    }

    input[type="text"]:focus, 
    input[type="password"]:focus {
      outline: 0;
      background: none;
      border: 3px solid #fff;
      color: #fff;
      -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none;
    }

    input[type="text"]::-moz-placeholder, input[type="password"]::-moz-placeholder { color: #fff; }

    input[type="text"]:-ms-input-placeholder, input[type="password"]:-ms-input-placeholder { color: #fff; }

    input[type="text"]::-webkit-input-placeholder, input[type="password"]::-webkit-input-placeholder { color: #fff; }


    button.btn {
      width: 100%;
      height: 50px;
      margin: 0;
      padding: 0 20px;
      vertical-align: middle;
      background: #2E7F39;
      border: 0;
      font-family: 'Roboto', sans-serif;
      font-size: 16px;
      font-weight: 300;
      line-height: 50px;
      color: #fff;
      -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px;
      text-shadow: none;
      -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none;
      -o-transition: all .3s; -moz-transition: all .3s; -webkit-transition: all .3s; -ms-transition: all .3s; transition: all .3s;
    }

    button.btn:hover { background: #fff; color: #45BF55; }
    button.btn:active { outline: 0; background: #fff; color: #24a7ad; -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none; }
    button.btn:focus { outline: 0; background: #fff; color: #24a7ad; }
    button.btn:active:focus, button.btn.active:focus { outline: 0; background: #fff; color: #24a7ad; }

  </style>

  <!-- script -->
  <script>
    this.on('mount', function() {
    });

    submit(e) {
      var form = this.refs.login,
          email = this.refs.email.value,
          password = this.refs.password.value,
          button = this.refs.submit
    }
  </script>

</login>