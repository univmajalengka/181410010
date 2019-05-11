#include<iostream>
using namespace std;
char  Matkul [10][30] =
{"Fisikadasar2","LogikaMatematika","OrganisasiKomputer","PengantarBasisData","BahasaIndonesia","DasarDasarManajemen","StrukturData1","Kalkulus","Islamologi","IlmuSosialBudayaDasar"};
int n;
int main()
{
	cout <<"Masukan urutan Matkul dari 0 sampai 10: ";
	cin >> n ;
	cout <<"Nama Matkul tersebut adalah :";
	cout << " " <<Matkul [n];
	return 0;
}