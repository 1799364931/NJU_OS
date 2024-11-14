
eg1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z5T_sumv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   f:	eb 16                	jmp    27 <_Z5T_sumv+0x27>
  11:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18 <_Z5T_sumv+0x18>
  18:	48 83 c0 01          	add    $0x1,%rax
  1c:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 23 <_Z5T_sumv+0x23>
  23:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  27:	81 7d fc ff e0 f5 05 	cmpl   $0x5f5e0ff,-0x4(%rbp)
  2e:	7e e1                	jle    11 <_Z5T_sumv+0x11>
  30:	90                   	nop
  31:	90                   	nop
  32:	5d                   	pop    %rbp
  33:	c3                   	ret    

0000000000000034 <main>:
  34:	f3 0f 1e fa          	endbr64 
  38:	55                   	push   %rbp
  39:	48 89 e5             	mov    %rsp,%rbp
  3c:	53                   	push   %rbx
  3d:	48 83 ec 28          	sub    $0x28,%rsp
  41:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  48:	00 00 
  4a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4e:	31 c0                	xor    %eax,%eax
  50:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  54:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 5b <main+0x27>
  5b:	48 89 d6             	mov    %rdx,%rsi
  5e:	48 89 c7             	mov    %rax,%rdi
  61:	e8 00 00 00 00       	call   66 <main+0x32>
  66:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  6a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 71 <main+0x3d>
  71:	48 89 d6             	mov    %rdx,%rsi
  74:	48 89 c7             	mov    %rax,%rdi
  77:	e8 00 00 00 00       	call   7c <main+0x48>
  7c:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  80:	48 89 c7             	mov    %rax,%rdi
  83:	e8 00 00 00 00       	call   88 <main+0x54>
  88:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	call   94 <main+0x60>
  94:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 9b <main+0x67>
  9b:	48 89 c6             	mov    %rax,%rsi
  9e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a5 <main+0x71>
  a5:	48 89 c7             	mov    %rax,%rdi
  a8:	b8 00 00 00 00       	mov    $0x0,%eax
  ad:	e8 00 00 00 00       	call   b2 <main+0x7e>
  b2:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  b6:	48 89 c7             	mov    %rax,%rdi
  b9:	e8 00 00 00 00       	call   be <main+0x8a>
  be:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  c2:	48 89 c7             	mov    %rax,%rdi
  c5:	e8 00 00 00 00       	call   ca <main+0x96>
  ca:	b8 00 00 00 00       	mov    $0x0,%eax
  cf:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  d3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  da:	00 00 
  dc:	74 3a                	je     118 <main+0xe4>
  de:	eb 33                	jmp    113 <main+0xdf>
  e0:	f3 0f 1e fa          	endbr64 
  e4:	48 89 c3             	mov    %rax,%rbx
  e7:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  eb:	48 89 c7             	mov    %rax,%rdi
  ee:	e8 00 00 00 00       	call   f3 <main+0xbf>
  f3:	eb 07                	jmp    fc <main+0xc8>
  f5:	f3 0f 1e fa          	endbr64 
  f9:	48 89 c3             	mov    %rax,%rbx
  fc:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
 100:	48 89 c7             	mov    %rax,%rdi
 103:	e8 00 00 00 00       	call   108 <main+0xd4>
 108:	48 89 d8             	mov    %rbx,%rax
 10b:	48 89 c7             	mov    %rax,%rdi
 10e:	e8 00 00 00 00       	call   113 <main+0xdf>
 113:	e8 00 00 00 00       	call   118 <main+0xe4>
 118:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 11c:	c9                   	leave  
 11d:	c3                   	ret    

Disassembly of section .text._ZNSt6thread2idC2Ev:

0000000000000000 <_ZNSt6thread2idC1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	ret    

Disassembly of section .text._ZNSt6threadD2Ev:

0000000000000000 <_ZNSt6threadD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt6threadD1Ev+0x1c>
  1c:	84 c0                	test   %al,%al
  1e:	74 05                	je     25 <_ZNSt6threadD1Ev+0x25>
  20:	e8 00 00 00 00       	call   25 <_ZNSt6threadD1Ev+0x25>
  25:	90                   	nop
  26:	c9                   	leave  
  27:	c3                   	ret    

Disassembly of section .text._ZNKSt6thread8joinableEv:

