@echo off

FOR /D %%b in (*) DO (
    cd %cd%\%%b\versao

    FOR /D %%c in (*00.*) DO (
	rd /s /q %cd%\%%b\versao\%%c\dashboard
        rd /s /q %cd%\%%b\versao\%%c\ReportBuilder
    )
)

pause
