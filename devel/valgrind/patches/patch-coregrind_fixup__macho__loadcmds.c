$NetBSD$

--- coregrind/fixup_macho_loadcmds.c.orig	2017-05-31 15:14:31.000000000 +0000
+++ coregrind/fixup_macho_loadcmds.c
@@ -122,7 +122,8 @@
 #if DARWIN_VERS != DARWIN_10_5 && DARWIN_VERS != DARWIN_10_6 \
     && DARWIN_VERS != DARWIN_10_7 && DARWIN_VERS != DARWIN_10_8 \
     && DARWIN_VERS != DARWIN_10_9 && DARWIN_VERS != DARWIN_10_10 \
-    && DARWIN_VERS != DARWIN_10_11 && DARWIN_VERS != DARWIN_10_12
+    && DARWIN_VERS != DARWIN_10_11 && DARWIN_VERS != DARWIN_10_12 \
+    && DARWIN_VERS != DARWIN_10_13
 #  error "Unknown DARWIN_VERS value.  This file only compiles on Darwin."
 #endif
 
