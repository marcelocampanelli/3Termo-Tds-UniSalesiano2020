#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

class Contador
{
    int num = 0;
    int max = 50;
    int overflow = 0;

    public: 
        int getNum();
        void incrementa();
        int reseta();

};

int Contador::getNum()
{
    return num;
};

void Contador::incrementa()
{
    do
    {
        this->num = this->num + 1;
        cout<<"Numero atual: "<<getNum()<<endl;
        if(this->num > this->max)
        {
            this->overflow = this->overflow++;
            cout<<"Erro. A conta será reiniciada.";
            reseta();
        }

    }while(this->num <= this->max);


}

int Contador::reseta()
{
    return this->num = 0;
}


main()
{
    Contador teste;
    teste.incrementa();
}
