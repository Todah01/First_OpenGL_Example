# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src/dep_glfw"
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src/dep_glfw-build"
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix"
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/tmp"
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src/dep_glfw-stamp"
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src"
  "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src/dep_glfw-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src/dep_glfw-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/wobo5/OneDrive/바탕 화면/VSCode/OpenGL/first_project_example/build/dep_glfw-prefix/src/dep_glfw-stamp${cfgdir}") # cfgdir has leading slash
endif()
