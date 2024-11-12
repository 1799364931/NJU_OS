
/root/NJUOS/debug-bootloader/build/hello-x86_64-qemu.elf:     file format elf64-x86-64


Disassembly of section .text:

00000000001000b0 <main>:
  1000b0:	f3 0f 1e fa          	endbr64 
  1000b4:	48 83 ec 08          	sub    $0x8,%rsp
  1000b8:	48 8d 3d 21 2b 00 00 	lea    0x2b21(%rip),%rdi        # 102be0 <vsnprintf+0x80>
  1000bf:	31 c0                	xor    %eax,%eax
  1000c1:	e8 3a 27 00 00       	call   102800 <printf>
  1000c6:	31 c0                	xor    %eax,%eax
  1000c8:	48 83 c4 08          	add    $0x8,%rsp
  1000cc:	c3                   	ret    
  1000cd:	0f 1f 00             	nopl   (%rax)

00000000001000d0 <_start>:
  1000d0:	b8 03 20 00 00       	mov    $0x2003,%eax
  1000d5:	3b 05 00 10 00 00    	cmp    0x1000(%rip),%eax        # 1010db <cte_init+0x6eb>
  1000db:	74 36                	je     100113 <.long_mode_init>
  1000dd:	b8 03 20 00 00       	mov    $0x2003,%eax
  1000e2:	a3 00 10 00 00 b9 00 	movabs %eax,0xb900001000
  1000e9:	00 00 
  1000eb:	00 be 00 02 00 00    	add    %bh,0x200(%rsi)

00000000001000f1 <.loop>:
  1000f1:	89 c8                	mov    %ecx,%eax
  1000f3:	c1 e0 1e             	shl    $0x1e,%eax
  1000f6:	0d 83 00 00 00       	or     $0x83,%eax
  1000fb:	89 04 cd 00 20 00 00 	mov    %eax,0x2000(,%rcx,8)
  100102:	89 c8                	mov    %ecx,%eax
  100104:	c1 e8 02             	shr    $0x2,%eax
  100107:	89 04 cd 04 20 00 00 	mov    %eax,0x2004(,%rcx,8)
  10010e:	41 39 f1             	cmp    %esi,%r9d
  100111:	75 de                	jne    1000f1 <.loop>

0000000000100113 <.long_mode_init>:
  100113:	b8 00 10 00 00       	mov    $0x1000,%eax
  100118:	0f 22 d8             	mov    %rax,%cr3
  10011b:	b8 20 00 00 00       	mov    $0x20,%eax
  100120:	0f 22 e0             	mov    %rax,%cr4
  100123:	b9 80 00 00 c0       	mov    $0xc0000080,%ecx
  100128:	0f 32                	rdmsr  
  10012a:	0d 00 01 00 00       	or     $0x100,%eax
  10012f:	0f 30                	wrmsr  
  100131:	0f 20 c0             	mov    %cr0,%rax
  100134:	0d 00 00 00 80       	or     $0x80000000,%eax
  100139:	0f 22 c0             	mov    %rax,%cr0
  10013c:	0f 01 15 70 01 10 00 	lgdt   0x100170(%rip)        # 2002b3 <vmem+0x7b833>
  100143:	ea                   	(bad)  
  100144:	4a 01 10             	rex.WX add %rdx,(%rax)
  100147:	00 08                	add    %cl,(%rax)
	...

000000000010014a <_start64>:
  10014a:	66 b8 00 00          	mov    $0x0,%ax
  10014e:	8e d8                	mov    %eax,%ds
  100150:	8e c0                	mov    %eax,%es
  100152:	8e d0                	mov    %eax,%ss
  100154:	8e e0                	mov    %eax,%fs
  100156:	8e e8                	mov    %eax,%gs
  100158:	48 c7 c7 00 00 01 00 	mov    $0x10000,%rdi
  10015f:	6a 00                	push   $0x0
  100161:	e9 4a 04 00 00       	jmp    1005b0 <_start_c>
  100166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  10016d:	00 00 00 

0000000000100170 <gdt_ptr>:
  100170:	0f 00                	(bad)  
  100172:	7a 01                	jp     100175 <gdt_ptr+0x5>
  100174:	10 00                	adc    %al,(%rax)
  100176:	00 00                	add    %al,(%rax)
	...

000000000010017a <gdt64_begin>:
	...
  100186:	00                   	.byte 0x0
  100187:	98                   	cwtl   
  100188:	20 00                	and    %al,(%rax)

000000000010018a <gdt64_end>:
  10018a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000100190 <putch>:
  100190:	f3 0f 1e fa          	endbr64 
  100194:	ba f8 03 00 00       	mov    $0x3f8,%edx
  100199:	89 f8                	mov    %edi,%eax
  10019b:	ee                   	out    %al,(%dx)
  10019c:	c3                   	ret    
  10019d:	0f 1f 00             	nopl   (%rax)

00000000001001a0 <halt>:
  1001a0:	f3 0f 1e fa          	endbr64 
  1001a4:	41 54                	push   %r12
  1001a6:	41 89 fc             	mov    %edi,%r12d
  1001a9:	55                   	push   %rbp
  1001aa:	53                   	push   %rbx
  1001ab:	fa                   	cli    
  1001ac:	31 c0                	xor    %eax,%eax
  1001ae:	48 8d 1d 3c 2a 00 00 	lea    0x2a3c(%rip),%rbx        # 102bf1 <vsnprintf+0x91>
  1001b5:	48 8d 2d 48 2a 00 00 	lea    0x2a48(%rip),%rbp        # 102c04 <vsnprintf+0xa4>
  1001bc:	e8 2f 24 00 00       	call   1025f0 <__am_stop_the_world>
  1001c1:	b8 43 00 00 00       	mov    $0x43,%eax
  1001c6:	eb 19                	jmp    1001e1 <halt+0x41>
  1001c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1001cf:	00 
  1001d0:	e8 bb ff ff ff       	call   100190 <putch>
  1001d5:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1001d9:	48 83 c3 01          	add    $0x1,%rbx
  1001dd:	84 c0                	test   %al,%al
  1001df:	74 2d                	je     10020e <halt+0x6e>
  1001e1:	89 c2                	mov    %eax,%edx
  1001e3:	0f be f8             	movsbl %al,%edi
  1001e6:	83 e2 fb             	and    $0xfffffffb,%edx
  1001e9:	80 fa 30             	cmp    $0x30,%dl
  1001ec:	74 3a                	je     100228 <halt+0x88>
  1001ee:	3c 24                	cmp    $0x24,%al
  1001f0:	75 de                	jne    1001d0 <halt+0x30>
  1001f2:	e8 89 23 00 00       	call   102580 <cpu_current>
  1001f7:	48 83 c3 01          	add    $0x1,%rbx
  1001fb:	48 98                	cltq   
  1001fd:	0f be 7c 05 00       	movsbl 0x0(%rbp,%rax,1),%edi
  100202:	e8 89 ff ff ff       	call   100190 <putch>
  100207:	0f b6 03             	movzbl (%rbx),%eax
  10020a:	84 c0                	test   %al,%al
  10020c:	75 d3                	jne    1001e1 <halt+0x41>
  10020e:	b8 00 20 00 00       	mov    $0x2000,%eax
  100213:	ba 04 06 00 00       	mov    $0x604,%edx
  100218:	66 ef                	out    %ax,(%dx)
  10021a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  100220:	f4                   	hlt    
  100221:	eb fd                	jmp    100220 <halt+0x80>
  100223:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100228:	8d 4f d0             	lea    -0x30(%rdi),%ecx
  10022b:	44 89 e0             	mov    %r12d,%eax
  10022e:	d3 f8                	sar    %cl,%eax
  100230:	83 e0 0f             	and    $0xf,%eax
  100233:	0f be 7c 05 00       	movsbl 0x0(%rbp,%rax,1),%edi
  100238:	e8 53 ff ff ff       	call   100190 <putch>
  10023d:	eb 96                	jmp    1001d5 <halt+0x35>
  10023f:	90                   	nop

0000000000100240 <call_main>:
  100240:	f3 0f 1e fa          	endbr64 
  100244:	50                   	push   %rax
  100245:	58                   	pop    %rax
  100246:	48 83 ec 08          	sub    $0x8,%rsp
  10024a:	e8 61 fe ff ff       	call   1000b0 <main>
  10024f:	89 c7                	mov    %eax,%edi
  100251:	e8 4a ff ff ff       	call   1001a0 <halt>
  100256:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  10025d:	00 00 00 

0000000000100260 <__am_heap_init>:
  100260:	f3 0f 1e fa          	endbr64 
  100264:	bf 70 00 00 00       	mov    $0x70,%edi
  100269:	b8 34 00 00 00       	mov    $0x34,%eax
  10026e:	89 fa                	mov    %edi,%edx
  100270:	ee                   	out    %al,(%dx)
  100271:	be 71 00 00 00       	mov    $0x71,%esi
  100276:	89 f2                	mov    %esi,%edx
  100278:	ec                   	in     (%dx),%al
  100279:	0f b6 c8             	movzbl %al,%ecx
  10027c:	89 fa                	mov    %edi,%edx
  10027e:	b8 35 00 00 00       	mov    $0x35,%eax
  100283:	ee                   	out    %al,(%dx)
  100284:	89 f2                	mov    %esi,%edx
  100286:	ec                   	in     (%dx),%al
  100287:	48 c7 c6 10 50 21 00 	mov    $0x215010,%rsi
  10028e:	0f b6 d0             	movzbl %al,%edx
  100291:	83 c2 01             	add    $0x1,%edx
  100294:	4c 8d 86 ff ff 0f 00 	lea    0xfffff(%rsi),%r8
  10029b:	c1 e2 08             	shl    $0x8,%edx
  10029e:	49 81 e0 00 00 f0 ff 	and    $0xfffffffffff00000,%r8
  1002a5:	09 ca                	or     %ecx,%edx
  1002a7:	c1 e2 10             	shl    $0x10,%edx
  1002aa:	4c 89 c0             	mov    %r8,%rax
  1002ad:	c3                   	ret    
  1002ae:	66 90                	xchg   %ax,%ax

