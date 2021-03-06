:: Jared Harley
:: 2015-04-01
:: This script builds the gojekyll application in the WIndows
:: environment.
@echo off
SETLOCAL EnableDelayedExpansion
:: Create an empty gofiles variable
SET gofiles=
:: Loop through all of the files in the current directory and add
:: all of the *.go files to the gofiles variable 
for /r . %%a in (*.go) do (
	SET gofiles=!gofiles! %%~nxa
)
:: Call `go build` to build the exe, using the list of *.go files 
:: created before.
echo Building with the following go files:
echo %gofiles%
echo.
echo Building with go build
call go build -o goblog.exe %gofiles%
echo Build script complete
