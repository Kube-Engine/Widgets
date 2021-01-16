project(KubeWidgetsBenchmarks)

get_filename_component(KubeWidgetsBenchmarksDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeWidgetsBenchmarksSources
    ${KubeWidgetsBenchmarksDir}/Main.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeWidgetsBenchmarksSources})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeWidgets
    benchmark::benchmark
)