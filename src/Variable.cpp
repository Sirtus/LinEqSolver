#include "../headers/Variable.h"

bool Variable::operator==(Variable other) {
    return (get_symbol() == other.get_symbol());
}

bool Variable::operator<(Variable other) {
    return (get_symbol() < other.get_symbol());
}