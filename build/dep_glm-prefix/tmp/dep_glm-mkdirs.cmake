# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src/dep_glm"
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src/dep_glm-build"
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix"
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/tmp"
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src/dep_glm-stamp"
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src"
  "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src/dep_glm-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src/dep_glm-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/wobo5/VSCode/OpenGL/first_opengl_example/build/dep_glm-prefix/src/dep_glm-stamp${cfgdir}") # cfgdir has leading slash
endif()
