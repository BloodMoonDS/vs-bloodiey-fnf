@echo off
color 0F
Title Haxeflixel Setup
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib --global update haxelib
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install lime 7.9.0
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install openfl
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install hmm
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install flixel
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install flixel-tools
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install flixel-ui
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install hscript
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install flixel-addons
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib install actuate
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib run lime setup
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib run lime setup flixel
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib run flixel-tools setup
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git faxe https://github.com/uhrobots/faxe
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git polymod https://github.com/MasterEric/polymod.git
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git extension-webm https://github.com/KadeDev/extension-webm
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib run hmm install
cls
echo ==================
echo setting up haxe 
echo ==================
lime rebuild extension-webm windows
cls
echo ==================
echo Haxeflixel Setup was successful
echo.
echo.
echo.
echo  _   _ _          _ _ _ 
echo | \ | (_)        | | | |
echo |  \| |_  ___ ___| | | |
echo | . ` | |/ __/ _ \ | | |
echo | |\  | | |_|  __/_|_|_|
echo |_| \_|_|\___\___(_|_|_)
echo ==================