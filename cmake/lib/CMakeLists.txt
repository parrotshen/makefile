# build library: libhello.a
add_library(hello hello.c)

target_include_directories(hello PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
