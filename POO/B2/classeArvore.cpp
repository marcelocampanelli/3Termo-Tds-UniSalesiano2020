  #ifdef _WIN32
    #include<iostream>
    #include<string.h>
    #include<stdio.h>
  #else
    #include<iostream>
    #include<string.h>
    #include<stdio.h>
    #include<stdio_ext.h> //para usar o __fpurge(stdin); (limpar buffer linux)
  #endif


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
