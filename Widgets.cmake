project(KubeWidgets)

get_filename_component(KubeWidgetsDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeWidgetsSources
    ${KubeWidgetsDir}/Dummy.cpp
)

add_library(${PROJECT_NAME} ${KubeWidgetsSources})

target_link_libraries(${PROJECT_NAME}
PUBLIC
    KubeObject
    KubeUI
)

if(${KF_TESTS})
    include(${KubeWidgetsDir}/Tests/WidgetsTests.cmake)
endif()

if(${KF_BENCHMARKS})
    include(${KubeWidgetsDir}/Benchmarks/WidgetsBenchmarks.cmake)
endif()