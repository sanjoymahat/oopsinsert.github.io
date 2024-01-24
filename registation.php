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
  <div class="container">
        <div class="row justify-content-center ">
           <div class= "col-md-6 shadow">
           <div class="card">
                <div class="card-header shadow">
                <h1>Registration Form</h1>
            </div> 
                <div class="card-body">
                 <form action="redb.php" method="POST">
                     <div class="mb-3">
                         <label class="form-label">Name</label>
                         <input type="text" name="name" class="form-control" placeholder="enter your name" value="">
                     </div>
                     <div class="mb-3">
                         <label class="form-label">Phone</label>
                         <input type="number" name="phone" class="form-control" placeholder="enter your phone number"value="" >
                     </div>
                     <div class="mb-3">
                         <label class="form-label">Email address</label>
                         <input type="email"  name="email" class="form-control" id="email"  placeholder="enter your email" aria-describedby="emailHelp" value="">
                     </div>
                     <div class="mb-3">
                         <label  class="form-label">Password</label>
                         <input type="password"  name="password" class="form-control" id="password"  placeholder="enter your password" value="">
                     </div>
                     <div class="mb-3">
                         <label  class="form-label">Comfirm-Password</label>
                         <input type="password"  name="cpassword" class="form-control" id="cpassword"  placeholder="enter your Comfirm-Password" value="">
                     </div>
                      <div class="mb-3">
                        <label class="label-name"></label>
                        <input type="submit" name="submit"class="btn btn-primary btn-block" value="sumbit"/>
                      </div>
                  </form>
             </div>
           </div>

            </div>
            


        </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>