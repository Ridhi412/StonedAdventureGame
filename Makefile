CC = g++
CFLAGS = -Wall
PROG = a.out

SRCS = game.cpp imageloader.cpp 

ifeq ($(shell uname),Darwin)
	LIBS = -framework OpenGL -framework GLUT 
else
	LIBS = -lglut -lGL -lGLU
endif

all: $(PROG)

$(PROG):	$(SRCS)
	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)

clean:
	rm -f $(PROG)
