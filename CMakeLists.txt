cmake_minimum_required(VERSION 2.8)
project(nfdump)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O3 -DNDEBUG")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++ -static-libgcc")

#include_directories(/usr/include/postgresql libs/jsoncpp-master/include)
include_directories(/usr/pgsql-9.4/include) # libs/jsoncpp-master/include libs/boost)
link_directories(/usr/pgsql-9.4/lib)

string(TIMESTAMP RUN_DATE "%Y-%m-%d")
add_definitions(-D_DATECOMPILED_="${RUN_DATE}")

set(NFDUMP 
		./src/nfdump.c
		./src/nfstat.c
		./src/nfexport.c
		./src/util.c
		./src/flist.c
		./src/nffile.c
		./src/nfxstat.c
		./src/nflowcache.c
		./src/exporter.c
		./src/nfx.c
		./src/ipconv.c
		./src/nf_common.c
		./src/scanner.c
		./src/nftree.c
		./src/nfprof.c
		./src/grammar.c
		./src/minilzo.c

)
#add_definitions(-DHAVE_SYS_IOCTL_H -DHAVE_SOCKLEN_T)
add_executable(nfdump ${NFDUMP})
target_link_libraries(nfdump pq)
