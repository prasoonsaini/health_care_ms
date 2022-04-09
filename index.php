<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>HCMS | LOGIN</title>
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="container">
    <div class="logo">
      <h2>HEALTHCARE...</h2>
    </div>
    <form class="login-form">
      <p>
        <label class="input_label">Email Address</label>
        <input class="textBoxes error" id="email" onkeydown="validateEmail()" type="text" autocomplete="off">
        <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        <small id="emlError">Email address is not valid!</small>
      </p>
      <p>
        <label class="input_label">Password</label>
        <input class="textBoxes error" id="pwd" onkeydown="validatePwd()" type="password" autocomplete="off">
        <small id="pwdError">Password is too short!</small>
      </p>
      <p>
        <button type="button" onclick="showMsg()">LOGIN</button>
      </p>
    </form>
    <p id="msg"></p>
  </div>

  <div class="footer">
    <p>2018 &copy; Prasoon</p>
  </div>
<script src="assets/js/jquery.min.js"></script>
<script src="main.js"></script>
</body>
</html>
