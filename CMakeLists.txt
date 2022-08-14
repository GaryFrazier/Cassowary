
cmake_minimum_required(VERSION 3.7)


project(OPENGL VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory(vendor)

include_directories(src)

find_package(OpenGL REQUIRED)

file(GLOB_RECURSE SRC_FILES
     "src/*.cpp"
)
add_executable(game ${SRC_FILES})

target_link_libraries(game glfw OpenGL::GL glad)

