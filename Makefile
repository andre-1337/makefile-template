.PHONY: projectname

SANITIZER := -fsanitize=undefined -fsanitize=address -fsanitize=leak

FLAGS := -Wall -Wextra -Werror -pedantic -std=c11 $(SANITIZER)

OPTLVL := -O3

projectname:
	$(CC) $(FLAGS) $(wildcard ./src/*.c) $(OPTLVL) -o projectname