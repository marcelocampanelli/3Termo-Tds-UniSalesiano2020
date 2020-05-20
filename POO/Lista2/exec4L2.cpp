#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

class conta{
	char nome[50];
	float saldodaconta;
	int senha;
	
	public:
		void setNome(char* texto);
		void setSaldodaconta(float valor);
		void setSenha(float valor);
		
		char *getNome();
		float getSaldodaconta();
		float getSenha();
	
	void acesso();
	void depositar(float quantiadep);
	void sacar(float quantiasac);
	void exibirconta();
};

void conta::setNome(char *texto){
	strcpy(nome, texto);
}
void conta::setSaldodaconta(float valor){
	saldodaconta = valor;
}
void conta::setSenha(float valor){
	senha = valor;
}

float conta::getSaldodaconta(){
	return saldodaconta;
}
char* conta::getNome(){
	return nome;
}
float conta::getSenha(){
	return senha;
}

void conta::depositar(float quantiadep){
	this->saldodaconta = this->saldodaconta + quantiadep;
};

void conta::sacar(float quantiasac){
	this->saldodaconta = this->saldodaconta - quantiasac;
};

void conta::acesso(){
	float valor, quantiadep, quantiasac;
	char nome[50];
	int escolha;
	
	cout<<"Acesse sua conta\n\n";
	
	cout<<"Nome: ";
	fflush(stdin);
	gets(nome);
	this->setNome(nome);
	
	cout<<"Senha: ";
	cin>>valor;
	this->setSenha(valor);
	
	cout<<"Para criar sua conta deposite: ";
	cin>>valor;
	this->setSaldodaconta(valor);
	
	cout<<"para sacar aperte 1; para depositar parte 2: ";
	cin>>escolha;
	if(valor = 1){
		cout<<"Quantia a depositar: ";
		cin>>quantiadep;
		depositar(quantiadep);
	}
	else
	if(valor = 2){
		cout<<"Quantia a sacar: ";
		cin>>quantiasac;
		sacar(quantiasac);
	}
}

void conta::exibirconta(){
    do{	int escolha;
        float valor;
    cout<<"Faça suas transações\n\n";
	cout<<"Nome: "<<this->getNome()<<endl;
	cout<<"Saldo: "<<this->getSaldodaconta()<<endl;
	cout<<"para sacar aperte 1; para depositar parte 2: ";
	cin>>escolha;
	if(escolha == 1){
		cout<<"Quantia a depositar: ";
		cin>>valor;
		depositar(valor);
	}
	else
	if(escolha == 2){
		cout<<"Quantia a sacar: ";
		cin>>valor;
		sacar(valor);
	}
	cout<<"Saldo: "<<getSaldodaconta();
	}while (getSaldodaconta() > 0);
};	

main(){
	conta HC;
	
	HC.acesso();
	HC.exibirconta();
}











