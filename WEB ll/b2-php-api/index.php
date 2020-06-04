<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="node_modules/normalize/lib/normalize.js">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;700&display=swap" rel="stylesheet">
    <title>COTAÇÃO MOEDAS</title>
</head>

<body>

    <div class="container">

        <?php

          $url = "https://economia.awesomeapi.com.br/json/all";
          $ch  = curl_init($url);
          curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
          curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
          // curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
          $resultado = json_decode(curl_exec($ch));

          // var_dump($resultado);

          foreach($resultado as $resp){

            // var_dump($resp);
            
            ?>

            <div class="box">
              <?php
              echo "<b>Nome: "                    . $resp->name        . "<br></b>";
              echo "Conversão para: "                     . $resp->codein      . "<br>";
              echo "Cotação<b>: R$ "                 . $resp->high        . "<br></b>";
              echo "Horario da Cotação: "         . $resp->create_date . "<br>";
              ?>
            </div>

            <?php
 
            

          }
          

        ?>
      

        

    </div>
          <div class="clear"></div>
    <footer>
    <b>@AUTHOR: MARCELO CAMPANELLI</b>  -- Fornecedor da Cotações https://economia.awesomeapi.com.br/ -- 
    </footer>

</body>

</html>