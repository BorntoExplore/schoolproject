<?php
session_start();
if(!isset($_SESSION['userId'])){ header('location:login.php');}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Digital One Bank</title>
  <?php require 'assets/autoloader.php'; ?>
  <?php require 'assets/db.php'; ?>
  <?php require 'assets/function.php'; ?>

</head>
<body style="background:#e0e0e0;background-size: 100%">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">
        <ion-icon name="card-outline" class="d-inline-block align-top" size="large"></ion-icon>
        Online Banking
    </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link " href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active ">  <a class="nav-link" href="accounts.php">Accounts</a></li>
      <li class="nav-item ">  <a class="nav-link" href="statements.php">Account Statements</a></li>
      <li class="nav-item ">  <a class="nav-link" href="transfer.php">Funds Transfer</a></li>
      <!-- <li class="nav-item ">  <a class="nav-link" href="profile.php">Profile</a></li> -->


    </ul>
    <?php include 'sideButton.php'; ?>
   
  </div>
</nav><br><br><br>
<div class="container">
  <div class="card  w-75 mx-auto">
  <div class="card-header text-center">
    Your account Information
  </div>
  <div class="card-body">
    <table class="table table-borderless w-75 mx-auto">
  <thead>
  <th scope="col">Account Name.</th>
      <th scope="col"><?php echo $userData['name']; ?></th>
    <tr>
      <th scope="col">Account No.</th>
      <th scope="col"><?php echo $userData['accountNo']; ?></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td scope="row">Branch</td>
      <td><?php echo $userData['branchName']; ?></td>
    </tr>
    <tr>
      <td scope="row">Branch Code</td>
      <td><?php echo $userData['branchNo']; ?></td>
    </tr>
    <tr>
      <td scope="row">Account Type</td>
      <td><?php echo $userData['accountType']; ?></td>
    </tr>
    <tr>
      <td scope="row">Account Created</td>
      <td><?php echo $userData['date']; ?></td>
    </tr>
  </tbody>
</table>
      
  </div>
  <div class="card-footer text-muted">
      <?php echo bankName ?>
  </div>
</div>

</div>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>