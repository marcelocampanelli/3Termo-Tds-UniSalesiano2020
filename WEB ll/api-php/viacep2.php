<?php
$cep="16200001";

// Cria o cURL
$curl = curl_init();
// Seta algumas opções
curl_setopt_array($curl, [
    CURLOPT_RETURNTRANSFER => 1,
    CURLOPT_URL => "https://viacep.com.br/ws/$cep/json/"
]);
// Envia a requisição e salva a resposta
$resposta = curl_exec($curl);

// Fecha a requisição e limpa a memória
curl_close($curl);

$dados = json_decode($resposta, 1);
echo "Cidade: " . $dados["localidade"] . "<br>";
echo "Estado: " . $dados["uf"] . "<br>";

?>
