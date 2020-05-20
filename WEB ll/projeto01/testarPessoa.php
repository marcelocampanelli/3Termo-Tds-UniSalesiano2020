<?php
  require_once("class/Pessoa.class.php");
  $objeto1 = new Pessoa();
  $objeto2 = new Pessoa();

  $objeto1->setCpf("111111111111");
  $objeto2->setCpf("222222222222");

  echo "cpf do Objeto1 = " . $objeto1->getCpf();
  echo "<br>";
  echo "Cpf do Objeto2 = " . $objeto2->getCpf();

?>