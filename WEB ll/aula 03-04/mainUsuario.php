<?php

    require_once("classes/Db.class.php");
    require_once("classes/Usuario.class.php");

    $banco = new Db();
    $banco->conectar();
    $banco->setTabela("usuarios");

    $usuario = new Usuario();
    $usuario->setCpf("11122233344");
    $usuario->setNome("MARCELO CAMPANELLI");
    $usuario->setCelular("teste@testeeunaoseinada.com.br");
    $usuario->setLogin("ajudanoixsergim");
    $usuario->setSenha(MD5("porfavor"));

    $usuario->gravar($banco);

    echo "Vamos torcer para que tenha dado certo. Sergioo ajuda noix!!";
    


?>