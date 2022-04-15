#include "../headers/Equation.h"

Equation::Equation(size_t size_, std::string symbols_, std::string line): size{size_}, symbols{symbols_} {
    for(char symbol : symbols) variables.push_back(Variable(symbol, 0));
    separate_variables(line,symbols);
    print_eq();
}

void Equation::separate_variables(std::string line, std::string symbols){
    int val;
    std::string num_str = "";
    bool is_minus = false;
    bool is_after_eq = false;
    for(int i = 0; i < line.size(); ++i) {
        if(line[i] == '-') is_minus = true;
        if(line[i] == '=') is_after_eq = true;

        if(line[i] >= '0' && line[i] <= '9') {
            while(line[i] >= '0' && line[i] <= '9' && i < line.size()) {
                num_str += line[i];
                ++i;
            }
            val = std::stoi(num_str);
            if(is_minus) {

                val *= -1;
            }
            if(symbols.find(line[i]) != std::string::npos and val == 0) val = 1;
            if(symbols.find(line[i]) == std::string::npos and !is_after_eq
               or symbols.find(line[i]) != std::string::npos and is_after_eq) {
                val *= -1;
            }

            if(symbols.find(line[i]) != std::string::npos) variables[symbols.find(line[i])].add_value(val);
            else if(std::find(variables.begin(), variables.end(), Variable(' ', val)) != variables.end()) {
                variables[symbols.find(' ')].add_value(val);
            }
            else variables.push_back(Variable(' ', val));

            num_str = "";
            is_minus = (line[i]=='-');
            is_after_eq = (line[i]=='=') or is_after_eq;
        }
        else if(symbols.find(line[i]) != std::string::npos){
            val = 1;
            if(is_minus) val *= -1;
            if(is_after_eq) val *= -1;
            variables[symbols.find(line[i])].add_value(val);
            is_minus = false;
        }
    }
}

std::vector<Variable> Equation::get_variable_list(){
    std::vector<Variable> result;
    for(const Variable& var: variables) {
        if(var.get_symbol() != ' ') result.push_back(Variable(var.get_symbol(), var.get_value()));
    }
    return result;
}

std::vector<Variable> Equation::get_const_list() {
    std::vector<Variable> result;
    for(const Variable& var: variables) {
        if(var.get_symbol() == ' ') result.push_back(Variable(var.get_symbol(), var.get_value()));
    }
    return result;
}

void Equation::print_eq() {
    for(int i = 0; i < variables.size(); ++i) {
        if(variables[i].get_value() > 0 and i != 0 and variables[i].get_symbol() != ' ') std::cout << "+ " <<variables[i].get_value() << variables[i].get_symbol() << " ";
        else if(variables[i].get_value() < 0 and i != 0 and variables[i].get_symbol() != ' ') std::cout  <<variables[i].get_value() << variables[i].get_symbol() << " ";
        else if( variables[i].get_symbol() == ' ') std::cout << "= " <<variables[i].get_value() << variables[i].get_symbol() << " ";
        else if(i == 0) std::cout  << variables[i].get_value() << variables[i].get_symbol() << " ";
    }
    std::cout<<"\n";
}