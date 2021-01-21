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

if(KF_COVERAGE)
    target_compile_options(${PROJECT_NAME} PUBLIC --coverage)
    target_link_options(${PROJECT_NAME} PUBLIC --coverage)
endif()