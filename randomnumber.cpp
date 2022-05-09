/*
HOW TO USE:
Call compiled file from command line with filename in same folder
and a 1 if you want to print into the file the changed numbers to be able to revert the changes
or a 0 if not
The reverted numbers are the old numbers that have been replaced in the correct order

EXAMPLE:
./randomnumber demo.cpp 1
 [EXECUTABLE][FILE2CHANGE][PRINT CHANGED NUMBERS]

---------------------
Philipp Grüber C-2022
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <cstdlib>
#include <stdbool.h>

int main(int argc, char *argv[])
{
    if (argv[1] == "")
    {
        std::cout << "ERROR: No filename\n";
        return 1;
    }
    std::string filename = argv[1];
    bool print_replaced_numbers = *argv[2] - '0';

    if (argv[2] == "")
        print_replaced_numbers = true;

    std::cout << "Filename: " << filename << std::endl;
    std::cout << "Print replaces numbers: " << print_replaced_numbers << std::endl;

    std::ifstream datei(filename);

    if (!datei.good())
        return 1;
    std::vector<std::string> inhalt;

    while (datei.good())
    {
        std::string tmp = "";
        std::getline(datei, tmp);
        inhalt.push_back(tmp);
    }

    std::vector<int> replaced_numbers;
    auto iter = inhalt.begin();

    while (iter != inhalt.end())
    {
        for (int i = 0; i < (*iter).length(); i++)
        {
            if ((*iter).at(i) >= '0' && (*iter).at(i) <= '9')
            {
                replaced_numbers.push_back((*iter).at(i) - '0');
                char before = (*iter).at(i);
                while (before == (*iter).at(i))
                {
                    (*iter).at(i) = (rand() % 10) + '0';
                }
            }
        }

        iter++;
    }
    datei.close();

    std::ofstream schreiben(filename);
    auto iter2 = inhalt.begin();
    while (iter2 != inhalt.end())
    {
        schreiben << *iter2 << '\n';
        iter2++;
    }

    if (print_replaced_numbers == true)
    {
        auto iter3 = replaced_numbers.begin();
        schreiben << "\n-----------------\nReplaced Numbers: ";
        while (iter3 != replaced_numbers.end())
        {
            schreiben << *iter3 << " ";
            iter3++;
        }
    }

    schreiben.close();

    return 0;
}