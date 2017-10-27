$NetBSD$

--- setup.py.orig	2017-10-26 17:03:10.000000000 +0000
+++ setup.py
@@ -146,7 +146,7 @@ EXTENSION_INCLUDE_DIRECTORIES = (
     (PYTHON_STEM,) + CORE_INCLUDE + BORINGSSL_INCLUDE + ZLIB_INCLUDE +
     CARES_INCLUDE)
 
-EXTENSION_LIBRARIES = ()
+EXTENSION_LIBRARIES = ('cares', 'crypto', 'gpr', 'grpc', 'ssl')
 if "linux" in sys.platform:
   EXTENSION_LIBRARIES += ('rt',)
 if not "win32" in sys.platform:
@@ -197,7 +197,7 @@ def cython_extensions_and_necessity():
                   for name in CYTHON_EXTENSION_MODULE_NAMES]
   config = os.environ.get('CONFIG', 'opt')
   prefix = 'libs/' + config + '/'
-  if "darwin" in sys.platform:
+  if False and "darwin" in sys.platform:
     extra_objects = [prefix + 'libares.a',
                      prefix + 'libboringssl.a',
                      prefix + 'libgpr.a',
@@ -209,7 +209,7 @@ def cython_extensions_and_necessity():
   extensions = [
       _extension.Extension(
           name=module_name,
-          sources=[module_file] + list(CYTHON_HELPER_C_FILES) + core_c_files,
+          sources=[module_file] + list(CYTHON_HELPER_C_FILES),
           include_dirs=list(EXTENSION_INCLUDE_DIRECTORIES),
           libraries=list(EXTENSION_LIBRARIES),
           define_macros=list(DEFINE_MACROS),
