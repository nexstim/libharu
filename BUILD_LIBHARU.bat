@ECHO OFF
cmake --preset=nexstim -S . -B ..\BUILD_LIBHARU_v2.4.3 > .\build.log 2>&1
cmake --build ..\BUILD_LIBHARU_v2.4.3 --config Debug --target install  >> .\build.log 2>&1
cmake --build ..\BUILD_LIBHARU_v2.4.3 --config Release --target install >> .\build.log 2>&1
cmake --build ..\BUILD_LIBHARU_v2.4.3 --config UsableDebug --target install >> .\build.log 2>&1
RMDIR /S /Q ..\BUILD_LIBHARU_v2.4.3\install\lib >> .\build.log 2>&1
ROBOCOPY /E ..\BUILD_LIBHARU_v2.4.3\src\Debug ..\BUILD_LIBHARU_v2.4.3\install\lib\Debug >> .\build.log 2>&1
ROBOCOPY /E ..\BUILD_LIBHARU_v2.4.3\src\Release ..\BUILD_LIBHARU_v2.4.3\install\lib\Release >> .\build.log 2>&1
ROBOCOPY /E ..\BUILD_LIBHARU_v2.4.3\src\UsableDebug ..\BUILD_LIBHARU_v2.4.3\install\lib\UsableDebug >> .\build.log 2>&1
ECHO Building of LIBHARU ready.