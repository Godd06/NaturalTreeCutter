@echo off
setlocal

set GRADLE_VERSION=8.3.1

set GRADLE_HOME=%~dp0\.gradle\gradle-%GRADLE_VERSION%
set PATH=%GRADLE_HOME%\bin;%PATH%

if not exist "%GRADLE_HOME%\bin\gradle.bat" (
    echo Downloading Gradle %GRADLE_VERSION%...
    powershell -Command "Invoke-WebRequest -Uri https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip -OutFile gradle.zip"
    mkdir "%GRADLE_HOME%"
    powershell -Command "Expand-Archive gradle.zip -DestinationPath %GRADLE_HOME% -Force"
    del gradle.zip
)

gradle shadowJar

endlocal
pause
