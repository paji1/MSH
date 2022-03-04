
# COLORS
GREY=$'\x1b[30m
RED=$'\x1b[31m
GREEN=$'\x1b[32m
YELLOW=$'\x1b[33m
BLUE=$'\x1b[34m
PURPLE=$'\x1b[35m
CYAN=$'\x1b[36m
WHITE=$'\x1b[37m

NAME = minishell

SRCS =	minishell.c \
		get_cmd.c \
		command_init.c \
		exec.c \
		cd.c \
		cwd.c

OBJS =	${SRC:.c=.o}

LIBNAME = LIBFT/libft.a

CFLAGS = -Wall -Werror -Wextra
CFLAGS += -lreadline

CC = gcc

all: libft $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(SRCS) $(LIBNAME) -o $(NAME)

libft:
	@make bonus -C LIBFT/
	@echo "LIBFT compiled successfully"

run: all
	./minishell

.PHONY: libft $(NAME)