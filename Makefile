NAME = pipex
CC = cc
CFLAGS = -Wall -Wextra -Werror -g
SRCS = pipex.c 02_utils.c 01_utils.c path_utils.c
	
OBJS = $(SRCS:.c=.o)

%.o : %.c
	   $(CC) $(CFLAGS) $< -c
$(NAME) : $(SRCS)
		$(CC) $(CFLAGS) $(SRCS) -o ${NAME}

all : $(NAME)

clean :
	rm -f ${OBJS}
fclean : clean
	rm -f pipex

re : fclean all

