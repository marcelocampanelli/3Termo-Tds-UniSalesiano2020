<?php

  require_once("classes/MetodoSet.class.php");

  $objeto = new MetodoSet();
  $objeto->codigo = "123";
  $objeto->descricao = "um exemploi X";
  $objeto->setvalor("250");

  //echo "O código é " . $objeto->codigo;
  //echo "<br>Agora com o método getCodigo: " . $objeto->getCodigo();

  echo "<br>Codigo = "      . $objeto->codigo;
  echo "<br> Descricao = "  . $objeto->descricao;
  echo "<br> Valor = "      . $objeto->valor;
?>