# build application: demo
add_executable(demo demo.c)

target_link_libraries(demo LINK_PUBLIC hello)
