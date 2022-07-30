CPPFLAGS += -I$(CPPUTEST_HOME)/include
LDFLAGS = -L$(CPPUTEST_HOME)/lib -lCppUTest -lCppUTestExt

../bin/test/test: test.cpp  
	clang++ -o $@ $(CPPFLAGS) $(LDFLAGS) $^ 

