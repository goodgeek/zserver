cmake_minimum_required(VERSION 3.5)
<<<<<<< HEAD
project(zservercpp)
add_definitions(-Wall -std=c++14 -O2)
link_libraries(sqlite3)
add_executable(zservercpp main.cpp tcpserver.cpp database.cpp)
=======
project(zserver)
add_definitions(-std=c++14)
add_executable(zserver main.cpp)
>>>>>>> c215f7f4ffaee7b8eeaefe6afc900e19cb7b9b65
