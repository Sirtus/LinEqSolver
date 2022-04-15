#include "../headers/Equations_System.h"

Equations_System::Equations_System(const std::string &input) {
    symbols = "";
    for(char c : input) {
        if(c == '\n') equations_num ++;
        if(((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) && symbols.find(c) == std::string::npos ) {
            symbols += c;
        }

    }
    if(equations_num < symbols.size()){
        std::cout << "This system of equations is not allowed \n"
                     "Remember that the text must be black on a white background : \n";
        exit(0);
    }
    std::string line;
    for(char c: input) {
        if(c == '\n') {
            equations.push_back(Equation(equations_num, symbols, line));
            line.clear();
        }
        else {
            line += c;
        }
    }
}

void Equations_System::solve()  {
    char    TRANS = 'N';
    int     INFO;
    int     LDA = equations_num;
    int     LDB = equations_num;
    int     N = equations_num;
    int     NRHS = 1;
    int     IPIV[equations_num] ;

    std::vector<double> A(equations_num*equations_num),B(equations_num);
    int i = 0;
    int k = 0;
    for(Equation eq: equations) {

        for(const Variable& var: eq.get_variable_list()) {
            A[k + i*equations_num] = (double) var.get_value();
            ++i;
        }
        i=0;
        ++k;
    }

    i = 0;
    for(Equation eq: equations) {
        for(const Variable& var: eq.get_const_list()) {
            B[i] = (double) var.get_value();
            ++i;
        }
    }

    //void LAPACK_dgetrf( lapack_int* m, lapack_int* n, double* a, lapack_int* lda, lapack_int* ipiv, lapack_int *info );
    LAPACK_dgetrf(&N,&N,A.data(),&LDA,IPIV,&INFO);

    // checks INFO, if INFO != 0 something goes wrong
    if(INFO)
    {
        std::cout << "an error occured : "<< INFO << std::endl << std::endl;
    }else{
        std::cout << "\n\n\033[1;36mSolving the system...\033[0m"<< std::endl << std::endl;
        // void LAPACK_dgetrs( char* trans, lapack_int* n, lapack_int* nrhs, const double* a, lapack_int* lda, const lapack_int* ipiv,double* b, lapack_int* ldb, lapack_int *info );
        dgetrs_(&TRANS,&N,&NRHS,A.data(),&LDA,IPIV,B.data(),&LDB,&INFO);
        if(INFO)
        {
            // checks INFO, if INFO != 0 something goes wrong
            std::cout << "an error occured : "<< INFO << std::endl << std::endl;
        }else{

            std::cout << "\033[1;35mResult: [ ";
            for (i=0;i<N;i++)
            {
                if(i != N-1) std::cout << symbols[i] << " = " << B[i] << ", ";
                else std::cout << symbols[i] << " = " << B[i] << " ";
            }
            std::cout << "] \033[0m" << std::endl << std::endl;
        }
    }

}