@echo off

	::Version antigua para Chrome, no descarga la página.
		:: "C:\Program Files\Google\Chrome\Application\chrome.exe" --headless --disable-gpu --screenshot=C:\Users\felix\Downloads\%date%.png --window-size=1920,1080 ----virtual-time-budget=5000 https://www.cenace.gob.ec/info-operativa/InformacionOperativa_archivos/sheet004.htm

echo Espere, obteniendo datos de CENACE...

::Para el funcionamiento de este programa se debe instalar WGET, -q para completo silencio
"C:\Program Files (x86)\GnuWin32\bin\wget.exe" wget -r -q -P "C:\Users\%USERNAME%\Downloads\CENACE_PROYECTO" --no-check-certificate https://www.cenace.gob.ec/info-operativa/InformacionOperativa.htm

::"C:\Program Files (x86)\GnuWin32\bin\wget.exe" wget -r -P "C:\Users\%USERNAME%\Downloads\CENACE_PROYECTO" --no-check-certificate https://www.cenace.gob.ec/info-operativa/InformacionOperativa.htm

::Nombre del archivo
set filename=%DATE%_%time:~0,2%-%time:~3,2%>nul

::Copia del archivo a la carpeta de almacenamiento
mkdir "C:\Users\%USERNAME%\Downloads\CENACE_PROYECTO\DATOS_ORGANIZADOS\%filename%">nul 
xcopy /s "C:\Users\%USERNAME%\Downloads\CENACE_PROYECTO\www.cenace.gob.ec\info-operativa" "C:\Users\felix\Downloads\CENACE_PROYECTO\DATOS_ORGANIZADOS\%filename%">nul

	::Renombra al archivo
	::ren "C:\Users\%USERNAME%\Downloads\CENACE_PROYECTO\DATOS_ORGANIZADOS\InformacionOperativa.htm" "%DATE%_%time::=-%.htm"
	::ren "C:\Users\%USERNAME%\Downloads\CENACE_PROYECTO\DATOS_ORGANIZADOS\InformacionOperativa_archivos" "%DATE%_%time::=-%"

echo FIN


exit'
