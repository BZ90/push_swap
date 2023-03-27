SRCS	=	srcs/push_swap.c \
			srcs/libft_funcs.c \
			srcs/cost_calculation.c \
			srcs/swap_funcs_a.c \
			srcs/swap_funcs_b.c \
			srcs/swap_funcs_ab.c \
			srcs/misc_functions.c \
			srcs/indexes_positions.c \
			srcs/misc_functions_2.c

BONUS_SRCS	=	bonus/bonus_checker.c \
				bonus/bonus_line_funcs.c \
				bonus/bonus_stack_funcs.c \
				bonus/bonus_swap_funcs_a.c \
				bonus/bonus_swap_funcs_b.c \
				bonus/bonus_swap_funcs_ab.c

OBJS	=	$(SRCS:.c=.o)

INCS	=	-Iincludes

CC		= gcc
RM		= rm -f
CFLAGS	= -Wall -Wextra -Werror

NAME	= push_swap

BONUS_NAME	= checker

all:	$(NAME)

$(NAME):
		$(CC) $(CFLAGS) $(INCS) -o $(NAME) $(SRCS)

clean:
		$(RM) $(NAME)
		$(RM) $(BONUS_NAME)

fclean:	clean

re:		fclean $(NAME)

bonus:
		$(CC) $(CFLAGS) $(INCS) -o $(BONUS_NAME) $(BONUS_SRCS)

.PHONY:	all clean fclean re bonus
