<!DOCTYPE html>
<html>
 <head>
  <title>Form Login</title>
  <link rel="stylesheet" type="text/css" href="login.css">  
 </head>
 <body>
  <div class="login">
   <h2 class="login-header">Form Login</h2>
   <form class="login-container" action="proses_login.php" method="POST">
    <p>
     <input type="text" placeholder="Username" name="username" />
    </p>
    <p>
     <input type="password" placeholder="Password" name="password" />
    </p>
    <p>
     <button type="submit">LOGIN</button>
    </p>
   </form>
  </div>
 </body>
</html>