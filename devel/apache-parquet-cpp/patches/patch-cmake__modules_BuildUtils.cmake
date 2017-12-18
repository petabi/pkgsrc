$NetBSD$

Fix install_name on macOS.

--- cmake_modules/BuildUtils.cmake.orig	2017-10-22 10:55:45.000000000 +0000
+++ cmake_modules/BuildUtils.cmake
@@ -72,11 +72,6 @@ function(ADD_LIB LIB_NAME)
         endif()
         set_target_properties(${LIB_NAME}_shared PROPERTIES
             INSTALL_RPATH ${_lib_install_rpath})
-    elseif (APPLE)
-      set_target_properties(${LIB_NAME}_shared
-        PROPERTIES
-        BUILD_WITH_INSTALL_RPATH ON
-        INSTALL_NAME_DIR "@rpath")
     endif()
 
     install(TARGETS ${LIB_NAME}_shared
