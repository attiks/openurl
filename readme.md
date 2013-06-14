# OpenURL

Small batch file so you can choose the browser you want when opening a URL

# Installation

## Registry

- Check the openurl.reg file and make sure the patch is right
- Import the openurl.reg as an administrator

## Change ProgId

- As a regular user start regedit and go to HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\ Associations\UrlAssociations\[ftp|http|https]  
- Change the ProgId for the protocol to OpenURL.attiks

## Browsers

Check the openurl.cmd to make sure the paths are correct, edit, add or remove

Current browsers
- c: chrome
- ci: chrome incognito
- ca: canary
- cai: canary incognito
- f: firefox
- i: iexplore (32 bit)
- ii: iexplore private (32 bit)

