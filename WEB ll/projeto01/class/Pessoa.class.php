<?php
   class Pessoa
   {
       private $cpf;
       private $nome;
       private $email;

       public function setCpf($cpf)
       {
          $this->cpf = $cpf;
       }
       public function setNome($nome)
       {
          $this->$nome = $nome;
       }
       public function setEmail($email)
       {
           $this->$email = $email;
       }
       public function getCpf()
       {
          return $this->cpf;
       }
       public function getNome()
       {
          return $this->nome;
       }
       public function getEmail()
       {
          return $this->email;
       }
   }
?>
       