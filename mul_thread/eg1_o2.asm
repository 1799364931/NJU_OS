
eg1_o2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z5T_sumv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 81 05 00 00 00 00 	addq   $0x5f5e100,0x0(%rip)        # f <_Z5T_sumv+0xf>
   b:	00 e1 f5 05    
   f:	c3                   	ret    

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	ff 67 08             	jmp    *0x8(%rdi)

Disassembly of section .text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev:

0000000000000000 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0xb>
   b:	48 89 07             	mov    %rax,(%rdi)
   e:	e9 00 00 00 00       	jmp    13 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED1Ev+0x13>

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
  20:	e9 00 00 00 00       	jmp    25 <_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev+0x25>

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
  94:	e8 00 00 00 00       	call   99 <_ZNSt6threadC1IRFvvEJEvEEOT_DpOT0_+0x99>

Disassembly of section .text.unlikely:

0000000000000000 <main.cold>:
   0:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
   6:	0f 85 00 00 00 00    	jne    c <main.cold+0xc>
   c:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  12:	0f 85 00 00 00 00    	jne    18 <main.cold+0x18>
  18:	e8 00 00 00 00       	call   1d <main.cold+0x1d>

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
  54:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 5b <main+0x5b>
  5b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 62 <main+0x62>
  62:	bf 01 00 00 00       	mov    $0x1,%edi
  67:	31 c0                	xor    %eax,%eax
  69:	e8 00 00 00 00       	call   6e <main+0x6e>
  6e:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
  74:	75 24                	jne    9a <main+0x9a>
  76:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  7c:	75 1c                	jne    9a <main+0x9a>
  7e:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  83:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  8a:	00 00 
  8c:	75 11                	jne    9f <main+0x9f>
  8e:	48 83 c4 20          	add    $0x20,%rsp
  92:	31 c0                	xor    %eax,%eax
  94:	5d                   	pop    %rbp
  95:	41 5c                	pop    %r12
  97:	41 5d                	pop    %r13
  99:	c3                   	ret    
  9a:	e8 00 00 00 00       	call   9f <main+0x9f>
  9f:	e8 00 00 00 00       	call   a4 <main+0xa4>
  a4:	f3 0f 1e fa          	endbr64 
  a8:	48 89 c7             	mov    %rax,%rdi
  ab:	e9 00 00 00 00       	jmp    b0 <main+0xb0>
  b0:	f3 0f 1e fa          	endbr64 
  b4:	48 89 c7             	mov    %rax,%rdi
  b7:	e9 00 00 00 00       	jmp    bc <main+0xbc>
