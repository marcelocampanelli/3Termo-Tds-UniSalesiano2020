#include<iostream>
#include<string.h>
#include<stdio.h>
#include<stdio_ext.h> // para usar o __fpurge(stdin) linux.
using namespace std;

class Arvore {
  private:
    int Esconde;

  public:
    void setEsconde(int valor);

    int getEsconde();


};

void Arvore::setEsconde(int valor){
  Esconde = valor;
};

int Arvore::getEsconde(){
  return Esconde;
}
