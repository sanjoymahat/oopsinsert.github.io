<?php
include_once("config.php");

if(isset($_POST['submit']))
{
$name=$_POST['name'];
$phone=$_POST['contact'];
$city=$_POST['city'];
$date=date('Y-m-d');
$sql = "INSERT INTO `users`(`name`, `phone`, `city`, `date_added`)VALUES(:name,:phone,:city,:date)";
$query = $conn-> prepare($sql);
$query->bindParam(':name',$name,PDO::PARAM_STR);
$query->bindParam(':phone',$phone,PDO::PARAM_INT);
$query->bindParam(':city',$city,PDO::PARAM_STR);
$query->bindParam(':date',$date,PDO::PARAM_STR);
$query -> execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId>0)
{
echo "<script>alert('Data inserted');</script>";
echo "<script>window.location.href='index.php';</script>";
}
else
{
echo "<script>alert('Data not inserted');</script>";
}

}
 ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>PHP GURUKUL | DEMO</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="navbar-header">
        <a class="navbar-brand" rel="home" href="#">PHP GURUKUL | Programing Blog</a>

	
</nav>

<div class="container-fluid">
  

      
     
 <!--/left-->
  
  <!--center-->
  <div class="col-sm-12">
    <div class="row">
      <div class="col-xs-12">
        <h3>Using PDO insert the data into the database
</h3>
		<form name="insert" action="" method="post">
       <table width="100%"  border="0">
  <tr>
    <th width="26%" height="60" scope="row">Full Name :</th>
    <td width="74%"><input type="text" name="name" value="" pattern="[A-Za-z]+" title="letters only without space"  class="form-control" required /></td>
  </tr>
  <tr>
    <th height="60" scope="row">Phone no :</th>
    <td><input type="text" name="contact" value="" pattern="[0-9]+" title="only numbers"  maxlength="10" class="form-control" required /></td>
  </tr>
  <tr>
    <th height="60" scope="row">City  :</th>
    <td><input type="text" name="city" value="" class="form-control" pattern="[A-Za-z]+" title="letters only without space"  required /></td>
  </tr>
 
  <tr>
    <th height="60" scope="row">&nbsp;</th>
    <td><input type="submit" value="Submit" name="submit" class="btn-primary" /></td>
  </tr>
</table>

     </form>
 
      </div>
	  
   <div class="col-xs-12">
      <table width="100%"  border="1">
	  <tr>
	  <th>Sr No.</th>
	  <th>Name</th>
	  <th>Contact No</th>
	  <th>City</th>
	  <th>Date</th>
	  </tr>
	  <?php
	  $sql = "SELECT * FROM users";
	  $query = $conn-> prepare($sql);
      $query -> execute();
      $results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($results as $result)
{

	  
	  ?>
	  
	   <tr>
	   <td align="center"><?php echo $result -> id ; ?></td>
	  <td align="center"><?php echo $result -> name ; ?></td>
	  <td align="center"><?php echo $result -> phone ;?></td>
	  <td align="center"><?php echo $result -> city ; ?></td>
	  <td align="center"><?php echo $result -> date_added ;?>
	  <button class="btn btn-danger" width="50%"></button>
	</td>

	  
	  </tr>
<?php  }
}?>
	  </table>

</div>   
	  
	  
    </div>
    <hr>
        
   
  </div><!--/center-->

<!--/right-->
  <hr>
</div><!--/container-fluid-->
	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>