@echo off

cd src
haxe build.hxml
cd bin/cpp
start bsterm
cd ../../..
