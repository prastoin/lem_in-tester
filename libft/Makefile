# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amerrouc <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 15:59:18 by amerrouc          #+#    #+#              #
#    Updated: 2019/02/19 21:48:38 by prastoin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

include srcs.mk

OBJ = $(SRC:.c=.o)

FLAG = -Wall -Wextra -Werror -Iincludes

all: $(NAME)

$(OBJ) : Makefile srcs.mk

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o: %.c
	gcc $(FLAG) $(INC) -o $@ -c $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re all
