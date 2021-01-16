project(KubeWidgetsTests)

get_filename_component(KubeWidgetsTestsDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeWidgetsTestsSources
    ${KubeWidgetsTestsDir}/tests_Widgets.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeWidgetsTestsSources})

add_test(NAME ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_PROJECT_NAME})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeWidgets
    GTest::GTest GTest::Main
)