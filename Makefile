NAME	= a.out

CC		= gcc
CFLAGS	= -g -Wall -Wextra -Werror
RM		= rm -f

SRC		= $(wildcard *.c)
OBJ		= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

run:
	./$(NAME)

.PHONY: all clean fclean re