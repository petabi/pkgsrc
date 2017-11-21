$NetBSD$

--- cmake_modules/FindZLIB.cmake.orig	2017-11-21 06:17:29.000000000 +0000
+++ cmake_modules/FindZLIB.cmake
@@ -44,7 +44,7 @@ if ( _zlib_roots )
     find_path( ZLIB_INCLUDE_DIR NAMES zlib.h
         PATHS ${_zlib_roots} NO_DEFAULT_PATH
         PATH_SUFFIXES "include" )
-    find_library( ZLIB_LIBRARIES NAMES libz.a zlib
+    find_library( ZLIB_LIBRARIES NAMES libz.a z
         PATHS ${_zlib_roots} NO_DEFAULT_PATH
         PATH_SUFFIXES "lib" )
 else ()
