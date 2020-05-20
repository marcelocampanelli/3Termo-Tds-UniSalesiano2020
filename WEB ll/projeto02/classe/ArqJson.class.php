<?php

Class ArqJson
{
    private $nomeArq;
    private $conteudo;

 
  function __construct($nome, $dados)
    {
        $this->nomeArq  = $nome;
        $this->conteudo = $dados;
    }

public function gravar()
{
    file_put_contents($this->nomeArq,
                      $this->conteudo);
}

public function ler()
{
    $dados = file_get_contents($this->nomeArq);
    return $dados;
}

}

?>