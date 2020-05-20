#include<iostream>
#include<string.h>
#include<stdio.h>
#include<stdlib.h>

using namespace std;

	class Produto { //criação classe
	char texto[50];
	float valor;
	char Produto[50];
	float PrecoCusto;
	float Lucro;
	float PrecoVenda;
	
	
	public:
		//setters
		void setProduto(char *texto);
		void setPrecoCusto(float valor);
		void setLucro(float valor);
		void setPrecoVenda(float valor);
		
		//getters
		
		char *getProduto();
		float getPrecoCusto();
		float getLucro();
		float getPrecoVenda();
		
		//metodos
		
		void Cadastro();
		void AlterarDados();
		void CalcPrecoLucro();
		int AlturaDeLucro();
		void Exibir();
		
	};
	
	
	//Implementação dos métodos definidos.

	//setters
	
void Produto::setProduto(char *texto){
	strcpy(Produto, texto);
}

void Produto::setPrecoCusto(float valor){
	PrecoCusto = valor;
}

void Produto::setLucro(float valor){
	Lucro = valor;
}

void Produto::setPrecoVenda(float valor){
	PrecoVenda = valor;
}

	//getters

char* Produto::getProduto(){
	return Produto;
}

float Produto::getPrecoCusto(){
	return PrecoCusto;
}

float Produto::getLucro(){
	return Lucro;
}

float Produto::getPrecoVenda(){
	return PrecoVenda;
}

	//metodos da classe

void Produto::Cadastro(){
	
	cout<<"*********** CADASTRO PRODUTOS ***********"<<endl;
	cout<<"Insira o nome do Produto: ";
	fflush(stdin);
	gets(texto);
	this->setProduto(texto);
	
	cout<<"Insira o Preco de Custo (Fornecedor): ";
	cin>>valor;
	this->setPrecoCusto(valor);
	
	cout<<"Insira a margem que deseja sobre o produto: ";
	cin>>valor;
	this->setLucro(valor);
	
}

void Produto::AlterarDados(){
	
	
	int resp;
	
	cout<<"Deseja alterar algum dado? 1 para sim, 2 para nao.";
	cin>>resp;
	
	if(resp == 1){
			int op;
	
		cout<<"*********** Alterar Dados *********** "<<endl;
		cout<<"1: Nome do Produto: "<<endl;
		cout<<"2: Preco de Custo: "<<endl;
		cout<<"3: Margem de lucro sobre o produto: "<<endl;
		cout<<"Insira o valor que deseja altera: "<<endl;
		cin>>op;
		switch(op)
		{
			case 1:
				cout<<"Insira o nome do Produto: ";
				fflush(stdin);
				gets(texto);
				this->setProduto(texto);
				break;
		
			case 2:
				cout<<"Insira o Preco de Custo (Fornecedor): RS ";
				cin>>valor;
				this->setPrecoCusto(valor);
				break;
			case 3:
				cout<<"Insira a margem que deseja sobre o produto: % ";
				cin>>valor;
				this->setLucro(valor);
				break;			

		}

	}else {
		cout<<"Nenhum dado alterado. ";
	}
	
	
	
	

}

void Produto::CalcPrecoLucro(){
	
	float novoValor = 0;
	float valor = 0 ;
	float preco = 0;
	float porcento = 0;
	
	preco = this->getPrecoCusto();
	
	porcento = this->getLucro() / 100 ;
	
	novoValor = ((preco * porcento) + preco );

	valor = novoValor;	
	

	this->setPrecoVenda(valor);
}
	
void Produto::Exibir(){
	
	cout<<"\n\n";
	cout<<"***************Seu Registro *************"<<endl;
	cout<<"Seu Produto registrado: "<<this->getProduto()<<endl;
	cout<<"Valor de compra(Fornecedor) "<<this->getPrecoCusto()<<endl;
	cout<<"Preco que esta vendendo: RS"<<this->getPrecoVenda()<<endl;
	cout<<"\n\n";
}

int Produto::AlturaDeLucro(){
	
	if (this->getLucro() > 20){
		cout<<"Seu lucro e alto.";
	} else if (this->getLucro() <= 20){
		cout<<"Seu lucro e baixo.";
	}
}

main (){
	
	Produto pd;
	
	
	pd.Cadastro();
	pd.CalcPrecoLucro();
	pd.Exibir();
	pd.AlterarDados();
	pd.AlturaDeLucro();
	 
	
		

	
}
