#ifndef UNTITLED1_IMG_TO_TXT_H
#define UNTITLED1_IMG_TO_TXT_H
#include <iostream>
#include<unistd.h>
#include <string>
#include <opencv2/opencv.hpp>
#include <tesseract/baseapi.h>
#include <leptonica/allheaders.h>
#include <lapacke.h>
#include "Variable.h"
#include "Equation.h"
#include "Equations_System.h"

class Img_To_Txt {
public:
    static std::string getTxtFromImg(std::string path);
};


#endif //UNTITLED1_IMG_TO_TXT_H
