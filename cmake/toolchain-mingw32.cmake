# Simple toolchain file for cross-building Windows PuTTY on Linux
# using MinGW (tested on Ubuntu).

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR i686)

set(CMAKE_C_COMPILER  i686-w64-mingw32-gcc)
set(CMAKE_RC_COMPILER i686-w64-mingw32-windres)
set(CMAKE_AR          i686-w64-mingw32-ar)
set(CMAKE_RANLIB      i686-w64-mingw32-ranlib)

#add_compile_definitions(__USE_MINGW_ANSI_STDIO)
add_compile_definitions(__MSVCRT_VERSION=0x700)
add_compile_definitions(WINVER=0x0600)
add_compile_definitions(_WIN32_WINNT=0x0600)
add_compile_definitions(_WIN32_IE=0x0600)
set(CMAKE_REQUIRED_LINK_OPTIONS -nodefaultlibs)
link_libraries(moldname mingwex mingw32 msvcrt-os kernel32 gcc)
