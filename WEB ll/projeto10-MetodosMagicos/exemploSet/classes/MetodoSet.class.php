<?php
class MetodoSet
{
    private $codigo;
    private $descricao;
    private $valor;
     
    public function getCodigo()
    {
        return $this->codigo;
    }

    function __set($atributo, $conteudo){
        //echo "<br> $atributo recebe $conteudo<br>";
        $this->$atributo = $conteudo;
    }

    function __get($atributo){
        return $this->$atributo;
    }

    function __call($metodo, $parametros)
    {
         $atributo = substr($metodo, 3,(strlen($metodo)-2));
         $atributo = lcfirst($atributo);
         if(substr($metodo,0,3) == "set")
         {
             $this->$atributo = $parametros[0];
         }
    }

}
?>