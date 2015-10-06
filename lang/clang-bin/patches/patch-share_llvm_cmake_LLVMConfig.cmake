$NetBSD$

--- share/llvm/cmake/LLVMConfig.cmake.orig	2015-08-29 21:07:35.000000000 +0000
+++ share/llvm/cmake/LLVMConfig.cmake
@@ -1,6 +1,13 @@
 # This file provides information and services to the final user.
 
-# Compute the CMake directory from the LLVMConfig.cmake file location.n get_filename_component(_LLVM_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)n # Compute the installation prefix from the LLVMConfig.cmake file location.n get_filename_component(LLVM_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)n get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)n get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)n get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)n set(_LLVM_LIBRARY_DIR "${LLVM_INSTALL_PREFIX}/lib")
+# Compute the CMake directory from the LLVMConfig.cmake file location.
+get_filename_component(_LLVM_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
+# Compute the installation prefix from the LLVMConfig.cmake file location.
+get_filename_component(LLVM_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
+get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)
+get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)
+get_filename_component(LLVM_INSTALL_PREFIX "${LLVM_INSTALL_PREFIX}" PATH)
+set(_LLVM_LIBRARY_DIR "${LLVM_INSTALL_PREFIX}/lib")
 
 set(LLVM_VERSION_MAJOR 3)
 set(LLVM_VERSION_MINOR 7)
