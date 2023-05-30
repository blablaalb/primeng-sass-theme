@echo off
set id=""
set /p "dest=Enter path where to copy (leave empty to skip): "
sass --update themes/mytheme/theme.scss:themes/mytheme/theme.css && IF NOT "%id%" == [] (copy /Y .\themes\mytheme\theme.css %dest% && xcopy /E /F /Y .\themes\mytheme\fonts\ %dest%\fonts\)
