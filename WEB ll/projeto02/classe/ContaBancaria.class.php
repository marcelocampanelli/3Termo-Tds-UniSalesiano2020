<?php

class ContaBancaria {

    private $codigoConta;
    private $nomePessoa;
    private $saldo;

    public function __construct($codCta, $nomeP, $sdo)
    {

        $this->codigoConta = $codCta;
        $this->nomePessoa  = $nomeP;
        $this->saldo       = $sdo;
    } 

    public function setCodigoConta ($codConta)
    {
        $this->codigoConta = $codConta;
    }

    public function setNomePessoa ($nome)
    {
        $this->nomePessoa = $nome;
    }

    public function setSaldo ($valor)
    {
        $this->saldo = $valor;
    }

    public function getCodigoConta()
    {
        return $this->codigoConta;
    }

    public function getNome()
    {
        return $this->nomePessoa;
    }

    public function getSaldo()
    {
        return $this->saldo;
    }

    public function depositar($valor)
    {
        $this->saldo = $this->saldo + $valor;
    }

    public function sacar($valor)
    {
        $this->saldo = $this->saldo - $valor;
    }


}

?>