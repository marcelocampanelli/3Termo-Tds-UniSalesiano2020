#include <iostream>
#include <locale>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

class Pessoa{
	
	char Nome[50];
	int Idade;
	float Altura, Peso;
	char Sexo [2];
	
	
	public: 
		void setNome(char *texto);
		void setIdade(int valor);
		void setAltura(float valor);
		void setPeso(float valor);
		void setSexo(char *texto);
		
		char *getNome();
		int   getIdade();
		float getAltura();
		float getPeso();
		char  *getSexo();
		
		void Cadastro();
		
		void ExibirIMC();
		
		float CalcIMC();
	
};

void Pessoa :: setNome(char *texto){
	strcpy(Nome, texto);
}

void Pessoa :: setIdade(int valor){
	Idade = valor;
}

void Pessoa :: setAltura(float valorAlt){
	Altura = valorAlt;
}

void Pessoa :: setPeso(float valorAlt){
	Peso = valorAlt;
}

void Pessoa :: setSexo(char *texto){
	strcpy(Sexo, texto);
}

char* Pessoa::getNome(){
	return Nome;
}

int Pessoa::getIdade(){
	return Idade;
} 

float Pessoa::getAltura(){
	return Altura;
}

float Pessoa::getPeso(){
	return Peso;
}

char* Pessoa::getSexo(){
	return Sexo;
}

void Pessoa::Cadastro(){
	int valor;
	float valorAlt;
	char texto[50];
	
	cout<<"***Cadastro IMC***"<<endl;
	cout<<"Insira seus dados:"<<endl<<endl;
	
	cout<<"Nome: "<<endl;
	fflush(stdin);
	//gets(texto);
	fgets(texto, sizeof(texto), stdin);
	this->setNome(texto);
	
	cout<<endl;
	cout<<"Idade: "<<endl;
	cin>>valor;
	this->setIdade(valor);
	
	cout<<endl;
	cout<<"Altura: "<<endl;
	cin>>valorAlt;
	this->setAltura(valorAlt);
	
	cout<<endl;
	cout<<"Peso: "<<endl;
	cin>>valorAlt;
	this->setPeso(valorAlt);
	
	system("cls");
	CalcIMC();
}
float Pessoa :: CalcIMC(){
	 float peso = getPeso();
	 float altura = getAltura();
	 float IMC;
	 
	 IMC=(peso)/(altura*altura);
	 return IMC;
}

void Pessoa:: ExibirIMC() {
		if (this->CalcIMC() < 18.5) {
			cout << "Magreza";
		} else
		if (this->CalcIMC() <= 25){
			cout << "Peso Normal";
		}else
		if (this->CalcIMC() < 30) {
			cout << "Sobrepeso";
		}else 
		{
			cout << "Obesidade";
		}	
	}
	
main(){
	Pessoa Bruce;
	Bruce.Cadastro();
	Bruce.ExibirIMC();
	
	system("pause");
}


