<?php
 require_once("classes/Db.class.php");
 require_once("classes/Usuario.class.php");

 $banco = new Db();
 $banco->conectar();
 $banco->setTabela("usuarios");

 $usuario = new Usuario();
 $usuario->setCpf("11122233344");
 $usuario->setNome("TESTUO NAKUMOTO TESTOK");
 $usuario->setCelular("(18) 991234564");
 $usuario->setEmail("Testuo@pessoal.com.br");
 $usuario->setLogin("Testuo@pessoal.com.br");
 $usuario->setSenha(MD5("1"));

 $usuario->gravar($banco);
 
realizarConsulta($usuario, $banco, "11122233344");

 $campos = array();
 $campos["nome"] = "TESTUO TESTOK";
 $where          = "cpf = '11122233344'";
 $retorno        = $usuario->alterar($banco, $where, $campos);


realizarConsulta($usuario, $banco, "11122233344");

$where          = "cpf = '11122233344'";
$retorno        = $usuario->excluir($banco, $where);

realizarConsulta($usuario, $banco, "11122233344");



function realizarConsulta($usuario,$banco, $cpf)
{
   $campos = "cpf, nome, email";
   //$where  = "idusuarios = '4'";
   //$where = "idusuarios > 0";
   $where = "cpf = '" . $cpf ."'";
   $registro = $usuario->consultar($banco, $campos, $where);
   $existe   = 0;
   foreach($registro as $linha)
   {
      echo "Cpf...:  " . $linha["cpf"]  . "<br>";
      echo "Nome...: " . $linha["nome"] . "<br>";
      echo "Email.:  " . $linha["email"] . "<br><br>";
      $existe = 1;
   }
   
   if ($existe == 0)
   {
      echo "<br>Não foi encontrado registro.";
   }

}
 ?>