0000000000000000 <_ZNKSt6thread8joinableEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 20          	sub    $0x20,%rsp
   c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	call   2b <_ZNKSt6thread8joinableEv+0x2b>
  2b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  2f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  33:	48 89 c6             	mov    %rax,%rsi
  36:	48 8b 3a             	mov    (%rdx),%rdi
  39:	e8 00 00 00 00       	call   3e <_ZNKSt6thread8joinableEv+0x3e>
  3e:	83 f0 01             	xor    $0x1,%eax
  41:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  45:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4c:	00 00 
  4e:	74 05                	je     55 <_ZNKSt6thread8joinableEv+0x55>
  50:	e8 00 00 00 00       	call   55 <_ZNKSt6thread8joinableEv+0x55>
  55:	c9                   	leave  
  56:	c3                   	ret    

Disassembly of section .text._ZSteqNSt6thread2idES0_:

0000000000000000 <_ZSteqNSt6thread2idES0_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 39 c2             	cmp    %rax,%rdx
  1b:	0f 94 c0             	sete   %al
  1e:	5d                   	pop    %rbp
  1f:	c3                   	ret    

Disassembly of section .text._ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_:

0000000000000000 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 83 ec 48          	sub    $0x48,%rsp
   d:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  11:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  22:	31 c0                	xor    %eax,%eax
  24:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	call   30 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x30>
  30:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  37:	00 
  38:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  3c:	48 89 c7             	mov    %rax,%rdi
  3f:	e8 00 00 00 00       	call   44 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x44>
  44:	48 89 c3             	mov    %rax,%rbx
  47:	bf 10 00 00 00       	mov    $0x10,%edi
  4c:	e8 00 00 00 00       	call   51 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x51>
  51:	48 89 c7             	mov    %rax,%rdi
  54:	48 89 de             	mov    %rbx,%rsi
  57:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  5b:	e8 00 00 00 00       	call   60 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x60>
  60:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  64:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  68:	48 89 c7             	mov    %rax,%rdi
  6b:	e8 00 00 00 00       	call   70 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x70>
  70:	48 8d 4d d8          	lea    -0x28(%rbp),%rcx
  74:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  78:	ba 00 00 00 00       	mov    $0x0,%edx
  7d:	48 89 ce             	mov    %rcx,%rsi
  80:	48 89 c7             	mov    %rax,%rdi
  83:	e8 00 00 00 00       	call   88 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x88>
  88:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	call   94 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x94>
  94:	90                   	nop
  95:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  99:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  a0:	00 00 
  a2:	74 45                	je     e9 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xe9>
  a4:	eb 3e                	jmp    e4 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xe4>
  a6:	f3 0f 1e fa          	endbr64 
  aa:	48 89 c3             	mov    %rax,%rbx
  ad:	be 10 00 00 00       	mov    $0x10,%esi
  b2:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  b6:	e8 00 00 00 00       	call   bb <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xbb>
  bb:	48 89 d8             	mov    %rbx,%rax
  be:	48 89 c7             	mov    %rax,%rdi
  c1:	e8 00 00 00 00       	call   c6 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xc6>
  c6:	f3 0f 1e fa          	endbr64 
  ca:	48 89 c3             	mov    %rax,%rbx
  cd:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  d1:	48 89 c7             	mov    %rax,%rdi
  d4:	e8 00 00 00 00       	call   d9 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xd9>
  d9:	48 89 d8             	mov    %rbx,%rax
  dc:	48 89 c7             	mov    %rax,%rdi
  df:	e8 00 00 00 00       	call   e4 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xe4>
  e4:	e8 00 00 00 00       	call   e9 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0xe9>
  e9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  ed:	c9                   	leave  
  ee:	c3                   	ret    

Disassembly of section .text._ZSt7forwardIRFvvEEOT_RNSt16remove_referenceIS2_E4typeE:

0000000000000000 <_ZSt7forwardIRFvvEEOT_RNSt16remove_referenceIS2_E4typeE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    

Disassembly of section .text._ZNSt6thread6_StateC2Ev:

0000000000000000 <_ZNSt6thread6_StateC1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 13 <_ZNSt6thread6_StateC1Ev+0x13>
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
  1a:	90                   	nop
  1b:	5d                   	pop    %rbp
  1c:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC2IJRS3_EEEDpOT_:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 83 ec 18          	sub    $0x18,%rsp
   d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  11:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  15:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	call   21 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x21>
  21:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 28 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x28>
  28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2c:	48 89 10             	mov    %rdx,(%rax)
  2f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  33:	48 8d 58 08          	lea    0x8(%rax),%rbx
  37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  3b:	48 89 c7             	mov    %rax,%rdi
  3e:	e8 00 00 00 00       	call   43 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x43>
  43:	48 89 c6             	mov    %rax,%rsi
  46:	48 89 df             	mov    %rbx,%rdi
  49:	e8 00 00 00 00       	call   4e <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x4e>
  4e:	eb 1e                	jmp    6e <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x6e>
  50:	f3 0f 1e fa          	endbr64 
  54:	48 89 c3             	mov    %rax,%rbx
  57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5b:	48 89 c7             	mov    %rax,%rdi
  5e:	e8 00 00 00 00       	call   63 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x63>
  63:	48 89 d8             	mov    %rbx,%rax
  66:	48 89 c7             	mov    %rax,%rdi
  69:	e8 00 00 00 00       	call   6e <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC1IJRS3_EEEDpOT_+0x6e>
  6e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  72:	c9                   	leave  
  73:	c3                   	ret    

