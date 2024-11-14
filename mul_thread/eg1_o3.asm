
eg1_o3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z5T_sumv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	b8 40 42 0f 00       	mov    $0xf4240,%eax
   9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  10:	f0 48 83 05 00 00 00 	lock addq $0x1,0x0(%rip)        # 19 <_Z5T_sumv+0x19>
  17:	00 01 
  19:	83 e8 01             	sub    $0x1,%eax
  1c:	75 f2                	jne    10 <_Z5T_sumv+0x10>
  1e:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	ff 67 08             	jmp    *0x8(%rdi)

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0xb>
   b:	48 89 07             	mov    %rax,(%rdi)
   e:	e9 00 00 00 00       	jmp    13 <_ZStL8__ioinit+0xb>

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0xb>
   b:	55                   	push   %rbp
   c:	48 89 fd             	mov    %rdi,%rbp
   f:	48 89 07             	mov    %rax,(%rdi)
  12:	e8 00 00 00 00       	call   17 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0x17>
  17:	48 89 ef             	mov    %rbp,%rdi
  1a:	be 10 00 00 00       	mov    $0x10,%esi
  1f:	5d                   	pop    %rbp
  20:	e9 00 00 00 00       	jmp    25 <_ZStL8__ioinit+0x1d>

Disassembly of section .text._ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_:

0000000000000000 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 fd             	mov    %rdi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 f3             	mov    %rsi,%rbx
   c:	48 83 ec 18          	sub    $0x18,%rsp
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  1e:	31 c0                	xor    %eax,%eax
  20:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  27:	bf 10 00 00 00       	mov    $0x10,%edi
  2c:	e8 00 00 00 00       	call   31 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x31>
  31:	48 89 e6             	mov    %rsp,%rsi
  34:	31 d2                	xor    %edx,%edx
  36:	48 89 ef             	mov    %rbp,%rdi
  39:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 40 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x40>
  40:	48 89 58 08          	mov    %rbx,0x8(%rax)
  44:	48 89 08             	mov    %rcx,(%rax)
  47:	48 89 04 24          	mov    %rax,(%rsp)
  4b:	e8 00 00 00 00       	call   50 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x50>
  50:	48 8b 3c 24          	mov    (%rsp),%rdi
  54:	48 85 ff             	test   %rdi,%rdi
  57:	74 06                	je     5f <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x5f>
  59:	48 8b 07             	mov    (%rdi),%rax
  5c:	ff 50 08             	call   *0x8(%rax)
  5f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  64:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  6b:	00 00 
  6d:	75 07                	jne    76 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x76>
  6f:	48 83 c4 18          	add    $0x18,%rsp
  73:	5b                   	pop    %rbx
  74:	5d                   	pop    %rbp
  75:	c3                   	ret    
  76:	e8 00 00 00 00       	call   7b <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x7b>
  7b:	f3 0f 1e fa          	endbr64 
  7f:	48 89 c5             	mov    %rax,%rbp
  82:	48 8b 3c 24          	mov    (%rsp),%rdi
  86:	48 85 ff             	test   %rdi,%rdi
  89:	74 06                	je     91 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x91>
  8b:	48 8b 07             	mov    (%rdi),%rax
  8e:	ff 50 08             	call   *0x8(%rax)
  91:	48 89 ef             	mov    %rbp,%rdi
  94:	e8 00 00 00 00       	call   99 <_ZStL8__ioinit+0x91>

Disassembly of section .text.unlikely:

0000000000000000 <main.cold>:
   0:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
   6:	0f 85 00 00 00 00    	jne    c <main.cold+0xc>
   c:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  12:	0f 85 00 00 00 00    	jne    18 <main.cold+0x18>
  18:	e8 00 00 00 00       	call   1d <_ZStL8__ioinit+0x15>

Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 55                	push   %r13
   6:	4c 8d 2d 00 00 00 00 	lea    0x0(%rip),%r13        # d <main+0xd>
   d:	41 54                	push   %r12
   f:	4c 89 ee             	mov    %r13,%rsi
  12:	55                   	push   %rbp
  13:	48 83 ec 20          	sub    $0x20,%rsp
  17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1e:	00 00 
  20:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  25:	31 c0                	xor    %eax,%eax
  27:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
  2c:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
  31:	4c 89 e7             	mov    %r12,%rdi
  34:	e8 00 00 00 00       	call   39 <main+0x39>
  39:	4c 89 ee             	mov    %r13,%rsi
  3c:	48 89 ef             	mov    %rbp,%rdi
  3f:	e8 00 00 00 00       	call   44 <main+0x44>
  44:	4c 89 e7             	mov    %r12,%rdi
  47:	e8 00 00 00 00       	call   4c <main+0x4c>
  4c:	48 89 ef             	mov    %rbp,%rdi
  4f:	e8 00 00 00 00       	call   54 <main+0x54>
  54:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 5b <main+0x5b>
  5b:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 62 <main+0x62>
  62:	e8 00 00 00 00       	call   67 <main+0x67>
  67:	48 89 c7             	mov    %rax,%rdi
  6a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  6f:	ba 01 00 00 00       	mov    $0x1,%edx
  74:	c6 44 24 07 0a       	movb   $0xa,0x7(%rsp)
  79:	e8 00 00 00 00       	call   7e <main+0x7e>
  7e:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
  84:	75 24                	jne    aa <main+0xaa>
  86:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  8c:	75 1c                	jne    aa <main+0xaa>
  8e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  93:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  9a:	00 00 
  9c:	75 11                	jne    af <main+0xaf>
  9e:	48 83 c4 20          	add    $0x20,%rsp
  a2:	31 c0                	xor    %eax,%eax
  a4:	5d                   	pop    %rbp
  a5:	41 5c                	pop    %r12
  a7:	41 5d                	pop    %r13
  a9:	c3                   	ret    
  aa:	e8 00 00 00 00       	call   af <main+0xaf>
  af:	e8 00 00 00 00       	call   b4 <main+0xb4>
  b4:	f3 0f 1e fa          	endbr64 
  b8:	48 89 c7             	mov    %rax,%rdi
  bb:	e9 00 00 00 00       	jmp    c0 <main+0xc0>
  c0:	f3 0f 1e fa          	endbr64 
  c4:	48 89 c7             	mov    %rax,%rdi
  c7:	e9 00 00 00 00       	jmp    cc <main+0xcc>
  cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000000d0 <_GLOBAL__sub_I_sum>:
  d0:	f3 0f 1e fa          	endbr64 
  d4:	55                   	push   %rbp
  d5:	48 8d 2d 00 00 00 00 	lea    0x0(%rip),%rbp        # dc <_GLOBAL__sub_I_sum+0xc>
  dc:	48 89 ef             	mov    %rbp,%rdi
  df:	e8 00 00 00 00       	call   e4 <_GLOBAL__sub_I_sum+0x14>
  e4:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # eb <_GLOBAL__sub_I_sum+0x1b>
  eb:	48 89 ee             	mov    %rbp,%rsi
  ee:	5d                   	pop    %rbp
  ef:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # f6 <_GLOBAL__sub_I_sum+0x26>
  f6:	e9 00 00 00 00       	jmp    fb <_GLOBAL__sub_I_sum+0x2b>
