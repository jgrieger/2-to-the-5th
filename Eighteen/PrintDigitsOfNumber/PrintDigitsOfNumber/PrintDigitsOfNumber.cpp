// cerner_2^5_2018
#include "pch.h"
#include <iostream>
#include <string>
using namespace std;
int place = 0;

void printDigitsOfNumber(int number)
{
	if (number >= 10)
	{
		place++;

		printDigitsOfNumber(number / 10);
	}

	int digit = number % 10;
	string plus = place == 0 ? "" : " + ";

	cout << digit << " * 10^" << place << plus;

	place--;
}

// output: 12345 = 1 * 10^4 + 2 * 10^3 + 3 * 10^2 + 4 * 10^1 + 5 * 10^0
int main()
{
	int number = 12345;

	cout << number << " = ";

	printDigitsOfNumber(number);
}