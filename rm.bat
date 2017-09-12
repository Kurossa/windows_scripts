@echo off

:loop
if not "%1" == "" (
    if "%1" == "-r" (
		if "%2" == "" (
			echo Missing argument file/dir !
			GOTO :help
		)
      
	  rd /Q /S %2
	  
	  GOTO :exit
    )
	if "%1" == "-h" (
		GOTO :help
	)
	del %1
	goto :exit
)

:help
echo Usage:
echo   rm [option] file/dir
echo   Options:
echo     -r Recursive
echo     -h Help

:exit