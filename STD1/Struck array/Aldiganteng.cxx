#include <iostream>
#include <string>
#include <sstream>
using namespace std;

struct absen_t {
  string title;
  int year;
} absen [3];

void printabsen (absen_t absen);

int main ()
{
  string mystr;
  int n;

  for (n=0; n<3; n++)
  {
    cout << "Enter title: ";
    getline (cin,absen[n].title);
    cout << "Enter year: ";
    getline (cin,mystr);
    stringstream(mystr) >> absen[n].year;
  }

  cout << "\nYou have entered these absen:\n";
  for (n=0; n<3; n++)
    printabsen (absen[n]);
  return 0;
}

void printabsen (absen_t absen)
{
  cout << absen.title;
  cout << " (" << absen.year << ")\n";
}