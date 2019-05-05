rem before compiling, please make sure you have dependencies on location "c:\" cloned from https://github.com/xmrig/xmrig-deps
rem make sure you have cmake and Visual Studio v15 2017 

cmake.exe .. -G "Visual Studio 15 2017 Win64" -DXMRIG_DEPS=c:\xmrig-deps-master\msvc2017\x64 -DWITH_AEON=OFF -DWITH_HTTPD=OFF
pause
