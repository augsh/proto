project(proto)

file(GLOB_RECURSE SO_FILES "${CMAKE_CURRENT_SOURCE_DIR}/lib/*.so")

execute_process(COMMAND bash -c "${CMAKE_CURRENT_SOURCE_DIR}/setup.bash")

add_library(${PROJECT_NAME} INTERFACE IMPORTED GLOBAL)
target_link_libraries(${PROJECT_NAME} INTERFACE ${SO_FILES} dl)
target_include_directories(${PROJECT_NAME} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_files(${OUT_LIB} "lib/lib*")
