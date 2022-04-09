<?php include 'header.php'; ?>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Add user</li>
      </ol>
      
      <!-- Main -->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Add new user to the system</div>
        <div class="card-body">
          <form class="panel panel-success" role="form" action="" method="post">
            <div class="form-group row">
              <div class="col-md-6">
                <label for="username">First Name</label>
                <input type="text" class="form-control" name="fname" autocomplete="off" required>
              </div>
              <div class="col-md-6">
                <label for="username">Last Name</label>
                <input type="text" class="form-control" name="lname" autocomplete="off" required>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
                <label for="">Phone Number</label>
                <input type="text" name="phone" class="form-control" autocomplete="off" required>
              </div>
              <div class="col-md-6">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" name="email" autocomplete="off" required>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
                <label for="status">Status:</label>
                <select class="form-control" name="status">
                <option value="null">Select Status</option>
                  <option>Receptionist</option>
                  <option>Doctor</option>
                  <option>Lab Technician</option>
                  <option>Pharmasist</option>
                </select>
              </div>
              <div class="col-md-6">
                <label for="pwd">Password:</label>
                <input type="text" class="form-control" readonly value="Default Password is: HCMS123">
              </div>
            </div>
            <button type="submit" class="btn btn-primary" name="submit">Add User</button>
          </form>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
  </div>
</div>
<?php
include("includes/config.php");

if(isset($_POST['submit'])){

  $fname=$_POST['fname'];
  $email=$_POST['email'];
  $phone=$_POST['phone'];
  $lname=$_POST['lname'];
  $status=$_POST['status'];

  $ckeck_email="select * from users where email='$email'";
  $run_check=mysqli_query($con,$ckeck_email);
  if(mysqli_num_rows($run_check)>0){

    echo"<script>alert('Email is already in use. Please use another one')</script>";
    exit();
  }
  $query="INSERT INTO users (fname,lname,phone,email,status,password,date_reg,position) values('$fname','$lname','$phone','$email','$status','HCMS123',NOW(),'1')";
  $run=mysqli_query($con,$query);

  if ($run) {
    $sql = mysqli_query($con, "SELECT * FROM users WHERE phone = '$phone' AND email = '$email' ORDER BY user_id DESC LIMIT 1");
    $data = mysqli_fetch_assoc($sql);

    $run2=mysqli_query($con,"insert into employee(user_id,uname,email,position)values('".$data['user_id']."','$fname','$email','$status')");
    if($run2){
      echo"<script>alert('Succsess')</script>";
      exit();
    }
    else{
      echo"<script>alert('Error')</script>";
      exit();
    }
  }
}

?>
<!-- /.container-fluid-->
<!-- /.content-wrapper-->
<?php include 'footer.php'; ?>