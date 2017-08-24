$NetBSD$

--- contrib/fixup-libgfortran.sh.orig	2017-06-19 17:48:45.000000000 +0000
+++ contrib/fixup-libgfortran.sh
@@ -4,7 +4,7 @@
 # Run as: fixup-libgfortran.sh [--verbose] <$private_libdir>
 
 # If we're invoked with "--verbose", create a `debug` function that prints stuff out
-if [ "$1" == "--verbose" ] || [ "$1" == "-v" ]; then
+if [ "$1" = "--verbose" ] || [ "$1" = "-v" ]; then
 shift 1
 debug() { echo "$*"; }
 else
@@ -140,4 +140,3 @@ for lib in libopenblas libarpack libchol
         done
     done
 done
-
