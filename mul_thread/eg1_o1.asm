
eg1_o1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z5T_sumv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b <_Z5T_sumv+0xb>
   b:	48 8d 42 01          	lea    0x1(%rdx),%rax
   f:	48 81 c2 01 e1 f5 05 	add    $0x5f5e101,%rdx
  16:	48 89 c1             	mov    %rax,%rcx
  19:	48 83 c0 01          	add    $0x1,%rax
  1d:	48 39 d0             	cmp    %rdx,%rax
  20:	75 f4                	jne    16 <_Z5T_sumv+0x16>
  22:	48 89 0d 00 00 00 00 	mov    %rcx,0x0(%rip)        # 29 <_Z5T_sumv+0x29>
  29:	c3                   	ret    

000000000000002a <main>:
  2a:	f3 0f 1e fa          	endbr64 
  2e:	53                   	push   %rbx
  2f:	48 83 ec 20          	sub    $0x20,%rsp
  33:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  3a:	00 00 
  3c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  41:	31 c0                	xor    %eax,%eax
  43:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  48:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # 4f <main+0x25>
  4f:	48 89 de             	mov    %rbx,%rsi
  52:	e8 00 00 00 00       	call   57 <main+0x2d>
  57:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  5c:	48 89 de             	mov    %rbx,%rsi
  5f:	e8 00 00 00 00       	call   64 <main+0x3a>
  64:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  69:	e8 00 00 00 00       	call   6e <main+0x44>
  6e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  73:	e8 00 00 00 00       	call   78 <main+0x4e>
  78:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 7f <main+0x55>
  7f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 86 <main+0x5c>
  86:	bf 01 00 00 00       	mov    $0x1,%edi
  8b:	b8 00 00 00 00       	mov    $0x0,%eax
  90:	e8 00 00 00 00       	call   95 <main+0x6b>
  95:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
  9b:	75 23                	jne    c0 <main+0x96>
  9d:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  a3:	75 20                	jne    c5 <main+0x9b>
  a5:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  aa:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  b1:	00 00 
  b3:	75 42                	jne    f7 <main+0xcd>
  b5:	b8 00 00 00 00       	mov    $0x0,%eax
  ba:	48 83 c4 20          	add    $0x20,%rsp
  be:	5b                   	pop    %rbx
  bf:	c3                   	ret    
  c0:	e8 00 00 00 00       	call   c5 <main+0x9b>
  c5:	e8 00 00 00 00       	call   ca <main+0xa0>
  ca:	f3 0f 1e fa          	endbr64 
  ce:	48 89 c7             	mov    %rax,%rdi
  d1:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
  d7:	74 0c                	je     e5 <main+0xbb>
  d9:	e8 00 00 00 00       	call   de <main+0xb4>
  de:	f3 0f 1e fa          	endbr64 
  e2:	48 89 c7             	mov    %rax,%rdi
  e5:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  eb:	74 05                	je     f2 <main+0xc8>
  ed:	e8 00 00 00 00       	call   f2 <main+0xc8>
  f2:	e8 00 00 00 00       	call   f7 <main+0xcd>
  f7:	e8 00 00 00 00       	call   fc <main+0xd2>

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 83 ec 08          	sub    $0x8,%rsp
   8:	ff 57 08             	call   *0x8(%rdi)
   b:	48 83 c4 08          	add    $0x8,%rsp
   f:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 83 ec 08          	sub    $0x8,%rsp
   8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0xf>
   f:	48 89 07             	mov    %rax,(%rdi)
  12:	e8 00 00 00 00       	call   17 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0x17>
  17:	48 83 c4 08          	add    $0x8,%rsp
  1b:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0xf>
   f:	48 89 07             	mov    %rax,(%rdi)
  12:	e8 00 00 00 00       	call   17 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0x17>
  17:	be 10 00 00 00       	mov    $0x10,%esi
  1c:	48 89 df             	mov    %rbx,%rdi
  1f:	e8 00 00 00 00       	call   24 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0x24>
  24:	5b                   	pop    %rbx
  25:	c3                   	ret    

Disassembly of section .text._ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_:

0000000000000000 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	53                   	push   %rbx
   6:	48 83 ec 18          	sub    $0x18,%rsp
   a:	48 89 fb             	mov    %rdi,%rbx
   d:	48 89 f5             	mov    %rsi,%rbp
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  1e:	31 c0                	xor    %eax,%eax
  20:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  27:	bf 10 00 00 00       	mov    $0x10,%edi
  2c:	e8 00 00 00 00       	call   31 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x31>
  31:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 38 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x38>
  38:	48 89 08             	mov    %rcx,(%rax)
  3b:	48 89 68 08          	mov    %rbp,0x8(%rax)
  3f:	48 89 04 24          	mov    %rax,(%rsp)
  43:	48 89 e6             	mov    %rsp,%rsi
  46:	ba 00 00 00 00       	mov    $0x0,%edx
  4b:	48 89 df             	mov    %rbx,%rdi
  4e:	e8 00 00 00 00       	call   53 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x53>
  53:	48 8b 3c 24          	mov    (%rsp),%rdi
  57:	48 85 ff             	test   %rdi,%rdi
  5a:	74 06                	je     62 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x62>
  5c:	48 8b 07             	mov    (%rdi),%rax
  5f:	ff 50 08             	call   *0x8(%rax)
  62:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  67:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  6e:	00 00 
  70:	75 25                	jne    97 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x97>
  72:	48 83 c4 18          	add    $0x18,%rsp
  76:	5b                   	pop    %rbx
  77:	5d                   	pop    %rbp
  78:	c3                   	ret    
  79:	f3 0f 1e fa          	endbr64 
  7d:	48 89 c3             	mov    %rax,%rbx
  80:	48 8b 3c 24          	mov    (%rsp),%rdi
  84:	48 85 ff             	test   %rdi,%rdi
  87:	74 06                	je     8f <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x8f>
  89:	48 8b 07             	mov    (%rdi),%rax
  8c:	ff 50 08             	call   *0x8(%rax)
  8f:	48 89 df             	mov    %rbx,%rdi
  92:	e8 00 00 00 00       	call   97 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x97>
  97:	e8 00 00 00 00       	call   9c <main+0x72>
