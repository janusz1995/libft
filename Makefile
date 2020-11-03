# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: drina <drina@marvin.42.fr>                 +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/30 20:44:36 by drina             #+#    #+#              #
#    Updated: 2020/11/03 21:38:24 by drina            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
.PHONY:  all clean fclean re

NAME = libft.a
SRC = 	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c  ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memccpy.c \
		ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
		ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c  \
		ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c \
		ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
		ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

SRCO = $(SRC:.c=.o)

BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c \
		ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstnew.c ft_lstsize.c

BONUSO = $(BONUS:.c=.o)

FLAGS = -Wall -Wextra -Werror -c

%.o: %.c 
	gcc $(FLAGS) $< -o $@

all: $(NAME)

$(NAME): $(SRCO)
	ar rcs $(NAME) $(SRCO)

bonus: $(BONUSO)
	ar rcs $(NAME) $(BONUSO)

clean:
	rm -f $(SRCO) $(BONUSO)

fclean: clean
	rm -f $(NAME)

re: fclean all
