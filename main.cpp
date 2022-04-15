#include <iostream>
#include <string>
#include "headers/Equations_System.h"
#include "headers/Img_To_Txt.h"

using namespace std;

void parse_arguments(string& path, int argc, char** argv);

int main(int argc, char** argv ) {

    string path;
    string curr_path = get_current_dir_name();

    parse_arguments(path, argc, argv);

    if(path[0] == '/') path = curr_path + path;
    else path = curr_path + "/" + path;

    string inText  = Img_To_Txt::getTxtFromImg( path);
    bool is_allowed = false;
    for(char c: inText) if(c != ' ') is_allowed = true;
    if(inText.empty() || !is_allowed) return -1;

    cout << "\n\033[1;36mSystem of equations: \033[0m\n\n";
    Equations_System eq(inText);
    eq.solve();

    return 0;
}

void parse_arguments(string& path, int argc, char** argv){
    string option;

    if(argc == 3){
        option = argv[1];
        if(option == "-p" or option == "--path" ){
            path = argv[2];
        }
        else {
            cout << "Run the program with the -h or --help option to get information about the program \n";
            exit(0);
        }
    }

    else if(argc == 2 ){
        option = argv[1];
        if(option == "-h" or option == "--help"){
            cout << "\033[1;36m#############################################################\033[0m\n"
                    "\033[1;36m#############################################################\033[0m\n\n"
                    "LinEqSolver\n\n"
                    "This is a program for solving systems of linear equations written in the picture.\n"
                    "Text must be black on a white background.\n\n"
                    "\033[1;36m#############################################################\033[0m\n\n"
                    "Syntax: LinEqSolver [OPTION] [FILE]\n\n"
                    "Options:\n"
                    "  -h, --help     writing information about the program\n"
                    "  -p, --path     solving system of linear equation written in the given picture \n\n"
                    "Example:\n"
                    "LinEqSolver -p img/img1.png\n\n"
                    "\033[1;36m#############################################################\033[0m\n"
                    "\033[1;36m#############################################################\033[0m\n\n";
        }
        else{
            cout << "Run the program with the -h or --help option to get information about the program \n";
        }
        exit(0);
    }

    else if(argc == 1){
        cout << "Enter the path to the file with the linear equation system you want to solve.\n"
                "Remember that the text must be black on a white background : \n";
        cin >> path;
    }

    else {
        cout << "Run the program with the -h or --help option to get information about the program \n";
        exit(0);
    }

}