
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>
    <div class="py-5">
        <div class = "container shadow">
        <div class ="row justify-content-center">
            <div class ="col-md-12 ">
                <div class="card">
                    <div class ="card-header bg-primary">
                        <h1 class ="text-center">Insert Data</h1>
                    </div>
                    <div class ="card-body">
                        <form class="shadow" action="db.php" method="post">
                            <div class="form-group">
                              <label for="">NAME</label>
                              <input type="text" name="name" id="name" class="form-control" placeholder=" enter your Name" aria-describedby="helpId">
                          </div>
                          <div class="form-group">
                              <label for="">Age</label>
                              <input type="number" name="age" id="age" class="form-control" placeholder=" enter your Name" aria-describedby="helpId">
                          </div>
                          <div class="form-group">
                              <label for="">City</label>
                              <input type="text" name="city" id="city" class="form-control" placeholder=" enter your Name" aria-describedby="helpId">
                          </div>
                          <div class="py-4">
                            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                       </div>     
                     </form>
                    </div>
                    <div class ="card-header" >
                        <h1 class="text-center  bg-secondary">All Record insert</h1>
                     <div class="col-xs-12 shadow">
                     <table class="table table-bordered ">
  <thead>
    <tr class="bg-primary border-0">
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">City</th>
      <th scope="col border-0 text-uppercase font-medium">Action</th>
    </tr>
  </thead>
  <tbody>
  <?php
                          include ("config.php");
	  $sql = "SELECT * FROM city";
	  $query = $conn -> prepare($sql);
      $query -> execute();
      $results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($results as $result)
{

	  
	  ?>
    <tr>
      <th scope="row"><?php echo $result -> id ; ?></th>
      <td ><?php echo $result -> student_name ; ?></td>
      <td><?php echo $result -> age ;?></td>
      <td><?php echo $result -> city ; ?></td>
      <td class="form-group" >
        <ul class="btn btn-primary border-0 text-uppercase font-medium" href="#" ro>edit</ul>
       <ul class="btn btn-primary border-0 text-uppercase font-medium" href="#" role="button">edit</ul>
       <ul class="btn btn-primary border-0 text-uppercase font-medium" href="#" role="button">edit</ul>
      </td>
      </tr>
<?php  }
}?>
  </tbody>
</table>

                    </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>