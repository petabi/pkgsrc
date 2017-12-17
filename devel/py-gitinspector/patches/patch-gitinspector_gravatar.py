$NetBSD$

--- gitinspector/gravatar.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/gravatar.py
@@ -22,7 +22,7 @@ try:
 	from urllib.parse import urlencode
 except:
 	from urllib import urlencode
-import format
+import gitinspector.format as format
 import hashlib
 
 def get_url(email, size=20):
