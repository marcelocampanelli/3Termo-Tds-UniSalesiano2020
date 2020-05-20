<?php
require_once("classes/MetodoSet.class.php");

$objeto = new MetodoSet();
$objeto->codigo      = "123";
$objeto->descricao   = "Um exemplo X";
//$objeto->valor     = "100";
$objeto->setvalor("101");


echo "<br>Codigo    - " . $objeto->codigo;
echo "<br>Descricao - " . $objeto->descricao;
echo "<br>Valor     - " . $objeto->valor;

?>