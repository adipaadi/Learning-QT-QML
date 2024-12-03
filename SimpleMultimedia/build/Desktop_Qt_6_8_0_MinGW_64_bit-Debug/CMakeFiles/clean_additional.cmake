# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appplaygroundRiyal_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appplaygroundRiyal_autogen.dir\\ParseCache.txt"
  "appplaygroundRiyal_autogen"
  )
endif()
