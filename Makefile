run: build
	@echo "Executing...\n"
	@./main
	@echo "\nCleanup in process...\n"
	@rm -f ./main
	@echo "Cleanup complete!\n"

build:
	@echo "Building file ./main...\n"
	@g++ main.cpp -o main
	@echo "Successfully built file!"
	
silentrun: silentbuild
	@./main
	@rm -f ./main

silentbuild:
	@g++ main.cpp -o main

run_test:
	@g++ generate_tests.cpp -o gent
	@./gent
	@rm -f ./gent
