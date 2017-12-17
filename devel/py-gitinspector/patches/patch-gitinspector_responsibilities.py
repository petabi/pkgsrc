$NetBSD$

--- gitinspector/responsibilities.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/responsibilities.py
@@ -19,13 +19,13 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
-import blame
-import changes
-import format
-import gravatar
-import terminal
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
+import gitinspector.blame as blame
+import gitinspector.changes as changes
+import gitinspector.format as format
+import gitinspector.gravatar as gravatar
+import gitinspector.terminal as terminal
 import textwrap
 
 class ResponsibiltyEntry:
