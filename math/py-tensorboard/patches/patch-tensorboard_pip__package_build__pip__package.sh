$NetBSD$

Portability fix.

--- tensorboard/pip_package/build_pip_package.sh.orig	2019-03-06 02:23:11.000000000 +0000
+++ tensorboard/pip_package/build_pip_package.sh
@@ -64,7 +64,7 @@ dest=/tmp/tensorboard
 if [ ! -e $dest ]; then
   mkdir $dest
 else
-  if [ "$(uname)" == "Darwin" ]; then
+  if [ "$(uname)" = "Darwin" ]; then
     dest="$(mktemp -d -t tensorboard-pip)"
   else
     dest="$(mktemp -d -p /tmp -t tensorboard-pip.XXXXXXXXXX)"
