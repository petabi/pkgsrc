$NetBSD$

--- cmake_modules/ThirdpartyToolchain.cmake.orig	2017-09-27 13:19:05.000000000 +0000
+++ cmake_modules/ThirdpartyToolchain.cmake
@@ -559,7 +559,7 @@ if (ARROW_WITH_ZLIB)
 
   include_directories(SYSTEM ${ZLIB_INCLUDE_DIR})
   ADD_THIRDPARTY_LIB(zlib
-    STATIC_LIB ${ZLIB_STATIC_LIB})
+    SHARED_LIB ${ZLIB_SHARED_LIB})
 
   if (ZLIB_VENDORED)
     add_dependencies(zlib zlib_ep)
@@ -628,7 +628,7 @@ if (ARROW_WITH_SNAPPY)
 
   include_directories(SYSTEM ${SNAPPY_INCLUDE_DIR})
   ADD_THIRDPARTY_LIB(snappy
-    STATIC_LIB ${SNAPPY_STATIC_LIB})
+    SHARED_LIB ${SNAPPY_SHARED_LIB})
 
   if (SNAPPY_VENDORED)
     add_dependencies(snappy snappy_ep)
@@ -681,11 +681,11 @@ if (ARROW_WITH_BROTLI)
 
   include_directories(SYSTEM ${BROTLI_INCLUDE_DIR})
   ADD_THIRDPARTY_LIB(brotli_enc
-    STATIC_LIB ${BROTLI_STATIC_LIBRARY_ENC})
+    SHARED_LIB ${BROTLI_SHARED_LIBRARY_ENC})
   ADD_THIRDPARTY_LIB(brotli_dec
-    STATIC_LIB ${BROTLI_STATIC_LIBRARY_DEC})
+    SHARED_LIB ${BROTLI_SHARED_LIBRARY_DEC})
   ADD_THIRDPARTY_LIB(brotli_common
-    STATIC_LIB ${BROTLI_STATIC_LIBRARY_COMMON})
+    SHARED_LIB ${BROTLI_SHARED_LIBRARY_COMMON})
 
   if (BROTLI_VENDORED)
     add_dependencies(brotli_enc brotli_ep)
