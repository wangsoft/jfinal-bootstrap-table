@echo 
%~d0
cd %~dp0
rd "%~dp0\src\main\webapp\WEB-INF\lib" /s/q
cmd /c mvn dependency:copy-dependencies -DoutputDirectory="%~dp0\src\main\webapp\WEB-INF\lib" -DincludeScope=runtime
pause;