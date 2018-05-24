$NetBSD$

--- setup.py.orig	2018-05-16 07:55:56.000000000 +0000
+++ setup.py
@@ -23,7 +23,7 @@ setup(
     author_email="chuancong@gmail.com",
 
     description="PrefixSpan, BIDE, and FEAT in Python 3",
-    long_description=open("README.md").read(),
+    long_description=open("README.md", encoding="utf-8").read(),
     long_description_content_type="text/markdown",
 
     keywords=[
