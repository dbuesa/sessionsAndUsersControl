<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
    <link rel="stylesheet" href="../Estils/estilsRegistre.css">
</head>
<body>  
    <form action="../Model/register.php" method="POST">
        <div id="login-box">
        <div class="left">
            <h1>Registre</h1>
            <br><br>
            <input type="text" name="username" placeholder="Usuari"  required/>
            <input type="password" name="password" placeholder="Contrassenya" required/>
            <input type="password" name="password2" placeholder="Repeteix la contrassenya" required />
            
            <input type="submit" name="signup_submit" value="Registrar-se" />   
        </div>
    </form> 
    <div class="right">
        <span class="loginwith">Sign in with<br />Xarxa social</span>
        
        <button class="social-signin facebook">Registrar-se via facebook</button>
        <button class="social-signin twitter">Registrar-se via twitter</button>
        <button class="social-signin google">Registrar-se via Google+</button>
    </div>
    <div class="or">O</div>
    </div>
</body>
</html>