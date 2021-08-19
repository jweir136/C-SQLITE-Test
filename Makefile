build:
	g++ $(CPPFLAGS) $(CFLAGS) -I. C-SQLITE-Test/*.cpp -o app -lsqlite3

check:
	g++ $(CPPFLAGS) $(CFLAGS) -I. test/*.test.cpp -o test/testapp -lsqlite3
	./test/testapp
	rm ./test/testapp
run:
	g++ $(CPPFLAGS) $(CFLAGS) -I. C-SQLITE-Test/*.cpp -o app -lsqlite3
	./app
docs:
	doxygen doc/Doxygen