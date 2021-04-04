.PHONY: projectname

SANATIZER := -fsanatize=undefined -fsanatize=address -fsanatize=leak

FLAGS := -Wall -Wextra -Werror -pedantic -std=c11 $(SANATIZER)

OPTLVL := -O3

projectname:
	$(CC) $(FLAGS) $(wildcard ./src/*.c) $(OPTLVL) -o projectname