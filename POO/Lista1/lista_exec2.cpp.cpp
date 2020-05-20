#include <iostream>
#include <stdlib.h>
#include <string.h>

using namespace std;


class Aluno
{
	char nome[50];
	int nota1, nota2, falta;
	char disciplina[50];
	
	
	public:
			
			void setNome(char *nome);
			void setNota1(float nota1);
			void setNota2(float nota2);
			void setFalta(int falta);
			void setDisciplina(char *disciplina);
			
			char *getNome();
			int getFalta();
			float getNota1();
			float getNota2();
			char *getDisciplina();
			
			void CadastrarAluno();
			float CalcularMedia();
			char *Categoria();
			void Ficha();
			
};

void Aluno::setNome(char *name)
{
	strcpy(nome, name);
};

void Aluno::setNota1(float n1)
{
	nota1 = n1;
};

void Aluno::setNota2(float n2)
{
	nota2 = n2;
};

void Aluno::setFalta(int falt)
{
	falta = falt;
}

void Aluno::setDisciplina(char *disc)
{
	strcpy(disciplina, disc);
}

char* Aluno::getNome()
{
	return nome;
};

int Aluno::getFalta()
{
	return falta;
};

float Aluno::getNota1()
{
	return nota1;
};

float Aluno::getNota2()
{
	return nota2;
};

char* Aluno::getDisciplina()
{
	return disciplina;
};

void Aluno::CadastrarAluno()
{
	float valor;
	char text[50];
	
	cout<<"Cadastro\n";
	cout<<"Nome: ";
	fflush(stdin);
	gets(text);
	this->setNome(text);
	
	cout<<"Disciplina: ";
	fflush(stdin);
	gets(text);
	this->setDisciplina(text);
	
	cout<<"Nota 1: ";
	cin>>valor;
	this->setNota1(valor);
	
	cout<<"Nota 2: ";
	cin>>valor;
	this->setNota2(valor);
	
    cout<<"Faltas: ";
	cin>>valor;
	this->setFalta(valor);
	
};

float Aluno::CalcularMedia()
{
	return  ((getNota1() + getNota2())/ 2) ;
};

char* Aluno::Categoria()
{
	char categ[20];
	if (this->CalcularMedia() >= 7.0)
	{
		strcpy(categ, "Aprovado! :D ");
	}
	else
	{
		if(this->CalcularMedia()<7 or this->CalcularMedia()>=3)
		{
			strcpy(categ, "Exame! :/ ");
		}
		else
		{
			if(this->CalcularMedia()<3)
			{
				strcpy(categ, "Reprovado! :x ");
			}

			
			
		}
	}
	return categ;
}

void Aluno::Ficha()
{
	cout<<" Resultado da avaliacao \n\n";
	cout<<"Nome: "<<this->getNome()<<endl;
	cout<<"Disciplina: "<<this->getDisciplina()<<endl;
	cout<<"Nota 1: "<<this->getNota1()<<endl;
	cout<<"Nota 2: "<<this->getNota2()<<endl;
	cout<<"Situacao: "<<this->Categoria()<<endl;
	system("pause");
	system("cls");
}

main()
{
	Aluno Bruna;
	
	Bruna.CadastrarAluno();
	Bruna.Ficha();
	
	
	
}
