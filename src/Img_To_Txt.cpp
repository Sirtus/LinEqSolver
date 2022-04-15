#include "../headers/Img_To_Txt.h"

std::string Img_To_Txt::getTxtFromImg(std::string path) {

    tesseract::TessBaseAPI *api = new tesseract::TessBaseAPI();
    api->Init(NULL, "eng", tesseract::OEM_LSTM_ONLY);
    api->SetPageSegMode(tesseract::PSM_AUTO);
    api->SetVariable("debug_file", "tesseract.log");


    cv::Mat image;
    image = cv::imread( path, 1 );

    if ( !image.data )
    {
        std::cout <<  "No image data \nTry a different path\n";
        return "";
    }

    cv::Mat imGray;
    cvtColor(image,imGray,cv::COLOR_RGB2GRAY);
    cv::Mat threshold_img;
    threshold(imGray, threshold_img,0 ,255,cv::THRESH_BINARY | cv::THRESH_OTSU);

    api->SetImage(threshold_img.data, threshold_img.cols, threshold_img.rows, 1, threshold_img.step);

    return api->GetUTF8Text();
}