Disassembly of section .text._ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_:

0000000000000000 <_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI1St15__uniq_ptr_implIS1_S3_EEPS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	call   27 <_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI1St15__uniq_ptr_implIS1_S3_EEPS1_+0x27>
  27:	90                   	nop
  28:	c9                   	leave  
  29:	c3                   	ret    

Disassembly of section .text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_:

0000000000000000 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	call   27 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_+0x27>
  27:	90                   	nop
  28:	c9                   	leave  
  29:	c3                   	ret    

Disassembly of section .text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev:

0000000000000000 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 83 ec 28          	sub    $0x28,%rsp
   d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  11:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	call   1d <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev+0x1d>
  1d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  25:	48 8b 00             	mov    (%rax),%rax
  28:	48 85 c0             	test   %rax,%rax
  2b:	74 29                	je     56 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev+0x56>
  2d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  31:	48 89 c7             	mov    %rax,%rdi
  34:	e8 00 00 00 00       	call   39 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev+0x39>
  39:	48 89 c3             	mov    %rax,%rbx
  3c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40:	48 89 c7             	mov    %rax,%rdi
  43:	e8 00 00 00 00       	call   48 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev+0x48>
  48:	48 8b 00             	mov    (%rax),%rax
  4b:	48 89 c6             	mov    %rax,%rsi
  4e:	48 89 df             	mov    %rbx,%rdi
  51:	e8 00 00 00 00       	call   56 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev+0x56>
  56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  61:	90                   	nop
  62:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  66:	c9                   	leave  
  67:	c3                   	ret    

Disassembly of section .text._ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC2IJRS2_EEEDpOT_:

0000000000000000 <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC1IJRS2_EEEDpOT_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 83 ec 28          	sub    $0x28,%rsp
   d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  11:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  22:	31 c0                	xor    %eax,%eax
  24:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  28:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  2c:	48 89 c7             	mov    %rax,%rdi
  2f:	e8 00 00 00 00       	call   34 <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC1IJRS2_EEEDpOT_+0x34>
  34:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  38:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  3c:	48 89 c6             	mov    %rax,%rsi
  3f:	48 89 df             	mov    %rbx,%rdi
  42:	e8 00 00 00 00       	call   47 <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC1IJRS2_EEEDpOT_+0x47>
  47:	90                   	nop
  48:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  53:	00 00 
  55:	74 05                	je     5c <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC1IJRS2_EEEDpOT_+0x5c>
  57:	e8 00 00 00 00       	call   5c <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC1IJRS2_EEEDpOT_+0x5c>
  5c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  60:	c9                   	leave  
  61:	c3                   	ret    

Disassembly of section .text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_:

0000000000000000 <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 83 ec 18          	sub    $0x18,%rsp
   d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  11:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  15:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	call   21 <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_+0x21>
  21:	48 8b 5d e0          	mov    -0x20(%rbp),%rbx
  25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  29:	48 89 c7             	mov    %rax,%rdi
  2c:	e8 00 00 00 00       	call   31 <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_+0x31>
  31:	48 89 18             	mov    %rbx,(%rax)
  34:	90                   	nop
  35:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  39:	c9                   	leave  
  3a:	c3                   	ret    

Disassembly of section .text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv:

0000000000000000 <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv:

0000000000000000 <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_:

0000000000000000 <_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    

Disassembly of section .text._ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_:

0000000000000000 <_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 85 c0             	test   %rax,%rax
  1b:	74 0f                	je     2c <_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_+0x2c>
  1d:	48 8b 10             	mov    (%rax),%rdx
  20:	48 83 c2 08          	add    $0x8,%rdx
  24:	48 8b 12             	mov    (%rdx),%rdx
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	ff d2                	call   *%rdx
  2c:	90                   	nop
  2d:	c9                   	leave  
  2e:	c3                   	ret    

Disassembly of section .text._ZNSt5tupleIJPFvvEEEC2ILb1ELb1EEERKS1_:

0000000000000000 <_ZNSt5tupleIJPFvvEEEC1ILb1ELb1EEERKS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	call   27 <_ZNSt5tupleIJPFvvEEEC1ILb1ELb1EEERKS1_+0x27>
  27:	90                   	nop
  28:	c9                   	leave  
  29:	c3                   	ret    

