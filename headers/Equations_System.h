#ifndef UNTITLED1_EQUATIONS_SYSTEM_H
#define UNTITLED1_EQUATIONS_SYSTEM_H

#include "Equation.h"
#include <vector>
#include <string>
#include <leptonica/allheaders.h>
#include <lapacke.h>

class Equations_System {
    std::vector<Equation> equations;
    std::string symbols;
    int equations_num = 0;

public:
    explicit Equations_System(const std::string& input);
    void solve( );
    ~Equations_System() = default;
};


#endif //UNTITLED1_EQUATIONS_SYSTEM_H
