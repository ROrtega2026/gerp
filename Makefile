MAKEFLAGS += -L

CXX      = clang++
CXXFLAGS = -g3 -Wall -Wextra -Wpedantic -Wshadow
LDFLAGS  = -g3 

unit_test: unit_test_driver.o stringProcessing.o
	${CXX} ${LDFLAGS} $^

stringProcessing.o: stringProcessing.cpp stringProcessing.h
	${CXX} ${CXXFLAGS} -c stringProcessing.cpp 
