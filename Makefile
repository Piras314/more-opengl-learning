CFLAGS = -Wall -Wextra
INCLUDE_PATHS = -Ilib/glfw/include -Ilib/glad/include/ -I/Library/Frameworks/OpenGL.framework/Headers/ -I/Library/Frameworks/GLUT.framework/Headers/ -I/Library/Developer/CommandLineTools/SDKs/MacOSX12.0.sdk/System/Library/Frameworks/AGL.framework/Headers #-I/Library/Frameworks/SDL2.framework/Headers/
LIBRARY_PATHS = -Llib/glfw/build/src -L/opt/homebrew/include
F_PATHS = -F/Library/Frameworks
LINKER_FLAGS = -lglfw3 -lGLEW -framework Cocoa -framework OpenGL -framework GLUT -framework IOKit -framework CoreVideo -framework AGL #-framework SDL2

all:
	gcc $(CFLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(F_PATHS) $(LINKER_FLAGS) src/main.c lib/glad/src/glad.c -o OpenGLLearning
