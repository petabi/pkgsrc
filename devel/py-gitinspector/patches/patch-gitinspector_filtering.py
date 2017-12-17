$NetBSD$

--- gitinspector/filtering.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/filtering.py
@@ -19,11 +19,11 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
 import re
 import subprocess
-import terminal
+import gitinspector.terminal as terminal
 import textwrap
 
 __filters__ = {"file": [set(), set()], "author": [set(), set()], "email": [set(), set()], "revision": [set(), set()],
