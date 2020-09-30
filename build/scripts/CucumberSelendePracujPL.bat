@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  CucumberSelendePracujPL startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CUCUMBER_SELENDE_PRACUJ_PL_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\CucumberSelendePracujPL-1.0-SNAPSHOT.jar;%APP_HOME%\lib\selenide-5.12.2.jar;%APP_HOME%\lib\selenium-java-3.141.59.jar;%APP_HOME%\lib\google-api-services-tasks-v1-rev49-1.23.0.jar;%APP_HOME%\lib\google-api-client-1.23.0.jar;%APP_HOME%\lib\google-oauth-client-jetty-1.23.0.jar;%APP_HOME%\lib\selenium-chrome-driver-3.141.59.jar;%APP_HOME%\lib\selenium-edge-driver-3.141.59.jar;%APP_HOME%\lib\selenium-firefox-driver-3.141.59.jar;%APP_HOME%\lib\selenium-ie-driver-3.141.59.jar;%APP_HOME%\lib\selenium-opera-driver-3.141.59.jar;%APP_HOME%\lib\selenium-safari-driver-3.141.59.jar;%APP_HOME%\lib\selenium-support-3.141.59.jar;%APP_HOME%\lib\selenium-remote-driver-3.141.59.jar;%APP_HOME%\lib\selenium-api-3.141.59.jar;%APP_HOME%\lib\byte-buddy-1.8.15.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\guava-25.0-jre.jar;%APP_HOME%\lib\okhttp-3.11.0.jar;%APP_HOME%\lib\okio-1.14.0.jar;%APP_HOME%\lib\webdrivermanager-4.0.0.jar;%APP_HOME%\lib\httpclient5-5.0.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\google-oauth-client-java6-1.23.0.jar;%APP_HOME%\lib\google-oauth-client-1.23.0.jar;%APP_HOME%\lib\google-http-client-jackson2-1.23.0.jar;%APP_HOME%\lib\guava-jdk5-17.0.jar;%APP_HOME%\lib\jetty-6.1.26.jar;%APP_HOME%\lib\google-http-client-1.23.0.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\checker-compat-qual-2.0.0.jar;%APP_HOME%\lib\error_prone_annotations-2.1.3.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\commons-lang3-3.10.jar;%APP_HOME%\lib\jarchivelib-1.0.0.jar;%APP_HOME%\lib\jsoup-1.13.1.jar;%APP_HOME%\lib\httpcore5-5.0.jar;%APP_HOME%\lib\httpclient-4.0.1.jar;%APP_HOME%\lib\commons-codec-1.13.jar;%APP_HOME%\lib\jackson-core-2.1.3.jar;%APP_HOME%\lib\jetty-util-6.1.26.jar;%APP_HOME%\lib\servlet-api-2.5-20081211.jar;%APP_HOME%\lib\commons-compress-1.18.jar;%APP_HOME%\lib\httpcore-4.0.1.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar


@rem Execute CucumberSelendePracujPL
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CUCUMBER_SELENDE_PRACUJ_PL_OPTS%  -classpath "%CLASSPATH%"  %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CUCUMBER_SELENDE_PRACUJ_PL_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CUCUMBER_SELENDE_PRACUJ_PL_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
