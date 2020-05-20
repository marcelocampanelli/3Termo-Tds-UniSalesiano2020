#include<iostream>
#include<string.h>
#include<stdio.h>
#include<stdlib.h>
#include <locale>
using namespace std;

	class Produto { 
	char texto[50];
	float valor;
	char Produto[50];
	float PrecoCusto;
	float Lucro;
	float PrecoVenda;
	int estoque;
	float venda;
	
	public:
		
		void setProduto(char *texto);
		void setPrecoCusto(float valor);
		void setLucro(float valor);
		void setPrecoVenda(float valor);
		void setEstoque(int valor);
		void setVenda(float valor);

		
		char *getProduto();
		float getPrecoCusto();
		float getLucro();
		float getPrecoVenda();
		int getEstoque();
		float getVenda();

		
		void Cadastro();
		void AlterarDados();
		void CalcPrecoLucro();
		int AlturaDeLucro();
		void Exibir();
		void vender();
		void comprar();
		void status();
		
	};
	
void Produto::setProduto(char *texto){
	strcpy(Produto, texto);
}

void Produto::setPrecoCusto(float valor){
	PrecoCusto = valor;
}

void Produto::setLucro(float valor){
	Lucro = valor;
}
void Produto::setVenda(float valor)
{
	venda = valor;
};

void Produto::setPrecoVenda(float valor){
	PrecoVenda = valor;
}

void Produto::setEstoque(int valor)
{
	estoque = valor;
}

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
int Produto::getEstoque()
{
	return estoque;
}
float Produto::getVenda()
{
	return venda;
};
void Produto::vender()
{
	this->estoque = this->estoque - 1;
	cout<<"Produto vendido."<<endl;
	cout<<"O produto está em estoque: "<<getEstoque();
}

void Produto::comprar()
{
	this->estoque = this->estoque + 1;
	cout<<"Produto comprado."<<endl;
	cout<<"O produto está em estoque: "<<getEstoque();
}


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
	
	cout<<"Nivel do estoque: ";
	cin>>valor;
	this->setEstoque(valor);
	
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
		cout<<"4: Nível de estoque: "<<endl;
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
			case 4:
				cout<<"Insira o novo nível de estoque do produto: ";
				cin>>valor;
				this->setEstoque(valor);
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
	cout<<"Nível de estoque: "<<this->getEstoque()<<endl;
	cout<<"\n\n";
	AlterarDados();
}

void Produto::status()
{
	char escolha2 = 's';
	int escolha;
	cout<<"Resultado:\n\n";
	cout<<"Produto: "<<this->getProduto()<<endl;
	cout<<"Preco de compra: "<<this->getPrecoCusto()<<endl;
	cout<<"Preco de venda: "<<this->getVenda()<<endl;
	cout<<"Lucro: "<<this->AlturaDeLucro()<<endl;
	while(escolha2 == 's')
	{
		
	
		cout<<"Deseja comprar(1) ou vender(2) ";
		cin>>escolha;
		switch(escolha)
		{
			case 1:
				comprar();
				break;
			
		
			case 2:	
				vender();
				break;

		}	
		cout<<"Deseja continuar?(s/n)";
		cin>>escolha2;
		if(escolha2 == 'n')
		{
			system("system");
			system("cls");
		}
	}
		
}

int Produto::AlturaDeLucro(){
	
	if (this->getLucro() > 20){
		cout<<"Seu lucro e alto.";
	} else if (this->getLucro() <= 20){
		cout<<"Seu lucro e baixo.";
	}
}

main (){
	setlocale(LC_ALL"Portuguese");
	Produto teste;
	
	teste.Cadastro();
	teste.CalcPrecoLucro();
	teste.Exibir();
	teste.status();

}
