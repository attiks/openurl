@ECHO OFF
Setlocal EnableDelayedExpansion
SET url=%1

ECHO Opening %url%

SET /P br=Choose browser? [c/ci/ca/cai/f/i/ii]:
IF /i "%br%"=="c" GOTO chrome
IF /i "%br%"=="ci" GOTO chromei
IF /i "%br%"=="ca" GOTO canary
IF /i "%br%"=="cai" GOTO canaryi
IF /i "%br%"=="f" GOTO firefox
IF /i "%br%"=="i" GOTO iexplore
IF /i "%br%"=="ii" GOTO iexplorei

GOTO End

:chrome
START "chrome" "C:\Users\peter.ATTIKS\AppData\Local\Google\Chrome\Application\Chrome.exe" "!url!"
GOTO End
:chromei
START "chromei" "C:\Users\peter.ATTIKS\AppData\Local\Google\Chrome\Application\Chrome.exe" -incognito "!url!"
GOTO End

:canary
START "canary" "C:\Users\peter.ATTIKS\AppData\Local\Google\Chrome SxS\Application\chrome.exe" "!url!"
GOTO End
:canaryi
START "canaryi" "C:\Users\peter.ATTIKS\AppData\Local\Google\Chrome SxS\Application\chrome.exe" -incognito "!url!"
GOTO End

:firefox
START "firefox" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "!url!"
GOTO End

:iexplore
START "iexplore" "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "!url!"
GOTO End
:iexplorei
START "iexplorei" "C:\Program Files (x86)\Internet Explorer\iexplore.exe" -private "!url!"
GOTO End

:End

rem “HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\ Associations\UrlAssociations\[ftp|http|https]“
rem Change ProgId to OpenURL.attiks

