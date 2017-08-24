$NetBSD$

--- Make.inc.orig	2017-06-19 17:48:45.000000000 +0000
+++ Make.inc
@@ -189,7 +189,7 @@ includedir := $(prefix)/include
 sysconfdir := $(prefix)/etc
 
 # Directories where things get built into
-build_prefix := $(BUILDROOT)/usr
+build_prefix := $(BUILDROOT)${PREFIX}
 build_staging := $(build_prefix)-staging
 build_bindir := $(build_prefix)/bin
 build_depsbindir := $(build_prefix)/tools
@@ -857,7 +857,7 @@ else
 endif
 
 ifeq ($(USE_SYSTEM_UTF8PROC), 1)
-  LIBUTF8PROC := -lutf8proc
+  LIBUTF8PROC := $(LOCALBASE)/lib/libutf8proc.a
   UTF8PROC_INC := $(LOCALBASE)/include
 else
   LIBUTF8PROC := $(build_libdir)/libutf8proc.a
