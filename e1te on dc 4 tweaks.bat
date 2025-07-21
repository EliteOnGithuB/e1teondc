@echo off
title e1te on dc 4 tweaks
set "URL=https://www.dropbox.com/scl/fi/p4j3rfi4b9w765qguijva/e1te-on-dc-4-tweaks.zip?rlkey=pixr5yxixb3l9wuo3p5rbp4wn&st=93ujussg&dl=1"
set "ZIP=%~dp0e1te-on-dc-4-tweaks.zip"
set "DEST=%~dp0e1te-on-dc-4-tweaks"

curl -L "%URL%" -o "%ZIP%"
powershell -Command "Expand-Archive '%ZIP%' '%DEST%' -Force"
del "%ZIP%"
