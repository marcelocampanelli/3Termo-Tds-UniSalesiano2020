
class Jogo: public Arvore{

  private:
    int Palpite;

  public:
    void setPalpite(int valor);


    int getPalpite();
    

    void Historia();

    void EsconderThanos();
    void TentarAchar();

};

void Jogo::setPalpite(int valor){
  Palpite = valor;
};

int Jogo::getPalpite(){
  return Palpite;
}

void Jogo::Historia(){

  system("clear||cls");
  cout<<"Thanos chegou na Terra e aterrissou em uma floresta"<<endl;
  cout<<"Assim que viu o Lanterna Verde se escondeu atrás de alguma arvore"<<endl;
  cout<<"Porem James ...."<<endl;
  cout<<"OPS!"<<endl;
  cout<<"Porem Lanterna Verde só tinha energia para 5 disparos em seu anel"<<endl;
  cout<<"Ajude Lanterna Clauton a derrotar o Thanos !!"<<endl;
  cout<<"\n\n Pressione qualquer tecla para continuar...."<<endl;
  getchar();

  #ifdef _WIN32
    fflush(stdin);
  #else
    __fpurge(stdin);
  #endif
  
}


void Jogo::EsconderThanos(){

  int valor;

  system("clear||cls");

   cout<<"Em qual arvore Thanos se escondera?(arvore 1 ate a 50) ";
   cin>>valor;
   if(valor <= 0){
     cout<<"Valor Invalido!";
   } else if(valor >= 51 ){
     cout<<"Valor Invalido!";
   } else{
     this->setEsconde(valor);
   }

}


void Jogo::TentarAchar(){

  int valor, resultado;
  resultado = 0;

  int x;

  system("clear||cls");

  cout<<"Muito bem vamos lá: "<<endl;
  cout<<"A partir daqui voce tera 5 chances para ajudar o LV"<<endl;
    #ifdef _WIN32
      fflush(stdin);
    #else
      __fpurge(stdin);
    #endif

  do {
    x++;
    cout<<"Tentativa: "<<x<<endl;
    cout<<"Qual o seu palpite? ";
    cin>>valor;
    this->setPalpite(valor);

      #ifdef _WIN32
        fflush(stdin);
      #else
        __fpurge(stdin);
      #endif

    if (this->getPalpite() != this->getEsconde()){
      if (this->getPalpite() < this->getEsconde()){
        cout<<"\nThanos ri da sua cara e avisa, para tentar com um valor mais alto.\n"<<endl;
      } else if (this->getPalpite() > this->getEsconde()){
        cout<<"\nThanos ri da sua cara e avisa para tentar um valor mais baixo. \n"<<endl;
      }
    }

    if (this->getPalpite() == this->getEsconde()){
      cout<<"Parabens voce ajudou o Lanterna Clauton a derrotar o THANOS "<<endl;
      cout<<"Voce conseguiu !!";
      cout<<"Precisone qualquer tecla para continuar "<<endl;
      getchar();
      #ifdef _WIN32
        fflush(stdin);
      #else
        __fpurge(stdin);
      #endif
      resultado = 1;
    }

      #ifdef _WIN32
        fflush(stdin);
      #else
        __fpurge(stdin);
      #endif
  
  if(x == 4){
    cout<<"\n\n Essa e sua ultima tentativa se nao conseguir dessa vez, tente novamente. \n\n";
  }

  }while((x < 5 ) and ( resultado != 1) );


}