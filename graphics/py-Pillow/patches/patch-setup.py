$NetBSD: patch-setup.py,v 1.13 2017/07/03 21:51:57 adam Exp $

Prevent to detect optional tkinter.
Disable demo programs.

--- setup.py.orig	2017-10-02 15:20:24.000000000 +0000
+++ setup.py
@@ -58,7 +58,6 @@ def _dbg(s, tp=None):
 def _add_directory(path, subdir, where=None):
     if subdir is None:
         return
-    subdir = os.path.realpath(subdir)
     if os.path.isdir(subdir) and subdir not in path:
         if where is None:
             _dbg('Appending path %s', subdir)
@@ -107,11 +106,7 @@ def get_version():
         exec(compile(f.read(), version_file, 'exec'))
     return locals()['__version__']
 
-try:
-    import _tkinter
-except (ImportError, OSError):
-    # pypy emits an oserror
-    _tkinter = None
+_tkinter = None
 
 NAME = 'Pillow'
 PILLOW_VERSION = get_version()
@@ -779,7 +774,6 @@ try:
           ext_modules=[Extension("PIL._imaging", ["_imaging.c"])],
           include_package_data=True,
           packages=find_packages(),
-          scripts=glob.glob("Scripts/*.py"),
           install_requires=['olefile'],
           test_suite='nose.collector',
           keywords=["Imaging", ],
