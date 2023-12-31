<?php
session_start();
if(!isset($_SESSION['managerId'])){ header('location:login.php');}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Online Banking</title>
  <?php require 'assets/autoloader.php'; ?>
  <?php require 'assets/db.php'; ?>
  <?php require 'assets/function.php'; ?>
  <?php if (isset($_GET['delete'])) 
  {
    if ($con->query("delete from useraccounts where id = '$_GET[id]'"))
    {
      header("location:mindex.php");
    }
  } ?>
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
        <a class="nav-link active" href="mindex.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item ">  <a class="nav-link" href="maccounts.php">Accounts</a></li>
      <li class="nav-item ">  <a class="nav-link" href="maddnew.php">Add New Account</a></li>
      <li class="nav-item ">  <a class="nav-link" href="mfeedback.php">Feedback</a></li>
    </ul>
    <?php include 'msideButton.php'; ?>
    
  </div>
</nav><br><br><br>
<?php 
  $array = $con->query("select * from useraccounts,branch where useraccounts.id = '$_GET[id]' AND useraccounts.branch = branch.branchId");
  $row = $array->fetch_assoc();
 ?>
<div class="container">
<div class="card w-100 text-cente">
  <div class="card-header">
    Account profile for <?php echo $row['name'];echo "<kbd class='mx-2'>#";echo $row['accountNo'];echo "</kbd>"; ?>
  </div>
  <div class="card-body">
    <table class="table table-borderless">
      <tbody>
        <tr>
          <td>Name</td>
          <th><?php echo $row['name'] ?></th>
          <td>Account No</td>
          <th><?php echo $row['accountNo'] ?></th>
        </tr><tr>
          <td>Branch Name</td>
          <th><?php echo $row['branchName'] ?></th>
          <td>Brach Code</td>
          <th><?php echo $row['branchNo'] ?></th>
        </tr><tr>
          <td>Current Balance</td>
          <th><?php echo $row['balance'] ?></th>
          <td>Account Type</td>
          <th><?php echo $row['accountType'] ?></th>
        </tr><tr>
          <td>nic</td>
          <th><?php echo $row['nic'] ?></th>
          <td>City</td>
          <th><?php echo $row['city'] ?></th>
        </tr><tr>
          <td>Contact Number</td>
          <th><?php echo $row['number'] ?></th>
          <td>Address</td>
          <th><?php echo $row['address'] ?></th>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="card-footer text-muted">
      <?php echo bankName ?>
  </div>
</div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>