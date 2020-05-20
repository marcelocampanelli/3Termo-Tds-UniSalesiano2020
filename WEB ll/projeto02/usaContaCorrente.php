<?php

 require_once("classe/ContaBancaria.class.php");
 require_once("classe/ArqJson.class.php");

 $conta1 = new ContaBancaria("11", "Ana", "0.00");

 $conta1->depositar("50");    
 $conta1->sacar("15.50");
 $valor = $conta1->getSaldo();
 $valor = number_format($valor, 2, ',','.');

 echo "Saldo da sua Conta Pessoa: " . 
      $conta1->getNome()       . "<br>";
 echo "R$ " . $valor;
 echo "<br>";

$conta2 = new ContaBancaria("12", "Gustavo", "0.00");

$conta2->depositar("100");
$conta2->sacar("50");
$valor = $conta2->getSaldo();
$valor = number_format($valor, 2, ',','.');

echo "Saldo da Conta: " . $conta2-> getNome() . "<br>";
echo "R$ " . $valor;


 $nomeArq = $conta1->getCodigoConta();
 $contem["saldo"] = $conta1->getSaldo(); 
 $contem["nome"]  = $conta1->getNome();
 $json = json_encode($contem);
 $arq = new ArqJson($nomeArq, $json);
 $arq->gravar();


?>