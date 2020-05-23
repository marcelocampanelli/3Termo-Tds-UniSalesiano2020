<?php
function carregarClasse($nomeClasse)
{
    require_once("classes/" . $nomeClasse . ".class.php");

}

spl_autoload_register("carregarClasse");

$pessoa    = new Pessoa();
$cachorro  = new Cachorro();    

$pessoa->falar();
$cachorro->latir();

?>