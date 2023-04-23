project(proto)

find_package(Protobuf REQUIRED)

add_library(${PROJECT_NAME} INTERFACE)
target_link_libraries(${PROJECT_NAME} INTERFACE ${Protobuf_LIBRARIES} dl)
target_include_directories(${PROJECT_NAME} INTERFACE ${Protobuf_INCLUDE_DIRS})
