##
## EPITECH PROJECT, 2018
## @@@
## File description:
## Make file
##

SRC     =	main.c	\
		error.c	\

NAME    =	project

OBJ	=	$(addprefix src/,$(SRC:.c=.o))

CFLAGS	=	-Wall -Wextra -W -g -Iinclude/

$(NAME):	$(OBJ)
	make -C lib/
	gcc -o $(NAME) $(OBJ) -L./lib/ -lmy

all:	$(NAME)

clean:
	make clean -C lib/
	rm -f $(OBJ)

fclean: clean
	make fclean -C lib/
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
