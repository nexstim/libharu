REM @ECHO OFF
cmake --preset=nexstim -S . -B ..\BUILD_LIBHARU_v2.4.3 > .\build.log
cmake --build ..\BUILD_LIBHARU_v2.4.3 --config Debug --target install  >> .\build.log
cmake --build ..\BUILD_LIBHARU_v2.4.3 --config Release --target install >> .\build.log
cmake --build ..\BUILD_LIBHARU_v2.4.3 --config UsableDebug --target install >> .\build.log
RMDIR /S /Q ..\BUILD_LIBHARU_v2.4.3\install\lib >> .\build.log
ROBOCOPY /E ..\BUILD_LIBHARU_v2.4.3\src\Debug ..\BUILD_LIBHARU_v2.4.3\install\lib\Debug >> .\build.log
ROBOCOPY /E ..\BUILD_LIBHARU_v2.4.3\src\Release ..\BUILD_LIBHARU_v2.4.3\install\lib\Release >> .\build.log
ROBOCOPY /E ..\BUILD_LIBHARU_v2.4.3\src\UsableDebug ..\BUILD_LIBHARU_v2.4.3\install\lib\UsableDebug >> .\build.log
ECHO Building of LIBHARU ready.