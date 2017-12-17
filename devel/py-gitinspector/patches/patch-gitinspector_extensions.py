$NetBSD$

--- gitinspector/extensions.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/extensions.py
@@ -19,9 +19,9 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
-import terminal
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
+import gitinspector.terminal as terminal
 import textwrap
 
 DEFAULT_EXTENSIONS = ["java", "c", "cc", "cpp", "h", "hh", "hpp", "py", "glsl", "rb", "js", "sql"]
