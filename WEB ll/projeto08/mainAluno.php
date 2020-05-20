<?php
require_once("classes/Pessoa.class.php");
require_once("classes/Aluno.class.php");

$aluno1 = new Aluno();
$aluno2 = new Aluno();

$aluno1->setRa("111");
$aluno1->setNome("Marisa da Silva");
$aluno1->setCpf("12121212121");
$aluno1->setEmail("aluno1@gmail.com");

$aluno2->setRa("222");
$aluno2->setNome("Valter da Silva");
$aluno2->setCpf("2223332233");
$aluno2->setEmail("aluno2@gmail.com");

echo "<h3>";
echo "Aluno 1:<br>";
echo "cpf: " . $aluno1->getcpf() . " nome: " . $aluno1->getNome() . " ra : " . $aluno1->getRa() . "<br>";

echo "Aluno 2:<br>";
echo "cpf: " . $aluno2->getcpf() . " nome: " . $aluno2->getNome() . " ra : " . $aluno2->getRa() . "<br>";
?>