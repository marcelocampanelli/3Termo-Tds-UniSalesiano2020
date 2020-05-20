<?php
require_once("classes/usuarios.class.php");

$nome  =  $_POST["nome"];
$email =  $_POST["email"];

$usuario = new Usuario($nome, $email);

$mensagem = "Bem-vindo " . $usuario->getNome();
$mensagem = $mensagem . " - seu email é " . $usuario->getEmail();

echo $mensagem;

?>