@echo off

FOR /D %%a in (*) DO (
     echo Excluindo diretorio %cd%\%%a\Dados\BinarioPlano
     rd /s /q %cd%\%%a\Dados\BinarioPlano

     echo Excluindo diretorio %cd%\%%a\Dados\BinarioEfetivacao
     rd /s /q %cd%\%%a\Dados\BinarioEfetivacao

     echo Excluindo diretorio %cd%\%%a\Dados\BinarioOcorrenciaReceita
     rd /s /q %cd%\%%a\Dados\BinarioOcorrenciaReceita
)

FOR /D %%b in (*) DO (
    cd %cd%\%%b\versao

    FOR /D %%c in (*00.*) DO (
	echo Excluindo diretorio %cd%\%%b\versao\%%c\dashboard
	rd /s /q %cd%\%%b\versao\%%c\dashboard

	echo Excluindo diretorio %cd%\%%b\versao\%%c\ReportBuilder
        rd /s /q %cd%\%%b\versao\%%c\ReportBuilder
    )
)

pause
