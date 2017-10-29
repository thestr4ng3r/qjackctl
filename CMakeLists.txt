
cmake_minimum_required(VERSION 3.1)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(DisallowInSource)
include(Utils)

project(qjackctl)


set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
find_package(Qt5 REQUIRED COMPONENTS Core Widgets Gui Xml DBus)


find_package(PkgConfig)
pkg_check_modules(JACK jack)
add_definitions(${JACK_CFLAGS_OTHER})
include_directories(${JACK_INCLUDE_DIRS})


find_package(ALSA REQUIRED)
include_directories(${ALSA_INCLUDE_DIRS})


# Parse pro file to get filenames
include(QMakeProParse)
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/src/src.pro"
		"${CMAKE_CURRENT_BINARY_DIR}/qjackctl.pro"
		COPYONLY) # trigger reconfigure if cutter.pro changes
parse_qmake_pro("${CMAKE_CURRENT_BINARY_DIR}/qjackctl.pro" QJACKCTL_PRO)
prefix_entries(SOURCE_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/" ${QJACKCTL_PRO_SOURCES})
prefix_entries(HEADER_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/" ${QJACKCTL_PRO_HEADERS})
prefix_entries(UI_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/" ${QJACKCTL_PRO_FORMS})
prefix_entries(QRC_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/" ${QJACKCTL_PRO_RESOURCES})

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/src")

add_executable(qjackctl ${SOURCE_FILES} ${HEADER_FILES} ${UI_FILES} ${QRC_FILES})
qt5_use_modules(qjackctl Core Widgets Gui Xml DBus)
target_link_libraries(qjackctl ${JACK_LIBRARIES} ${ALSA_LIBRARIES})
