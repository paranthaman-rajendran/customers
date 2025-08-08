@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle startup script for Windows
@rem
@rem ##########################################################################

setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

set DEFAULT_JVM_OPTS=

set GRADLE_EXIT_CONSOLE=

if "%OS%" == "Windows_NT" setlocal

set CMD_LINE_ARGS=
:setupArgs
if "%1"=="" goto execute
set CMD_LINE_ARGS=%CMD_LINE_ARGS% "%1"
shift
goto setupArgs

:execute
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Execute Gradle
java %DEFAULT_JVM_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

endlocal
