
cmake_minimum_required (VERSION 1.0)
project (MD_JE_interpretation)
#find_package( OpenCV REQUIRED COMPONENTS core)
#find_package (Eigen3 3.3 REQUIRED NO_MODULE)

# Ensure C++11 is invoked

include(CheckCXXCompilerFlag)

CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)

if(COMPILER_SUPPORTS_CXX11)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
elseif(COMPILER_SUPPORTS_CXX14)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
else()
  message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()

# Include directories for headers and CXX files

include_directories ("${CMAKE_CURRENT_SOURCE_DIR}/src")
include_directories ("${CMAKE_CURRENT_SOURCE_DIR}/include")
include_directories (${GSL_INCLUDE_DIRS} ${GSLCBLAS_INCLUDE_DIRS})

set(Boost_USE_STATIC_LIBS ON) 
set(Boost_USE_MULTITHREADED ON)  
set(Boost_USE_STATIC_RUNTIME OFF) 
find_package(Boost) 
find_package(MPI REQUIRED)
if (MPI_FOUND)
  include_directories(${MPI_INCLUDE_PATH})
endif()

if(Boost_FOUND)
  include_directories (${Boost_INCLUDE_DIRS})
endif()

find_package (Eigen3 3.3 REQUIRED NO_MODULE)

include_directories ("${EIGEN3_INCLUDE_DIR}")
# Specifically add the src library definition for linking

add_subdirectory (src)
set (EXTRA_LIBS ${EXTRA_LIBS} src)

# GSL libraries linking
set(CMAKE_GSL_LINKER_FLAGS "${CMAKE_GSL_LINKER_FLAGS} -lgsl")
set(CMAKE_GSL_LINKER_FLAGS_CBLAS "${CMAKE_GSL_LINKER_FLAGS_CBLAS} -lgslcblas")
set(MATH "${MATH} -lm")

#if(Boost_FOUND)
#    include_directories(${Boost_INCLUDE_DIRS}) 
#    add_executable(progname file1.cxx file2.cxx) 
#    target_link_libraries(progname ${Boost_LIBRARIES})
#]endif()

#set(BOOST_FILE "${BOOST_FILE} -libboost_filesystem -libboost_system")
#set(CV "${CV} -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_imgcodecs")
#set(OpenCV_DIR "/usr/local/include/opencv2")

#MESSAGE(STATUS "Include dirs ${OpenCV_INCLUDE_DIRS}")
#MESSAGE(STATUS "LINK LIBRARIES ${OpenCV_LIBS}")

# add the executable

include_directories (${Boost_INCLUDE_DIRS})
add_executable (JE main.cxx)
target_link_libraries (JE  ${EXTRA_LIBS} ${BOOST_LIBRARIES} ${Boost_LIBRARIES} ${MATH} ${EIGEN3_INCLUDE_DIR} ${MPI_LIBRARIES} Eigen3::Eigen)

if(MPI_COMPILE_FLAGS)
  set_target_properties(JE PROPERTIES
    COMPILE_FLAGS "${MPI_COMPILE_FLAGS}")
endif()

if(MPI_LINK_FLAGS)
  set_target_properties(JE PROPERTIES
    LINK_FLAGS "${MPI_LINK_FLAGS}")
endif()
