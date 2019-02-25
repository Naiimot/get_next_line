# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdelabro <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/25 19:49:57 by tdelabro          #+#    #+#              #
#    Updated: 2019/02/25 20:02:41 by tdelabro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a
CC = gcc
CFLAGS = -c -Wall -Wextra -Werror
MODULES := gnl/ libft/
SRC_DIR := $(addprefix src/,$(MODULES))
OBJ_DIR := obj/
INC_DIR := inc/

SRC := 	get_next_line.c	ft_lstadd.c	ft_lstnew.c	ft_memalloc.c	ft_memdel.c \
		ft_strchr.c		ft_strdup.c	ft_strjoin.c	ft_strlen.c	ft_bzero.c \
		ft_memmove.c

INC := get_next_line.h libft.h

OBJECTS := $(addprefix $(OBJ_DIR), $(notdir $(SRC:.c=.o)))
INCLUDES := $(addprefix $(INC_DIR), $(INC))

vpath %.c $(SRC_DIR)

all : $(NAME)

clean :
	@rm -rf $(OBJ_DIR)
	@echo "object deleted ✔"

fclean : clean
	@rm -rf $(NAME)
	@echo "$(NAME) deleted ✔"

re : fclean all

obj/%.o : %.c 
	@$(CC) $(CFLAGS) $< -o $@

$(NAME) : $(OBJ_DIR) $(OBJECTS) 
	@ar rc $@ $(OBJECTS)
	@ranlib $@

$(OBJ_DIR) :
	@mkdir -p $(OBJ_DIR)

.PHONY : all clean fclean re
