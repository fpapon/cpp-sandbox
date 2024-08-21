SRC		=	*.cpp

OBJ		=	$(SRC:.cpp=.o)

NAME 	=	cpp-sandbox.bin

RM 		=	@rm -rf

all:		$(NAME)

$(NAME):	$(OBJ)
	g++ $(SRC) -o $(NAME) -g

clean:
	$(RM) *.o *# *.~

fclean: clean
	$(RM) $(NAME)

re: fclean all