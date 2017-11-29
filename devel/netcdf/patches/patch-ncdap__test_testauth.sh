$NetBSD: patch-ncdap__test_testauth.sh,v 1.1 2017/11/28 17:52:02 minskim Exp $

Portability fix.

--- ncdap_test/testauth.sh.orig	2017-10-20 17:15:21.000000000 +0000
+++ ncdap_test/testauth.sh
@@ -246,7 +246,7 @@ if test "x$RCHOME" = x1 ; then
   show
 fi
 
-if test "x$RCSPEC" == x1 ; then
+if test "x$RCSPEC" = x1 ; then
   echo "*** Testing rc file in specified directory"
   # Create the rc file and (optional) netrc file
   reset
