cmake_minimum_required(VERSION 3.10)

# プロジェクト名
project(SampleProject)

message(STATUS "*** dump start cmake variables ***")

get_cmake_property(_variableNames VARIABLES)
foreach(_variableName ${_variableNames})
  message(STATUS "${_variableName} = ${${_variableName}}")
endforeach()

#option(FOO_ENABLE "define foo" On)
#if(FOO_ENABLE)
#  set(FOO_STRING "foo")
#endif()

# define定義
#configure_file(configure.in.h configure.h)

# 実行形式
add_executable(a.out main.c)
