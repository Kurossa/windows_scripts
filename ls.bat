@echo off

:loop
if not "%1" == "" (
    if "%1" == "-l" (
      dir
	  GOTO :exit
    )
    SHIFT
    GOTO :loop
)

dir /b

:exit