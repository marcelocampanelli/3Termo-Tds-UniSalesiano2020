#include <stdio.h>
#include <iostream>
#include <string.h>
using namespace std;
//classe pai

class Usuario{
  private:
    char Nome[30];
    char Apelido[15];


  public:
    void SetNome(char *texto);
    void setApelido(char *texto);

    char* getNome();
    char* getApelido();

    void exibirDados();
};

void Usuario::SetNome(char *texto){
  strcpy(Nome, texto);
};

void Usuario::setApelido(char *texto){
  strcpy(Apelido, texto);
};

char* Usuario::getNome(){
  return Nome;
};

char* Usuario::getApelido(){
  return Apelido;
};

void Usuario::exibirDados(){
  cout<<"\n \n";
  cout<<"Nome: "<<getNome()<<endl;
  cout<<"Apelido: "<<getApelido()<<endl;
};