
SET(PAXOS_LIB ${PROJECT_BINARY_DIR}/${LIB_NAME}/lib${LIB_NAME}.a)

include_directories(${PROJECT_SOURCE_DIR})

set(THIRDPARTY_LIBS "-lboost_thread -lpthread -lboost_serialization -lsqlite3")

set(SOURCES
    basic1.cpp
    basic2.cpp
    basic3.cpp
    basic4.cpp
    basic5.cpp
    connection_close1.cpp
    connection_close2.cpp
    durability1.cpp
    durability2.cpp
    durability3.cpp
    )

foreach(sourcefile ${SOURCES})
    get_filename_component(exename ${sourcefile} NAME_WE)
    add_executable(${exename} ${sourcefile})
    target_link_libraries(${exename} ${PAXOS_LIB} ${THIRDPARTY_LIBS})
endforeach(sourcefile ${SOURCES})

