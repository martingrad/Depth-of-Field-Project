#!/bin/sh
bindir=$(pwd)
cd /Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/code/tutorial15_lightmaps/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/build/RelWithDebInfo/tutorial15_lightmaps 
	else
		"/Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/build/RelWithDebInfo/tutorial15_lightmaps"  
	fi
else
	"/Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/build/RelWithDebInfo/tutorial15_lightmaps"  
fi