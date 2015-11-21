$NetBSD$

--- coregrind/m_syswrap/syswrap-x86-darwin.c.orig	2017-05-31 15:14:39.000000000 +0000
+++ coregrind/m_syswrap/syswrap-x86-darwin.c
@@ -430,7 +430,8 @@ void wqthread_hijack(Addr self, Addr kpo
 #     elif DARWIN_VERS == DARWIN_10_9 \
            || DARWIN_VERS == DARWIN_10_10 \
            || DARWIN_VERS == DARWIN_10_11 \
-           || DARWIN_VERS == DARWIN_10_12
+           || DARWIN_VERS == DARWIN_10_12 \
+           || DARWIN_VERS == DARWIN_10_13
       UWord magic_delta = 0xB0;
 #     else
 #       error "magic_delta: to be computed on new OS version"
