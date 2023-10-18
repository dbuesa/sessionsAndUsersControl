<!doctype html>
<html lang="es">
    
    <head>
        
        <meta charset="utf-8">
        
        <title> Formulario de Acceso </title>    
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Overpass&display=swap" rel="stylesheet">
        
        <link rel="stylesheet" href="../Estils/login.css">
        <style type="text/css"></style>
        <script type="text/javascript"></script>
        
    </head>
    
    <body>
        
        <div id="contenedor">
            <div id="central">
                <div id="login">
                    <div class="titulo">
                        Benvingut
                    </div>
                    <form id="loginform">
                        <input type="text" name="user" placeholder="Usuario" required>
                        
                        <input type="password" placeholder="Contraseña" name="password" required>
                        
                        <button type="submit" title="Entrar" name="Entrar">Entra</button>
                    </form>
                    <div class="pie-form">
                        <a href="../Controlador/controlarRegistre.php">¿No tens compte? Registrat</a>
                    </div>
                </div>
                <div class="inferior">
                    <a href="../index.php">Tornar</a>
                </div>
            </div>
        </div>
            
    </body>
</html>