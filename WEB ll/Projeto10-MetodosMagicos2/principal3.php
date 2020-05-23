<?php
//passamos uma função do php como parametro anônimo
spl_autoload_register( function ($nomeClasse){
    require_once("classes/" . $nomeClasse . ".class.php");   
});

$pessoa    = new Pessoa();
$cachorro  = new Cachorro();    

$pessoa->falar();
$cachorro->latir();
$cachorro->latir();
?>