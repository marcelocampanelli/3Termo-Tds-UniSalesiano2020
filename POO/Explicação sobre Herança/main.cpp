#include <iostream>
#include <string.h>
#include "ClassJogador.cpp"
#include "ClassAdm.cpp"

using namespace std;

int main(){
  Adm adm;
  Jogador lv;

  adm.SetNome((char *)"Marcelo");
  adm.setApelido((char *)"mashelo");
  adm.setSetor(69);

  adm.exibirDadosAdm();

  lv.SetNome((char *)"JC");
  lv.setApelido((char *)"LV");
  lv.setPontos(51);
  lv.setRanking(10);

  lv.exibeDadosJog();

  adm.exibirDados();
  lv.exibirDados();




  return 0;
}