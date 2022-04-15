#ifndef UNTITLED1_VARIABLE_H
#define UNTITLED1_VARIABLE_H


class Variable {
    char symbol;
    int value;
public:
    Variable(char symbol, int value): symbol{symbol}, value{value} {}
    const char get_symbol() const { return symbol; }
    const int get_value() const { return value; }
    void add_value(int val) { value += val; }
    bool operator==(Variable other);
    bool operator<(Variable other);
    ~Variable(){};
};

#endif //UNTITLED1_VARIABLE_H
