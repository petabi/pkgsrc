$NetBSD$

--- include/vki/vki-scnums-darwin.h.orig	2017-05-31 15:14:14.000000000 +0000
+++ include/vki/vki-scnums-darwin.h
@@ -191,6 +191,13 @@
 #if defined(VGA_x86)
 #define __NR_macx_swapon                      VG_DARWIN_SYSCALL_CONSTRUCT_MACH(48)
 #define __NR_macx_swapoff                     VG_DARWIN_SYSCALL_CONSTRUCT_MACH(49)
+#endif
+
+#if DARWIN_VERS >= DARWIN_10_13
+#define __NR_thread_get_special_reply_port    VG_DARWIN_SYSCALL_CONSTRUCT_MACH(50)
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
+
+#if defined(VGA_x86)
 #define __NR_macx_triggers                    VG_DARWIN_SYSCALL_CONSTRUCT_MACH(51)
 #define __NR_macx_backing_store_suspend       VG_DARWIN_SYSCALL_CONSTRUCT_MACH(52)
 #define __NR_macx_backing_store_recovery      VG_DARWIN_SYSCALL_CONSTRUCT_MACH(53)
@@ -409,7 +416,11 @@
 #define	__NR_seteuid        VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(183)
 #define __NR_sigreturn      VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(184)
 #define __NR_chud           VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(185)
+#if DARWIN_VERS >= DARWIN_10_13
+#define	__NR_thread_selfcounts      VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(186)
+#else
 			/* 186  */
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
 #if DARWIN_VERS >= DARWIN_10_6
 #define __NR_fdatasync      VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(187)
 #else
@@ -654,7 +665,11 @@
 #if DARWIN_VERS >= DARWIN_10_11
 #define	__NR_kevent_qos             VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(374)
 #endif /* DARWIN_VERS >= DARWIN_10_11 */
+#if DARWIN_VERS >= DARWIN_10_13
+#define	__NR_kevent_id              VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(375)
+#else
 			/* 375  */
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
 			/* 376  */
 			/* 377  */
 			/* 378  */
@@ -804,6 +819,17 @@
 #define	__NR_abort_with_payload     VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(521)
 #endif /* DARWIN_VERS >= DARWIN_10_12 */
 
+#if DARWIN_VERS >= DARWIN_10_13
+#define	__NR_necp_session_open      VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(522)
+#define	__NR_necp_session_action    VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(523)
+#define	__NR_setattrlistat          VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(524)
+#define	__NR_net_qos_guideline      VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(525)
+#define	__NR_fmount                 VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(526)
+#define	__NR_ntp_adjtime            VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(527)
+#define	__NR_ntp_gettime            VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(528)
+#define	__NR_os_fault_with_payload  VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(529)
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
+
 #if DARWIN_VERS < DARWIN_10_6
 #define	__NR_MAXSYSCALL             VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(427)
 #elif DARWIN_VERS < DARWIN_10_7
@@ -818,6 +844,8 @@
 #define __NR_MAXSYSCALL             VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(500)
 #elif DARWIN_VERS == DARWIN_10_12
 #define __NR_MAXSYSCALL             VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(522)
+#elif DARWIN_VERS == DARWIN_10_13
+#define __NR_MAXSYSCALL             VG_DARWIN_SYSCALL_CONSTRUCT_UNIX(530)
 #else
 #error unknown darwin version
 #endif
