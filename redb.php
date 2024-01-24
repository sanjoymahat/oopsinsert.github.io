<?php 
include ("config.php");
if(isset($_POST['submit'])){
    $username=$_POST['name'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $cpassword=$_POST['cpassword'];
    if($password == $cpassword){
        $sql = "INSERT INTO user (username,phone,email,password) VALUES (:username,:phone,:email,:password)";
			$query = $conn->prepare($sql);
			$query->bindValue(':username',$username);
            $query->bindParam(':phone',$phone);
			$query->bindValue(':email',$email);
			$query->bindValue(':password',$password);
			$result = $query->execute();
			if ($result) {
				$msg = "<div class='alert alert-success'><strong>Success !</strong> You have registered Succesfully  !!</div>";
				return $msg;
			}else{
				$msg = "<div class='alert alert-danger'><strong>Error !</strong>Something going wrong  !! Try agin Later.. </div>";
				return $msg;
			}

    }


}else{
    echo "not clicked";
}
?>