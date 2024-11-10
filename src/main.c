// Programmed by piras314
// Using http://www.opengl-tutorial.org

// Includes

// Standard headers
#include <stdio.h>
#include <stdlib.h>

#ifdef __APPLE__
// Defined before OpenGL and GLAD includes to avoid deprecation messages
#endif

#include <GLU/glew.h>
#include <GLFW/glfw3.h>

#include <AGL/glm.h>


#include "fileToString.c"

// Define constants

// Window info
#define WINDOW_WIDTH 1024
#define WINDOW_HEIGHT 768
#define WINDOW_TITLE "More GL Learning"

// Fake booleans
#define true 1
#define false 0

// File error codes
#define FILE_OK 0
#define FILE_NOT_EXIST 1
#define FILE_TOO_LARGE 2
#define FILE_READ_ERROR 3

// Define variables

// // Load the vertex and fragment shaders
// 	int err;
// 	size_t f_size;

// 	const char* vertexShaderSource = fileToString("src/shaders/triangle.vert", &err, &f_size);

// 	if (err != FILE_OK) {
// 		if (err == FILE_TOO_LARGE) {
// 			printf("Tried to load a file of size %i, but did not because the file was over 1073741824 bytes (1 GB)\n", err);
// 		}

// 		else if (err == FILE_READ_ERROR) {
// 			printf("An error occured while reading the file\n");
// 		}

// 		else if (err == FILE_NOT_EXIST) {
// 			printf("No file was found at the requested file path\n");
// 		}
// 	}

// 	const char* fragmentShaderSource = fileToString("src/shaders/triangle.frag", &err, &f_size);

// 	if (err != FILE_OK) {
// 		if (err == FILE_TOO_LARGE) {
// 			printf("Tried to load a file of size %i, but did not because the file was over 1073741824 bytes (1 GB)\n", err);
// 		}

// 		else if (err == FILE_READ_ERROR) {
// 			printf("An error occured while reading the file\n");
// 		}

// 		else if (err == FILE_NOT_EXIST) {
// 			printf("No file was found at the requested file path\n");
// 		}
// 	}

// Define functions

int main() {
	// Initialize GLFW

	// Needed for core profile
	glewExperimental = true;

	if (!glfwInit()) {
		printf("Failed to initialize GLFW, full error: %s", stderr);

		// return -1 to end the program and give the user an error
		return -1;
	}

	// 4x antialiasing
	glfwWindowHint(GLFW_SAMPLES, 4);

	// Use OpenGL 3.3
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);

	// Make macOS happy
	#ifdef __APPLE__
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	#endif

	// Load only the modern OpenGL profile
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	GLFWwindow* window;

	window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_TITLE, NULL, NULL);

	if (window == NULL) {
		printf("Failed to create GLFW window, make sure your GPU is OpenGL 3.3 compatible and update your graphics drivers. The full error output is as follows: %s", stderr);

		glfwTerminate();
		return -1;
	}

	// Initialize GLEW
	glfwMakeCurrentContext(window);

	// Required to use the core profile (modern)
	glewExperimental = true;

	if (glewInit() != GLEW_OK) {
		printf("Failed to initialize GLEW, the full error output is as follows: %s", stderr);

		return -1;
	}
}