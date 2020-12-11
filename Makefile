SOURCES = $(wildcard src/*.cpp)
OBJS := $(SOURCES:%.cpp=%.o)
DEPS := $(OBJS:.o=.d)
FLAGS = -std=c++14 -c -O2 -g -Wall -Wextra -Werror -pedantic -pedantic-errors -MMD
FLAGS += -Isrc/

.PHONY : all
all : main.exe

main.exe : $(OBJS)
	$(CXX) -o main.exe $(OBJS)

%.o: %.cpp
	$(CXX) -c $(FLAGS) -o $@ $<

.PHONY : clean
clean :
	rm -f main.exe $(OBJS) $(DEPS)

-include $(DEPS)
