#!/bin/sh
bindir=$(pwd)
cd /Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/code/tutorial03_matrices/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/build/Debug/tutorial03_matrices 
	else
		"/Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/build/Debug/tutorial03_matrices"  
	fi
else
	"/Users/martingrad/Documents/LiTH/TNCG14/Depth-of-Field-Project/build/Debug/tutorial03_matrices"  
fi