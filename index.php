<h1> Bienvenido a mi mundo </h1>

<?php

require_once 'controllers/UsuarioController.php';   

$controller = new usuarioController();

$controller->mostrartodos();

$controller->crear();