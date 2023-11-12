@echo off

	::Version antigua para Chrome, no descarga la página.
		:: "C:\Program Files\Google\Chrome\Application\chrome.exe" --headless --disable-gpu --screenshot=C:\Users\felix\Downloads\%date%.png --window-size=1920,1080 ----virtual-time-budget=5000 https://www.cenace.gob.ec/info-operativa/InformacionOperativa_archivos/sheet004.htm

::Para el funcionamiento de este programa se debe instalar WGET
"C:\Program Files (x86)\GnuWin32\bin\wget.exe" wget -E -H -k -r -p "C:\Users\felix\Downloads\CENACE_PROYECTO" --no-check-certificate https://www.cenace.gob.ec/info-operativa/InformacionOperativa.htm

::Copia del archivo a la carpeta de almacenamiento
xcopy "C:\Users\felix\Downloads\CENACE_PROYECTO\www.cenace.gob.ec\info-operativa\InformacionOperativa.htm" "C:\Users\felix\Downloads\CENACE_PROYECTO\DATOS_ORGANIZADOS"
::Renombra al archivo
ren "C:\Users\felix\Downloads\CENACE_PROYECTO\DATOS_ORGANIZADOS\InformacionOperativa.htm" "%DATE%_%time::=-%.htm"


exit'