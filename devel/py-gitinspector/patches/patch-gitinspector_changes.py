$NetBSD$

--- gitinspector/changes.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/changes.py
@@ -19,19 +19,19 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
 import datetime
-import extensions
-import filtering
-import format
-import gravatar
-import interval
+import gitinspector.extensions as extensions
+import gitinspector.filtering as filtering
+import gitinspector.format as format
+import gitinspector.gravatar as gravatar
+import gitinspector.interval as interval
 import json
 import multiprocessing
 import os
 import subprocess
-import terminal
+import gitinspector.terminal as terminal
 import textwrap
 import threading
 