Disassembly of section .text._ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv:

0000000000000000 <_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1ILb1ELb1EEEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1ILb1ELb1EEEv+0x1c>
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c3                   	ret    

Disassembly of section .text._ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:

0000000000000000 <_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv:

0000000000000000 <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt11_Tuple_implILm0EJPFvvEEEC2ERKS1_:

0000000000000000 <_ZNSt11_Tuple_implILm0EJPFvvEEEC1ERKS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	call   27 <_ZNSt11_Tuple_implILm0EJPFvvEEEC1ERKS1_+0x27>
  27:	90                   	nop
  28:	c9                   	leave  
  29:	c3                   	ret    

Disassembly of section .text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev:

0000000000000000 <_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev+0x1c>
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	call   28 <_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev+0x28>
  28:	90                   	nop
  29:	c9                   	leave  
  2a:	c3                   	ret    

Disassembly of section .text._ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:

0000000000000000 <_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:

0000000000000000 <_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt10_Head_baseILm0EPFvvELb0EEC2ERKS1_:

0000000000000000 <_ZNSt10_Head_baseILm0EPFvvELb0EEC1ERKS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  14:	48 8b 10             	mov    (%rax),%rdx
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 89 10             	mov    %rdx,(%rax)
  1e:	90                   	nop
  1f:	5d                   	pop    %rbp
  20:	c3                   	ret    

Disassembly of section .text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev:

0000000000000000 <_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev+0x1c>
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c3                   	ret    

Disassembly of section .text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev:

0000000000000000 <_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	ret    

Disassembly of section .text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_:

0000000000000000 <_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:

0000000000000000 <_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev:

0000000000000000 <_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	ret    

Disassembly of section .text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_:

0000000000000000 <_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    

Disassembly of section .text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_:

0000000000000000 <_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_:

0000000000000000 <_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 17 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0x17>
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 89 10             	mov    %rdx,(%rax)
  1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  22:	48 89 c7             	mov    %rax,%rdi
  25:	e8 00 00 00 00       	call   2a <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0x2a>
  2a:	90                   	nop
  2b:	c9                   	leave  
  2c:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0x1c>
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	be 10 00 00 00       	mov    $0x10,%esi
  25:	48 89 c7             	mov    %rax,%rdi
  28:	e8 00 00 00 00       	call   2d <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0x2d>
  2d:	c9                   	leave  
  2e:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 83 c0 08          	add    $0x8,%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	call   20 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv+0x20>
  20:	90                   	nop
  21:	c9                   	leave  
  22:	c3                   	ret    

Disassembly of section .text._ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv:

0000000000000000 <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv+0x1c>
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c3                   	ret    

Disassembly of section .text._ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE:

0000000000000000 <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE+0x1c>
  1c:	48 89 c7             	mov    %rax,%rdi
  1f:	e8 00 00 00 00       	call   24 <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE+0x24>
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	call   2c <_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE+0x2c>
  2c:	90                   	nop
  2d:	c9                   	leave  
  2e:	c3                   	ret    

Disassembly of section .text._ZSt4moveIRSt5tupleIJPFvvEEEEONSt16remove_referenceIT_E4typeEOS6_:

0000000000000000 <_ZSt4moveIRSt5tupleIJPFvvEEEEONSt16remove_referenceIT_E4typeEOS6_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    

Disassembly of section .text._ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_:

0000000000000000 <_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_+0x1c>
  1c:	48 89 c7             	mov    %rax,%rdi
  1f:	e8 00 00 00 00       	call   24 <_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_+0x24>
  24:	c9                   	leave  
  25:	c3                   	ret    

Disassembly of section .text._ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_:

0000000000000000 <_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_+0x1c>
  1c:	48 89 c7             	mov    %rax,%rdi
  1f:	e8 00 00 00 00       	call   24 <_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_+0x24>
  24:	90                   	nop
  25:	c9                   	leave  
  26:	c3                   	ret    

Disassembly of section .text._ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE:

0000000000000000 <_ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE:

0000000000000000 <_ZSt7forwardIPFvvEEOT_RNSt16remove_referenceIS2_E4typeE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    

Disassembly of section .text._ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_:

0000000000000000 <_ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_+0x1c>
  1c:	48 8b 00             	mov    (%rax),%rax
  1f:	ff d0                	call   *%rax
  21:	90                   	nop
  22:	c9                   	leave  
  23:	c3                   	ret    

Disassembly of section .text._ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_:

0000000000000000 <_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	call   1c <_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_+0x1c>
  1c:	c9                   	leave  
  1d:	c3                   	ret    

Disassembly of section .text._ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_:

0000000000000000 <_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	ret    
