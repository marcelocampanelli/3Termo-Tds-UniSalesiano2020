<?php

  class MetodoSet{
    protected $codigo;
    protected $descricao;
    protected $valor;

    public function getCodigo()
    {
      return $this->codigo;
    }

    function __set($atributo, $conteudo){
      $this->atributo = $conteudo;
    }

    function __get($atributo){
      return $this->atributo;
    }



    function __call($metodo, $parametros){
      $atributo = substr($metodo,3,(strlen($metodo)-2)); //setvalor strlen = 8;
      if(substr($metodo,0,3) == "set"){
        $this->atributo = $parametros[0];
      }

    }

  }

?>