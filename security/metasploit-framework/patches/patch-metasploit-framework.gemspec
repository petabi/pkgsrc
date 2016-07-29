$NetBSD$

--- metasploit-framework.gemspec.orig	2016-07-22 04:39:02.000000000 +0000
+++ metasploit-framework.gemspec
@@ -24,7 +24,7 @@ Gem::Specification.new do |spec|
   spec.homepage      = 'https://www.metasploit.com'
   spec.license       = 'BSD-3-clause'
 
-  spec.files         = `git ls-files`.split($/).reject { |file|
+  spec.files         = `find . ! -type d | sed "s|^./||"`.split($/).reject { |file|
     file =~ /^documentation|^data\/gui|^external/
   }
   spec.bindir = '.'
