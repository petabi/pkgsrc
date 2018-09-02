$NetBSD$

Change the install prefix.

--- Make.inc.orig	2018-07-31 20:35:41.000000000 +0000
+++ Make.inc
@@ -191,7 +191,7 @@ includedir := $(prefix)/include
 sysconfdir := $(prefix)/etc
 
 # Directories where things get built into
-build_prefix := $(BUILDROOT)/usr
+build_prefix := $(BUILDROOT)${PREFIX}
 build_staging := $(build_prefix)-staging
 build_bindir := $(build_prefix)/bin
 build_depsbindir := $(build_prefix)/tools
