#include <iostream>
#include <string.h>
#include <cmath>
using namespace std;
double hipotenuse(int a, int b);

int main()
{
    cout << "вывод" << endl;
    double summ;
    while (true){
        string stop; cin>>stop;
            if (stop != "stop"){
            cout<<"---------------------"<<endl;
            int a, b;
            cout<<"введите параметр а >>> ";
            cin>>a;
            cout<<"введите параметр б >>> ";
            cin>>b;
            double h = hipotenuse(a,b);
            cout << h << endl;
            summ += h;
        }else{
            break;
        }
    }

    cout <<"результат: "<< summ << endl;
    return 0;
}

double hipotenuse(int a, int b){
    return sqrt(pow(a,2)+pow(b,2));
}
