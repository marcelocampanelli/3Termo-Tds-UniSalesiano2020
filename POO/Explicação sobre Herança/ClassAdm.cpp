#include "ClassUsuario.cpp"
//class filha Administrador
class Adm: public Usuario{

  private:
    int Setor;

  public:
    void setSetor(int valor);

    int getSetor();

    void exibirDadosAdm();

};

void Adm::setSetor(int valor){
  Setor = valor;
};

int Adm::getSetor(){
  return Setor;
};

void Adm::exibirDadosAdm(){
  exibirDados();
  cout<<"Setor: "<<getSetor()<<endl;
};