@echo off
color 0F
Title Haxeflixel Setup
cls
echo ==================
echo setting up haxe 
echo ==================
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc.git
haxelib git hxCodec 2.5.1
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit.git
haxelib set flixel-addons 3.0.2
haxelib set flixel-tools 1.5.1
haxelib set flixel-ui 2.5.0
haxelib set flixel 5.2.2
haxelib set SScript 3.0.2
haxelib set tjson 1.4.0
haxelib set lime 8.0.1
haxelib set openfl 9.2.1
haxelib install HxWebView
haxelib install http-socket 1.2.0 
haxelib install hxcpp
echo ==================
echo Haxeflixel Setup was successful
echo ==================
pause
exit
