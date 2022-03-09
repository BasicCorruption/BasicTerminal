@echo off

haxe build.hxml
cd bin/cpp
start bsterm
cd ../../..
