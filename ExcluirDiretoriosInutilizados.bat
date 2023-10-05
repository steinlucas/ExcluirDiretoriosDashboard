@echo off

FOR /D %%a in (Q:\*,
	       R:\SGT\*,
               R:\Process\*,
               R:\ORACLE19\SGT\*,
               R:\ORACLE19\Process\*,
               P:\Cliente\Ora\*) DO (

     echo Excluindo diretorio %%a\Dados\BinarioPlano
     rd /s /q %%a\Dados\BinarioPlano

     echo Excluindo diretorio %%a\Dados\BinarioEfetivacao
     rd /s /q %%a\Dados\BinarioEfetivacao

     echo Excluindo diretorio %%a\Dados\BinarioOcorrenciaReceita
     rd /s /q %%a\Dados\BinarioOcorrenciaReceita

     FOR /D %%c in (%%a\Versao\*) DO (
	  echo Excluindo diretorio %%c\dashboard
          rd /s /q %%c\dashboard

	  echo Excluindo diretorio %%c\ReportBuilder
          rd /s /q %%c\ReportBuilder
     )


     FOR /D %%d in (%%a\Qualidade\*) DO (
	  echo Excluindo diretorio %%d\dashboard
          rd /s /q %%d\dashboard

	  echo Excluindo diretorio %%d\ReportBuilder
          rd /s /q %%d\ReportBuilder
     )
)

pause
