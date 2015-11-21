$NetBSD$

--- coregrind/m_syswrap/syswrap-darwin.c.orig	2017-05-31 15:14:39.000000000 +0000
+++ coregrind/m_syswrap/syswrap-darwin.c
@@ -10492,6 +10492,18 @@ const SyscallTableEntry ML_(syscall_tabl
 // _____(__NR_terminate_with_payload),                  // 520
 // _____(__NR_abort_with_payload),                      // 521
 #endif
+#if DARWIN_VERS >= DARWIN_10_13
+// _____(__NR_thread_selfcounts),                       // 186
+// _____(__NR_kevent_id,                                // 375
+// _____(__NR_necp_session_open),                       // 522
+// _____(__NR_necp_session_action),                     // 523
+// _____(__NR_setattrlistat),                           // 524
+// _____(__NR_net_qos_guideline),                       // 525
+// _____(__NR_fmount),                                  // 526
+// _____(__NR_ntp_adjtime),                             // 527
+// _____(__NR_ntp_gettime),                             // 528
+// _____(__NR_os_fault_with_payload),                   // 529
+#endif
 // _____(__NR_MAXSYSCALL)
    MACX_(__NR_DARWIN_FAKE_SIGRETURN, FAKE_SIGRETURN)
 };
@@ -10615,17 +10627,23 @@ const SyscallTableEntry ML_(mach_trap_ta
 #if defined(VGA_x86)
 // _____(__NR_macx_swapon), 
 // _____(__NR_macx_swapoff), 
+#else
+   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(48)),
+   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(49)),
+#endif
+#if DARWIN_VERS >= DARWIN_10_13
+// _____(__NR_thread_get_special_reply_port,            // 50
+#else
    _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(50)), 
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
+#if defined(VGA_x86)
 // _____(__NR_macx_triggers), 
 // _____(__NR_macx_backing_store_suspend), 
 // _____(__NR_macx_backing_store_recovery), 
 #else
-   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(48)), 
-   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(49)), 
-   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(50)), 
    _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(51)), 
    _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(52)), 
-   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(53)), 
+   _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(53)),
 #endif
    _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(54)), 
    _____(VG_DARWIN_SYSCALL_CONSTRUCT_MACH(55)), 
