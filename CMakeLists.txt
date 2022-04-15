cmake_minimum_required(VERSION 3.19)
set(CMAKE_CXX_COMPILER /usr/bin/g++-8)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)
project(LinEqSolver)
find_package( OpenCV REQUIRED )
find_package(PkgConfig REQUIRED)
add_executable(LinEqSolver main.cpp src/Variable.cpp headers/Variable.h src/Equation.cpp headers/Equation.h src/Equations_System.cpp headers/Equations_System.h src/Img_To_Txt.cpp headers/Img_To_Txt.h)
include_directories( ${OpenCV_INCLUDE_DIRS} )
include_directories( ${TESSERACT_INCLUDE_DIRS} )
include_directories( ${LEPTONICA_INCLUDE_DIRS} )
pkg_search_module(TESSERACT REQUIRED tesseract)
pkg_search_module(LEPTONICA REQUIRED lept)
target_link_libraries( LinEqSolver ${OpenCV_LIBS} )
target_link_libraries( LinEqSolver ${TESSERACT_INCLUDE_DIRS} )
target_link_libraries( LinEqSolver ${LEPTONICA_INCLUDE_DIRS})
target_link_libraries( LinEqSolver -L/usr/local/lib)
target_link_libraries( LinEqSolver -llept -ltesseract -llapack)
target_link_libraries( LinEqSolver stdc++fs)
set(CMAKE_CXX_STANDARD 17)








