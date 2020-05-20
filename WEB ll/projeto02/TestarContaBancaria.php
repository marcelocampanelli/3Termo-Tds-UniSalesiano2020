<?php
    require_once("classe/ContaBancaria.class.php");

    //abaixo criamos um objeto do tipo ContaBancaria
    $conta1 = new ContaBancaria();
    $conta2 = new ContaBancaria();

    $conta1->setCodigoConta("001");
    $conta1->setNomePessoa("Vitor Gazola");
    $conta1->setSaldo("0.00");

    $conta2->setCodigoConta("002");
    $conta2->setNomePessoa("Viviane Gazola");
    $conta2->setSaldo("0.00");

    $conta1->depositar("215.50");
    $conta1->sacar("15.50");

    $conta2->sacar("50.45");

    echo "Saldo conta1 = " . $conta1->getSaldo();
    echo "<br>";
    echo "Saldo conta2 = " . $conta2->getSaldo();
?>