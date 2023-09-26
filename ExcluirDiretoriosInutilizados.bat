@echo off

FOR /D %%c in (*) DO (
    FOR /D %%d in (500.*) DO (
	cd %cd%\%%c\Versao\%%d\dashboard
    )
)

pause