00000000001002b0 <__am_lapic_init>:
  1002b0:	f3 0f 1e fa          	endbr64 
  1002b4:	53                   	push   %rbx
  1002b5:	b8 00 00 0f 00       	mov    $0xf0000,%eax
  1002ba:	eb 10                	jmp    1002cc <__am_lapic_init+0x1c>
  1002bc:	0f 1f 40 00          	nopl   0x0(%rax)
  1002c0:	48 83 c0 01          	add    $0x1,%rax
  1002c4:	48 3d ff ff ff 00    	cmp    $0xffffff,%rax
  1002ca:	74 64                	je     100330 <__am_lapic_init+0x80>
  1002cc:	8b 10                	mov    (%rax),%edx
  1002ce:	81 fa 5f 4d 50 5f    	cmp    $0x5f504d5f,%edx
  1002d4:	75 ea                	jne    1002c0 <__am_lapic_init+0x10>
  1002d6:	8b 48 04             	mov    0x4(%rax),%ecx
  1002d9:	48 c7 c0 40 4a 10 00 	mov    $0x104a40,%rax
  1002e0:	8b 71 24             	mov    0x24(%rcx),%esi
  1002e3:	0f b7 51 04          	movzwl 0x4(%rcx),%edx
  1002e7:	48 89 30             	mov    %rsi,(%rax)
  1002ea:	48 8d 41 2c          	lea    0x2c(%rcx),%rax
  1002ee:	48 01 d1             	add    %rdx,%rcx
  1002f1:	48 39 c8             	cmp    %rcx,%rax
  1002f4:	73 31                	jae    100327 <__am_lapic_init+0x77>
  1002f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  1002fd:	00 00 00 
  100300:	0f b6 10             	movzbl (%rax),%edx
  100303:	84 d2                	test   %dl,%dl
  100305:	75 17                	jne    10031e <__am_lapic_init+0x6e>
  100307:	48 c7 c6 c0 39 10 00 	mov    $0x1039c0,%rsi
  10030e:	48 83 c0 0c          	add    $0xc,%rax
  100312:	8b 1e                	mov    (%rsi),%ebx
  100314:	8d 53 01             	lea    0x1(%rbx),%edx
  100317:	89 16                	mov    %edx,(%rsi)
  100319:	83 fa 08             	cmp    $0x8,%edx
  10031c:	7f 7e                	jg     10039c <__am_lapic_init+0xec>
  10031e:	48 83 c0 08          	add    $0x8,%rax
  100322:	48 39 c8             	cmp    %rcx,%rax
  100325:	72 d9                	jb     100300 <__am_lapic_init+0x50>
  100327:	5b                   	pop    %rbx
  100328:	c3                   	ret    
  100329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  100330:	48 8d 1d de 28 00 00 	lea    0x28de(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  100337:	bf 41 00 00 00       	mov    $0x41,%edi
  10033c:	0f 1f 40 00          	nopl   0x0(%rax)
  100340:	e8 4b fe ff ff       	call   100190 <putch>
  100345:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  100349:	48 83 c3 01          	add    $0x1,%rbx
  10034d:	40 84 ff             	test   %dil,%dil
  100350:	75 ee                	jne    100340 <__am_lapic_init+0x90>
  100352:	48 8d 1d 2f 29 00 00 	lea    0x292f(%rip),%rbx        # 102c88 <vsnprintf+0x128>
  100359:	bf 69 00 00 00       	mov    $0x69,%edi
  10035e:	66 90                	xchg   %ax,%ax
  100360:	e8 2b fe ff ff       	call   100190 <putch>
  100365:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  100369:	48 83 c3 01          	add    $0x1,%rbx
  10036d:	40 84 ff             	test   %dil,%dil
  100370:	75 ee                	jne    100360 <__am_lapic_init+0xb0>
  100372:	48 8d 1d 37 29 00 00 	lea    0x2937(%rip),%rbx        # 102cb0 <vsnprintf+0x150>
  100379:	bf 20 00 00 00       	mov    $0x20,%edi
  10037e:	66 90                	xchg   %ax,%ax
  100380:	e8 0b fe ff ff       	call   100190 <putch>
  100385:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  100389:	48 83 c3 01          	add    $0x1,%rbx
  10038d:	40 84 ff             	test   %dil,%dil
  100390:	75 ee                	jne    100380 <__am_lapic_init+0xd0>
  100392:	bf 01 00 00 00       	mov    $0x1,%edi
  100397:	e8 04 fe ff ff       	call   1001a0 <halt>
  10039c:	48 8d 1d 72 28 00 00 	lea    0x2872(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  1003a3:	b8 41 00 00 00       	mov    $0x41,%eax
  1003a8:	0f be f8             	movsbl %al,%edi
  1003ab:	48 83 c3 01          	add    $0x1,%rbx
  1003af:	e8 dc fd ff ff       	call   100190 <putch>
  1003b4:	0f b6 03             	movzbl (%rbx),%eax
  1003b7:	84 c0                	test   %al,%al
  1003b9:	75 ed                	jne    1003a8 <__am_lapic_init+0xf8>
  1003bb:	48 8d 1d 5e 28 00 00 	lea    0x285e(%rip),%rbx        # 102c20 <vsnprintf+0xc0>
  1003c2:	b8 63 00 00 00       	mov    $0x63,%eax
  1003c7:	0f be f8             	movsbl %al,%edi
  1003ca:	48 83 c3 01          	add    $0x1,%rbx
  1003ce:	e8 bd fd ff ff       	call   100190 <putch>
  1003d3:	0f b6 03             	movzbl (%rbx),%eax
  1003d6:	84 c0                	test   %al,%al
  1003d8:	75 ed                	jne    1003c7 <__am_lapic_init+0x117>
  1003da:	48 8d 1d 67 28 00 00 	lea    0x2867(%rip),%rbx        # 102c48 <vsnprintf+0xe8>
  1003e1:	b8 20 00 00 00       	mov    $0x20,%eax
  1003e6:	0f be f8             	movsbl %al,%edi
  1003e9:	48 83 c3 01          	add    $0x1,%rbx
  1003ed:	e8 9e fd ff ff       	call   100190 <putch>
  1003f2:	0f b6 03             	movzbl (%rbx),%eax
  1003f5:	84 c0                	test   %al,%al
  1003f7:	75 ed                	jne    1003e6 <__am_lapic_init+0x136>
  1003f9:	eb 97                	jmp    100392 <__am_lapic_init+0xe2>
  1003fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000100400 <__am_percpu_initgdt>:
  100400:	f3 0f 1e fa          	endbr64 
  100404:	55                   	push   %rbp
  100405:	53                   	push   %rbx
  100406:	48 83 ec 08          	sub    $0x8,%rsp
  10040a:	e8 71 21 00 00       	call   102580 <cpu_current>
  10040f:	48 c7 c5 c0 4a 20 00 	mov    $0x204ac0,%rbp
  100416:	48 98                	cltq   
  100418:	48 69 c0 a8 20 00 00 	imul   $0x20a8,%rax,%rax
  10041f:	48 8d 5c 28 08       	lea    0x8(%rax,%rbp,1),%rbx
  100424:	e8 57 21 00 00       	call   102580 <cpu_current>
  100429:	ba 67 00 00 00       	mov    $0x67,%edx
  10042e:	48 b9 00 00 00 00 00 	movabs $0x209a0000000000,%rcx
  100435:	9a 20 00 
  100438:	48 be 00 00 00 00 00 	movabs $0x20920000000000,%rsi
  10043f:	92 20 00 
  100442:	48 bf 00 00 00 00 00 	movabs $0x20fa0000000000,%rdi
  100449:	fa 20 00 
  10044c:	48 98                	cltq   
  10044e:	66 89 53 28          	mov    %dx,0x28(%rbx)
  100452:	48 69 c0 a8 20 00 00 	imul   $0x20a8,%rax,%rax
  100459:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  10045d:	48 b9 00 00 00 00 00 	movabs $0x20f20000000000,%rcx
  100464:	f2 20 00 
  100467:	48 89 4b 20          	mov    %rcx,0x20(%rbx)
  10046b:	b9 89 40 00 00       	mov    $0x4089,%ecx
  100470:	48 89 73 10          	mov    %rsi,0x10(%rbx)
  100474:	48 8d 44 05 40       	lea    0x40(%rbp,%rax,1),%rax
  100479:	48 89 7b 18          	mov    %rdi,0x18(%rbx)
  10047d:	48 89 c2             	mov    %rax,%rdx
  100480:	66 89 43 2a          	mov    %ax,0x2a(%rbx)
  100484:	48 c1 ea 10          	shr    $0x10,%rdx
  100488:	66 89 4b 2d          	mov    %cx,0x2d(%rbx)
  10048c:	88 53 2c             	mov    %dl,0x2c(%rbx)
  10048f:	48 89 c2             	mov    %rax,%rdx
  100492:	48 c1 ea 18          	shr    $0x18,%rdx
  100496:	48 c1 e8 20          	shr    $0x20,%rax
  10049a:	88 53 2f             	mov    %dl,0x2f(%rbx)
  10049d:	75 2c                	jne    1004cb <__am_percpu_initgdt+0xcb>
  10049f:	b8 38 00 00 00       	mov    $0x38,%eax
  1004a4:	66 89 05 35 35 00 00 	mov    %ax,0x3535(%rip)        # 1039e0 <data.0>
  1004ab:	48 8d 05 2e 35 00 00 	lea    0x352e(%rip),%rax        # 1039e0 <data.0>
  1004b2:	48 89 1d 29 35 00 00 	mov    %rbx,0x3529(%rip)        # 1039e2 <data.0+0x2>
  1004b9:	0f 01 10             	lgdt   (%rax)
  1004bc:	b8 28 00 00 00       	mov    $0x28,%eax
  1004c1:	0f 00 d8             	ltr    %ax
  1004c4:	48 83 c4 08          	add    $0x8,%rsp
  1004c8:	5b                   	pop    %rbx
  1004c9:	5d                   	pop    %rbp
  1004ca:	c3                   	ret    
  1004cb:	48 8d 1d 43 27 00 00 	lea    0x2743(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  1004d2:	b8 41 00 00 00       	mov    $0x41,%eax
  1004d7:	0f be f8             	movsbl %al,%edi
  1004da:	48 83 c3 01          	add    $0x1,%rbx
  1004de:	e8 ad fc ff ff       	call   100190 <putch>
  1004e3:	0f b6 03             	movzbl (%rbx),%eax
  1004e6:	84 c0                	test   %al,%al
  1004e8:	75 ed                	jne    1004d7 <__am_percpu_initgdt+0xd7>
  1004ea:	48 8d 1d 97 27 00 00 	lea    0x2797(%rip),%rbx        # 102c88 <vsnprintf+0x128>
  1004f1:	b8 69 00 00 00       	mov    $0x69,%eax
  1004f6:	0f be f8             	movsbl %al,%edi
  1004f9:	48 83 c3 01          	add    $0x1,%rbx
  1004fd:	e8 8e fc ff ff       	call   100190 <putch>
  100502:	0f b6 03             	movzbl (%rbx),%eax
  100505:	84 c0                	test   %al,%al
  100507:	75 ed                	jne    1004f6 <__am_percpu_initgdt+0xf6>
  100509:	48 8d 1d e0 27 00 00 	lea    0x27e0(%rip),%rbx        # 102cf0 <vsnprintf+0x190>
  100510:	b8 20 00 00 00       	mov    $0x20,%eax
  100515:	0f be f8             	movsbl %al,%edi
  100518:	48 83 c3 01          	add    $0x1,%rbx
  10051c:	e8 6f fc ff ff       	call   100190 <putch>
  100521:	0f b6 03             	movzbl (%rbx),%eax
  100524:	84 c0                	test   %al,%al
  100526:	75 ed                	jne    100515 <__am_percpu_initgdt+0x115>
  100528:	bf 01 00 00 00       	mov    $0x1,%edi
  10052d:	e8 6e fc ff ff       	call   1001a0 <halt>
  100532:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  100539:	00 00 00 00 
  10053d:	0f 1f 00             	nopl   (%rax)

0000000000100540 <__am_percpu_init>:
  100540:	f3 0f 1e fa          	endbr64 
  100544:	48 83 ec 08          	sub    $0x8,%rsp
  100548:	31 c0                	xor    %eax,%eax
  10054a:	e8 b1 fe ff ff       	call   100400 <__am_percpu_initgdt>
  10054f:	31 c0                	xor    %eax,%eax
  100551:	e8 8a 1c 00 00       	call   1021e0 <__am_percpu_initlapic>
  100556:	31 c0                	xor    %eax,%eax
  100558:	48 83 c4 08          	add    $0x8,%rsp
  10055c:	e9 3f 11 00 00       	jmp    1016a0 <__am_percpu_initirq>
  100561:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  100568:	00 00 00 00 
  10056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000100570 <__am_bootcpu_init>:
  100570:	f3 0f 1e fa          	endbr64 
  100574:	48 83 ec 08          	sub    $0x8,%rsp
  100578:	31 c0                	xor    %eax,%eax
  10057a:	e8 e1 fc ff ff       	call   100260 <__am_heap_init>
  10057f:	48 c7 c1 d0 39 10 00 	mov    $0x1039d0,%rcx
  100586:	48 89 01             	mov    %rax,(%rcx)
  100589:	31 c0                	xor    %eax,%eax
  10058b:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  10058f:	e8 1c fd ff ff       	call   1002b0 <__am_lapic_init>
  100594:	31 c0                	xor    %eax,%eax
  100596:	e8 05 1e 00 00       	call   1023a0 <__am_ioapic_init>
  10059b:	31 c0                	xor    %eax,%eax
  10059d:	48 83 c4 08          	add    $0x8,%rsp
  1005a1:	e9 9a ff ff ff       	jmp    100540 <__am_percpu_init>
  1005a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  1005ad:	00 00 00 

00000000001005b0 <_start_c>:
  1005b0:	f3 0f 1e fa          	endbr64 
  1005b4:	8b 04 25 04 70 00 00 	mov    0x7004,%eax
  1005bb:	85 c0                	test   %eax,%eax
  1005bd:	74 11                	je     1005d0 <_start_c+0x20>
  1005bf:	31 c0                	xor    %eax,%eax
  1005c1:	e9 da 1f 00 00       	jmp    1025a0 <__am_othercpu_entry>
  1005c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  1005cd:	00 00 00 
  1005d0:	55                   	push   %rbp
  1005d1:	31 c0                	xor    %eax,%eax
  1005d3:	48 89 fd             	mov    %rdi,%rbp
  1005d6:	53                   	push   %rbx
  1005d7:	48 83 ec 08          	sub    $0x8,%rsp
  1005db:	e8 90 ff ff ff       	call   100570 <__am_bootcpu_init>
  1005e0:	e8 9b 1f 00 00       	call   102580 <cpu_current>
  1005e5:	48 c7 c2 c0 4a 20 00 	mov    $0x204ac0,%rdx
  1005ec:	48 98                	cltq   
  1005ee:	48 69 c0 a8 20 00 00 	imul   $0x20a8,%rax,%rax
  1005f5:	48 8d 9c 10 a8 20 00 	lea    0x20a8(%rax,%rdx,1),%rbx
  1005fc:	00 
  1005fd:	48 8d 15 3c fc ff ff 	lea    -0x3c4(%rip),%rdx        # 100240 <call_main>
  100604:	48 89 e8             	mov    %rbp,%rax
  100607:	48 89 dc             	mov    %rbx,%rsp
  10060a:	48 89 c7             	mov    %rax,%rdi
  10060d:	ff e2                	jmp    *%rdx
  10060f:	48 83 c4 08          	add    $0x8,%rsp
  100613:	5b                   	pop    %rbx
  100614:	5d                   	pop    %rbp
  100615:	c3                   	ret    
  100616:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  10061d:	00 00 00 

0000000000100620 <__am_irq_handle>:
  100620:	f3 0f 1e fa          	endbr64 
  100624:	55                   	push   %rbp
  100625:	48 8d 05 1d 27 00 00 	lea    0x271d(%rip),%rax        # 102d49 <vsnprintf+0x1e9>
  10062c:	48 89 fd             	mov    %rdi,%rbp
  10062f:	53                   	push   %rbx
  100630:	48 83 ec 38          	sub    $0x38,%rsp
  100634:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100639:	48 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%rax
  100640:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  100647:	00 
  100648:	48 89 87 80 00 00 00 	mov    %rax,0x80(%rdi)
  10064f:	48 8b 87 c8 00 00 00 	mov    0xc8(%rdi),%rax
  100656:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  10065d:	00 00 
  10065f:	48 89 87 88 00 00 00 	mov    %rax,0x88(%rdi)
  100666:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
  10066d:	48 89 87 90 00 00 00 	mov    %rax,0x90(%rdi)
  100674:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
  10067b:	48 89 87 98 00 00 00 	mov    %rax,0x98(%rdi)
  100682:	e8 f9 1e 00 00       	call   102580 <cpu_current>
  100687:	48 c7 c3 c0 4a 20 00 	mov    $0x204ac0,%rbx
  10068e:	48 98                	cltq   
  100690:	48 69 c0 a8 20 00 00 	imul   $0x20a8,%rax,%rax
  100697:	48 8b 44 03 44       	mov    0x44(%rbx,%rax,1),%rax
  10069c:	48 89 85 a8 00 00 00 	mov    %rax,0xa8(%rbp)
  1006a3:	48 8b 85 e0 00 00 00 	mov    0xe0(%rbp),%rax
  1006aa:	48 89 85 a0 00 00 00 	mov    %rax,0xa0(%rbp)
  1006b1:	0f 20 d8             	mov    %cr3,%rax
  1006b4:	48 89 04 24          	mov    %rax,(%rsp)
  1006b8:	48 8b 04 24          	mov    (%rsp),%rax
  1006bc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  1006c0:	48 8b 85 b0 00 00 00 	mov    0xb0(%rbp),%rax
  1006c7:	48 8d 50 e0          	lea    -0x20(%rax),%rdx
  1006cb:	48 83 fa 1f          	cmp    $0x1f,%rdx
  1006cf:	0f 86 ab 00 00 00    	jbe    100780 <__am_irq_handle+0x160>
  1006d5:	48 83 f8 24          	cmp    $0x24,%rax
  1006d9:	77 15                	ja     1006f0 <__am_irq_handle+0xd0>
  1006db:	48 8d 0d 46 29 00 00 	lea    0x2946(%rip),%rcx        # 103028 <vsnprintf+0x4c8>
  1006e2:	48 63 14 81          	movslq (%rcx,%rax,4),%rdx
  1006e6:	48 01 ca             	add    %rcx,%rdx
  1006e9:	3e ff e2             	notrack jmp *%rdx
  1006ec:	0f 1f 40 00          	nopl   0x0(%rax)
  1006f0:	48 3d 80 00 00 00    	cmp    $0x80,%rax
  1006f6:	0f 84 64 02 00 00    	je     100960 <__am_irq_handle+0x340>
  1006fc:	48 3d 81 00 00 00    	cmp    $0x81,%rax
  100702:	0f 85 90 00 00 00    	jne    100798 <__am_irq_handle+0x178>
  100708:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%rsp)
  10070f:	00 
  100710:	48 8d 05 9f 26 00 00 	lea    0x269f(%rip),%rax        # 102db6 <vsnprintf+0x256>
  100717:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  10071c:	31 c0                	xor    %eax,%eax
  10071e:	66 90                	xchg   %ax,%ax
  100720:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  100725:	48 89 ef             	mov    %rbp,%rdi
  100728:	ff 74 24 28          	push   0x28(%rsp)
  10072c:	ff 74 24 28          	push   0x28(%rsp)
  100730:	50                   	push   %rax
  100731:	ff 74 24 28          	push   0x28(%rsp)
  100735:	ff 15 e5 42 00 00    	call   *0x42e5(%rip)        # 104a20 <user_handler>
  10073b:	48 89 c5             	mov    %rax,%rbp
  10073e:	48 83 c4 20          	add    $0x20,%rsp
  100742:	48 85 c0             	test   %rax,%rax
  100745:	0f 84 30 02 00 00    	je     10097b <__am_irq_handle+0x35b>
  10074b:	48 8b 00             	mov    (%rax),%rax
  10074e:	48 85 c0             	test   %rax,%rax
  100751:	74 1d                	je     100770 <__am_irq_handle+0x150>
  100753:	0f 22 d8             	mov    %rax,%cr3
  100756:	e8 25 1e 00 00       	call   102580 <cpu_current>
  10075b:	48 8b 95 a8 00 00 00 	mov    0xa8(%rbp),%rdx
  100762:	48 98                	cltq   
  100764:	48 69 c0 a8 20 00 00 	imul   $0x20a8,%rax,%rax
  10076b:	48 89 54 03 44       	mov    %rdx,0x44(%rbx,%rax,1)
  100770:	48 83 c4 38          	add    $0x38,%rsp
  100774:	48 89 ef             	mov    %rbp,%rdi
  100777:	5b                   	pop    %rbx
  100778:	5d                   	pop    %rbp
  100779:	e9 eb 1e 00 00       	jmp    102669 <__am_iret>
  10077e:	66 90                	xchg   %ax,%ax
  100780:	31 c0                	xor    %eax,%eax
  100782:	e8 49 1b 00 00       	call   1022d0 <__am_lapic_eoi>
  100787:	48 8b 85 b0 00 00 00 	mov    0xb0(%rbp),%rax
  10078e:	e9 42 ff ff ff       	jmp    1006d5 <__am_irq_handle+0xb5>
  100793:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100798:	48 8d 05 a1 27 00 00 	lea    0x27a1(%rip),%rax        # 102f40 <vsnprintf+0x3e0>
  10079f:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  1007a6:	00 
  1007a7:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  1007ac:	48 8b 85 b8 00 00 00 	mov    0xb8(%rbp),%rax
  1007b3:	e9 68 ff ff ff       	jmp    100720 <__am_irq_handle+0x100>
  1007b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1007bf:	00 
  1007c0:	48 8d 35 ff 25 00 00 	lea    0x25ff(%rip),%rsi        # 102dc6 <vsnprintf+0x266>
  1007c7:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  1007ce:	00 
  1007cf:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  1007d4:	e9 47 ff ff ff       	jmp    100720 <__am_irq_handle+0x100>
  1007d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1007e0:	48 8d 05 f4 25 00 00 	lea    0x25f4(%rip),%rax        # 102ddb <vsnprintf+0x27b>
  1007e7:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  1007ee:	00 
  1007ef:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  1007f4:	31 c0                	xor    %eax,%eax
  1007f6:	e9 25 ff ff ff       	jmp    100720 <__am_irq_handle+0x100>
  1007fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100800:	48 8d 05 e9 25 00 00 	lea    0x25e9(%rip),%rax        # 102df0 <vsnprintf+0x290>
  100807:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  10080e:	00 
  10080f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100814:	31 c0                	xor    %eax,%eax
  100816:	e9 05 ff ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10081b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100820:	48 8d 05 e1 25 00 00 	lea    0x25e1(%rip),%rax        # 102e08 <vsnprintf+0x2a8>
  100827:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  10082e:	00 
  10082f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100834:	31 c0                	xor    %eax,%eax
  100836:	e9 e5 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10083b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100840:	48 8d 05 d4 25 00 00 	lea    0x25d4(%rip),%rax        # 102e1b <vsnprintf+0x2bb>
  100847:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  10084e:	00 
  10084f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100854:	31 c0                	xor    %eax,%eax
  100856:	e9 c5 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10085b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100860:	48 8d 05 69 26 00 00 	lea    0x2669(%rip),%rax        # 102ed0 <vsnprintf+0x370>
  100867:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  10086e:	00 
  10086f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100874:	31 c0                	xor    %eax,%eax
  100876:	e9 a5 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10087b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100880:	48 8d 05 a7 25 00 00 	lea    0x25a7(%rip),%rax        # 102e2e <vsnprintf+0x2ce>
  100887:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  10088e:	00 
  10088f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100894:	31 c0                	xor    %eax,%eax
  100896:	e9 85 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10089b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1008a0:	48 8d 05 49 26 00 00 	lea    0x2649(%rip),%rax        # 102ef0 <vsnprintf+0x390>
  1008a7:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
  1008ae:	00 
  1008af:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  1008b4:	31 c0                	xor    %eax,%eax
  1008b6:	e9 65 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  1008bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1008c0:	48 8d 05 51 26 00 00 	lea    0x2651(%rip),%rax        # 102f18 <vsnprintf+0x3b8>
  1008c7:	c7 44 24 10 03 00 00 	movl   $0x3,0x10(%rsp)
  1008ce:	00 
  1008cf:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  1008d4:	31 c0                	xor    %eax,%eax
  1008d6:	f6 85 b8 00 00 00 02 	testb  $0x2,0xb8(%rbp)
  1008dd:	0f 95 c0             	setne  %al
  1008e0:	48 83 c0 01          	add    $0x1,%rax
  1008e4:	0f 20 d2             	mov    %cr2,%rdx
  1008e7:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  1008ec:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  1008f1:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
  1008f6:	e9 25 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  1008fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100900:	48 8d 05 4f 24 00 00 	lea    0x244f(%rip),%rax        # 102d56 <vsnprintf+0x1f6>
  100907:	c7 44 24 10 05 00 00 	movl   $0x5,0x10(%rsp)
  10090e:	00 
  10090f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100914:	31 c0                	xor    %eax,%eax
  100916:	e9 05 fe ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10091b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100920:	48 8d 05 47 24 00 00 	lea    0x2447(%rip),%rax        # 102d6e <vsnprintf+0x20e>
  100927:	c7 44 24 10 06 00 00 	movl   $0x6,0x10(%rsp)
  10092e:	00 
  10092f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100934:	31 c0                	xor    %eax,%eax
  100936:	e9 e5 fd ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10093b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100940:	48 8d 05 42 24 00 00 	lea    0x2442(%rip),%rax        # 102d89 <vsnprintf+0x229>
  100947:	c7 44 24 10 06 00 00 	movl   $0x6,0x10(%rsp)
  10094e:	00 
  10094f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100954:	31 c0                	xor    %eax,%eax
  100956:	e9 c5 fd ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10095b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  100960:	48 8d 05 39 24 00 00 	lea    0x2439(%rip),%rax        # 102da0 <vsnprintf+0x240>
  100967:	c7 44 24 10 02 00 00 	movl   $0x2,0x10(%rsp)
  10096e:	00 
  10096f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  100974:	31 c0                	xor    %eax,%eax
  100976:	e9 a5 fd ff ff       	jmp    100720 <__am_irq_handle+0x100>
  10097b:	48 8d 1d 93 22 00 00 	lea    0x2293(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  100982:	b8 41 00 00 00       	mov    $0x41,%eax
  100987:	0f be f8             	movsbl %al,%edi
  10098a:	48 83 c3 01          	add    $0x1,%rbx
  10098e:	e8 fd f7 ff ff       	call   100190 <putch>
  100993:	0f b6 03             	movzbl (%rbx),%eax
  100996:	84 c0                	test   %al,%al
  100998:	75 ed                	jne    100987 <__am_irq_handle+0x367>
  10099a:	48 8d 1d 8e 23 00 00 	lea    0x238e(%rip),%rbx        # 102d2f <vsnprintf+0x1cf>
  1009a1:	b8 72 00 00 00       	mov    $0x72,%eax
  1009a6:	0f be f8             	movsbl %al,%edi
  1009a9:	48 83 c3 01          	add    $0x1,%rbx
  1009ad:	e8 de f7 ff ff       	call   100190 <putch>
  1009b2:	0f b6 03             	movzbl (%rbx),%eax
  1009b5:	84 c0                	test   %al,%al
  1009b7:	75 ed                	jne    1009a6 <__am_irq_handle+0x386>
  1009b9:	48 8d 1d d0 24 00 00 	lea    0x24d0(%rip),%rbx        # 102e90 <vsnprintf+0x330>
  1009c0:	b8 20 00 00 00       	mov    $0x20,%eax
  1009c5:	0f be f8             	movsbl %al,%edi
  1009c8:	48 83 c3 01          	add    $0x1,%rbx
  1009cc:	e8 bf f7 ff ff       	call   100190 <putch>
  1009d1:	0f b6 03             	movzbl (%rbx),%eax
  1009d4:	84 c0                	test   %al,%al
  1009d6:	75 ed                	jne    1009c5 <__am_irq_handle+0x3a5>
  1009d8:	bf 01 00 00 00       	mov    $0x1,%edi
  1009dd:	e8 be f7 ff ff       	call   1001a0 <halt>
  1009e2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1009e9:	00 00 00 00 
  1009ed:	0f 1f 00             	nopl   (%rax)

00000000001009f0 <cte_init>:
  1009f0:	f3 0f 1e fa          	endbr64 
  1009f4:	53                   	push   %rbx
  1009f5:	48 89 fb             	mov    %rdi,%rbx
  1009f8:	e8 83 1b 00 00       	call   102580 <cpu_current>
  1009fd:	85 c0                	test   %eax,%eax
  1009ff:	0f 85 ac 0a 00 00    	jne    1014b1 <cte_init+0xac1>
  100a05:	48 85 db             	test   %rbx,%rbx
  100a08:	0f 84 0a 0b 00 00    	je     101518 <cte_init+0xb28>
  100a0e:	49 c7 c0 ef 27 10 00 	mov    $0x1027ef,%r8
  100a15:	4c 8d 0d 04 30 00 00 	lea    0x3004(%rip),%r9        # 103a20 <idt>
  100a1c:	48 be ff ff 00 00 00 	movabs $0xffff00000000ffff,%rsi
  100a23:	00 ff ff 
  100a26:	4c 89 c7             	mov    %r8,%rdi
  100a29:	4d 89 c2             	mov    %r8,%r10
  100a2c:	48 c1 ef 20          	shr    $0x20,%rdi
  100a30:	49 c1 ea 10          	shr    $0x10,%r10
  100a34:	49 89 fb             	mov    %rdi,%r11
  100a37:	48 bf 00 00 08 00 00 	movabs $0x8f0000080000,%rdi
  100a3e:	8f 00 00 
  100a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  100a48:	48 63 d0             	movslq %eax,%rdx
  100a4b:	83 c0 01             	add    $0x1,%eax
  100a4e:	48 c1 e2 04          	shl    $0x4,%rdx
  100a52:	4c 01 ca             	add    %r9,%rdx
  100a55:	66 44 89 02          	mov    %r8w,(%rdx)
  100a59:	48 8b 0a             	mov    (%rdx),%rcx
  100a5c:	44 89 5a 08          	mov    %r11d,0x8(%rdx)
  100a60:	48 21 f1             	and    %rsi,%rcx
  100a63:	c7 42 0c 00 00 00 00 	movl   $0x0,0xc(%rdx)
  100a6a:	48 09 f9             	or     %rdi,%rcx
  100a6d:	48 89 0a             	mov    %rcx,(%rdx)
  100a70:	66 44 89 52 06       	mov    %r10w,0x6(%rdx)
  100a75:	3d 00 01 00 00       	cmp    $0x100,%eax
  100a7a:	75 cc                	jne    100a48 <cte_init+0x58>
  100a7c:	48 c7 c0 95 26 10 00 	mov    $0x102695,%rax
  100a83:	c7 05 9f 2f 00 00 00 	movl   $0x0,0x2f9f(%rip)        # 103a2c <idt+0xc>
  100a8a:	00 00 00 
  100a8d:	48 b9 00 00 08 00 00 	movabs $0xf0000080000,%rcx
  100a94:	0f 00 00 
  100a97:	c7 05 9b 2f 00 00 00 	movl   $0x0,0x2f9b(%rip)        # 103a3c <idt+0x1c>
  100a9e:	00 00 00 
  100aa1:	66 41 89 01          	mov    %ax,(%r9)
  100aa5:	49 8b 11             	mov    (%r9),%rdx
  100aa8:	c7 05 9a 2f 00 00 00 	movl   $0x0,0x2f9a(%rip)        # 103a4c <idt+0x2c>
  100aaf:	00 00 00 
  100ab2:	c7 05 a0 2f 00 00 00 	movl   $0x0,0x2fa0(%rip)        # 103a5c <idt+0x3c>
  100ab9:	00 00 00 
  100abc:	48 21 f2             	and    %rsi,%rdx
  100abf:	48 09 fa             	or     %rdi,%rdx
  100ac2:	49 89 11             	mov    %rdx,(%r9)
  100ac5:	48 89 c2             	mov    %rax,%rdx
  100ac8:	48 c1 e8 20          	shr    $0x20,%rax
  100acc:	89 05 56 2f 00 00    	mov    %eax,0x2f56(%rip)        # 103a28 <idt+0x8>
  100ad2:	48 c7 c0 9c 26 10 00 	mov    $0x10269c,%rax
  100ad9:	48 c1 ea 10          	shr    $0x10,%rdx
  100add:	66 89 15 42 2f 00 00 	mov    %dx,0x2f42(%rip)        # 103a26 <idt+0x6>
  100ae4:	66 89 05 45 2f 00 00 	mov    %ax,0x2f45(%rip)        # 103a30 <idt+0x10>
  100aeb:	48 8b 15 3e 2f 00 00 	mov    0x2f3e(%rip),%rdx        # 103a30 <idt+0x10>
  100af2:	48 21 f2             	and    %rsi,%rdx
  100af5:	48 09 fa             	or     %rdi,%rdx
  100af8:	48 89 15 31 2f 00 00 	mov    %rdx,0x2f31(%rip)        # 103a30 <idt+0x10>
  100aff:	48 89 c2             	mov    %rax,%rdx
  100b02:	48 c1 e8 20          	shr    $0x20,%rax
  100b06:	89 05 2c 2f 00 00    	mov    %eax,0x2f2c(%rip)        # 103a38 <idt+0x18>
  100b0c:	48 c7 c0 a3 26 10 00 	mov    $0x1026a3,%rax
  100b13:	48 c1 ea 10          	shr    $0x10,%rdx
  100b17:	66 89 15 18 2f 00 00 	mov    %dx,0x2f18(%rip)        # 103a36 <idt+0x16>
  100b1e:	66 89 05 1b 2f 00 00 	mov    %ax,0x2f1b(%rip)        # 103a40 <idt+0x20>
  100b25:	48 8b 15 14 2f 00 00 	mov    0x2f14(%rip),%rdx        # 103a40 <idt+0x20>
  100b2c:	48 21 f2             	and    %rsi,%rdx
  100b2f:	48 09 fa             	or     %rdi,%rdx
  100b32:	48 89 15 07 2f 00 00 	mov    %rdx,0x2f07(%rip)        # 103a40 <idt+0x20>
  100b39:	48 89 c2             	mov    %rax,%rdx
  100b3c:	48 c1 e8 20          	shr    $0x20,%rax
  100b40:	89 05 02 2f 00 00    	mov    %eax,0x2f02(%rip)        # 103a48 <idt+0x28>
  100b46:	48 c7 c0 aa 26 10 00 	mov    $0x1026aa,%rax
  100b4d:	48 c1 ea 10          	shr    $0x10,%rdx
  100b51:	66 89 15 ee 2e 00 00 	mov    %dx,0x2eee(%rip)        # 103a46 <idt+0x26>
  100b58:	66 89 05 f1 2e 00 00 	mov    %ax,0x2ef1(%rip)        # 103a50 <idt+0x30>
  100b5f:	48 8b 15 ea 2e 00 00 	mov    0x2eea(%rip),%rdx        # 103a50 <idt+0x30>
  100b66:	48 21 f2             	and    %rsi,%rdx
  100b69:	48 09 fa             	or     %rdi,%rdx
  100b6c:	48 89 15 dd 2e 00 00 	mov    %rdx,0x2edd(%rip)        # 103a50 <idt+0x30>
  100b73:	48 89 c2             	mov    %rax,%rdx
  100b76:	48 c1 e8 20          	shr    $0x20,%rax
  100b7a:	89 05 d8 2e 00 00    	mov    %eax,0x2ed8(%rip)        # 103a58 <idt+0x38>
  100b80:	48 c7 c0 b1 26 10 00 	mov    $0x1026b1,%rax
  100b87:	48 c1 ea 10          	shr    $0x10,%rdx
  100b8b:	66 89 15 c4 2e 00 00 	mov    %dx,0x2ec4(%rip)        # 103a56 <idt+0x36>
  100b92:	66 89 05 c7 2e 00 00 	mov    %ax,0x2ec7(%rip)        # 103a60 <idt+0x40>
  100b99:	48 8b 15 c0 2e 00 00 	mov    0x2ec0(%rip),%rdx        # 103a60 <idt+0x40>
  100ba0:	48 21 f2             	and    %rsi,%rdx
  100ba3:	48 09 fa             	or     %rdi,%rdx
  100ba6:	48 89 15 b3 2e 00 00 	mov    %rdx,0x2eb3(%rip)        # 103a60 <idt+0x40>
  100bad:	48 89 c2             	mov    %rax,%rdx
  100bb0:	48 c1 e8 20          	shr    $0x20,%rax
  100bb4:	48 c1 ea 10          	shr    $0x10,%rdx
  100bb8:	66 89 15 a7 2e 00 00 	mov    %dx,0x2ea7(%rip)        # 103a66 <idt+0x46>
  100bbf:	89 05 a3 2e 00 00    	mov    %eax,0x2ea3(%rip)        # 103a68 <idt+0x48>
  100bc5:	48 c7 c0 b8 26 10 00 	mov    $0x1026b8,%rax
  100bcc:	c7 05 96 2e 00 00 00 	movl   $0x0,0x2e96(%rip)        # 103a6c <idt+0x4c>
  100bd3:	00 00 00 
  100bd6:	66 89 05 93 2e 00 00 	mov    %ax,0x2e93(%rip)        # 103a70 <idt+0x50>
  100bdd:	48 8b 15 8c 2e 00 00 	mov    0x2e8c(%rip),%rdx        # 103a70 <idt+0x50>
  100be4:	c7 05 8e 2e 00 00 00 	movl   $0x0,0x2e8e(%rip)        # 103a7c <idt+0x5c>
  100beb:	00 00 00 
  100bee:	c7 05 94 2e 00 00 00 	movl   $0x0,0x2e94(%rip)        # 103a8c <idt+0x6c>
  100bf5:	00 00 00 
  100bf8:	48 21 f2             	and    %rsi,%rdx
  100bfb:	c7 05 97 2e 00 00 00 	movl   $0x0,0x2e97(%rip)        # 103a9c <idt+0x7c>
  100c02:	00 00 00 
  100c05:	48 09 fa             	or     %rdi,%rdx
  100c08:	48 89 15 61 2e 00 00 	mov    %rdx,0x2e61(%rip)        # 103a70 <idt+0x50>
  100c0f:	48 89 c2             	mov    %rax,%rdx
  100c12:	48 c1 e8 20          	shr    $0x20,%rax
  100c16:	89 05 5c 2e 00 00    	mov    %eax,0x2e5c(%rip)        # 103a78 <idt+0x58>
  100c1c:	48 c1 ea 10          	shr    $0x10,%rdx
  100c20:	48 c7 c0 bf 26 10 00 	mov    $0x1026bf,%rax
  100c27:	66 89 15 48 2e 00 00 	mov    %dx,0x2e48(%rip)        # 103a76 <idt+0x56>
  100c2e:	66 89 05 4b 2e 00 00 	mov    %ax,0x2e4b(%rip)        # 103a80 <idt+0x60>
  100c35:	48 8b 15 44 2e 00 00 	mov    0x2e44(%rip),%rdx        # 103a80 <idt+0x60>
  100c3c:	c7 05 66 2e 00 00 00 	movl   $0x0,0x2e66(%rip)        # 103aac <idt+0x8c>
  100c43:	00 00 00 
  100c46:	48 21 f2             	and    %rsi,%rdx
  100c49:	48 09 fa             	or     %rdi,%rdx
  100c4c:	48 89 15 2d 2e 00 00 	mov    %rdx,0x2e2d(%rip)        # 103a80 <idt+0x60>
  100c53:	48 89 c2             	mov    %rax,%rdx
  100c56:	48 c1 e8 20          	shr    $0x20,%rax
  100c5a:	89 05 28 2e 00 00    	mov    %eax,0x2e28(%rip)        # 103a88 <idt+0x68>
  100c60:	48 c7 c0 c9 26 10 00 	mov    $0x1026c9,%rax
  100c67:	48 c1 ea 10          	shr    $0x10,%rdx
  100c6b:	66 89 15 14 2e 00 00 	mov    %dx,0x2e14(%rip)        # 103a86 <idt+0x66>
  100c72:	66 89 05 17 2e 00 00 	mov    %ax,0x2e17(%rip)        # 103a90 <idt+0x70>
  100c79:	48 8b 15 10 2e 00 00 	mov    0x2e10(%rip),%rdx        # 103a90 <idt+0x70>
  100c80:	48 21 f2             	and    %rsi,%rdx
  100c83:	48 09 fa             	or     %rdi,%rdx
  100c86:	48 89 15 03 2e 00 00 	mov    %rdx,0x2e03(%rip)        # 103a90 <idt+0x70>
  100c8d:	48 89 c2             	mov    %rax,%rdx
  100c90:	48 c1 e8 20          	shr    $0x20,%rax
  100c94:	89 05 fe 2d 00 00    	mov    %eax,0x2dfe(%rip)        # 103a98 <idt+0x78>
  100c9a:	48 c7 c0 d3 26 10 00 	mov    $0x1026d3,%rax
  100ca1:	48 c1 ea 10          	shr    $0x10,%rdx
  100ca5:	66 89 15 ea 2d 00 00 	mov    %dx,0x2dea(%rip)        # 103a96 <idt+0x76>
  100cac:	66 89 05 ed 2d 00 00 	mov    %ax,0x2ded(%rip)        # 103aa0 <idt+0x80>
  100cb3:	48 8b 15 e6 2d 00 00 	mov    0x2de6(%rip),%rdx        # 103aa0 <idt+0x80>
  100cba:	48 21 f2             	and    %rsi,%rdx
  100cbd:	48 09 fa             	or     %rdi,%rdx
  100cc0:	48 89 15 d9 2d 00 00 	mov    %rdx,0x2dd9(%rip)        # 103aa0 <idt+0x80>
  100cc7:	48 89 c2             	mov    %rax,%rdx
  100cca:	48 c1 e8 20          	shr    $0x20,%rax
  100cce:	89 05 d4 2d 00 00    	mov    %eax,0x2dd4(%rip)        # 103aa8 <idt+0x88>
  100cd4:	48 c7 c0 db 26 10 00 	mov    $0x1026db,%rax
  100cdb:	48 c1 ea 10          	shr    $0x10,%rdx
  100cdf:	66 89 15 c0 2d 00 00 	mov    %dx,0x2dc0(%rip)        # 103aa6 <idt+0x86>
  100ce6:	66 89 05 c3 2d 00 00 	mov    %ax,0x2dc3(%rip)        # 103ab0 <idt+0x90>
  100ced:	48 8b 15 bc 2d 00 00 	mov    0x2dbc(%rip),%rdx        # 103ab0 <idt+0x90>
  100cf4:	c7 05 be 2d 00 00 00 	movl   $0x0,0x2dbe(%rip)        # 103abc <idt+0x9c>
  100cfb:	00 00 00 
  100cfe:	c7 05 c4 2d 00 00 00 	movl   $0x0,0x2dc4(%rip)        # 103acc <idt+0xac>
  100d05:	00 00 00 
  100d08:	48 21 f2             	and    %rsi,%rdx
  100d0b:	c7 05 c7 2d 00 00 00 	movl   $0x0,0x2dc7(%rip)        # 103adc <idt+0xbc>
  100d12:	00 00 00 
  100d15:	48 09 fa             	or     %rdi,%rdx
  100d18:	48 89 15 91 2d 00 00 	mov    %rdx,0x2d91(%rip)        # 103ab0 <idt+0x90>
  100d1f:	48 89 c2             	mov    %rax,%rdx
  100d22:	48 c1 e8 20          	shr    $0x20,%rax
  100d26:	89 05 8c 2d 00 00    	mov    %eax,0x2d8c(%rip)        # 103ab8 <idt+0x98>
  100d2c:	48 c1 ea 10          	shr    $0x10,%rdx
  100d30:	48 c7 c0 e5 26 10 00 	mov    $0x1026e5,%rax
  100d37:	66 89 15 78 2d 00 00 	mov    %dx,0x2d78(%rip)        # 103ab6 <idt+0x96>
  100d3e:	66 89 05 7b 2d 00 00 	mov    %ax,0x2d7b(%rip)        # 103ac0 <idt+0xa0>
  100d45:	48 8b 15 74 2d 00 00 	mov    0x2d74(%rip),%rdx        # 103ac0 <idt+0xa0>
  100d4c:	c7 05 96 2d 00 00 00 	movl   $0x0,0x2d96(%rip)        # 103aec <idt+0xcc>
  100d53:	00 00 00 
  100d56:	48 21 f2             	and    %rsi,%rdx
  100d59:	48 09 fa             	or     %rdi,%rdx
  100d5c:	48 89 15 5d 2d 00 00 	mov    %rdx,0x2d5d(%rip)        # 103ac0 <idt+0xa0>
  100d63:	48 89 c2             	mov    %rax,%rdx
  100d66:	48 c1 e8 20          	shr    $0x20,%rax
  100d6a:	48 c1 ea 10          	shr    $0x10,%rdx
  100d6e:	89 05 54 2d 00 00    	mov    %eax,0x2d54(%rip)        # 103ac8 <idt+0xa8>
  100d74:	48 b8 ff ff 00 00 00 	movabs $0xffff80000000ffff,%rax
  100d7b:	80 ff ff 
  100d7e:	66 89 15 41 2d 00 00 	mov    %dx,0x2d41(%rip)        # 103ac6 <idt+0xa6>
  100d85:	48 c7 c2 ed 26 10 00 	mov    $0x1026ed,%rdx
  100d8c:	66 89 15 3d 2d 00 00 	mov    %dx,0x2d3d(%rip)        # 103ad0 <idt+0xb0>
  100d93:	48 23 05 36 2d 00 00 	and    0x2d36(%rip),%rax        # 103ad0 <idt+0xb0>
  100d9a:	48 09 c8             	or     %rcx,%rax
  100d9d:	49 89 c0             	mov    %rax,%r8
  100da0:	48 89 05 29 2d 00 00 	mov    %rax,0x2d29(%rip)        # 103ad0 <idt+0xb0>
  100da7:	49 c1 e8 28          	shr    $0x28,%r8
  100dab:	44 89 c0             	mov    %r8d,%eax
  100dae:	83 c8 80             	or     $0xffffff80,%eax
  100db1:	88 05 1e 2d 00 00    	mov    %al,0x2d1e(%rip)        # 103ad5 <idt+0xb5>
  100db7:	48 89 d0             	mov    %rdx,%rax
  100dba:	48 c1 ea 20          	shr    $0x20,%rdx
  100dbe:	48 c1 e8 10          	shr    $0x10,%rax
  100dc2:	89 15 10 2d 00 00    	mov    %edx,0x2d10(%rip)        # 103ad8 <idt+0xb8>
  100dc8:	66 89 05 07 2d 00 00 	mov    %ax,0x2d07(%rip)        # 103ad6 <idt+0xb6>
  100dcf:	48 c7 c0 f5 26 10 00 	mov    $0x1026f5,%rax
  100dd6:	66 89 05 03 2d 00 00 	mov    %ax,0x2d03(%rip)        # 103ae0 <idt+0xc0>
  100ddd:	48 8b 15 fc 2c 00 00 	mov    0x2cfc(%rip),%rdx        # 103ae0 <idt+0xc0>
  100de4:	48 21 f2             	and    %rsi,%rdx
  100de7:	48 09 fa             	or     %rdi,%rdx
  100dea:	48 89 15 ef 2c 00 00 	mov    %rdx,0x2cef(%rip)        # 103ae0 <idt+0xc0>
  100df1:	48 89 c2             	mov    %rax,%rdx
  100df4:	48 c1 e8 20          	shr    $0x20,%rax
  100df8:	89 05 ea 2c 00 00    	mov    %eax,0x2cea(%rip)        # 103ae8 <idt+0xc8>
  100dfe:	48 c7 c0 fd 26 10 00 	mov    $0x1026fd,%rax
  100e05:	48 c1 ea 10          	shr    $0x10,%rdx
  100e09:	66 89 15 d6 2c 00 00 	mov    %dx,0x2cd6(%rip)        # 103ae6 <idt+0xc6>
  100e10:	66 89 05 d9 2c 00 00 	mov    %ax,0x2cd9(%rip)        # 103af0 <idt+0xd0>
  100e17:	48 8b 15 d2 2c 00 00 	mov    0x2cd2(%rip),%rdx        # 103af0 <idt+0xd0>
  100e1e:	48 21 f2             	and    %rsi,%rdx
  100e21:	48 09 fa             	or     %rdi,%rdx
  100e24:	48 89 15 c5 2c 00 00 	mov    %rdx,0x2cc5(%rip)        # 103af0 <idt+0xd0>
  100e2b:	48 89 c2             	mov    %rax,%rdx
  100e2e:	48 c1 e8 20          	shr    $0x20,%rax
  100e32:	48 c1 ea 10          	shr    $0x10,%rdx
  100e36:	66 89 15 b9 2c 00 00 	mov    %dx,0x2cb9(%rip)        # 103af6 <idt+0xd6>
  100e3d:	89 05 b5 2c 00 00    	mov    %eax,0x2cb5(%rip)        # 103af8 <idt+0xd8>
  100e43:	48 c7 c0 05 27 10 00 	mov    $0x102705,%rax
  100e4a:	c7 05 a8 2c 00 00 00 	movl   $0x0,0x2ca8(%rip)        # 103afc <idt+0xdc>
  100e51:	00 00 00 
  100e54:	66 89 05 a5 2c 00 00 	mov    %ax,0x2ca5(%rip)        # 103b00 <idt+0xe0>
  100e5b:	48 8b 15 9e 2c 00 00 	mov    0x2c9e(%rip),%rdx        # 103b00 <idt+0xe0>
  100e62:	c7 05 a0 2c 00 00 00 	movl   $0x0,0x2ca0(%rip)        # 103b0c <idt+0xec>
  100e69:	00 00 00 
  100e6c:	c7 05 a6 2c 00 00 00 	movl   $0x0,0x2ca6(%rip)        # 103b1c <idt+0xfc>
  100e73:	00 00 00 
  100e76:	48 21 f2             	and    %rsi,%rdx
  100e79:	c7 05 a9 2c 00 00 00 	movl   $0x0,0x2ca9(%rip)        # 103b2c <idt+0x10c>
  100e80:	00 00 00 
  100e83:	48 09 fa             	or     %rdi,%rdx
  100e86:	48 89 15 73 2c 00 00 	mov    %rdx,0x2c73(%rip)        # 103b00 <idt+0xe0>
  100e8d:	48 89 c2             	mov    %rax,%rdx
  100e90:	48 c1 e8 20          	shr    $0x20,%rax
  100e94:	89 05 6e 2c 00 00    	mov    %eax,0x2c6e(%rip)        # 103b08 <idt+0xe8>
  100e9a:	48 c1 ea 10          	shr    $0x10,%rdx
  100e9e:	48 c7 c0 0d 27 10 00 	mov    $0x10270d,%rax
  100ea5:	66 89 15 5a 2c 00 00 	mov    %dx,0x2c5a(%rip)        # 103b06 <idt+0xe6>
  100eac:	66 89 05 5d 2c 00 00 	mov    %ax,0x2c5d(%rip)        # 103b10 <idt+0xf0>
  100eb3:	48 8b 15 56 2c 00 00 	mov    0x2c56(%rip),%rdx        # 103b10 <idt+0xf0>
  100eba:	c7 05 98 2c 00 00 00 	movl   $0x0,0x2c98(%rip)        # 103b5c <idt+0x13c>
  100ec1:	00 00 00 
  100ec4:	48 21 f2             	and    %rsi,%rdx
  100ec7:	48 09 fa             	or     %rdi,%rdx
  100eca:	48 89 15 3f 2c 00 00 	mov    %rdx,0x2c3f(%rip)        # 103b10 <idt+0xf0>
  100ed1:	48 89 c2             	mov    %rax,%rdx
  100ed4:	48 c1 ea 10          	shr    $0x10,%rdx
  100ed8:	48 c1 e8 20          	shr    $0x20,%rax
  100edc:	89 05 36 2c 00 00    	mov    %eax,0x2c36(%rip)        # 103b18 <idt+0xf8>
  100ee2:	48 c7 c0 17 27 10 00 	mov    $0x102717,%rax
  100ee9:	66 89 15 26 2c 00 00 	mov    %dx,0x2c26(%rip)        # 103b16 <idt+0xf6>
  100ef0:	66 89 05 29 2c 00 00 	mov    %ax,0x2c29(%rip)        # 103b20 <idt+0x100>
  100ef7:	48 8b 15 22 2c 00 00 	mov    0x2c22(%rip),%rdx        # 103b20 <idt+0x100>
  100efe:	48 21 f2             	and    %rsi,%rdx
  100f01:	48 09 fa             	or     %rdi,%rdx
  100f04:	48 89 15 15 2c 00 00 	mov    %rdx,0x2c15(%rip)        # 103b20 <idt+0x100>
  100f0b:	48 89 c2             	mov    %rax,%rdx
  100f0e:	48 c1 e8 20          	shr    $0x20,%rax
  100f12:	48 c1 ea 10          	shr    $0x10,%rdx
  100f16:	89 05 0c 2c 00 00    	mov    %eax,0x2c0c(%rip)        # 103b28 <idt+0x108>
  100f1c:	48 b8 ff ff 00 00 00 	movabs $0xfffff0000000ffff,%rax
  100f23:	f0 ff ff 
  100f26:	66 89 15 f9 2b 00 00 	mov    %dx,0x2bf9(%rip)        # 103b26 <idt+0x106>
  100f2d:	48 c7 c2 21 27 10 00 	mov    $0x102721,%rdx
  100f34:	66 89 15 15 2c 00 00 	mov    %dx,0x2c15(%rip)        # 103b50 <idt+0x130>
  100f3b:	48 23 05 0e 2c 00 00 	and    0x2c0e(%rip),%rax        # 103b50 <idt+0x130>
  100f42:	48 09 c8             	or     %rcx,%rax
  100f45:	48 89 c1             	mov    %rax,%rcx
  100f48:	48 89 05 01 2c 00 00 	mov    %rax,0x2c01(%rip)        # 103b50 <idt+0x130>
  100f4f:	48 c1 e9 28          	shr    $0x28,%rcx
  100f53:	89 c8                	mov    %ecx,%eax
  100f55:	48 b9 00 00 08 00 00 	movabs $0xef0000080000,%rcx
  100f5c:	ef 00 00 
  100f5f:	83 e0 0f             	and    $0xf,%eax
  100f62:	83 c8 80             	or     $0xffffff80,%eax
  100f65:	88 05 ea 2b 00 00    	mov    %al,0x2bea(%rip)        # 103b55 <idt+0x135>
  100f6b:	48 89 d0             	mov    %rdx,%rax
  100f6e:	48 c1 ea 20          	shr    $0x20,%rdx
  100f72:	48 c1 e8 10          	shr    $0x10,%rax
  100f76:	89 15 dc 2b 00 00    	mov    %edx,0x2bdc(%rip)        # 103b58 <idt+0x138>
  100f7c:	66 89 05 d3 2b 00 00 	mov    %ax,0x2bd3(%rip)        # 103b56 <idt+0x136>
  100f83:	48 c7 c0 2b 27 10 00 	mov    $0x10272b,%rax
  100f8a:	66 89 05 7f 2c 00 00 	mov    %ax,0x2c7f(%rip)        # 103c10 <idt+0x1f0>
  100f91:	48 8b 15 78 2c 00 00 	mov    0x2c78(%rip),%rdx        # 103c10 <idt+0x1f0>
  100f98:	c7 05 7a 2c 00 00 00 	movl   $0x0,0x2c7a(%rip)        # 103c1c <idt+0x1fc>
  100f9f:	00 00 00 
  100fa2:	c7 05 80 2c 00 00 00 	movl   $0x0,0x2c80(%rip)        # 103c2c <idt+0x20c>
  100fa9:	00 00 00 
  100fac:	48 21 f2             	and    %rsi,%rdx
  100faf:	c7 05 83 2c 00 00 00 	movl   $0x0,0x2c83(%rip)        # 103c3c <idt+0x21c>
  100fb6:	00 00 00 
  100fb9:	48 09 fa             	or     %rdi,%rdx
  100fbc:	48 89 15 4d 2c 00 00 	mov    %rdx,0x2c4d(%rip)        # 103c10 <idt+0x1f0>
  100fc3:	48 89 c2             	mov    %rax,%rdx
  100fc6:	48 c1 e8 20          	shr    $0x20,%rax
  100fca:	89 05 48 2c 00 00    	mov    %eax,0x2c48(%rip)        # 103c18 <idt+0x1f8>
  100fd0:	48 c1 ea 10          	shr    $0x10,%rdx
  100fd4:	48 c7 c0 35 27 10 00 	mov    $0x102735,%rax
  100fdb:	66 89 15 34 2c 00 00 	mov    %dx,0x2c34(%rip)        # 103c16 <idt+0x1f6>
  100fe2:	66 89 05 37 2c 00 00 	mov    %ax,0x2c37(%rip)        # 103c20 <idt+0x200>
  100fe9:	48 8b 15 30 2c 00 00 	mov    0x2c30(%rip),%rdx        # 103c20 <idt+0x200>
  100ff0:	c7 05 52 2c 00 00 00 	movl   $0x0,0x2c52(%rip)        # 103c4c <idt+0x22c>
  100ff7:	00 00 00 
  100ffa:	48 21 f2             	and    %rsi,%rdx
  100ffd:	48 09 fa             	or     %rdi,%rdx
  101000:	48 89 15 19 2c 00 00 	mov    %rdx,0x2c19(%rip)        # 103c20 <idt+0x200>
  101007:	48 89 c2             	mov    %rax,%rdx
  10100a:	48 c1 e8 20          	shr    $0x20,%rax
  10100e:	89 05 14 2c 00 00    	mov    %eax,0x2c14(%rip)        # 103c28 <idt+0x208>
  101014:	48 c7 c0 3f 27 10 00 	mov    $0x10273f,%rax
  10101b:	48 c1 ea 10          	shr    $0x10,%rdx
  10101f:	66 89 15 00 2c 00 00 	mov    %dx,0x2c00(%rip)        # 103c26 <idt+0x206>
  101026:	66 89 05 03 2c 00 00 	mov    %ax,0x2c03(%rip)        # 103c30 <idt+0x210>
  10102d:	48 8b 15 fc 2b 00 00 	mov    0x2bfc(%rip),%rdx        # 103c30 <idt+0x210>
  101034:	48 21 f2             	and    %rsi,%rdx
  101037:	48 09 fa             	or     %rdi,%rdx
  10103a:	48 89 15 ef 2b 00 00 	mov    %rdx,0x2bef(%rip)        # 103c30 <idt+0x210>
  101041:	48 89 c2             	mov    %rax,%rdx
  101044:	48 c1 e8 20          	shr    $0x20,%rax
  101048:	89 05 ea 2b 00 00    	mov    %eax,0x2bea(%rip)        # 103c38 <idt+0x218>
  10104e:	48 c7 c0 49 27 10 00 	mov    $0x102749,%rax
  101055:	48 c1 ea 10          	shr    $0x10,%rdx
  101059:	66 89 15 d6 2b 00 00 	mov    %dx,0x2bd6(%rip)        # 103c36 <idt+0x216>
  101060:	66 89 05 d9 2b 00 00 	mov    %ax,0x2bd9(%rip)        # 103c40 <idt+0x220>
  101067:	48 8b 15 d2 2b 00 00 	mov    0x2bd2(%rip),%rdx        # 103c40 <idt+0x220>
  10106e:	48 21 f2             	and    %rsi,%rdx
  101071:	48 09 fa             	or     %rdi,%rdx
  101074:	48 89 15 c5 2b 00 00 	mov    %rdx,0x2bc5(%rip)        # 103c40 <idt+0x220>
  10107b:	48 89 c2             	mov    %rax,%rdx
  10107e:	48 c1 e8 20          	shr    $0x20,%rax
  101082:	89 05 c0 2b 00 00    	mov    %eax,0x2bc0(%rip)        # 103c48 <idt+0x228>
  101088:	48 c7 c0 53 27 10 00 	mov    $0x102753,%rax
  10108f:	48 c1 ea 10          	shr    $0x10,%rdx
  101093:	66 89 15 ac 2b 00 00 	mov    %dx,0x2bac(%rip)        # 103c46 <idt+0x226>
  10109a:	66 89 05 af 2b 00 00 	mov    %ax,0x2baf(%rip)        # 103c50 <idt+0x230>
  1010a1:	48 8b 15 a8 2b 00 00 	mov    0x2ba8(%rip),%rdx        # 103c50 <idt+0x230>
  1010a8:	48 21 f2             	and    %rsi,%rdx
  1010ab:	48 09 fa             	or     %rdi,%rdx
  1010ae:	48 89 15 9b 2b 00 00 	mov    %rdx,0x2b9b(%rip)        # 103c50 <idt+0x230>
  1010b5:	48 89 c2             	mov    %rax,%rdx
  1010b8:	48 c1 ea 10          	shr    $0x10,%rdx
  1010bc:	48 c1 e8 20          	shr    $0x20,%rax
  1010c0:	66 89 15 8f 2b 00 00 	mov    %dx,0x2b8f(%rip)        # 103c56 <idt+0x236>
  1010c7:	48 ba ff ff 00 00 f8 	movabs $0xfffffff80000ffff,%rdx
  1010ce:	ff ff ff 
  1010d1:	89 05 81 2b 00 00    	mov    %eax,0x2b81(%rip)        # 103c58 <idt+0x238>
  1010d7:	c7 05 7b 2b 00 00 00 	movl   $0x0,0x2b7b(%rip)        # 103c5c <idt+0x23c>
  1010de:	00 00 00 
  1010e1:	48 c7 c0 5d 27 10 00 	mov    $0x10275d,%rax
  1010e8:	c7 05 7a 2b 00 00 00 	movl   $0x0,0x2b7a(%rip)        # 103c6c <idt+0x24c>
  1010ef:	00 00 00 
  1010f2:	66 89 05 67 2b 00 00 	mov    %ax,0x2b67(%rip)        # 103c60 <idt+0x240>
  1010f9:	48 23 15 60 2b 00 00 	and    0x2b60(%rip),%rdx        # 103c60 <idt+0x240>
  101100:	48 81 ca 00 00 08 00 	or     $0x80000,%rdx
  101107:	c7 05 6b 2b 00 00 00 	movl   $0x0,0x2b6b(%rip)        # 103c7c <idt+0x25c>
  10110e:	00 00 00 
  101111:	48 89 15 48 2b 00 00 	mov    %rdx,0x2b48(%rip)        # 103c60 <idt+0x240>
  101118:	ba 00 8f ff ff       	mov    $0xffff8f00,%edx
  10111d:	66 89 15 40 2b 00 00 	mov    %dx,0x2b40(%rip)        # 103c64 <idt+0x244>
  101124:	48 89 c2             	mov    %rax,%rdx
  101127:	48 c1 e8 20          	shr    $0x20,%rax
  10112b:	89 05 37 2b 00 00    	mov    %eax,0x2b37(%rip)        # 103c68 <idt+0x248>
  101131:	48 c1 ea 10          	shr    $0x10,%rdx
  101135:	48 c7 c0 67 27 10 00 	mov    $0x102767,%rax
  10113c:	66 89 15 23 2b 00 00 	mov    %dx,0x2b23(%rip)        # 103c66 <idt+0x246>
  101143:	66 89 05 26 2b 00 00 	mov    %ax,0x2b26(%rip)        # 103c70 <idt+0x250>
  10114a:	48 8b 15 1f 2b 00 00 	mov    0x2b1f(%rip),%rdx        # 103c70 <idt+0x250>
  101151:	c7 05 31 2b 00 00 00 	movl   $0x0,0x2b31(%rip)        # 103c8c <idt+0x26c>
  101158:	00 00 00 
  10115b:	c7 05 37 2b 00 00 00 	movl   $0x0,0x2b37(%rip)        # 103c9c <idt+0x27c>
  101162:	00 00 00 
  101165:	48 21 f2             	and    %rsi,%rdx
  101168:	48 09 fa             	or     %rdi,%rdx
  10116b:	48 89 15 fe 2a 00 00 	mov    %rdx,0x2afe(%rip)        # 103c70 <idt+0x250>
  101172:	48 89 c2             	mov    %rax,%rdx
  101175:	48 c1 e8 20          	shr    $0x20,%rax
  101179:	89 05 f9 2a 00 00    	mov    %eax,0x2af9(%rip)        # 103c78 <idt+0x258>
  10117f:	48 c7 c0 71 27 10 00 	mov    $0x102771,%rax
  101186:	48 c1 ea 10          	shr    $0x10,%rdx
  10118a:	66 89 15 e5 2a 00 00 	mov    %dx,0x2ae5(%rip)        # 103c76 <idt+0x256>
  101191:	66 89 05 e8 2a 00 00 	mov    %ax,0x2ae8(%rip)        # 103c80 <idt+0x260>
  101198:	48 8b 15 e1 2a 00 00 	mov    0x2ae1(%rip),%rdx        # 103c80 <idt+0x260>
  10119f:	48 21 f2             	and    %rsi,%rdx
  1011a2:	48 09 fa             	or     %rdi,%rdx
  1011a5:	48 89 15 d4 2a 00 00 	mov    %rdx,0x2ad4(%rip)        # 103c80 <idt+0x260>
  1011ac:	48 89 c2             	mov    %rax,%rdx
  1011af:	48 c1 e8 20          	shr    $0x20,%rax
  1011b3:	89 05 cf 2a 00 00    	mov    %eax,0x2acf(%rip)        # 103c88 <idt+0x268>
  1011b9:	48 c7 c0 7b 27 10 00 	mov    $0x10277b,%rax
  1011c0:	48 c1 ea 10          	shr    $0x10,%rdx
  1011c4:	66 89 15 bb 2a 00 00 	mov    %dx,0x2abb(%rip)        # 103c86 <idt+0x266>
  1011cb:	66 89 05 be 2a 00 00 	mov    %ax,0x2abe(%rip)        # 103c90 <idt+0x270>
  1011d2:	48 8b 15 b7 2a 00 00 	mov    0x2ab7(%rip),%rdx        # 103c90 <idt+0x270>
  1011d9:	48 21 f2             	and    %rsi,%rdx
  1011dc:	48 09 fa             	or     %rdi,%rdx
  1011df:	48 89 15 aa 2a 00 00 	mov    %rdx,0x2aaa(%rip)        # 103c90 <idt+0x270>
  1011e6:	48 89 c2             	mov    %rax,%rdx
  1011e9:	48 c1 e8 20          	shr    $0x20,%rax
  1011ed:	89 05 a5 2a 00 00    	mov    %eax,0x2aa5(%rip)        # 103c98 <idt+0x278>
  1011f3:	48 c7 c0 85 27 10 00 	mov    $0x102785,%rax
  1011fa:	48 c1 ea 10          	shr    $0x10,%rdx
  1011fe:	66 89 15 91 2a 00 00 	mov    %dx,0x2a91(%rip)        # 103c96 <idt+0x276>
  101205:	66 89 05 94 2a 00 00 	mov    %ax,0x2a94(%rip)        # 103ca0 <idt+0x280>
  10120c:	48 8b 15 8d 2a 00 00 	mov    0x2a8d(%rip),%rdx        # 103ca0 <idt+0x280>
  101213:	48 21 f2             	and    %rsi,%rdx
  101216:	48 09 fa             	or     %rdi,%rdx
  101219:	48 89 15 80 2a 00 00 	mov    %rdx,0x2a80(%rip)        # 103ca0 <idt+0x280>
  101220:	48 89 c2             	mov    %rax,%rdx
  101223:	48 c1 e8 20          	shr    $0x20,%rax
  101227:	89 05 7b 2a 00 00    	mov    %eax,0x2a7b(%rip)        # 103ca8 <idt+0x288>
  10122d:	48 c1 ea 10          	shr    $0x10,%rdx
  101231:	48 c7 c0 8f 27 10 00 	mov    $0x10278f,%rax
  101238:	66 89 15 67 2a 00 00 	mov    %dx,0x2a67(%rip)        # 103ca6 <idt+0x286>
  10123f:	66 89 05 6a 2a 00 00 	mov    %ax,0x2a6a(%rip)        # 103cb0 <idt+0x290>
  101246:	48 8b 15 63 2a 00 00 	mov    0x2a63(%rip),%rdx        # 103cb0 <idt+0x290>
  10124d:	c7 05 55 2a 00 00 00 	movl   $0x0,0x2a55(%rip)        # 103cac <idt+0x28c>
  101254:	00 00 00 
  101257:	c7 05 5b 2a 00 00 00 	movl   $0x0,0x2a5b(%rip)        # 103cbc <idt+0x29c>
  10125e:	00 00 00 
  101261:	48 21 f2             	and    %rsi,%rdx
  101264:	c7 05 5e 2a 00 00 00 	movl   $0x0,0x2a5e(%rip)        # 103ccc <idt+0x2ac>
  10126b:	00 00 00 
  10126e:	48 09 fa             	or     %rdi,%rdx
  101271:	48 89 15 38 2a 00 00 	mov    %rdx,0x2a38(%rip)        # 103cb0 <idt+0x290>
  101278:	48 89 c2             	mov    %rax,%rdx
  10127b:	48 c1 e8 20          	shr    $0x20,%rax
  10127f:	89 05 33 2a 00 00    	mov    %eax,0x2a33(%rip)        # 103cb8 <idt+0x298>
  101285:	48 c1 ea 10          	shr    $0x10,%rdx
  101289:	48 c7 c0 99 27 10 00 	mov    $0x102799,%rax
  101290:	66 89 15 1f 2a 00 00 	mov    %dx,0x2a1f(%rip)        # 103cb6 <idt+0x296>
  101297:	66 89 05 22 2a 00 00 	mov    %ax,0x2a22(%rip)        # 103cc0 <idt+0x2a0>
  10129e:	48 8b 15 1b 2a 00 00 	mov    0x2a1b(%rip),%rdx        # 103cc0 <idt+0x2a0>
  1012a5:	c7 05 2d 2a 00 00 00 	movl   $0x0,0x2a2d(%rip)        # 103cdc <idt+0x2bc>
  1012ac:	00 00 00 
  1012af:	c7 05 33 2a 00 00 00 	movl   $0x0,0x2a33(%rip)        # 103cec <idt+0x2cc>
  1012b6:	00 00 00 
  1012b9:	48 21 f2             	and    %rsi,%rdx
  1012bc:	48 09 fa             	or     %rdi,%rdx
  1012bf:	48 89 15 fa 29 00 00 	mov    %rdx,0x29fa(%rip)        # 103cc0 <idt+0x2a0>
  1012c6:	48 89 c2             	mov    %rax,%rdx
  1012c9:	48 c1 e8 20          	shr    $0x20,%rax
  1012cd:	89 05 f5 29 00 00    	mov    %eax,0x29f5(%rip)        # 103cc8 <idt+0x2a8>
  1012d3:	48 c7 c0 a3 27 10 00 	mov    $0x1027a3,%rax
  1012da:	48 c1 ea 10          	shr    $0x10,%rdx
  1012de:	66 89 15 e1 29 00 00 	mov    %dx,0x29e1(%rip)        # 103cc6 <idt+0x2a6>
  1012e5:	66 89 05 e4 29 00 00 	mov    %ax,0x29e4(%rip)        # 103cd0 <idt+0x2b0>
  1012ec:	48 8b 15 dd 29 00 00 	mov    0x29dd(%rip),%rdx        # 103cd0 <idt+0x2b0>
  1012f3:	48 21 f2             	and    %rsi,%rdx
  1012f6:	48 09 fa             	or     %rdi,%rdx
  1012f9:	48 89 15 d0 29 00 00 	mov    %rdx,0x29d0(%rip)        # 103cd0 <idt+0x2b0>
  101300:	48 89 c2             	mov    %rax,%rdx
  101303:	48 c1 ea 10          	shr    $0x10,%rdx
  101307:	48 c1 e8 20          	shr    $0x20,%rax
  10130b:	89 05 c7 29 00 00    	mov    %eax,0x29c7(%rip)        # 103cd8 <idt+0x2b8>
  101311:	48 c7 c0 ad 27 10 00 	mov    $0x1027ad,%rax
  101318:	66 89 15 b7 29 00 00 	mov    %dx,0x29b7(%rip)        # 103cd6 <idt+0x2b6>
  10131f:	66 89 05 ba 29 00 00 	mov    %ax,0x29ba(%rip)        # 103ce0 <idt+0x2c0>
  101326:	48 8b 15 b3 29 00 00 	mov    0x29b3(%rip),%rdx        # 103ce0 <idt+0x2c0>
  10132d:	48 21 f2             	and    %rsi,%rdx
  101330:	48 09 fa             	or     %rdi,%rdx
  101333:	48 89 15 a6 29 00 00 	mov    %rdx,0x29a6(%rip)        # 103ce0 <idt+0x2c0>
  10133a:	48 89 c2             	mov    %rax,%rdx
  10133d:	48 c1 e8 20          	shr    $0x20,%rax
  101341:	89 05 a1 29 00 00    	mov    %eax,0x29a1(%rip)        # 103ce8 <idt+0x2c8>
  101347:	48 c7 c0 b7 27 10 00 	mov    $0x1027b7,%rax
  10134e:	48 c1 ea 10          	shr    $0x10,%rdx
  101352:	66 89 15 8d 29 00 00 	mov    %dx,0x298d(%rip)        # 103ce6 <idt+0x2c6>
  101359:	66 89 05 90 29 00 00 	mov    %ax,0x2990(%rip)        # 103cf0 <idt+0x2d0>
  101360:	48 8b 15 89 29 00 00 	mov    0x2989(%rip),%rdx        # 103cf0 <idt+0x2d0>
  101367:	c7 05 8b 29 00 00 00 	movl   $0x0,0x298b(%rip)        # 103cfc <idt+0x2dc>
  10136e:	00 00 00 
  101371:	c7 05 91 29 00 00 00 	movl   $0x0,0x2991(%rip)        # 103d0c <idt+0x2ec>
  101378:	00 00 00 
  10137b:	48 21 f2             	and    %rsi,%rdx
  10137e:	c7 05 94 29 00 00 00 	movl   $0x0,0x2994(%rip)        # 103d1c <idt+0x2fc>
  101385:	00 00 00 
  101388:	48 09 fa             	or     %rdi,%rdx
  10138b:	48 89 15 5e 29 00 00 	mov    %rdx,0x295e(%rip)        # 103cf0 <idt+0x2d0>
  101392:	48 89 c2             	mov    %rax,%rdx
  101395:	48 c1 e8 20          	shr    $0x20,%rax
  101399:	89 05 59 29 00 00    	mov    %eax,0x2959(%rip)        # 103cf8 <idt+0x2d8>
  10139f:	48 c1 ea 10          	shr    $0x10,%rdx
  1013a3:	48 c7 c0 c1 27 10 00 	mov    $0x1027c1,%rax
  1013aa:	66 89 15 45 29 00 00 	mov    %dx,0x2945(%rip)        # 103cf6 <idt+0x2d6>
  1013b1:	66 89 05 48 29 00 00 	mov    %ax,0x2948(%rip)        # 103d00 <idt+0x2e0>
  1013b8:	48 8b 15 41 29 00 00 	mov    0x2941(%rip),%rdx        # 103d00 <idt+0x2e0>
  1013bf:	c7 05 63 2e 00 00 00 	movl   $0x0,0x2e63(%rip)        # 10422c <idt+0x80c>
  1013c6:	00 00 00 
  1013c9:	48 21 f2             	and    %rsi,%rdx
  1013cc:	48 09 fa             	or     %rdi,%rdx
  1013cf:	48 89 15 2a 29 00 00 	mov    %rdx,0x292a(%rip)        # 103d00 <idt+0x2e0>
  1013d6:	48 89 c2             	mov    %rax,%rdx
  1013d9:	48 c1 e8 20          	shr    $0x20,%rax
  1013dd:	89 05 25 29 00 00    	mov    %eax,0x2925(%rip)        # 103d08 <idt+0x2e8>
  1013e3:	48 c7 c0 cb 27 10 00 	mov    $0x1027cb,%rax
  1013ea:	48 c1 ea 10          	shr    $0x10,%rdx
  1013ee:	66 89 15 11 29 00 00 	mov    %dx,0x2911(%rip)        # 103d06 <idt+0x2e6>
  1013f5:	66 89 05 14 29 00 00 	mov    %ax,0x2914(%rip)        # 103d10 <idt+0x2f0>
  1013fc:	48 8b 15 0d 29 00 00 	mov    0x290d(%rip),%rdx        # 103d10 <idt+0x2f0>
  101403:	48 21 f2             	and    %rsi,%rdx
  101406:	48 09 fa             	or     %rdi,%rdx
  101409:	48 89 15 00 29 00 00 	mov    %rdx,0x2900(%rip)        # 103d10 <idt+0x2f0>
  101410:	48 89 c2             	mov    %rax,%rdx
  101413:	48 c1 e8 20          	shr    $0x20,%rax
  101417:	89 05 fb 28 00 00    	mov    %eax,0x28fb(%rip)        # 103d18 <idt+0x2f8>
  10141d:	48 c7 c0 d5 27 10 00 	mov    $0x1027d5,%rax
  101424:	48 c1 ea 10          	shr    $0x10,%rdx
  101428:	66 89 15 e7 28 00 00 	mov    %dx,0x28e7(%rip)        # 103d16 <idt+0x2f6>
  10142f:	66 89 05 ea 2d 00 00 	mov    %ax,0x2dea(%rip)        # 104220 <idt+0x800>
  101436:	48 8b 15 e3 2d 00 00 	mov    0x2de3(%rip),%rdx        # 104220 <idt+0x800>
  10143d:	48 21 f2             	and    %rsi,%rdx
  101440:	48 09 ca             	or     %rcx,%rdx
  101443:	48 89 15 d6 2d 00 00 	mov    %rdx,0x2dd6(%rip)        # 104220 <idt+0x800>
  10144a:	48 89 c2             	mov    %rax,%rdx
  10144d:	48 c1 e8 20          	shr    $0x20,%rax
  101451:	89 05 d1 2d 00 00    	mov    %eax,0x2dd1(%rip)        # 104228 <idt+0x808>
  101457:	48 c7 c0 e2 27 10 00 	mov    $0x1027e2,%rax
  10145e:	48 c1 ea 10          	shr    $0x10,%rdx
  101462:	66 89 15 bd 2d 00 00 	mov    %dx,0x2dbd(%rip)        # 104226 <idt+0x806>
  101469:	66 89 05 c0 2d 00 00 	mov    %ax,0x2dc0(%rip)        # 104230 <idt+0x810>
  101470:	48 89 c2             	mov    %rax,%rdx
  101473:	48 23 35 b6 2d 00 00 	and    0x2db6(%rip),%rsi        # 104230 <idt+0x810>
  10147a:	48 c1 e8 20          	shr    $0x20,%rax
  10147e:	48 09 ce             	or     %rcx,%rsi
  101481:	48 c1 ea 10          	shr    $0x10,%rdx
  101485:	89 05 ad 2d 00 00    	mov    %eax,0x2dad(%rip)        # 104238 <idt+0x818>
  10148b:	b8 01 00 00 00       	mov    $0x1,%eax
  101490:	48 89 35 99 2d 00 00 	mov    %rsi,0x2d99(%rip)        # 104230 <idt+0x810>
  101497:	66 89 15 98 2d 00 00 	mov    %dx,0x2d98(%rip)        # 104236 <idt+0x816>
  10149e:	c7 05 94 2d 00 00 00 	movl   $0x0,0x2d94(%rip)        # 10423c <idt+0x81c>
  1014a5:	00 00 00 
  1014a8:	48 89 1d 71 35 00 00 	mov    %rbx,0x3571(%rip)        # 104a20 <user_handler>
  1014af:	5b                   	pop    %rbx
  1014b0:	c3                   	ret    
  1014b1:	48 8d 1d 5d 17 00 00 	lea    0x175d(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  1014b8:	b8 41 00 00 00       	mov    $0x41,%eax
  1014bd:	0f be f8             	movsbl %al,%edi
  1014c0:	48 83 c3 01          	add    $0x1,%rbx
  1014c4:	e8 c7 ec ff ff       	call   100190 <putch>
  1014c9:	0f b6 03             	movzbl (%rbx),%eax
  1014cc:	84 c0                	test   %al,%al
  1014ce:	75 ed                	jne    1014bd <cte_init+0xacd>
  1014d0:	48 8d 1d 6a 19 00 00 	lea    0x196a(%rip),%rbx        # 102e41 <vsnprintf+0x2e1>
  1014d7:	b8 69 00 00 00       	mov    $0x69,%eax
  1014dc:	0f be f8             	movsbl %al,%edi
  1014df:	48 83 c3 01          	add    $0x1,%rbx
  1014e3:	e8 a8 ec ff ff       	call   100190 <putch>
  1014e8:	0f b6 03             	movzbl (%rbx),%eax
  1014eb:	84 c0                	test   %al,%al
  1014ed:	75 ed                	jne    1014dc <cte_init+0xaec>
  1014ef:	48 8d 1d 72 1a 00 00 	lea    0x1a72(%rip),%rbx        # 102f68 <vsnprintf+0x408>
  1014f6:	b8 20 00 00 00       	mov    $0x20,%eax
  1014fb:	0f be f8             	movsbl %al,%edi
  1014fe:	48 83 c3 01          	add    $0x1,%rbx
  101502:	e8 89 ec ff ff       	call   100190 <putch>
  101507:	0f b6 03             	movzbl (%rbx),%eax
  10150a:	84 c0                	test   %al,%al
  10150c:	75 ed                	jne    1014fb <cte_init+0xb0b>
  10150e:	bf 01 00 00 00       	mov    $0x1,%edi
  101513:	e8 88 ec ff ff       	call   1001a0 <halt>
  101518:	48 8d 1d f6 16 00 00 	lea    0x16f6(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  10151f:	b8 41 00 00 00       	mov    $0x41,%eax
  101524:	0f be f8             	movsbl %al,%edi
  101527:	48 83 c3 01          	add    $0x1,%rbx
  10152b:	e8 60 ec ff ff       	call   100190 <putch>
  101530:	0f b6 03             	movzbl (%rbx),%eax
  101533:	84 c0                	test   %al,%al
  101535:	75 ed                	jne    101524 <cte_init+0xb34>
  101537:	48 8d 1d 21 19 00 00 	lea    0x1921(%rip),%rbx        # 102e5f <vsnprintf+0x2ff>
  10153e:	b8 6e 00 00 00       	mov    $0x6e,%eax
  101543:	0f be f8             	movsbl %al,%edi
  101546:	48 83 c3 01          	add    $0x1,%rbx
  10154a:	e8 41 ec ff ff       	call   100190 <putch>
  10154f:	0f b6 03             	movzbl (%rbx),%eax
  101552:	84 c0                	test   %al,%al
  101554:	75 ed                	jne    101543 <cte_init+0xb53>
  101556:	48 8d 1d 4b 1a 00 00 	lea    0x1a4b(%rip),%rbx        # 102fa8 <vsnprintf+0x448>
  10155d:	b8 20 00 00 00       	mov    $0x20,%eax
  101562:	0f be f8             	movsbl %al,%edi
  101565:	48 83 c3 01          	add    $0x1,%rbx
  101569:	e8 22 ec ff ff       	call   100190 <putch>
  10156e:	0f b6 03             	movzbl (%rbx),%eax
  101571:	84 c0                	test   %al,%al
  101573:	75 ed                	jne    101562 <cte_init+0xb72>
  101575:	eb 97                	jmp    10150e <cte_init+0xb1e>
  101577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10157e:	00 00 

0000000000101580 <yield>:
  101580:	f3 0f 1e fa          	endbr64 
  101584:	cd 81                	int    $0x81
  101586:	c3                   	ret    
  101587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10158e:	00 00 

0000000000101590 <ienabled>:
  101590:	f3 0f 1e fa          	endbr64 
  101594:	9c                   	pushf  
  101595:	58                   	pop    %rax
  101596:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
  10159b:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
  1015a0:	c1 e8 09             	shr    $0x9,%eax
  1015a3:	83 e0 01             	and    $0x1,%eax
  1015a6:	c3                   	ret    
  1015a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  1015ae:	00 00 

00000000001015b0 <iset>:
  1015b0:	f3 0f 1e fa          	endbr64 
  1015b4:	40 84 ff             	test   %dil,%dil
  1015b7:	74 07                	je     1015c0 <iset+0x10>
  1015b9:	fb                   	sti    
  1015ba:	c3                   	ret    
  1015bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1015c0:	fa                   	cli    
  1015c1:	c3                   	ret    
  1015c2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1015c9:	00 00 00 00 
  1015cd:	0f 1f 00             	nopl   (%rax)

00000000001015d0 <__am_panic_on_return>:
  1015d0:	f3 0f 1e fa          	endbr64 
  1015d4:	53                   	push   %rbx
  1015d5:	bf 41 00 00 00       	mov    $0x41,%edi
  1015da:	48 8d 1d 34 16 00 00 	lea    0x1634(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  1015e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1015e8:	e8 a3 eb ff ff       	call   100190 <putch>
  1015ed:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  1015f1:	48 83 c3 01          	add    $0x1,%rbx
  1015f5:	40 84 ff             	test   %dil,%dil
  1015f8:	75 ee                	jne    1015e8 <__am_panic_on_return+0x18>
  1015fa:	48 8d 1d 73 18 00 00 	lea    0x1873(%rip),%rbx        # 102e74 <vsnprintf+0x314>
  101601:	bf 6b 00 00 00       	mov    $0x6b,%edi
  101606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  10160d:	00 00 00 
  101610:	e8 7b eb ff ff       	call   100190 <putch>
  101615:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  101619:	48 83 c3 01          	add    $0x1,%rbx
  10161d:	40 84 ff             	test   %dil,%dil
  101620:	75 ee                	jne    101610 <__am_panic_on_return+0x40>
  101622:	48 8d 1d bf 19 00 00 	lea    0x19bf(%rip),%rbx        # 102fe8 <vsnprintf+0x488>
  101629:	bf 20 00 00 00       	mov    $0x20,%edi
  10162e:	66 90                	xchg   %ax,%ax
  101630:	e8 5b eb ff ff       	call   100190 <putch>
  101635:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  101639:	48 83 c3 01          	add    $0x1,%rbx
  10163d:	40 84 ff             	test   %dil,%dil
  101640:	75 ee                	jne    101630 <__am_panic_on_return+0x60>
  101642:	bf 01 00 00 00       	mov    $0x1,%edi
  101647:	e8 54 eb ff ff       	call   1001a0 <halt>
  10164c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000101650 <kcontext>:
  101650:	f3 0f 1e fa          	endbr64 
  101654:	49 89 c8             	mov    %rcx,%r8
  101657:	31 c0                	xor    %eax,%eax
  101659:	48 8d be 50 ff ff ff 	lea    -0xb0(%rsi),%rdi
  101660:	b9 16 00 00 00       	mov    $0x16,%ecx
  101665:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  101668:	48 c7 c0 3c 26 10 00 	mov    $0x10263c,%rax
  10166f:	48 c7 46 d8 08 00 00 	movq   $0x8,-0x28(%rsi)
  101676:	00 
  101677:	48 c7 46 e0 00 02 00 	movq   $0x200,-0x20(%rsi)
  10167e:	00 
  10167f:	48 89 46 d0          	mov    %rax,-0x30(%rsi)
  101683:	48 8d 86 50 ff ff ff 	lea    -0xb0(%rsi),%rax
  10168a:	48 89 76 e8          	mov    %rsi,-0x18(%rsi)
  10168e:	4c 89 46 88          	mov    %r8,-0x78(%rsi)
  101692:	48 89 56 80          	mov    %rdx,-0x80(%rsi)
  101696:	c3                   	ret    
  101697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10169e:	00 00 

00000000001016a0 <__am_percpu_initirq>:
  1016a0:	f3 0f 1e fa          	endbr64 
  1016a4:	48 83 ec 08          	sub    $0x8,%rsp
  1016a8:	31 f6                	xor    %esi,%esi
  1016aa:	bf 01 00 00 00       	mov    $0x1,%edi
  1016af:	e8 5c 0d 00 00       	call   102410 <__am_ioapic_enable>
  1016b4:	31 f6                	xor    %esi,%esi
  1016b6:	bf 04 00 00 00       	mov    $0x4,%edi
  1016bb:	e8 50 0d 00 00       	call   102410 <__am_ioapic_enable>
  1016c0:	b8 00 10 00 00       	mov    $0x1000,%eax
  1016c5:	66 89 05 34 23 00 00 	mov    %ax,0x2334(%rip)        # 103a00 <data.0>
  1016cc:	48 8d 05 4d 23 00 00 	lea    0x234d(%rip),%rax        # 103a20 <idt>
  1016d3:	48 89 05 28 23 00 00 	mov    %rax,0x2328(%rip)        # 103a02 <data.0+0x2>
  1016da:	48 8d 05 1f 23 00 00 	lea    0x231f(%rip),%rax        # 103a00 <data.0>
  1016e1:	0f 01 18             	lidt   (%rax)
  1016e4:	48 83 c4 08          	add    $0x8,%rsp
  1016e8:	c3                   	ret    
  1016e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000001016f0 <uart_config>:
  1016f0:	f3 0f 1e fa          	endbr64 
  1016f4:	c6 07 01             	movb   $0x1,(%rdi)
  1016f7:	c3                   	ret    
  1016f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1016ff:	00 

0000000000101700 <uart_tx>:
  101700:	f3 0f 1e fa          	endbr64 
  101704:	0f b6 07             	movzbl (%rdi),%eax
  101707:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10170c:	ee                   	out    %al,(%dx)
  10170d:	c3                   	ret    
  10170e:	66 90                	xchg   %ax,%ax

0000000000101710 <uart_rx>:
  101710:	f3 0f 1e fa          	endbr64 
  101714:	ba fd 03 00 00       	mov    $0x3fd,%edx
  101719:	ec                   	in     (%dx),%al
  10171a:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  10171f:	a8 01                	test   $0x1,%al
  101721:	74 08                	je     10172b <uart_rx+0x1b>
  101723:	ba f8 03 00 00       	mov    $0x3f8,%edx
  101728:	ec                   	in     (%dx),%al
  101729:	89 c2                	mov    %eax,%edx
  10172b:	88 17                	mov    %dl,(%rdi)
  10172d:	c3                   	ret    
  10172e:	66 90                	xchg   %ax,%ax

0000000000101730 <read_rtc_async>:
  101730:	48 89 f9             	mov    %rdi,%rcx
  101733:	bf 70 00 00 00       	mov    $0x70,%edi
  101738:	53                   	push   %rbx
  101739:	b8 09 00 00 00       	mov    $0x9,%eax
  10173e:	89 fa                	mov    %edi,%edx
  101740:	ee                   	out    %al,(%dx)
  101741:	be 71 00 00 00       	mov    $0x71,%esi
  101746:	89 f2                	mov    %esi,%edx
  101748:	ec                   	in     (%dx),%al
  101749:	89 c3                	mov    %eax,%ebx
  10174b:	89 fa                	mov    %edi,%edx
  10174d:	b8 08 00 00 00       	mov    $0x8,%eax
  101752:	ee                   	out    %al,(%dx)
  101753:	89 f2                	mov    %esi,%edx
  101755:	ec                   	in     (%dx),%al
  101756:	41 89 c3             	mov    %eax,%r11d
  101759:	89 fa                	mov    %edi,%edx
  10175b:	b8 07 00 00 00       	mov    $0x7,%eax
  101760:	ee                   	out    %al,(%dx)
  101761:	89 f2                	mov    %esi,%edx
  101763:	ec                   	in     (%dx),%al
  101764:	41 89 c2             	mov    %eax,%r10d
  101767:	89 fa                	mov    %edi,%edx
  101769:	b8 04 00 00 00       	mov    $0x4,%eax
  10176e:	ee                   	out    %al,(%dx)
  10176f:	89 f2                	mov    %esi,%edx
  101771:	ec                   	in     (%dx),%al
  101772:	41 89 c1             	mov    %eax,%r9d
  101775:	89 fa                	mov    %edi,%edx
  101777:	b8 02 00 00 00       	mov    $0x2,%eax
  10177c:	ee                   	out    %al,(%dx)
  10177d:	89 f2                	mov    %esi,%edx
  10177f:	ec                   	in     (%dx),%al
  101780:	41 89 c0             	mov    %eax,%r8d
  101783:	89 fa                	mov    %edi,%edx
  101785:	31 c0                	xor    %eax,%eax
  101787:	ee                   	out    %al,(%dx)
  101788:	89 f2                	mov    %esi,%edx
  10178a:	ec                   	in     (%dx),%al
  10178b:	0f b6 d3             	movzbl %bl,%edx
  10178e:	83 e3 0f             	and    $0xf,%ebx
  101791:	c1 fa 04             	sar    $0x4,%edx
  101794:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  101797:	8d 94 53 d0 07 00 00 	lea    0x7d0(%rbx,%rdx,2),%edx
  10179e:	5b                   	pop    %rbx
  10179f:	89 11                	mov    %edx,(%rcx)
  1017a1:	41 0f b6 d3          	movzbl %r11b,%edx
  1017a5:	41 83 e3 0f          	and    $0xf,%r11d
  1017a9:	c1 fa 04             	sar    $0x4,%edx
  1017ac:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1017af:	41 8d 14 53          	lea    (%r11,%rdx,2),%edx
  1017b3:	89 51 04             	mov    %edx,0x4(%rcx)
  1017b6:	41 0f b6 d2          	movzbl %r10b,%edx
  1017ba:	41 83 e2 0f          	and    $0xf,%r10d
  1017be:	c1 fa 04             	sar    $0x4,%edx
  1017c1:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1017c4:	41 8d 14 52          	lea    (%r10,%rdx,2),%edx
  1017c8:	89 51 08             	mov    %edx,0x8(%rcx)
  1017cb:	41 0f b6 d1          	movzbl %r9b,%edx
  1017cf:	41 83 e1 0f          	and    $0xf,%r9d
  1017d3:	c1 fa 04             	sar    $0x4,%edx
  1017d6:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1017d9:	41 8d 14 51          	lea    (%r9,%rdx,2),%edx
  1017dd:	89 51 0c             	mov    %edx,0xc(%rcx)
  1017e0:	41 0f b6 d0          	movzbl %r8b,%edx
  1017e4:	41 83 e0 0f          	and    $0xf,%r8d
  1017e8:	c1 fa 04             	sar    $0x4,%edx
  1017eb:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1017ee:	41 8d 14 50          	lea    (%r8,%rdx,2),%edx
  1017f2:	89 51 10             	mov    %edx,0x10(%rcx)
  1017f5:	0f b6 d0             	movzbl %al,%edx
  1017f8:	83 e0 0f             	and    $0xf,%eax
  1017fb:	c1 fa 04             	sar    $0x4,%edx
  1017fe:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  101801:	8d 04 50             	lea    (%rax,%rdx,2),%eax
  101804:	89 41 14             	mov    %eax,0x14(%rcx)
  101807:	c3                   	ret    
  101808:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10180f:	00 

0000000000101810 <timer_config>:
  101810:	f3 0f 1e fa          	endbr64 
  101814:	b8 01 01 00 00       	mov    $0x101,%eax
  101819:	66 89 07             	mov    %ax,(%rdi)
  10181c:	c3                   	ret    
  10181d:	0f 1f 00             	nopl   (%rax)

0000000000101820 <timer_rtc>:
  101820:	f3 0f 1e fa          	endbr64 
  101824:	55                   	push   %rbp
  101825:	31 ed                	xor    %ebp,%ebp
  101827:	53                   	push   %rbx
  101828:	48 89 fb             	mov    %rdi,%rbx
  10182b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  101830:	48 89 df             	mov    %rbx,%rdi
  101833:	e8 f8 fe ff ff       	call   101730 <read_rtc_async>
  101838:	ba 70 00 00 00       	mov    $0x70,%edx
  10183d:	89 e8                	mov    %ebp,%eax
  10183f:	ee                   	out    %al,(%dx)
  101840:	ba 71 00 00 00       	mov    $0x71,%edx
  101845:	ec                   	in     (%dx),%al
  101846:	0f b6 d0             	movzbl %al,%edx
  101849:	83 e0 0f             	and    $0xf,%eax
  10184c:	c1 fa 04             	sar    $0x4,%edx
  10184f:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  101852:	8d 04 50             	lea    (%rax,%rdx,2),%eax
  101855:	39 43 14             	cmp    %eax,0x14(%rbx)
  101858:	75 d6                	jne    101830 <timer_rtc+0x10>
  10185a:	5b                   	pop    %rbx
  10185b:	5d                   	pop    %rbp
  10185c:	c3                   	ret    
  10185d:	0f 1f 00             	nopl   (%rax)

0000000000101860 <timer_uptime>:
  101860:	f3 0f 1e fa          	endbr64 
  101864:	0f 31                	rdtsc  
  101866:	89 c0                	mov    %eax,%eax
  101868:	48 c1 e2 20          	shl    $0x20,%rdx
  10186c:	8b 0d 2e 1d 00 00    	mov    0x1d2e(%rip),%ecx        # 1035a0 <freq_mhz>
  101872:	48 09 c2             	or     %rax,%rdx
  101875:	48 89 d0             	mov    %rdx,%rax
  101878:	31 d2                	xor    %edx,%edx
  10187a:	48 2b 05 07 32 10 00 	sub    0x103207(%rip),%rax        # 204a88 <uptsc>
  101881:	48 f7 f1             	div    %rcx
  101884:	48 89 07             	mov    %rax,(%rdi)
  101887:	c3                   	ret    
  101888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10188f:	00 

0000000000101890 <input_config>:
  101890:	f3 0f 1e fa          	endbr64 
  101894:	c6 07 01             	movb   $0x1,(%rdi)
  101897:	c3                   	ret    
  101898:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10189f:	00 

00000000001018a0 <gpu_config>:
  1018a0:	f3 0f 1e fa          	endbr64 
  1018a4:	0f b7 05 a9 31 00 00 	movzwl 0x31a9(%rip),%eax        # 104a54 <display+0x4>
  1018ab:	0f b7 15 a0 31 00 00 	movzwl 0x31a0(%rip),%edx        # 104a52 <display+0x2>
  1018b2:	c7 47 0c 00 00 08 00 	movl   $0x80000,0xc(%rdi)
  1018b9:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  1018c0:	89 47 08             	mov    %eax,0x8(%rdi)
  1018c3:	c6 07 01             	movb   $0x1,(%rdi)
  1018c6:	89 57 04             	mov    %edx,0x4(%rdi)
  1018c9:	c3                   	ret    
  1018ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000001018d0 <gpu_fbdraw>:
  1018d0:	f3 0f 1e fa          	endbr64 
  1018d4:	41 57                	push   %r15
  1018d6:	44 0f b7 15 74 31 00 	movzwl 0x3174(%rip),%r10d        # 104a52 <display+0x2>
  1018dd:	00 
  1018de:	41 56                	push   %r14
  1018e0:	44 0f b7 3d 6c 31 00 	movzwl 0x316c(%rip),%r15d        # 104a54 <display+0x4>
  1018e7:	00 
  1018e8:	41 55                	push   %r13
  1018ea:	41 54                	push   %r12
  1018ec:	55                   	push   %rbp
  1018ed:	44 89 d5             	mov    %r10d,%ebp
  1018f0:	53                   	push   %rbx
  1018f1:	8b 07                	mov    (%rdi),%eax
  1018f3:	4c 63 4f 10          	movslq 0x10(%rdi),%r9
  1018f7:	44 8b 5f 14          	mov    0x14(%rdi),%r11d
  1018fb:	29 c5                	sub    %eax,%ebp
  1018fd:	8b 77 04             	mov    0x4(%rdi),%esi
  101900:	4c 8b 47 08          	mov    0x8(%rdi),%r8
  101904:	42 8d 14 08          	lea    (%rax,%r9,1),%edx
  101908:	44 39 d2             	cmp    %r10d,%edx
  10190b:	41 0f 4c e9          	cmovl  %r9d,%ebp
  10190f:	45 85 db             	test   %r11d,%r11d
  101912:	7e 75                	jle    101989 <gpu_fbdraw+0xb9>
  101914:	89 f7                	mov    %esi,%edi
  101916:	4c 8b 25 63 31 10 00 	mov    0x103163(%rip),%r12        # 204a80 <fb>
  10191d:	49 c1 e1 02          	shl    $0x2,%r9
  101921:	41 01 f3             	add    %esi,%r11d
  101924:	41 0f af fa          	imul   %r10d,%edi
  101928:	01 c7                	add    %eax,%edi
  10192a:	8d 45 ff             	lea    -0x1(%rbp),%eax
  10192d:	4c 8d 6c 40 03       	lea    0x3(%rax,%rax,2),%r13
  101932:	eb 12                	jmp    101946 <gpu_fbdraw+0x76>
  101934:	0f 1f 40 00          	nopl   0x0(%rax)
  101938:	83 c6 01             	add    $0x1,%esi
  10193b:	4d 01 c8             	add    %r9,%r8
  10193e:	44 01 d7             	add    %r10d,%edi
  101941:	44 39 de             	cmp    %r11d,%esi
  101944:	74 43                	je     101989 <gpu_fbdraw+0xb9>
  101946:	41 39 f7             	cmp    %esi,%r15d
  101949:	7e ed                	jle    101938 <gpu_fbdraw+0x68>
  10194b:	48 63 c7             	movslq %edi,%rax
  10194e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  101952:	4c 01 e0             	add    %r12,%rax
  101955:	85 ed                	test   %ebp,%ebp
  101957:	7e df                	jle    101938 <gpu_fbdraw+0x68>
  101959:	4c 89 c1             	mov    %r8,%rcx
  10195c:	4e 8d 34 28          	lea    (%rax,%r13,1),%r14
  101960:	8b 11                	mov    (%rcx),%edx
  101962:	48 83 c0 03          	add    $0x3,%rax
  101966:	48 83 c1 04          	add    $0x4,%rcx
  10196a:	88 50 fd             	mov    %dl,-0x3(%rax)
  10196d:	88 70 fe             	mov    %dh,-0x2(%rax)
  101970:	c1 ea 10             	shr    $0x10,%edx
  101973:	88 50 ff             	mov    %dl,-0x1(%rax)
  101976:	49 39 c6             	cmp    %rax,%r14
  101979:	75 e5                	jne    101960 <gpu_fbdraw+0x90>
  10197b:	83 c6 01             	add    $0x1,%esi
  10197e:	4d 01 c8             	add    %r9,%r8
  101981:	44 01 d7             	add    %r10d,%edi
  101984:	44 39 de             	cmp    %r11d,%esi
  101987:	75 bd                	jne    101946 <gpu_fbdraw+0x76>
  101989:	5b                   	pop    %rbx
  10198a:	5d                   	pop    %rbp
  10198b:	41 5c                	pop    %r12
  10198d:	41 5d                	pop    %r13
  10198f:	41 5e                	pop    %r14
  101991:	41 5f                	pop    %r15
  101993:	c3                   	ret    
  101994:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  10199b:	00 00 00 00 
  10199f:	90                   	nop

00000000001019a0 <gpu_status>:
  1019a0:	f3 0f 1e fa          	endbr64 
  1019a4:	c6 07 01             	movb   $0x1,(%rdi)
  1019a7:	c3                   	ret    
  1019a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1019af:	00 

00000000001019b0 <gpu_memcpy>:
  1019b0:	f3 0f 1e fa          	endbr64 
  1019b4:	8b 0f                	mov    (%rdi),%ecx
  1019b6:	48 8b 77 08          	mov    0x8(%rdi),%rsi
  1019ba:	83 f9 ff             	cmp    $0xffffffff,%ecx
  1019bd:	74 31                	je     1019f0 <gpu_memcpy+0x40>
  1019bf:	48 8d 05 ba 30 08 00 	lea    0x830ba(%rip),%rax        # 184a80 <vmem>
  1019c6:	48 01 c1             	add    %rax,%rcx
  1019c9:	8b 47 10             	mov    0x10(%rdi),%eax
  1019cc:	85 c0                	test   %eax,%eax
  1019ce:	7e 18                	jle    1019e8 <gpu_memcpy+0x38>
  1019d0:	31 c0                	xor    %eax,%eax
  1019d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  1019d8:	0f b6 14 06          	movzbl (%rsi,%rax,1),%edx
  1019dc:	88 14 01             	mov    %dl,(%rcx,%rax,1)
  1019df:	48 83 c0 01          	add    $0x1,%rax
  1019e3:	39 47 10             	cmp    %eax,0x10(%rdi)
  1019e6:	7f f0                	jg     1019d8 <gpu_memcpy+0x28>
  1019e8:	c3                   	ret    
  1019e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1019f0:	31 c9                	xor    %ecx,%ecx
  1019f2:	eb d5                	jmp    1019c9 <gpu_memcpy+0x19>
  1019f4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1019fb:	00 00 00 00 
  1019ff:	90                   	nop

0000000000101a00 <disk_config>:
  101a00:	f3 0f 1e fa          	endbr64 
  101a04:	48 b8 00 02 00 00 00 	movabs $0x2000000000200,%rax
  101a0b:	00 02 00 
  101a0e:	c6 07 01             	movb   $0x1,(%rdi)
  101a11:	48 89 47 04          	mov    %rax,0x4(%rdi)
  101a15:	c3                   	ret    
  101a16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  101a1d:	00 00 00 

0000000000101a20 <disk_status>:
  101a20:	f3 0f 1e fa          	endbr64 
  101a24:	c6 07 01             	movb   $0x1,(%rdi)
  101a27:	c3                   	ret    
  101a28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  101a2f:	00 

0000000000101a30 <disk_blkio>:
  101a30:	f3 0f 1e fa          	endbr64 
  101a34:	8b 47 14             	mov    0x14(%rdi),%eax
  101a37:	44 8b 4f 10          	mov    0x10(%rdi),%r9d
  101a3b:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  101a3f:	85 c0                	test   %eax,%eax
  101a41:	0f 84 0a 01 00 00    	je     101b51 <disk_blkio+0x121>
  101a47:	41 57                	push   %r15
  101a49:	83 e8 01             	sub    $0x1,%eax
  101a4c:	48 8d b2 00 02 00 00 	lea    0x200(%rdx),%rsi
  101a53:	41 b8 f7 01 00 00    	mov    $0x1f7,%r8d
  101a59:	41 56                	push   %r14
  101a5b:	48 c1 e0 09          	shl    $0x9,%rax
  101a5f:	41 bf 01 00 00 00    	mov    $0x1,%r15d
  101a65:	41 be f2 01 00 00    	mov    $0x1f2,%r14d
  101a6b:	41 55                	push   %r13
  101a6d:	41 bd f3 01 00 00    	mov    $0x1f3,%r13d
  101a73:	41 54                	push   %r12
  101a75:	41 bc f4 01 00 00    	mov    $0x1f4,%r12d
  101a7b:	55                   	push   %rbp
  101a7c:	bd f5 01 00 00       	mov    $0x1f5,%ebp
  101a81:	53                   	push   %rbx
  101a82:	44 0f b6 1f          	movzbl (%rdi),%r11d
  101a86:	48 8d 9c 02 00 04 00 	lea    0x400(%rdx,%rax,1),%rbx
  101a8d:	00 
  101a8e:	bf f0 01 00 00       	mov    $0x1f0,%edi
  101a93:	41 80 fb 01          	cmp    $0x1,%r11b
  101a97:	45 19 d2             	sbb    %r10d,%r10d
  101a9a:	41 83 e2 f0          	and    $0xfffffff0,%r10d
  101a9e:	41 83 c2 30          	add    $0x30,%r10d
  101aa2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  101aa8:	48 8d 8e 00 fe ff ff 	lea    -0x200(%rsi),%rcx
  101aaf:	90                   	nop
  101ab0:	44 89 c2             	mov    %r8d,%edx
  101ab3:	ec                   	in     (%dx),%al
  101ab4:	83 e0 c0             	and    $0xffffffc0,%eax
  101ab7:	3c 40                	cmp    $0x40,%al
  101ab9:	75 f5                	jne    101ab0 <disk_blkio+0x80>
  101abb:	44 89 f8             	mov    %r15d,%eax
  101abe:	44 89 f2             	mov    %r14d,%edx
  101ac1:	ee                   	out    %al,(%dx)
  101ac2:	44 89 c8             	mov    %r9d,%eax
  101ac5:	44 89 ea             	mov    %r13d,%edx
  101ac8:	ee                   	out    %al,(%dx)
  101ac9:	44 89 c8             	mov    %r9d,%eax
  101acc:	44 89 e2             	mov    %r12d,%edx
  101acf:	c1 e8 08             	shr    $0x8,%eax
  101ad2:	ee                   	out    %al,(%dx)
  101ad3:	44 89 c8             	mov    %r9d,%eax
  101ad6:	89 ea                	mov    %ebp,%edx
  101ad8:	c1 e8 10             	shr    $0x10,%eax
  101adb:	ee                   	out    %al,(%dx)
  101adc:	44 89 c8             	mov    %r9d,%eax
  101adf:	ba f6 01 00 00       	mov    $0x1f6,%edx
  101ae4:	c1 e8 18             	shr    $0x18,%eax
  101ae7:	83 c8 e0             	or     $0xffffffe0,%eax
  101aea:	ee                   	out    %al,(%dx)
  101aeb:	44 89 d0             	mov    %r10d,%eax
  101aee:	44 89 c2             	mov    %r8d,%edx
  101af1:	ee                   	out    %al,(%dx)
  101af2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  101af8:	44 89 c2             	mov    %r8d,%edx
  101afb:	ec                   	in     (%dx),%al
  101afc:	83 e0 c0             	and    $0xffffffc0,%eax
  101aff:	3c 40                	cmp    $0x40,%al
  101b01:	75 f5                	jne    101af8 <disk_blkio+0xc8>
  101b03:	45 84 db             	test   %r11b,%r11b
  101b06:	74 38                	je     101b40 <disk_blkio+0x110>
  101b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  101b0f:	00 
  101b10:	48 83 c1 04          	add    $0x4,%rcx
  101b14:	89 fa                	mov    %edi,%edx
  101b16:	8b 41 fc             	mov    -0x4(%rcx),%eax
  101b19:	ef                   	out    %eax,(%dx)
  101b1a:	48 39 f1             	cmp    %rsi,%rcx
  101b1d:	75 f1                	jne    101b10 <disk_blkio+0xe0>
  101b1f:	48 81 c6 00 02 00 00 	add    $0x200,%rsi
  101b26:	41 83 c1 01          	add    $0x1,%r9d
  101b2a:	48 39 de             	cmp    %rbx,%rsi
  101b2d:	0f 85 75 ff ff ff    	jne    101aa8 <disk_blkio+0x78>
  101b33:	5b                   	pop    %rbx
  101b34:	5d                   	pop    %rbp
  101b35:	41 5c                	pop    %r12
  101b37:	41 5d                	pop    %r13
  101b39:	41 5e                	pop    %r14
  101b3b:	41 5f                	pop    %r15
  101b3d:	c3                   	ret    
  101b3e:	66 90                	xchg   %ax,%ax
  101b40:	48 83 c1 04          	add    $0x4,%rcx
  101b44:	89 fa                	mov    %edi,%edx
  101b46:	ed                   	in     (%dx),%eax
  101b47:	89 41 fc             	mov    %eax,-0x4(%rcx)
  101b4a:	48 39 f1             	cmp    %rsi,%rcx
  101b4d:	75 f1                	jne    101b40 <disk_blkio+0x110>
  101b4f:	eb ce                	jmp    101b1f <disk_blkio+0xef>
  101b51:	c3                   	ret    
  101b52:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  101b59:	00 00 00 00 
  101b5d:	0f 1f 00             	nopl   (%rax)

0000000000101b60 <audio_config>:
  101b60:	f3 0f 1e fa          	endbr64 
  101b64:	c6 07 00             	movb   $0x0,(%rdi)
  101b67:	c3                   	ret    
  101b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  101b6f:	00 

0000000000101b70 <net_config>:
  101b70:	f3 0f 1e fa          	endbr64 
  101b74:	c6 07 00             	movb   $0x0,(%rdi)
  101b77:	c3                   	ret    
  101b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  101b7f:	00 

0000000000101b80 <fail>:
  101b80:	f3 0f 1e fa          	endbr64 
  101b84:	53                   	push   %rbx
  101b85:	bf 41 00 00 00       	mov    $0x41,%edi
  101b8a:	48 8d 1d 84 10 00 00 	lea    0x1084(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  101b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  101b98:	e8 f3 e5 ff ff       	call   100190 <putch>
  101b9d:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  101ba1:	48 83 c3 01          	add    $0x1,%rbx
  101ba5:	40 84 ff             	test   %dil,%dil
  101ba8:	75 ee                	jne    101b98 <fail+0x18>
  101baa:	48 8d 1d 0b 15 00 00 	lea    0x150b(%rip),%rbx        # 1030bc <vsnprintf+0x55c>
  101bb1:	bf 61 00 00 00       	mov    $0x61,%edi
  101bb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  101bbd:	00 00 00 
  101bc0:	e8 cb e5 ff ff       	call   100190 <putch>
  101bc5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  101bc9:	48 83 c3 01          	add    $0x1,%rbx
  101bcd:	40 84 ff             	test   %dil,%dil
  101bd0:	75 ee                	jne    101bc0 <fail+0x40>
  101bd2:	48 8d 1d 37 15 00 00 	lea    0x1537(%rip),%rbx        # 103110 <vsnprintf+0x5b0>
  101bd9:	bf 20 00 00 00       	mov    $0x20,%edi
  101bde:	66 90                	xchg   %ax,%ax
  101be0:	e8 ab e5 ff ff       	call   100190 <putch>
  101be5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  101be9:	48 83 c3 01          	add    $0x1,%rbx
  101bed:	40 84 ff             	test   %dil,%dil
  101bf0:	75 ee                	jne    101be0 <fail+0x60>
  101bf2:	bf 01 00 00 00       	mov    $0x1,%edi
  101bf7:	e8 a4 e5 ff ff       	call   1001a0 <halt>
  101bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000101c00 <input_keybrd>:
  101c00:	f3 0f 1e fa          	endbr64 
  101c04:	ba 64 00 00 00       	mov    $0x64,%edx
  101c09:	ec                   	in     (%dx),%al
  101c0a:	a8 01                	test   $0x1,%al
  101c0c:	74 22                	je     101c30 <input_keybrd+0x30>
  101c0e:	ba 60 00 00 00       	mov    $0x60,%edx
  101c13:	ec                   	in     (%dx),%al
  101c14:	89 c2                	mov    %eax,%edx
  101c16:	83 e0 7f             	and    $0x7f,%eax
  101c19:	f7 d2                	not    %edx
  101c1b:	c0 ea 07             	shr    $0x7,%dl
  101c1e:	88 17                	mov    %dl,(%rdi)
  101c20:	48 8d 15 f9 15 00 00 	lea    0x15f9(%rip),%rdx        # 103220 <keylut>
  101c27:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  101c2a:	89 47 04             	mov    %eax,0x4(%rdi)
  101c2d:	c3                   	ret    
  101c2e:	66 90                	xchg   %ax,%ax
  101c30:	31 c0                	xor    %eax,%eax
  101c32:	c6 07 00             	movb   $0x0,(%rdi)
  101c35:	89 47 04             	mov    %eax,0x4(%rdi)
  101c38:	c3                   	ret    
  101c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000101c40 <render.isra.0>:
  101c40:	41 57                	push   %r15
  101c42:	41 56                	push   %r14
  101c44:	41 55                	push   %r13
  101c46:	49 89 fd             	mov    %rdi,%r13
  101c49:	41 54                	push   %r12
  101c4b:	55                   	push   %rbp
  101c4c:	53                   	push   %rbx
  101c4d:	48 83 ec 18          	sub    $0x18,%rsp
  101c51:	0f b7 46 02          	movzwl 0x2(%rsi),%eax
  101c55:	48 89 14 24          	mov    %rdx,(%rsp)
  101c59:	89 44 24 08          	mov    %eax,0x8(%rsp)
  101c5d:	48 89 c1             	mov    %rax,%rcx
  101c60:	0f b7 07             	movzwl (%rdi),%eax
  101c63:	66 83 f8 01          	cmp    $0x1,%ax
  101c67:	0f 84 56 01 00 00    	je     101dc3 <render.isra.0+0x183>
  101c6d:	66 83 f8 02          	cmp    $0x2,%ax
  101c71:	0f 85 74 01 00 00    	jne    101deb <render.isra.0+0x1ab>
  101c77:	0f b7 5f 02          	movzwl 0x2(%rdi),%ebx
  101c7b:	44 0f b7 67 04       	movzwl 0x4(%rdi),%r12d
  101c80:	48 8d 35 f9 2d 08 00 	lea    0x82df9(%rip),%rsi        # 184a80 <vmem>
  101c87:	48 8b 2d e2 2d 00 00 	mov    0x2de2(%rip),%rbp        # 104a70 <vbuf_head>
  101c8e:	89 d8                	mov    %ebx,%eax
  101c90:	41 0f af c4          	imul   %r12d,%eax
  101c94:	8d 14 40             	lea    (%rax,%rax,2),%edx
  101c97:	48 63 c2             	movslq %edx,%rax
  101c9a:	48 01 e8             	add    %rbp,%rax
  101c9d:	48 89 05 cc 2d 00 00 	mov    %rax,0x2dcc(%rip)        # 104a70 <vbuf_head>
  101ca4:	48 39 f0             	cmp    %rsi,%rax
  101ca7:	0f 87 a5 01 00 00    	ja     101e52 <render.isra.0+0x212>
  101cad:	85 d2                	test   %edx,%edx
  101caf:	7e 1b                	jle    101ccc <render.isra.0+0x8c>
  101cb1:	83 ea 01             	sub    $0x1,%edx
  101cb4:	48 89 e8             	mov    %rbp,%rax
  101cb7:	48 8d 54 15 01       	lea    0x1(%rbp,%rdx,1),%rdx
  101cbc:	0f 1f 40 00          	nopl   0x0(%rax)
  101cc0:	c6 00 00             	movb   $0x0,(%rax)
  101cc3:	48 83 c0 01          	add    $0x1,%rax
  101cc7:	48 39 c2             	cmp    %rax,%rdx
  101cca:	75 f4                	jne    101cc0 <render.isra.0+0x80>
  101ccc:	45 8b 75 12          	mov    0x12(%r13),%r14d
  101cd0:	4c 8d 3d a9 2d 08 00 	lea    0x82da9(%rip),%r15        # 184a80 <vmem>
  101cd7:	4c 89 f0             	mov    %r14,%rax
  101cda:	4d 01 fe             	add    %r15,%r14
  101cdd:	83 f8 ff             	cmp    $0xffffffff,%eax
  101ce0:	74 41                	je     101d23 <render.isra.0+0xe3>
  101ce2:	4c 89 e8             	mov    %r13,%rax
  101ce5:	66 89 4c 24 0e       	mov    %cx,0xe(%rsp)
  101cea:	49 89 ed             	mov    %rbp,%r13
  101ced:	89 dd                	mov    %ebx,%ebp
  101cef:	48 89 c3             	mov    %rax,%rbx
  101cf2:	eb 07                	jmp    101cfb <render.isra.0+0xbb>
  101cf4:	0f 1f 40 00          	nopl   0x0(%rax)
  101cf8:	4d 01 fe             	add    %r15,%r14
  101cfb:	4c 89 f7             	mov    %r14,%rdi
  101cfe:	4c 89 ea             	mov    %r13,%rdx
  101d01:	48 89 de             	mov    %rbx,%rsi
  101d04:	e8 37 ff ff ff       	call   101c40 <render.isra.0>
  101d09:	45 8b 76 0e          	mov    0xe(%r14),%r14d
  101d0d:	41 83 fe ff          	cmp    $0xffffffff,%r14d
  101d11:	75 e5                	jne    101cf8 <render.isra.0+0xb8>
  101d13:	48 89 d8             	mov    %rbx,%rax
  101d16:	0f b7 4c 24 0e       	movzwl 0xe(%rsp),%ecx
  101d1b:	89 eb                	mov    %ebp,%ebx
  101d1d:	4c 89 ed             	mov    %r13,%rbp
  101d20:	49 89 c5             	mov    %rax,%r13
  101d23:	45 0f b7 7d 0a       	movzwl 0xa(%r13),%r15d
  101d28:	45 85 ff             	test   %r15d,%r15d
  101d2b:	0f 84 83 00 00 00    	je     101db4 <render.isra.0+0x174>
  101d31:	41 0f b7 7d 0c       	movzwl 0xc(%r13),%edi
  101d36:	4c 8d 14 49          	lea    (%rcx,%rcx,2),%r10
  101d3a:	45 31 f6             	xor    %r14d,%r14d
  101d3d:	45 31 db             	xor    %r11d,%r11d
  101d40:	85 ff                	test   %edi,%edi
  101d42:	74 64                	je     101da8 <render.isra.0+0x168>
  101d44:	44 89 f0             	mov    %r14d,%eax
  101d47:	31 f6                	xor    %esi,%esi
  101d49:	45 31 c0             	xor    %r8d,%r8d
  101d4c:	99                   	cltd   
  101d4d:	41 f7 ff             	idiv   %r15d
  101d50:	41 0f b7 55 08       	movzwl 0x8(%r13),%edx
  101d55:	0f af 54 24 08       	imul   0x8(%rsp),%edx
  101d5a:	48 63 d2             	movslq %edx,%rdx
  101d5d:	41 89 c1             	mov    %eax,%r9d
  101d60:	41 0f b7 45 06       	movzwl 0x6(%r13),%eax
  101d65:	44 01 d8             	add    %r11d,%eax
  101d68:	48 98                	cltq   
  101d6a:	48 01 d0             	add    %rdx,%rax
  101d6d:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
  101d71:	48 03 0c 24          	add    (%rsp),%rcx
  101d75:	0f 1f 00             	nopl   (%rax)
  101d78:	89 f0                	mov    %esi,%eax
  101d7a:	41 83 c0 01          	add    $0x1,%r8d
  101d7e:	44 01 e6             	add    %r12d,%esi
  101d81:	99                   	cltd   
  101d82:	f7 ff                	idiv   %edi
  101d84:	0f af c3             	imul   %ebx,%eax
  101d87:	44 01 c8             	add    %r9d,%eax
  101d8a:	48 98                	cltq   
  101d8c:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
  101d90:	48 01 e8             	add    %rbp,%rax
  101d93:	0f b7 10             	movzwl (%rax),%edx
  101d96:	66 89 11             	mov    %dx,(%rcx)
  101d99:	0f b6 40 02          	movzbl 0x2(%rax),%eax
  101d9d:	88 41 02             	mov    %al,0x2(%rcx)
  101da0:	4c 01 d1             	add    %r10,%rcx
  101da3:	41 39 f8             	cmp    %edi,%r8d
  101da6:	75 d0                	jne    101d78 <render.isra.0+0x138>
  101da8:	49 83 c3 01          	add    $0x1,%r11
  101dac:	41 01 de             	add    %ebx,%r14d
  101daf:	45 39 df             	cmp    %r11d,%r15d
  101db2:	7f 8c                	jg     101d40 <render.isra.0+0x100>
  101db4:	48 83 c4 18          	add    $0x18,%rsp
  101db8:	5b                   	pop    %rbx
  101db9:	5d                   	pop    %rbp
  101dba:	41 5c                	pop    %r12
  101dbc:	41 5d                	pop    %r13
  101dbe:	41 5e                	pop    %r14
  101dc0:	41 5f                	pop    %r15
  101dc2:	c3                   	ret    
  101dc3:	8b 47 16             	mov    0x16(%rdi),%eax
  101dc6:	0f b7 5f 12          	movzwl 0x12(%rdi),%ebx
  101dca:	44 0f b7 67 14       	movzwl 0x14(%rdi),%r12d
  101dcf:	83 f8 ff             	cmp    $0xffffffff,%eax
  101dd2:	74 10                	je     101de4 <render.isra.0+0x1a4>
  101dd4:	48 8d 15 a5 2c 08 00 	lea    0x82ca5(%rip),%rdx        # 184a80 <vmem>
  101ddb:	48 8d 2c 10          	lea    (%rax,%rdx,1),%rbp
  101ddf:	e9 3f ff ff ff       	jmp    101d23 <render.isra.0+0xe3>
  101de4:	31 ed                	xor    %ebp,%ebp
  101de6:	e9 38 ff ff ff       	jmp    101d23 <render.isra.0+0xe3>
  101deb:	48 8d 1d 23 0e 00 00 	lea    0xe23(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  101df2:	b8 41 00 00 00       	mov    $0x41,%eax
  101df7:	0f be f8             	movsbl %al,%edi
  101dfa:	48 83 c3 01          	add    $0x1,%rbx
  101dfe:	e8 8d e3 ff ff       	call   100190 <putch>
  101e03:	0f b6 03             	movzbl (%rbx),%eax
  101e06:	84 c0                	test   %al,%al
  101e08:	75 ed                	jne    101df7 <render.isra.0+0x1b7>
  101e0a:	48 8d 1d ce 12 00 00 	lea    0x12ce(%rip),%rbx        # 1030df <vsnprintf+0x57f>
  101e11:	b8 69 00 00 00       	mov    $0x69,%eax
  101e16:	0f be f8             	movsbl %al,%edi
  101e19:	48 83 c3 01          	add    $0x1,%rbx
  101e1d:	e8 6e e3 ff ff       	call   100190 <putch>
  101e22:	0f b6 03             	movzbl (%rbx),%eax
  101e25:	84 c0                	test   %al,%al
  101e27:	75 ed                	jne    101e16 <render.isra.0+0x1d6>
  101e29:	48 8d 1d 60 13 00 00 	lea    0x1360(%rip),%rbx        # 103190 <vsnprintf+0x630>
  101e30:	b8 20 00 00 00       	mov    $0x20,%eax
  101e35:	0f be f8             	movsbl %al,%edi
  101e38:	48 83 c3 01          	add    $0x1,%rbx
  101e3c:	e8 4f e3 ff ff       	call   100190 <putch>
  101e41:	0f b6 03             	movzbl (%rbx),%eax
  101e44:	84 c0                	test   %al,%al
  101e46:	75 ed                	jne    101e35 <render.isra.0+0x1f5>
  101e48:	bf 01 00 00 00       	mov    $0x1,%edi
  101e4d:	e8 4e e3 ff ff       	call   1001a0 <halt>
  101e52:	48 8d 1d bc 0d 00 00 	lea    0xdbc(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  101e59:	b8 41 00 00 00       	mov    $0x41,%eax
  101e5e:	0f be f8             	movsbl %al,%edi
  101e61:	48 83 c3 01          	add    $0x1,%rbx
  101e65:	e8 26 e3 ff ff       	call   100190 <putch>
  101e6a:	0f b6 03             	movzbl (%rbx),%eax
  101e6d:	84 c0                	test   %al,%al
  101e6f:	75 ed                	jne    101e5e <render.isra.0+0x21e>
  101e71:	48 8d 1d 5d 12 00 00 	lea    0x125d(%rip),%rbx        # 1030d5 <vsnprintf+0x575>
  101e78:	b8 6e 00 00 00       	mov    $0x6e,%eax
  101e7d:	0f be f8             	movsbl %al,%edi
  101e80:	48 83 c3 01          	add    $0x1,%rbx
  101e84:	e8 07 e3 ff ff       	call   100190 <putch>
  101e89:	0f b6 03             	movzbl (%rbx),%eax
  101e8c:	84 c0                	test   %al,%al
  101e8e:	75 ed                	jne    101e7d <render.isra.0+0x23d>
  101e90:	48 8d 1d b9 12 00 00 	lea    0x12b9(%rip),%rbx        # 103150 <vsnprintf+0x5f0>
  101e97:	b8 20 00 00 00       	mov    $0x20,%eax
  101e9c:	0f be f8             	movsbl %al,%edi
  101e9f:	48 83 c3 01          	add    $0x1,%rbx
  101ea3:	e8 e8 e2 ff ff       	call   100190 <putch>
  101ea8:	0f b6 03             	movzbl (%rbx),%eax
  101eab:	84 c0                	test   %al,%al
  101ead:	75 ed                	jne    101e9c <render.isra.0+0x25c>
  101eaf:	eb 97                	jmp    101e48 <render.isra.0+0x208>
  101eb1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  101eb8:	00 00 00 00 
  101ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000101ec0 <gpu_render>:
  101ec0:	f3 0f 1e fa          	endbr64 
  101ec4:	8b 3f                	mov    (%rdi),%edi
  101ec6:	48 8d 05 b3 2b 00 00 	lea    0x2bb3(%rip),%rax        # 104a80 <vbuf>
  101ecd:	48 8b 15 ac 2b 10 00 	mov    0x102bac(%rip),%rdx        # 204a80 <fb>
  101ed4:	48 89 05 95 2b 00 00 	mov    %rax,0x2b95(%rip)        # 104a70 <vbuf_head>
  101edb:	83 ff ff             	cmp    $0xffffffff,%edi
  101ede:	74 20                	je     101f00 <gpu_render+0x40>
  101ee0:	48 8d 05 99 2b 08 00 	lea    0x82b99(%rip),%rax        # 184a80 <vmem>
  101ee7:	48 8d 35 62 2b 00 00 	lea    0x2b62(%rip),%rsi        # 104a50 <display>
  101eee:	48 01 c7             	add    %rax,%rdi
  101ef1:	e9 4a fd ff ff       	jmp    101c40 <render.isra.0>
  101ef6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  101efd:	00 00 00 
  101f00:	31 ff                	xor    %edi,%edi
  101f02:	48 8d 35 47 2b 00 00 	lea    0x2b47(%rip),%rsi        # 104a50 <display>
  101f09:	e9 32 fd ff ff       	jmp    101c40 <render.isra.0>
  101f0e:	66 90                	xchg   %ax,%ax

0000000000101f10 <ioe_init>:
  101f10:	f3 0f 1e fa          	endbr64 
  101f14:	41 57                	push   %r15
  101f16:	41 56                	push   %r14
  101f18:	41 55                	push   %r13
  101f1a:	41 54                	push   %r12
  101f1c:	55                   	push   %rbp
  101f1d:	53                   	push   %rbx
  101f1e:	48 83 ec 58          	sub    $0x58,%rsp
  101f22:	e8 59 06 00 00       	call   102580 <cpu_current>
  101f27:	85 c0                	test   %eax,%eax
  101f29:	0f 85 ff 01 00 00    	jne    10212e <ioe_init+0x21e>
  101f2f:	48 8d 05 8a 16 00 00 	lea    0x168a(%rip),%rax        # 1035c0 <lut>
  101f36:	48 8d 0d 43 fc ff ff 	lea    -0x3bd(%rip),%rcx        # 101b80 <fail>
  101f3d:	48 8d 90 00 04 00 00 	lea    0x400(%rax),%rdx
  101f44:	eb 13                	jmp    101f59 <ioe_init+0x49>
  101f46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  101f4d:	00 00 00 
  101f50:	48 83 c0 08          	add    $0x8,%rax
  101f54:	48 39 c2             	cmp    %rax,%rdx
  101f57:	74 12                	je     101f6b <ioe_init+0x5b>
  101f59:	48 83 38 00          	cmpq   $0x0,(%rax)
  101f5d:	75 f1                	jne    101f50 <ioe_init+0x40>
  101f5f:	48 89 08             	mov    %rcx,(%rax)
  101f62:	48 83 c0 08          	add    $0x8,%rax
  101f66:	48 39 c2             	cmp    %rax,%rdx
  101f69:	75 ee                	jne    101f59 <ioe_init+0x49>
  101f6b:	31 c9                	xor    %ecx,%ecx
  101f6d:	bf fa 03 00 00       	mov    $0x3fa,%edi
  101f72:	89 c8                	mov    %ecx,%eax
  101f74:	89 fa                	mov    %edi,%edx
  101f76:	ee                   	out    %al,(%dx)
  101f77:	41 b9 fb 03 00 00    	mov    $0x3fb,%r9d
  101f7d:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
  101f82:	44 89 ca             	mov    %r9d,%edx
  101f85:	ee                   	out    %al,(%dx)
  101f86:	be f8 03 00 00       	mov    $0x3f8,%esi
  101f8b:	b8 0c 00 00 00       	mov    $0xc,%eax
  101f90:	89 f2                	mov    %esi,%edx
  101f92:	ee                   	out    %al,(%dx)
  101f93:	41 b8 f9 03 00 00    	mov    $0x3f9,%r8d
  101f99:	89 c8                	mov    %ecx,%eax
  101f9b:	44 89 c2             	mov    %r8d,%edx
  101f9e:	ee                   	out    %al,(%dx)
  101f9f:	b8 03 00 00 00       	mov    $0x3,%eax
  101fa4:	44 89 ca             	mov    %r9d,%edx
  101fa7:	ee                   	out    %al,(%dx)
  101fa8:	ba fc 03 00 00       	mov    $0x3fc,%edx
  101fad:	89 c8                	mov    %ecx,%eax
  101faf:	ee                   	out    %al,(%dx)
  101fb0:	b8 01 00 00 00       	mov    $0x1,%eax
  101fb5:	44 89 c2             	mov    %r8d,%edx
  101fb8:	ee                   	out    %al,(%dx)
  101fb9:	89 fa                	mov    %edi,%edx
  101fbb:	ec                   	in     (%dx),%al
  101fbc:	89 f2                	mov    %esi,%edx
  101fbe:	ec                   	in     (%dx),%al
  101fbf:	48 8d 5c 24 38       	lea    0x38(%rsp),%rbx
  101fc4:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
  101fc9:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  101fce:	66 90                	xchg   %ax,%ax
  101fd0:	48 89 df             	mov    %rbx,%rdi
  101fd3:	e8 58 f7 ff ff       	call   101730 <read_rtc_async>
  101fd8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
  101fdf:	00 
  101fe0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  101fe4:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
  101fe9:	7f 1b                	jg     102006 <ioe_init+0xf6>
  101feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  101ff0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  101ff4:	83 c0 01             	add    $0x1,%eax
  101ff7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  101ffb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  101fff:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
  102004:	7e ea                	jle    101ff0 <ioe_init+0xe0>
  102006:	4c 89 e7             	mov    %r12,%rdi
  102009:	e8 22 f7 ff ff       	call   101730 <read_rtc_async>
  10200e:	8b 4c 24 1c          	mov    0x1c(%rsp),%ecx
  102012:	39 4c 24 4c          	cmp    %ecx,0x4c(%rsp)
  102016:	74 b8                	je     101fd0 <ioe_init+0xc0>
  102018:	0f 31                	rdtsc  
  10201a:	44 6b 6c 24 18 3c    	imul   $0x3c,0x18(%rsp),%r13d
  102020:	41 89 d6             	mov    %edx,%r14d
  102023:	41 89 c7             	mov    %eax,%r15d
  102026:	41 01 cd             	add    %ecx,%r13d
  102029:	4d 63 ed             	movslq %r13d,%r13
  10202c:	0f 1f 40 00          	nopl   0x0(%rax)
  102030:	48 89 df             	mov    %rbx,%rdi
  102033:	e8 f8 f6 ff ff       	call   101730 <read_rtc_async>
  102038:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  10203f:	8b 04 24             	mov    (%rsp),%eax
  102042:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
  102047:	7f 1a                	jg     102063 <ioe_init+0x153>
  102049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102050:	8b 04 24             	mov    (%rsp),%eax
  102053:	83 c0 01             	add    $0x1,%eax
  102056:	89 04 24             	mov    %eax,(%rsp)
  102059:	8b 04 24             	mov    (%rsp),%eax
  10205c:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
  102061:	7e ed                	jle    102050 <ioe_init+0x140>
  102063:	48 89 ef             	mov    %rbp,%rdi
  102066:	e8 c5 f6 ff ff       	call   101730 <read_rtc_async>
  10206b:	8b 4c 24 34          	mov    0x34(%rsp),%ecx
  10206f:	39 4c 24 4c          	cmp    %ecx,0x4c(%rsp)
  102073:	74 bb                	je     102030 <ioe_init+0x120>
  102075:	0f 31                	rdtsc  
  102077:	6b 74 24 30 3c       	imul   $0x3c,0x30(%rsp),%esi
  10207c:	01 f1                	add    %esi,%ecx
  10207e:	48 63 c9             	movslq %ecx,%rcx
  102081:	49 39 cd             	cmp    %rcx,%r13
  102084:	0f 83 46 ff ff ff    	jae    101fd0 <ioe_init+0xc0>
  10208a:	48 c1 e2 20          	shl    $0x20,%rdx
  10208e:	89 c0                	mov    %eax,%eax
  102090:	4c 29 e9             	sub    %r13,%rcx
  102093:	31 db                	xor    %ebx,%ebx
  102095:	48 09 d0             	or     %rdx,%rax
  102098:	4c 89 f2             	mov    %r14,%rdx
  10209b:	48 8d 2d ee 29 10 00 	lea    0x1029ee(%rip),%rbp        # 204a90 <boot_date>
  1020a2:	48 c1 e2 20          	shl    $0x20,%rdx
  1020a6:	4c 09 fa             	or     %r15,%rdx
  1020a9:	48 29 d0             	sub    %rdx,%rax
  1020ac:	31 d2                	xor    %edx,%edx
  1020ae:	48 c1 e8 14          	shr    $0x14,%rax
  1020b2:	48 f7 f1             	div    %rcx
  1020b5:	89 05 e5 14 00 00    	mov    %eax,0x14e5(%rip)        # 1035a0 <freq_mhz>
  1020bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1020c0:	48 89 ef             	mov    %rbp,%rdi
  1020c3:	e8 68 f6 ff ff       	call   101730 <read_rtc_async>
  1020c8:	ba 70 00 00 00       	mov    $0x70,%edx
  1020cd:	89 d8                	mov    %ebx,%eax
  1020cf:	ee                   	out    %al,(%dx)
  1020d0:	ba 71 00 00 00       	mov    $0x71,%edx
  1020d5:	ec                   	in     (%dx),%al
  1020d6:	0f b6 d0             	movzbl %al,%edx
  1020d9:	83 e0 0f             	and    $0xf,%eax
  1020dc:	c1 fa 04             	sar    $0x4,%edx
  1020df:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1020e2:	8d 04 50             	lea    (%rax,%rdx,2),%eax
  1020e5:	3b 05 b9 29 10 00    	cmp    0x1029b9(%rip),%eax        # 204aa4 <boot_date+0x14>
  1020eb:	75 d3                	jne    1020c0 <ioe_init+0x1b0>
  1020ed:	0f 31                	rdtsc  
  1020ef:	89 c0                	mov    %eax,%eax
  1020f1:	48 c1 e2 20          	shl    $0x20,%rdx
  1020f5:	48 09 c2             	or     %rax,%rdx
  1020f8:	48 89 15 89 29 10 00 	mov    %rdx,0x102989(%rip)        # 204a88 <uptsc>
  1020ff:	8b 04 25 12 40 00 00 	mov    0x4012,%eax
  102106:	89 05 46 29 00 00    	mov    %eax,0x2946(%rip)        # 104a52 <display+0x2>
  10210c:	8b 04 25 28 40 00 00 	mov    0x4028,%eax
  102113:	48 89 05 66 29 10 00 	mov    %rax,0x102966(%rip)        # 204a80 <fb>
  10211a:	48 83 c4 58          	add    $0x58,%rsp
  10211e:	b8 01 00 00 00       	mov    $0x1,%eax
  102123:	5b                   	pop    %rbx
  102124:	5d                   	pop    %rbp
  102125:	41 5c                	pop    %r12
  102127:	41 5d                	pop    %r13
  102129:	41 5e                	pop    %r14
  10212b:	41 5f                	pop    %r15
  10212d:	c3                   	ret    
  10212e:	48 8d 1d e0 0a 00 00 	lea    0xae0(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  102135:	b8 41 00 00 00       	mov    $0x41,%eax
  10213a:	0f be f8             	movsbl %al,%edi
  10213d:	48 83 c3 01          	add    $0x1,%rbx
  102141:	e8 4a e0 ff ff       	call   100190 <putch>
  102146:	0f b6 03             	movzbl (%rbx),%eax
  102149:	84 c0                	test   %al,%al
  10214b:	75 ed                	jne    10213a <ioe_init+0x22a>
  10214d:	48 8d 1d 98 0f 00 00 	lea    0xf98(%rip),%rbx        # 1030ec <vsnprintf+0x58c>
  102154:	b8 69 00 00 00       	mov    $0x69,%eax
  102159:	0f be f8             	movsbl %al,%edi
  10215c:	48 83 c3 01          	add    $0x1,%rbx
  102160:	e8 2b e0 ff ff       	call   100190 <putch>
  102165:	0f b6 03             	movzbl (%rbx),%eax
  102168:	84 c0                	test   %al,%al
  10216a:	75 ed                	jne    102159 <ioe_init+0x249>
  10216c:	48 8d 1d 5d 10 00 00 	lea    0x105d(%rip),%rbx        # 1031d0 <vsnprintf+0x670>
  102173:	b8 20 00 00 00       	mov    $0x20,%eax
  102178:	0f be f8             	movsbl %al,%edi
  10217b:	48 83 c3 01          	add    $0x1,%rbx
  10217f:	e8 0c e0 ff ff       	call   100190 <putch>
  102184:	0f b6 03             	movzbl (%rbx),%eax
  102187:	84 c0                	test   %al,%al
  102189:	75 ed                	jne    102178 <ioe_init+0x268>
  10218b:	bf 01 00 00 00       	mov    $0x1,%edi
  102190:	e8 0b e0 ff ff       	call   1001a0 <halt>
  102195:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  10219c:	00 00 00 00 

00000000001021a0 <ioe_read>:
  1021a0:	f3 0f 1e fa          	endbr64 
  1021a4:	4c 63 c7             	movslq %edi,%r8
  1021a7:	48 8d 05 12 14 00 00 	lea    0x1412(%rip),%rax        # 1035c0 <lut>
  1021ae:	48 89 f7             	mov    %rsi,%rdi
  1021b1:	42 ff 24 c0          	jmp    *(%rax,%r8,8)
  1021b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1021bc:	00 00 00 00 

00000000001021c0 <ioe_write>:
  1021c0:	f3 0f 1e fa          	endbr64 
  1021c4:	4c 63 c7             	movslq %edi,%r8
  1021c7:	48 8d 05 f2 13 00 00 	lea    0x13f2(%rip),%rax        # 1035c0 <lut>
  1021ce:	48 89 f7             	mov    %rsi,%rdi
  1021d1:	42 ff 24 c0          	jmp    *(%rax,%r8,8)
  1021d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1021dc:	00 00 00 00 

00000000001021e0 <__am_percpu_initlapic>:
  1021e0:	f3 0f 1e fa          	endbr64 
  1021e4:	48 c7 c0 40 4a 10 00 	mov    $0x104a40,%rax
  1021eb:	48 8b 00             	mov    (%rax),%rax
  1021ee:	c7 80 f0 00 00 00 3f 	movl   $0x13f,0xf0(%rax)
  1021f5:	01 00 00 
  1021f8:	8b 50 20             	mov    0x20(%rax),%edx
  1021fb:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
  102202:	00 00 00 
  102205:	8b 50 20             	mov    0x20(%rax),%edx
  102208:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
  10220f:	00 02 00 
  102212:	8b 50 20             	mov    0x20(%rax),%edx
  102215:	c7 80 80 03 00 00 80 	movl   $0x989680,0x380(%rax)
  10221c:	96 98 00 
  10221f:	8b 50 20             	mov    0x20(%rax),%edx
  102222:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
  102229:	00 01 00 
  10222c:	8b 50 20             	mov    0x20(%rax),%edx
  10222f:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
  102236:	00 01 00 
  102239:	8b 50 20             	mov    0x20(%rax),%edx
  10223c:	8b 50 30             	mov    0x30(%rax),%edx
  10223f:	c1 ea 10             	shr    $0x10,%edx
  102242:	81 e2 fc 00 00 00    	and    $0xfc,%edx
  102248:	74 0d                	je     102257 <__am_percpu_initlapic+0x77>
  10224a:	c7 80 40 03 00 00 00 	movl   $0x10000,0x340(%rax)
  102251:	00 01 00 
  102254:	8b 50 20             	mov    0x20(%rax),%edx
  102257:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
  10225e:	00 00 00 
  102261:	8b 50 20             	mov    0x20(%rax),%edx
  102264:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
  10226b:	00 00 00 
  10226e:	8b 50 20             	mov    0x20(%rax),%edx
  102271:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
  102278:	00 00 00 
  10227b:	8b 50 20             	mov    0x20(%rax),%edx
  10227e:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
  102285:	00 00 00 
  102288:	8b 50 20             	mov    0x20(%rax),%edx
  10228b:	c7 80 10 03 00 00 00 	movl   $0x0,0x310(%rax)
  102292:	00 00 00 
  102295:	8b 50 20             	mov    0x20(%rax),%edx
  102298:	c7 80 00 03 00 00 00 	movl   $0x88500,0x300(%rax)
  10229f:	85 08 00 
  1022a2:	8b 50 20             	mov    0x20(%rax),%edx
  1022a5:	0f 1f 00             	nopl   (%rax)
  1022a8:	8b 90 00 03 00 00    	mov    0x300(%rax),%edx
  1022ae:	80 e6 10             	and    $0x10,%dh
  1022b1:	75 f5                	jne    1022a8 <__am_percpu_initlapic+0xc8>
  1022b3:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%rax)
  1022ba:	00 00 00 
  1022bd:	8b 40 20             	mov    0x20(%rax),%eax
  1022c0:	c3                   	ret    
  1022c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1022c8:	00 00 00 00 
  1022cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000001022d0 <__am_lapic_eoi>:
  1022d0:	f3 0f 1e fa          	endbr64 
  1022d4:	48 c7 c0 40 4a 10 00 	mov    $0x104a40,%rax
  1022db:	48 8b 00             	mov    (%rax),%rax
  1022de:	48 85 c0             	test   %rax,%rax
  1022e1:	74 0d                	je     1022f0 <__am_lapic_eoi+0x20>
  1022e3:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
  1022ea:	00 00 00 
  1022ed:	8b 40 20             	mov    0x20(%rax),%eax
  1022f0:	c3                   	ret    
  1022f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1022f8:	00 00 00 00 
  1022fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000102300 <__am_lapic_bootap>:
  102300:	f3 0f 1e fa          	endbr64 
  102304:	48 89 f1             	mov    %rsi,%rcx
  102307:	b8 0f 00 00 00       	mov    $0xf,%eax
  10230c:	ba 70 00 00 00       	mov    $0x70,%edx
  102311:	ee                   	out    %al,(%dx)
  102312:	b8 0a 00 00 00       	mov    $0xa,%eax
  102317:	ba 71 00 00 00       	mov    $0x71,%edx
  10231c:	ee                   	out    %al,(%dx)
  10231d:	48 c1 e9 0c          	shr    $0xc,%rcx
  102321:	31 c0                	xor    %eax,%eax
  102323:	c1 e7 18             	shl    $0x18,%edi
  102326:	66 89 04 25 67 04 00 	mov    %ax,0x467
  10232d:	00 
  10232e:	48 89 f0             	mov    %rsi,%rax
  102331:	80 cd 06             	or     $0x6,%ch
  102334:	48 c1 e8 04          	shr    $0x4,%rax
  102338:	66 89 04 25 69 04 00 	mov    %ax,0x469
  10233f:	00 
  102340:	48 c7 c0 40 4a 10 00 	mov    $0x104a40,%rax
  102347:	48 8b 00             	mov    (%rax),%rax
  10234a:	89 b8 10 03 00 00    	mov    %edi,0x310(%rax)
  102350:	8b 50 20             	mov    0x20(%rax),%edx
  102353:	c7 80 00 03 00 00 00 	movl   $0xc500,0x300(%rax)
  10235a:	c5 00 00 
  10235d:	8b 50 20             	mov    0x20(%rax),%edx
  102360:	c7 80 00 03 00 00 00 	movl   $0x8500,0x300(%rax)
  102367:	85 00 00 
  10236a:	8b 50 20             	mov    0x20(%rax),%edx
  10236d:	89 b8 10 03 00 00    	mov    %edi,0x310(%rax)
  102373:	8b 50 20             	mov    0x20(%rax),%edx
  102376:	89 88 00 03 00 00    	mov    %ecx,0x300(%rax)
  10237c:	8b 50 20             	mov    0x20(%rax),%edx
  10237f:	89 b8 10 03 00 00    	mov    %edi,0x310(%rax)
  102385:	8b 50 20             	mov    0x20(%rax),%edx
  102388:	89 88 00 03 00 00    	mov    %ecx,0x300(%rax)
  10238e:	8b 40 20             	mov    0x20(%rax),%eax
  102391:	c3                   	ret    
  102392:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  102399:	00 00 00 00 
  10239d:	0f 1f 00             	nopl   (%rax)

00000000001023a0 <__am_ioapic_init>:
  1023a0:	f3 0f 1e fa          	endbr64 
  1023a4:	b8 00 00 c0 fe       	mov    $0xfec00000,%eax
  1023a9:	ba 10 00 00 00       	mov    $0x10,%edx
  1023ae:	b9 20 00 00 00       	mov    $0x20,%ecx
  1023b3:	be 00 00 c0 fe       	mov    $0xfec00000,%esi
  1023b8:	48 89 05 89 26 00 00 	mov    %rax,0x2689(%rip)        # 104a48 <ioapic>
  1023bf:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  1023c5:	a1 10 00 c0 fe 00 00 	movabs 0xfec00010,%eax
  1023cc:	00 00 
  1023ce:	c1 e8 10             	shr    $0x10,%eax
  1023d1:	0f b6 c0             	movzbl %al,%eax
  1023d4:	8d 7c 00 12          	lea    0x12(%rax,%rax,1),%edi
  1023d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1023df:	00 
  1023e0:	89 c8                	mov    %ecx,%eax
  1023e2:	89 16                	mov    %edx,(%rsi)
  1023e4:	83 c1 01             	add    $0x1,%ecx
  1023e7:	0d 00 00 01 00       	or     $0x10000,%eax
  1023ec:	a3 10 00 c0 fe 00 00 	movabs %eax,0xfec00010
  1023f3:	00 00 
  1023f5:	8d 42 01             	lea    0x1(%rdx),%eax
  1023f8:	83 c2 02             	add    $0x2,%edx
  1023fb:	89 06                	mov    %eax,(%rsi)
  1023fd:	b8 10 00 c0 fe       	mov    $0xfec00010,%eax
  102402:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  102408:	39 fa                	cmp    %edi,%edx
  10240a:	75 d4                	jne    1023e0 <__am_ioapic_init+0x40>
  10240c:	c3                   	ret    
  10240d:	0f 1f 00             	nopl   (%rax)

0000000000102410 <__am_ioapic_enable>:
  102410:	f3 0f 1e fa          	endbr64 
  102414:	48 8b 05 2d 26 00 00 	mov    0x262d(%rip),%rax        # 104a48 <ioapic>
  10241b:	8d 54 3f 10          	lea    0x10(%rdi,%rdi,1),%edx
  10241f:	8d 4f 20             	lea    0x20(%rdi),%ecx
  102422:	c1 e6 18             	shl    $0x18,%esi
  102425:	89 10                	mov    %edx,(%rax)
  102427:	83 c2 01             	add    $0x1,%edx
  10242a:	89 48 10             	mov    %ecx,0x10(%rax)
  10242d:	89 10                	mov    %edx,(%rax)
  10242f:	89 70 10             	mov    %esi,0x10(%rax)
  102432:	c3                   	ret    
  102433:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  10243a:	00 00 00 
  10243d:	0f 1f 00             	nopl   (%rax)

0000000000102440 <call_user_entry>:
  102440:	53                   	push   %rbx
  102441:	48 8b 15 c0 2b 11 00 	mov    0x112bc0(%rip),%rdx        # 215008 <user_entry>
  102448:	31 c0                	xor    %eax,%eax
  10244a:	48 8d 1d c4 07 00 00 	lea    0x7c4(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  102451:	ff d2                	call   *%rdx
  102453:	bf 41 00 00 00       	mov    $0x41,%edi
  102458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10245f:	00 
  102460:	e8 2b dd ff ff       	call   100190 <putch>
  102465:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102469:	48 83 c3 01          	add    $0x1,%rbx
  10246d:	40 84 ff             	test   %dil,%dil
  102470:	75 ee                	jne    102460 <call_user_entry+0x20>
  102472:	48 8d 1d a7 0f 00 00 	lea    0xfa7(%rip),%rbx        # 103420 <keylut+0x200>
  102479:	bf 4d 00 00 00       	mov    $0x4d,%edi
  10247e:	66 90                	xchg   %ax,%ax
  102480:	e8 0b dd ff ff       	call   100190 <putch>
  102485:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102489:	48 83 c3 01          	add    $0x1,%rbx
  10248d:	40 84 ff             	test   %dil,%dil
  102490:	75 ee                	jne    102480 <call_user_entry+0x40>
  102492:	48 8d 1d a7 0f 00 00 	lea    0xfa7(%rip),%rbx        # 103440 <keylut+0x220>
  102499:	bf 20 00 00 00       	mov    $0x20,%edi
  10249e:	66 90                	xchg   %ax,%ax
  1024a0:	e8 eb dc ff ff       	call   100190 <putch>
  1024a5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  1024a9:	48 83 c3 01          	add    $0x1,%rbx
  1024ad:	40 84 ff             	test   %dil,%dil
  1024b0:	75 ee                	jne    1024a0 <call_user_entry+0x60>
  1024b2:	bf 01 00 00 00       	mov    $0x1,%edi
  1024b7:	e8 e4 dc ff ff       	call   1001a0 <halt>
  1024bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000001024c0 <othercpu_entry>:
  1024c0:	f3 0f 1e fa          	endbr64 
  1024c4:	50                   	push   %rax
  1024c5:	58                   	pop    %rax
  1024c6:	31 c0                	xor    %eax,%eax
  1024c8:	48 83 ec 08          	sub    $0x8,%rsp
  1024cc:	e8 6f e0 ff ff       	call   100540 <__am_percpu_init>
  1024d1:	b8 01 00 00 00       	mov    $0x1,%eax
  1024d6:	f0 87 05 23 2b 11 00 	lock xchg %eax,0x112b23(%rip)        # 215000 <ap_ready>
  1024dd:	31 c0                	xor    %eax,%eax
  1024df:	e8 5c ff ff ff       	call   102440 <call_user_entry>
  1024e4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1024eb:	00 00 00 00 
  1024ef:	90                   	nop

00000000001024f0 <mpe_init>:
  1024f0:	f3 0f 1e fa          	endbr64 
  1024f4:	41 54                	push   %r12
  1024f6:	49 c7 c4 c0 39 10 00 	mov    $0x1039c0,%r12
  1024fd:	55                   	push   %rbp
  1024fe:	48 89 3d 03 2b 11 00 	mov    %rdi,0x112b03(%rip)        # 215008 <user_entry>
  102505:	53                   	push   %rbx
  102506:	c7 04 25 00 70 00 00 	movl   $0xbfde9,0x7000
  10250d:	e9 fd 0b 00 
  102511:	41 83 3c 24 01       	cmpl   $0x1,(%r12)
  102516:	7e 49                	jle    102561 <mpe_init+0x71>
  102518:	bd 01 00 00 00       	mov    $0x1,%ebp
  10251d:	31 db                	xor    %ebx,%ebx
  10251f:	90                   	nop
  102520:	c7 04 25 04 70 00 00 	movl   $0x1,0x7004
  102527:	01 00 00 00 
  10252b:	be 00 70 00 00       	mov    $0x7000,%esi
  102530:	89 ef                	mov    %ebp,%edi
  102532:	e8 c9 fd ff ff       	call   102300 <__am_lapic_bootap>
  102537:	89 d8                	mov    %ebx,%eax
  102539:	f0 87 05 c0 2a 11 00 	lock xchg %eax,0x112ac0(%rip)        # 215000 <ap_ready>
  102540:	83 f8 01             	cmp    $0x1,%eax
  102543:	74 13                	je     102558 <mpe_init+0x68>
  102545:	0f 1f 00             	nopl   (%rax)
  102548:	f3 90                	pause  
  10254a:	89 d8                	mov    %ebx,%eax
  10254c:	f0 87 05 ad 2a 11 00 	lock xchg %eax,0x112aad(%rip)        # 215000 <ap_ready>
  102553:	83 f8 01             	cmp    $0x1,%eax
  102556:	75 f0                	jne    102548 <mpe_init+0x58>
  102558:	83 c5 01             	add    $0x1,%ebp
  10255b:	41 39 2c 24          	cmp    %ebp,(%r12)
  10255f:	7f bf                	jg     102520 <mpe_init+0x30>
  102561:	31 c0                	xor    %eax,%eax
  102563:	e8 d8 fe ff ff       	call   102440 <call_user_entry>
  102568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  10256f:	00 

0000000000102570 <cpu_count>:
  102570:	f3 0f 1e fa          	endbr64 
  102574:	48 c7 c0 c0 39 10 00 	mov    $0x1039c0,%rax
  10257b:	8b 00                	mov    (%rax),%eax
  10257d:	c3                   	ret    
  10257e:	66 90                	xchg   %ax,%ax

0000000000102580 <cpu_current>:
  102580:	f3 0f 1e fa          	endbr64 
  102584:	48 c7 c0 40 4a 10 00 	mov    $0x104a40,%rax
  10258b:	48 8b 00             	mov    (%rax),%rax
  10258e:	8b 40 20             	mov    0x20(%rax),%eax
  102591:	c1 e8 18             	shr    $0x18,%eax
  102594:	c3                   	ret    
  102595:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  10259c:	00 00 00 00 

00000000001025a0 <__am_othercpu_entry>:
  1025a0:	f3 0f 1e fa          	endbr64 
  1025a4:	53                   	push   %rbx
  1025a5:	e8 d6 ff ff ff       	call   102580 <cpu_current>
  1025aa:	48 c7 c2 c0 4a 20 00 	mov    $0x204ac0,%rdx
  1025b1:	48 98                	cltq   
  1025b3:	48 69 c0 a8 20 00 00 	imul   $0x20a8,%rax,%rax
  1025ba:	48 8d 9c 10 a8 20 00 	lea    0x20a8(%rax,%rdx,1),%rbx
  1025c1:	00 
  1025c2:	48 8d 15 f7 fe ff ff 	lea    -0x109(%rip),%rdx        # 1024c0 <othercpu_entry>
  1025c9:	31 c0                	xor    %eax,%eax
  1025cb:	48 89 dc             	mov    %rbx,%rsp
  1025ce:	48 89 c7             	mov    %rax,%rdi
  1025d1:	ff e2                	jmp    *%rdx
  1025d3:	5b                   	pop    %rbx
  1025d4:	c3                   	ret    
  1025d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1025dc:	00 00 00 00 

00000000001025e0 <atomic_xchg>:
  1025e0:	f3 0f 1e fa          	endbr64 
  1025e4:	89 f0                	mov    %esi,%eax
  1025e6:	f0 87 07             	lock xchg %eax,(%rdi)
  1025e9:	c3                   	ret    
  1025ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000001025f0 <__am_stop_the_world>:
  1025f0:	f3 0f 1e fa          	endbr64 
  1025f4:	55                   	push   %rbp
  1025f5:	53                   	push   %rbx
  1025f6:	48 83 ec 08          	sub    $0x8,%rsp
  1025fa:	48 c7 c5 c0 39 10 00 	mov    $0x1039c0,%rbp
  102601:	c7 04 25 00 70 00 00 	movl   $0xfeeb,0x7000
  102608:	eb fe 00 00 
  10260c:	8b 45 00             	mov    0x0(%rbp),%eax
  10260f:	85 c0                	test   %eax,%eax
  102611:	7e 22                	jle    102635 <__am_stop_the_world+0x45>
  102613:	31 db                	xor    %ebx,%ebx
  102615:	0f 1f 00             	nopl   (%rax)
  102618:	e8 63 ff ff ff       	call   102580 <cpu_current>
  10261d:	39 d8                	cmp    %ebx,%eax
  10261f:	74 0c                	je     10262d <__am_stop_the_world+0x3d>
  102621:	be 00 70 00 00       	mov    $0x7000,%esi
  102626:	89 df                	mov    %ebx,%edi
  102628:	e8 d3 fc ff ff       	call   102300 <__am_lapic_bootap>
  10262d:	83 c3 01             	add    $0x1,%ebx
  102630:	39 5d 00             	cmp    %ebx,0x0(%rbp)
  102633:	7f e3                	jg     102618 <__am_stop_the_world+0x28>
  102635:	48 83 c4 08          	add    $0x8,%rsp
  102639:	5b                   	pop    %rbx
  10263a:	5d                   	pop    %rbp
  10263b:	c3                   	ret    

000000000010263c <__am_kcontext_start>:
  10263c:	68 d0 15 10 00       	push   $0x1015d0
  102641:	ff e6                	jmp    *%rsi

0000000000102643 <trap>:
  102643:	fa                   	cli    
  102644:	48 83 ec 30          	sub    $0x30,%rsp
  102648:	41 57                	push   %r15
  10264a:	41 56                	push   %r14
  10264c:	41 55                	push   %r13
  10264e:	41 54                	push   %r12
  102650:	41 53                	push   %r11
  102652:	41 52                	push   %r10
  102654:	41 51                	push   %r9
  102656:	41 50                	push   %r8
  102658:	57                   	push   %rdi
  102659:	56                   	push   %rsi
  10265a:	55                   	push   %rbp
  10265b:	52                   	push   %rdx
  10265c:	51                   	push   %rcx
  10265d:	53                   	push   %rbx
  10265e:	50                   	push   %rax
  10265f:	6a 00                	push   $0x0
  102661:	48 89 e7             	mov    %rsp,%rdi
  102664:	e8 b7 df ff ff       	call   100620 <__am_irq_handle>

0000000000102669 <__am_iret>:
  102669:	48 89 fc             	mov    %rdi,%rsp
  10266c:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  102673:	00 
  102674:	8e d8                	mov    %eax,%ds
  102676:	8e c0                	mov    %eax,%es
  102678:	48 83 c4 08          	add    $0x8,%rsp
  10267c:	58                   	pop    %rax
  10267d:	5b                   	pop    %rbx
  10267e:	59                   	pop    %rcx
  10267f:	5a                   	pop    %rdx
  102680:	5d                   	pop    %rbp
  102681:	5e                   	pop    %rsi
  102682:	5f                   	pop    %rdi
  102683:	41 58                	pop    %r8
  102685:	41 59                	pop    %r9
  102687:	41 5a                	pop    %r10
  102689:	41 5b                	pop    %r11
  10268b:	41 5c                	pop    %r12
  10268d:	41 5d                	pop    %r13
  10268f:	41 5e                	pop    %r14
  102691:	41 5f                	pop    %r15
  102693:	48 cf                	iretq  

0000000000102695 <__am_irq0>:
  102695:	fa                   	cli    
  102696:	6a 00                	push   $0x0
  102698:	6a 00                	push   $0x0
  10269a:	eb a7                	jmp    102643 <trap>

000000000010269c <__am_irq1>:
  10269c:	fa                   	cli    
  10269d:	6a 00                	push   $0x0
  10269f:	6a 01                	push   $0x1
  1026a1:	eb a0                	jmp    102643 <trap>

00000000001026a3 <__am_irq2>:
  1026a3:	fa                   	cli    
  1026a4:	6a 00                	push   $0x0
  1026a6:	6a 02                	push   $0x2
  1026a8:	eb 99                	jmp    102643 <trap>

00000000001026aa <__am_irq3>:
  1026aa:	fa                   	cli    
  1026ab:	6a 00                	push   $0x0
  1026ad:	6a 03                	push   $0x3
  1026af:	eb 92                	jmp    102643 <trap>

00000000001026b1 <__am_irq4>:
  1026b1:	fa                   	cli    
  1026b2:	6a 00                	push   $0x0
  1026b4:	6a 04                	push   $0x4
  1026b6:	eb 8b                	jmp    102643 <trap>

00000000001026b8 <__am_irq5>:
  1026b8:	fa                   	cli    
  1026b9:	6a 00                	push   $0x0
  1026bb:	6a 05                	push   $0x5
  1026bd:	eb 84                	jmp    102643 <trap>

00000000001026bf <__am_irq6>:
  1026bf:	fa                   	cli    
  1026c0:	6a 00                	push   $0x0
  1026c2:	6a 06                	push   $0x6
  1026c4:	e9 7a ff ff ff       	jmp    102643 <trap>

00000000001026c9 <__am_irq7>:
  1026c9:	fa                   	cli    
  1026ca:	6a 00                	push   $0x0
  1026cc:	6a 07                	push   $0x7
  1026ce:	e9 70 ff ff ff       	jmp    102643 <trap>

00000000001026d3 <__am_irq8>:
  1026d3:	fa                   	cli    
  1026d4:	6a 08                	push   $0x8
  1026d6:	e9 68 ff ff ff       	jmp    102643 <trap>

00000000001026db <__am_irq9>:
  1026db:	fa                   	cli    
  1026dc:	6a 00                	push   $0x0
  1026de:	6a 09                	push   $0x9
  1026e0:	e9 5e ff ff ff       	jmp    102643 <trap>

00000000001026e5 <__am_irq10>:
  1026e5:	fa                   	cli    
  1026e6:	6a 0a                	push   $0xa
  1026e8:	e9 56 ff ff ff       	jmp    102643 <trap>

00000000001026ed <__am_irq11>:
  1026ed:	fa                   	cli    
  1026ee:	6a 0b                	push   $0xb
  1026f0:	e9 4e ff ff ff       	jmp    102643 <trap>

00000000001026f5 <__am_irq12>:
  1026f5:	fa                   	cli    
  1026f6:	6a 0c                	push   $0xc
  1026f8:	e9 46 ff ff ff       	jmp    102643 <trap>

00000000001026fd <__am_irq13>:
  1026fd:	fa                   	cli    
  1026fe:	6a 0d                	push   $0xd
  102700:	e9 3e ff ff ff       	jmp    102643 <trap>

0000000000102705 <__am_irq14>:
  102705:	fa                   	cli    
  102706:	6a 0e                	push   $0xe
  102708:	e9 36 ff ff ff       	jmp    102643 <trap>

000000000010270d <__am_irq15>:
  10270d:	fa                   	cli    
  10270e:	6a 00                	push   $0x0
  102710:	6a 0f                	push   $0xf
  102712:	e9 2c ff ff ff       	jmp    102643 <trap>

0000000000102717 <__am_irq16>:
  102717:	fa                   	cli    
  102718:	6a 00                	push   $0x0
  10271a:	6a 10                	push   $0x10
  10271c:	e9 22 ff ff ff       	jmp    102643 <trap>

0000000000102721 <__am_irq19>:
  102721:	fa                   	cli    
  102722:	6a 00                	push   $0x0
  102724:	6a 13                	push   $0x13
  102726:	e9 18 ff ff ff       	jmp    102643 <trap>

000000000010272b <__am_irq31>:
  10272b:	fa                   	cli    
  10272c:	6a 00                	push   $0x0
  10272e:	6a 1f                	push   $0x1f
  102730:	e9 0e ff ff ff       	jmp    102643 <trap>

0000000000102735 <__am_irq32>:
  102735:	fa                   	cli    
  102736:	6a 00                	push   $0x0
  102738:	6a 20                	push   $0x20
  10273a:	e9 04 ff ff ff       	jmp    102643 <trap>

000000000010273f <__am_irq33>:
  10273f:	fa                   	cli    
  102740:	6a 00                	push   $0x0
  102742:	6a 21                	push   $0x21
  102744:	e9 fa fe ff ff       	jmp    102643 <trap>

0000000000102749 <__am_irq34>:
  102749:	fa                   	cli    
  10274a:	6a 00                	push   $0x0
  10274c:	6a 22                	push   $0x22
  10274e:	e9 f0 fe ff ff       	jmp    102643 <trap>

0000000000102753 <__am_irq35>:
  102753:	fa                   	cli    
  102754:	6a 00                	push   $0x0
  102756:	6a 23                	push   $0x23
  102758:	e9 e6 fe ff ff       	jmp    102643 <trap>

000000000010275d <__am_irq36>:
  10275d:	fa                   	cli    
  10275e:	6a 00                	push   $0x0
  102760:	6a 24                	push   $0x24
  102762:	e9 dc fe ff ff       	jmp    102643 <trap>

0000000000102767 <__am_irq37>:
  102767:	fa                   	cli    
  102768:	6a 00                	push   $0x0
  10276a:	6a 25                	push   $0x25
  10276c:	e9 d2 fe ff ff       	jmp    102643 <trap>

0000000000102771 <__am_irq38>:
  102771:	fa                   	cli    
  102772:	6a 00                	push   $0x0
  102774:	6a 26                	push   $0x26
  102776:	e9 c8 fe ff ff       	jmp    102643 <trap>

000000000010277b <__am_irq39>:
  10277b:	fa                   	cli    
  10277c:	6a 00                	push   $0x0
  10277e:	6a 27                	push   $0x27
  102780:	e9 be fe ff ff       	jmp    102643 <trap>

0000000000102785 <__am_irq40>:
  102785:	fa                   	cli    
  102786:	6a 00                	push   $0x0
  102788:	6a 28                	push   $0x28
  10278a:	e9 b4 fe ff ff       	jmp    102643 <trap>

000000000010278f <__am_irq41>:
  10278f:	fa                   	cli    
  102790:	6a 00                	push   $0x0
  102792:	6a 29                	push   $0x29
  102794:	e9 aa fe ff ff       	jmp    102643 <trap>

0000000000102799 <__am_irq42>:
  102799:	fa                   	cli    
  10279a:	6a 00                	push   $0x0
  10279c:	6a 2a                	push   $0x2a
  10279e:	e9 a0 fe ff ff       	jmp    102643 <trap>

00000000001027a3 <__am_irq43>:
  1027a3:	fa                   	cli    
  1027a4:	6a 00                	push   $0x0
  1027a6:	6a 2b                	push   $0x2b
  1027a8:	e9 96 fe ff ff       	jmp    102643 <trap>

00000000001027ad <__am_irq44>:
  1027ad:	fa                   	cli    
  1027ae:	6a 00                	push   $0x0
  1027b0:	6a 2c                	push   $0x2c
  1027b2:	e9 8c fe ff ff       	jmp    102643 <trap>

00000000001027b7 <__am_irq45>:
  1027b7:	fa                   	cli    
  1027b8:	6a 00                	push   $0x0
  1027ba:	6a 2d                	push   $0x2d
  1027bc:	e9 82 fe ff ff       	jmp    102643 <trap>

00000000001027c1 <__am_irq46>:
  1027c1:	fa                   	cli    
  1027c2:	6a 00                	push   $0x0
  1027c4:	6a 2e                	push   $0x2e
  1027c6:	e9 78 fe ff ff       	jmp    102643 <trap>

00000000001027cb <__am_irq47>:
  1027cb:	fa                   	cli    
  1027cc:	6a 00                	push   $0x0
  1027ce:	6a 2f                	push   $0x2f
  1027d0:	e9 6e fe ff ff       	jmp    102643 <trap>

00000000001027d5 <__am_irq128>:
  1027d5:	fa                   	cli    
  1027d6:	6a 00                	push   $0x0
  1027d8:	68 80 00 00 00       	push   $0x80
  1027dd:	e9 61 fe ff ff       	jmp    102643 <trap>

00000000001027e2 <__am_irq129>:
  1027e2:	fa                   	cli    
  1027e3:	6a 00                	push   $0x0
  1027e5:	68 81 00 00 00       	push   $0x81
  1027ea:	e9 54 fe ff ff       	jmp    102643 <trap>

00000000001027ef <__am_irqall>:
  1027ef:	fa                   	cli    
  1027f0:	6a 00                	push   $0x0
  1027f2:	6a ff                	push   $0xffffffffffffffff
  1027f4:	e9 4a fe ff ff       	jmp    102643 <trap>
  1027f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000102800 <printf>:
  102800:	f3 0f 1e fa          	endbr64 
  102804:	41 56                	push   %r14
  102806:	41 55                	push   %r13
  102808:	49 89 fd             	mov    %rdi,%r13
  10280b:	41 54                	push   %r12
  10280d:	45 31 e4             	xor    %r12d,%r12d
  102810:	55                   	push   %rbp
  102811:	53                   	push   %rbx
  102812:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  102819:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
  102820:	00 
  102821:	48 89 74 24 78       	mov    %rsi,0x78(%rsp)
  102826:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
  10282d:	00 
  10282e:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
  102835:	00 
  102836:	4c 89 84 24 90 00 00 	mov    %r8,0x90(%rsp)
  10283d:	00 
  10283e:	4c 89 8c 24 98 00 00 	mov    %r9,0x98(%rsp)
  102845:	00 
  102846:	0f be 3f             	movsbl (%rdi),%edi
  102849:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  10284e:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
  102853:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%rsp)
  10285a:	00 
  10285b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  102860:	40 84 ff             	test   %dil,%dil
  102863:	0f 84 80 00 00 00    	je     1028e9 <printf+0xe9>
  102869:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  10286e:	66 90                	xchg   %ax,%ax
  102870:	49 8d 5d 01          	lea    0x1(%r13),%rbx
  102874:	40 80 ff 25          	cmp    $0x25,%dil
  102878:	0f 85 82 00 00 00    	jne    102900 <printf+0x100>
  10287e:	41 0f b6 45 01       	movzbl 0x1(%r13),%eax
  102883:	41 83 c4 01          	add    $0x1,%r12d
  102887:	3c 64                	cmp    $0x64,%al
  102889:	0f 84 81 00 00 00    	je     102910 <printf+0x110>
  10288f:	3c 73                	cmp    $0x73,%al
  102891:	75 45                	jne    1028d8 <printf+0xd8>
  102893:	8b 44 24 08          	mov    0x8(%rsp),%eax
  102897:	83 f8 2f             	cmp    $0x2f,%eax
  10289a:	0f 87 20 01 00 00    	ja     1029c0 <printf+0x1c0>
  1028a0:	89 c2                	mov    %eax,%edx
  1028a2:	83 c0 08             	add    $0x8,%eax
  1028a5:	48 03 54 24 18       	add    0x18(%rsp),%rdx
  1028aa:	89 44 24 08          	mov    %eax,0x8(%rsp)
  1028ae:	4c 8b 2a             	mov    (%rdx),%r13
  1028b1:	41 0f be 7d 00       	movsbl 0x0(%r13),%edi
  1028b6:	40 84 ff             	test   %dil,%dil
  1028b9:	74 1d                	je     1028d8 <printf+0xd8>
  1028bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1028c0:	e8 cb d8 ff ff       	call   100190 <putch>
  1028c5:	41 0f be 7d 01       	movsbl 0x1(%r13),%edi
  1028ca:	49 83 c5 01          	add    $0x1,%r13
  1028ce:	40 84 ff             	test   %dil,%dil
  1028d1:	75 ed                	jne    1028c0 <printf+0xc0>
  1028d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1028d8:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  1028dc:	4c 8d 6b 01          	lea    0x1(%rbx),%r13
  1028e0:	41 83 c4 01          	add    $0x1,%r12d
  1028e4:	40 84 ff             	test   %dil,%dil
  1028e7:	75 87                	jne    102870 <printf+0x70>
  1028e9:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  1028f0:	44 89 e0             	mov    %r12d,%eax
  1028f3:	5b                   	pop    %rbx
  1028f4:	5d                   	pop    %rbp
  1028f5:	41 5c                	pop    %r12
  1028f7:	41 5d                	pop    %r13
  1028f9:	41 5e                	pop    %r14
  1028fb:	c3                   	ret    
  1028fc:	0f 1f 40 00          	nopl   0x0(%rax)
  102900:	e8 8b d8 ff ff       	call   100190 <putch>
  102905:	4c 89 eb             	mov    %r13,%rbx
  102908:	eb ce                	jmp    1028d8 <printf+0xd8>
  10290a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  102910:	8b 44 24 08          	mov    0x8(%rsp),%eax
  102914:	83 f8 2f             	cmp    $0x2f,%eax
  102917:	0f 87 8b 00 00 00    	ja     1029a8 <printf+0x1a8>
  10291d:	89 c2                	mov    %eax,%edx
  10291f:	83 c0 08             	add    $0x8,%eax
  102922:	48 03 54 24 18       	add    0x18(%rsp),%rdx
  102927:	89 44 24 08          	mov    %eax,0x8(%rsp)
  10292b:	8b 02                	mov    (%rdx),%eax
  10292d:	85 c0                	test   %eax,%eax
  10292f:	74 a7                	je     1028d8 <printf+0xd8>
  102931:	48 89 ee             	mov    %rbp,%rsi
  102934:	45 31 f6             	xor    %r14d,%r14d
  102937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  10293e:	00 00 
  102940:	48 63 f8             	movslq %eax,%rdi
  102943:	99                   	cltd   
  102944:	45 89 f5             	mov    %r14d,%r13d
  102947:	48 83 c6 04          	add    $0x4,%rsi
  10294b:	48 69 ff 67 66 66 66 	imul   $0x66666667,%rdi,%rdi
  102952:	41 83 c6 01          	add    $0x1,%r14d
  102956:	48 c1 ff 22          	sar    $0x22,%rdi
  10295a:	29 d7                	sub    %edx,%edi
  10295c:	8d 0c bf             	lea    (%rdi,%rdi,4),%ecx
  10295f:	89 fa                	mov    %edi,%edx
  102961:	01 c9                	add    %ecx,%ecx
  102963:	29 c8                	sub    %ecx,%eax
  102965:	89 46 fc             	mov    %eax,-0x4(%rsi)
  102968:	89 c7                	mov    %eax,%edi
  10296a:	89 d0                	mov    %edx,%eax
  10296c:	85 d2                	test   %edx,%edx
  10296e:	75 d0                	jne    102940 <printf+0x140>
  102970:	41 83 ed 01          	sub    $0x1,%r13d
  102974:	4d 63 ed             	movslq %r13d,%r13
  102977:	eb 10                	jmp    102989 <printf+0x189>
  102979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102980:	42 8b 7c ad 00       	mov    0x0(%rbp,%r13,4),%edi
  102985:	49 83 ed 01          	sub    $0x1,%r13
  102989:	83 c7 30             	add    $0x30,%edi
  10298c:	40 0f be ff          	movsbl %dil,%edi
  102990:	e8 fb d7 ff ff       	call   100190 <putch>
  102995:	41 83 fd ff          	cmp    $0xffffffff,%r13d
  102999:	75 e5                	jne    102980 <printf+0x180>
  10299b:	45 01 f4             	add    %r14d,%r12d
  10299e:	e9 35 ff ff ff       	jmp    1028d8 <printf+0xd8>
  1029a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1029a8:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  1029ad:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1029b1:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  1029b6:	e9 70 ff ff ff       	jmp    10292b <printf+0x12b>
  1029bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  1029c0:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  1029c5:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1029c9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  1029ce:	e9 db fe ff ff       	jmp    1028ae <printf+0xae>
  1029d3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  1029da:	00 00 00 00 
  1029de:	66 90                	xchg   %ax,%ax

00000000001029e0 <vsprintf>:
  1029e0:	f3 0f 1e fa          	endbr64 
  1029e4:	53                   	push   %rbx
  1029e5:	bf 41 00 00 00       	mov    $0x41,%edi
  1029ea:	48 8d 1d 24 02 00 00 	lea    0x224(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  1029f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  1029f8:	e8 93 d7 ff ff       	call   100190 <putch>
  1029fd:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102a01:	48 83 c3 01          	add    $0x1,%rbx
  102a05:	40 84 ff             	test   %dil,%dil
  102a08:	75 ee                	jne    1029f8 <vsprintf+0x18>
  102a0a:	48 8d 1d 6d 0a 00 00 	lea    0xa6d(%rip),%rbx        # 10347e <keylut+0x25e>
  102a11:	bf 4e 00 00 00       	mov    $0x4e,%edi
  102a16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  102a1d:	00 00 00 
  102a20:	e8 6b d7 ff ff       	call   100190 <putch>
  102a25:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102a29:	48 83 c3 01          	add    $0x1,%rbx
  102a2d:	40 84 ff             	test   %dil,%dil
  102a30:	75 ee                	jne    102a20 <vsprintf+0x40>
  102a32:	48 8d 1d 57 0a 00 00 	lea    0xa57(%rip),%rbx        # 103490 <keylut+0x270>
  102a39:	bf 20 00 00 00       	mov    $0x20,%edi
  102a3e:	66 90                	xchg   %ax,%ax
  102a40:	e8 4b d7 ff ff       	call   100190 <putch>
  102a45:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102a49:	48 83 c3 01          	add    $0x1,%rbx
  102a4d:	40 84 ff             	test   %dil,%dil
  102a50:	75 ee                	jne    102a40 <vsprintf+0x60>
  102a52:	bf 01 00 00 00       	mov    $0x1,%edi
  102a57:	e8 44 d7 ff ff       	call   1001a0 <halt>
  102a5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000102a60 <sprintf>:
  102a60:	f3 0f 1e fa          	endbr64 
  102a64:	53                   	push   %rbx
  102a65:	bf 41 00 00 00       	mov    $0x41,%edi
  102a6a:	48 8d 1d a4 01 00 00 	lea    0x1a4(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  102a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102a78:	e8 13 d7 ff ff       	call   100190 <putch>
  102a7d:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102a81:	48 83 c3 01          	add    $0x1,%rbx
  102a85:	40 84 ff             	test   %dil,%dil
  102a88:	75 ee                	jne    102a78 <sprintf+0x18>
  102a8a:	48 8d 1d ed 09 00 00 	lea    0x9ed(%rip),%rbx        # 10347e <keylut+0x25e>
  102a91:	bf 4e 00 00 00       	mov    $0x4e,%edi
  102a96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  102a9d:	00 00 00 
  102aa0:	e8 eb d6 ff ff       	call   100190 <putch>
  102aa5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102aa9:	48 83 c3 01          	add    $0x1,%rbx
  102aad:	40 84 ff             	test   %dil,%dil
  102ab0:	75 ee                	jne    102aa0 <sprintf+0x40>
  102ab2:	48 8d 1d 17 0a 00 00 	lea    0xa17(%rip),%rbx        # 1034d0 <keylut+0x2b0>
  102ab9:	bf 20 00 00 00       	mov    $0x20,%edi
  102abe:	66 90                	xchg   %ax,%ax
  102ac0:	e8 cb d6 ff ff       	call   100190 <putch>
  102ac5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102ac9:	48 83 c3 01          	add    $0x1,%rbx
  102acd:	40 84 ff             	test   %dil,%dil
  102ad0:	75 ee                	jne    102ac0 <sprintf+0x60>
  102ad2:	bf 01 00 00 00       	mov    $0x1,%edi
  102ad7:	e8 c4 d6 ff ff       	call   1001a0 <halt>
  102adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000102ae0 <snprintf>:
  102ae0:	f3 0f 1e fa          	endbr64 
  102ae4:	53                   	push   %rbx
  102ae5:	bf 41 00 00 00       	mov    $0x41,%edi
  102aea:	48 8d 1d 24 01 00 00 	lea    0x124(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  102af1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102af8:	e8 93 d6 ff ff       	call   100190 <putch>
  102afd:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102b01:	48 83 c3 01          	add    $0x1,%rbx
  102b05:	40 84 ff             	test   %dil,%dil
  102b08:	75 ee                	jne    102af8 <snprintf+0x18>
  102b0a:	48 8d 1d 6d 09 00 00 	lea    0x96d(%rip),%rbx        # 10347e <keylut+0x25e>
  102b11:	bf 4e 00 00 00       	mov    $0x4e,%edi
  102b16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  102b1d:	00 00 00 
  102b20:	e8 6b d6 ff ff       	call   100190 <putch>
  102b25:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102b29:	48 83 c3 01          	add    $0x1,%rbx
  102b2d:	40 84 ff             	test   %dil,%dil
  102b30:	75 ee                	jne    102b20 <snprintf+0x40>
  102b32:	48 8d 1d d7 09 00 00 	lea    0x9d7(%rip),%rbx        # 103510 <keylut+0x2f0>
  102b39:	bf 20 00 00 00       	mov    $0x20,%edi
  102b3e:	66 90                	xchg   %ax,%ax
  102b40:	e8 4b d6 ff ff       	call   100190 <putch>
  102b45:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102b49:	48 83 c3 01          	add    $0x1,%rbx
  102b4d:	40 84 ff             	test   %dil,%dil
  102b50:	75 ee                	jne    102b40 <snprintf+0x60>
  102b52:	bf 01 00 00 00       	mov    $0x1,%edi
  102b57:	e8 44 d6 ff ff       	call   1001a0 <halt>
  102b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000102b60 <vsnprintf>:
  102b60:	f3 0f 1e fa          	endbr64 
  102b64:	53                   	push   %rbx
  102b65:	bf 41 00 00 00       	mov    $0x41,%edi
  102b6a:	48 8d 1d a4 00 00 00 	lea    0xa4(%rip),%rbx        # 102c15 <vsnprintf+0xb5>
  102b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  102b78:	e8 13 d6 ff ff       	call   100190 <putch>
  102b7d:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102b81:	48 83 c3 01          	add    $0x1,%rbx
  102b85:	40 84 ff             	test   %dil,%dil
  102b88:	75 ee                	jne    102b78 <vsnprintf+0x18>
  102b8a:	48 8d 1d ed 08 00 00 	lea    0x8ed(%rip),%rbx        # 10347e <keylut+0x25e>
  102b91:	bf 4e 00 00 00       	mov    $0x4e,%edi
  102b96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  102b9d:	00 00 00 
  102ba0:	e8 eb d5 ff ff       	call   100190 <putch>
  102ba5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102ba9:	48 83 c3 01          	add    $0x1,%rbx
  102bad:	40 84 ff             	test   %dil,%dil
  102bb0:	75 ee                	jne    102ba0 <vsnprintf+0x40>
  102bb2:	48 8d 1d 97 09 00 00 	lea    0x997(%rip),%rbx        # 103550 <keylut+0x330>
  102bb9:	bf 20 00 00 00       	mov    $0x20,%edi
  102bbe:	66 90                	xchg   %ax,%ax
  102bc0:	e8 cb d5 ff ff       	call   100190 <putch>
  102bc5:	0f be 7b 01          	movsbl 0x1(%rbx),%edi
  102bc9:	48 83 c3 01          	add    $0x1,%rbx
  102bcd:	40 84 ff             	test   %dil,%dil
  102bd0:	75 ee                	jne    102bc0 <vsnprintf+0x60>
  102bd2:	bf 01 00 00 00       	mov    $0x1,%edi
  102bd7:	e8 c4 d5 ff ff       	call   1001a0 <halt>
