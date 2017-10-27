$NetBSD$

--- src/python/grpcio/commands.py.orig	2017-10-26 17:03:11.000000000 +0000
+++ src/python/grpcio/commands.py
@@ -251,7 +251,7 @@ class BuildExt(build_ext.build_ext):
     LINK_OPTIONS = {}
 
     def build_extensions(self):
-        if "darwin" in sys.platform:
+        if False and "darwin" in sys.platform:
             config = os.environ.get('CONFIG', 'opt')
             target_path = os.path.abspath(
                 os.path.join(
