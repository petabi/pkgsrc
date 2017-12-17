$NetBSD$

--- gitinspector/format.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/format.py
@@ -19,12 +19,12 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-import localization
-import version
+import gitinspector.localization as localization
+import gitinspector.version as version
 import base64
-import basedir
+import gitinspector.basedir as basedir
 import os
-import terminal
+import gitinspector.terminal as terminal
 import textwrap
 import time
 import zipfile
