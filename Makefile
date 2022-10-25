SRCS = lengthoflastword.cpp

OBJS = $(SRCS:.cpp=.o)

CC = c++

FLAGS = -g -fsanitize=address

NAME = launchtest

all:	$(NAME)

$(NAME):	$(OBJS)
			$(CC) $(FLAGS) $(OBJS) -o $(NAME)

$(OBJS):	$(SRCS)
			$(CC) $(FLAGS) $(SRCS) -c

clean:
			rm -rf $(OBJS)

fclean:		clean
			rm -rf $(NAME)

re:			fclean all

l:			all
			./launchtest