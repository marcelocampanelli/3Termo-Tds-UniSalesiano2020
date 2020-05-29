#include"classeArvore.cpp"
#include"classeJogo.cpp"

int main(){

  Jogo Jogador;

  int op;

  do{
    
    system("clear||cls");
    cout<<"##############################################"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"#   Bem vindo ao CrossOver                   #"<<endl;
    cout<<"#   Lanter Clauton vs Thanos                 #"<<endl;
    cout<<"#   OPS! Lanterna Verde!                     #"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"############# Menu CrossOvado ################"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"#   1- Definir aonde Thanos ira se esconder. #"<<endl;
    cout<<"#   2- Tentar achar Thanos.                  #"<<endl;
    cout<<"#   3- Ver historia do CrossOver !           #"<<endl;
    cout<<"#   4- Sair do Menu                          #"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"#                                            #"<<endl;
    cout<<"############# Lanterna 'JC' Verde ############"<<endl;
    cout<<"\n\nEscolha a sua opcao: ";
    cin>>op;

    if ( op==1 ) {
      Jogador.EsconderThanos();
    } else if ( op==2 ) {
      Jogador.TentarAchar();
    } else if ( op==3 ) {
      Jogador.Historia();
    } 

    

  }while(op != 4);

  

}