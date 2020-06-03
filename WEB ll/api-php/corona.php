<?php

// Cria o cURL
$curl = curl_init();
// Seta algumas opções
curl_setopt_array($curl, [
    CURLOPT_RETURNTRANSFER => 1,
    CURLOPT_URL => "https://api.thevirustracker.com/free-api?global=stats"
]);
// Envia a requisição e salva a resposta
$resposta = curl_exec($curl);

// Fecha a requisição e limpa a memória
curl_close($curl);

if ($resposta == false){
	echo "<h1>Não foi possível realizar a conexão com a base de dados...tente mais tarde.</h1>";
	exit(0);
}
$resultado = json_decode($resposta,1);
$dados     = $resultado["results"][0];

$pagina = file_get_contents("corona.html");
$pagina = str_replace("#totalcasos",  $dados["total_cases"], $pagina);
$pagina = str_replace("#totalrecup",  $dados["total_recovered"], $pagina);
$pagina = str_replace("#totalinfec",  $dados["total_unresolved"], $pagina);
$pagina = str_replace("#totalmortes", $dados["total_deaths"], $pagina);
$pagina = str_replace("#paises",      $dados["total_affected_countries"], $pagina);
$pagina = str_replace("#novoscasos",  $dados["total_new_cases_today"], $pagina);
$pagina = str_replace("#morteshoje",  $dados["total_new_deaths_today"], $pagina);
$pagina = str_replace("#casosativos", $dados["total_active_cases"], $pagina);

echo $pagina;

?>
