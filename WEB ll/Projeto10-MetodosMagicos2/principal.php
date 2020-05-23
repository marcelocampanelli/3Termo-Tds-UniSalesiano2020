<?php
function __autoload($nomeClasse){
    
    require_once("Classes/" . $nomeClasse . ".class.php");

}

$objPessoa   = new Pessoa();
$objCachorro = new Cachorro();

$objPessoa->falar();
$objCachorro->latir();
?>