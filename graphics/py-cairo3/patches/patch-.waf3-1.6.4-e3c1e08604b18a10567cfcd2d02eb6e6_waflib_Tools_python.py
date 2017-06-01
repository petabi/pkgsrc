$NetBSD: patch-.waf3-1.6.4-e3c1e08604b18a10567cfcd2d02eb6e6_waflib_Tools_python.py,v 1.1 2014/06/29 15:04:40 joerg Exp $

--- .waf3-1.6.4-e3c1e08604b18a10567cfcd2d02eb6e6/waflib/Tools/python.py.orig	2011-03-30 06:17:51.000000000 +0000
+++ .waf3-1.6.4-e3c1e08604b18a10567cfcd2d02eb6e6/waflib/Tools/python.py
@@ -169,7 +169,7 @@ def check_python_headers(conf):
 		conf.find_program('python-config-%s'%num,var='PYTHON_CONFIG',mandatory=False)
 	includes=[]
 	if conf.env.PYTHON_CONFIG:
-		for incstr in conf.cmd_and_log(conf.env.PYTHON+[conf.env.PYTHON_CONFIG,'--includes']).strip().split():
+		for incstr in conf.cmd_and_log([conf.env.PYTHON_CONFIG,'--includes']).strip().split():
 			if(incstr.startswith('-I')or incstr.startswith('/I')):
 				incstr=incstr[2:]
 			if incstr not in includes:
@@ -213,16 +213,16 @@ def check_python_version(conf,minver=Non
 				(python_LIBDEST,pydir)=conf.get_python_variables(["get_config_var('LIBDEST') or ''","get_python_lib(standard_lib=0, prefix=%r) or ''"%conf.env['PREFIX']],['from distutils.sysconfig import get_config_var, get_python_lib'])
 			else:
 				python_LIBDEST=None
-				(pydir,)=conf.get_python_variables(["get_python_lib(standard_lib=0, prefix=%r) or ''"%conf.env['PREFIX']],['from distutils.sysconfig import get_python_lib'])
+				(pydir,)=conf.get_python_variables(["get_python_lib(standard_lib=0) or ''"],['from distutils.sysconfig import get_python_lib'])
 			if python_LIBDEST is None:
-				if conf.env['LIBDIR']:
-					python_LIBDEST=os.path.join(conf.env['LIBDIR'],"python"+pyver)
+				if pydir:
+					python_LIBDEST=os.path.join(pydir,"python"+pyver)
 				else:
 					python_LIBDEST=os.path.join(conf.env['PREFIX'],"lib","python"+pyver)
 		if'PYTHONARCHDIR'in conf.environ:
 			pyarchdir=conf.environ['PYTHONARCHDIR']
 		else:
-			pyarchdir=conf.get_python_variables(["get_python_lib(plat_specific=1, standard_lib=0, prefix=%r) or ''"%conf.env['PREFIX']],['from distutils.sysconfig import get_python_lib'])
+			(pyarchdir,)=conf.get_python_variables(["get_python_lib(plat_specific=1, standard_lib=0) or ''"],['from distutils.sysconfig import get_python_lib'])
 			if not pyarchdir:
 				pyarchdir=pydir
 		if hasattr(conf,'define'):
@@ -278,4 +278,4 @@ feature('pyembed')(init_pyembed)
 conf(get_python_variables)
 conf(check_python_headers)
 conf(check_python_version)
-conf(check_python_module)
\ No newline at end of file
+conf(check_python_module)
