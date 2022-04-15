#ifndef UNTITLED1_EQUATION_H
#define UNTITLED1_EQUATION_H

#include "Variable.h"
#include <string>
#include <vector>
#include <iostream>
#include <algorithm>

class Equation {
    size_t size;
    std::string symbols;
    std::vector<Variable> variables;
public:
    Equation(size_t size_, std::string symbols_, std::string line);
    void separate_variables(std::string line, std::string symbols);
    std::vector<Variable> get_variable_list() ;
    std::vector<Variable> get_const_list() ;
    void print_eq() ;
    ~Equation() {};
};



#endif //UNTITLED1_EQUATION_H
