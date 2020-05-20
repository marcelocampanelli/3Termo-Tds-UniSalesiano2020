#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

class Aluno{
	char nome[50], curso[50];
	float nota1, nota2;
	int falta;
	
	public:
		void setNome(char *texto);
	    void setCurso(char *texto);
	    void setNota1(float valor);
	    void setNota2(float valor);
	    void setFalta(int valor);
	
	    char *getNome();
	    char *getCurso();
	    float getNota1();
	    float getNota2();
	    int getFalta();
	
	void cadastrar();
	void exibir();
	float media();
	float exame();
	char *status();
};

void Aluno::setCurso(char *texto){
	strcpy(curso, texto);
}
void Aluno::setNome(char *texto){
	strcpy(nome, texto);
}
void Aluno::setNota1(float valor){
	nota1=valor;
}
void Aluno::setNota2(float valor){
	nota2=valor;
}
void Aluno::setFalta(int valor){
	falta=valor;
}

char* Aluno::getNome(){
	return nome;
}
char* Aluno::getCurso(){
	return curso;
}
float Aluno::getNota1(){
	return nota1;
}
float Aluno::getNota2(){
	return nota2;
}
int Aluno::getFalta(){
	return falta;
}

void Aluno::cadastrar(){
	int valor;
	float notas;
	char texto[50];
	cout<<"---Cadastro do aluno---\n\n";
	
	cout<<"Nome: ";
	fflush(stdin);
	gets(texto);
	this->setNome(texto);
	
	cout<<"Curso: ";
	fflush(stdin);
	gets(texto);
	this->setCurso(texto);
	
	cout<<"Nota 1: ";
	cin>>notas;
	this->setNota1(notas);
	
	cout<<"Nota 2: ";
	cin>>notas;
	this->setNota2(notas);
	
	cout<<"Faltas: ";
	cin>>valor;
	this->setFalta(valor);
}

float Aluno::media(){
	return (getNota1()+getNota2())/2;
}

float Aluno::exame(){
	return 7 - this->media();
}

char* Aluno::status(){
	char situacaoaluno[30];
	if(this->media()>=7){
		strcpy(situacaoaluno, "aprovado!");
	}
	else
	if((this->media()<6) and (this->media()>=3)){
		strcpy(situacaoaluno, "exame");
	}
	else
	if(this->media()<=3){
		strcpy(situacaoaluno, "reprovado");
	}
	if(this->falta>20){
		strcpy(situacaoaluno, "reprovado por falta");
	}
	return situacaoaluno;
};

void Aluno::exibir(){
	cout<<"Dados da Nota\n\n";
	cout<<"Nome: "<<this->getNome()<<endl;
	cout<<"Curso: "<<this->getCurso()<<endl;
	cout<<"Faltas: "<<this->getFalta()<<endl;
	cout<<"Nota 1: "<<this->getNota1()<<endl;
	cout<<"Nota 2: "<<this->getNota2()<<endl;
	cout<<"Media: "<<this->media()<<endl;
	cout<<"Status: "<<this->status()<<endl;
	if((this->media()<7) and (this->media()>=3)){
		cout<<"Faltam "<<this->exame()<< "pontos."<<endl;
	}
	system("pause");
	system("cls");
};

main(){
	Aluno HC;
	
	HC.cadastrar();
	HC.exibir();
}
