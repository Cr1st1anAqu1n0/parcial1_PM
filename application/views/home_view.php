<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img src="<?php echo base_url('image/profile1.jpeg');?>" alt="" style="width: 100px;"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/academico/Home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Materia <span class="caret"></span></a>
        <ul class="dropdown-menu">

        <?php 
             foreach($materias as $fila)
              {
        ?>
            
            <li><a href="<?php echo site_url('/Aprobado/')?><?=  $fila->id ?>"><?=$fila->Nombre ?></a></li>
          <?php
            }
        ?> 
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="jumbotron text-center">
  <h2>PAGINA DE INICIO DE ACADEMICO</h2>

</div>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Nombre:</h3>
      <p><?=$ident[0]->nombrecompleto ?></p>
    </div>
    <div class="col-sm-4">
      <h3>Carnet de Identidad</h3>
      <p><?=$ident[0]->ci ?></p>
    </div>
    <div class="col-sm-4">
      <h3>Fecha Nacimiento</h3>
      <p><?=$ident[0]->fechanac ?></p>
    </div>
    <div class="col-sm-4">
      <h3>Lugar de recidencia</h3>
      <p><?=$ident[0]->lugarrec ?></p>
    </div>
  </div>
</div>

</body>
</html>