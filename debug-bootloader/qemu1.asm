In archive /root/NJUOS/L0/abstract-machine/am/build/am-x86-qemu.a:

start32.o:     file format elf32-i386


Disassembly of section .text:

00000000 <_start>:
   0:	68 00 00 01 00       	push   $0x10000
   5:	6a 00                	push   $0x0
   7:	e9 fc ff ff ff       	jmp    8 <_start+0x8>

trap32.o:     file format elf32-i386


Disassembly of section .text:

00000000 <__am_kcontext_start>:
   0:	50                   	push   %eax
   1:	68 00 00 00 00       	push   $0x0
   6:	ff e3                	jmp    *%ebx

00000008 <trap>:
   8:	fa                   	cli    #关中断
   9:	83 ec 14             	sub    $0x14,%esp
   c:	55                   	push   %ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	6a 00                	push   $0x0
  11:	52                   	push   %edx
  12:	51                   	push   %ecx
  13:	53                   	push   %ebx
  14:	50                   	push   %eax
  15:	66 8c d8             	mov    %ds,%ax
  18:	50                   	push   %eax
  19:	6a 00                	push   $0x0
  1b:	66 b8 10 00          	mov    $0x10,%ax
  1f:	8e d8                	mov    %eax,%ds
  21:	8e c0                	mov    %eax,%es
  23:	8e d0                	mov    %eax,%ss
  25:	54                   	push   %esp
  26:	e8 fc ff ff ff       	call   27 <trap+0x1f>

0000002b <__am_iret>:
  2b:	83 c4 04             	add    $0x4,%esp
  2e:	58                   	pop    %eax
  2f:	89 c4                	mov    %eax,%esp
  31:	83 c4 04             	add    $0x4,%esp
  34:	58                   	pop    %eax
  35:	8e d8                	mov    %eax,%ds
  37:	8e c0                	mov    %eax,%es
  39:	66 83 7c 24 24 08    	cmpw   $0x8,0x24(%esp)
  3f:	74 0b                	je     4c <.kernel_iret>

00000041 <.user_iret>:
  41:	58                   	pop    %eax
  42:	5b                   	pop    %ebx
  43:	59                   	pop    %ecx
  44:	5a                   	pop    %edx
  45:	83 c4 04             	add    $0x4,%esp
  48:	5e                   	pop    %esi
  49:	5f                   	pop    %edi
  4a:	5d                   	pop    %ebp
  4b:	cf                   	iret   

0000004c <.kernel_iret>:
  4c:	58                   	pop    %eax
  4d:	5b                   	pop    %ebx
  4e:	59                   	pop    %ecx
  4f:	5a                   	pop    %edx
  50:	83 c4 04             	add    $0x4,%esp
  53:	89 e5                	mov    %esp,%ebp
  55:	8b 7d 18             	mov    0x18(%ebp),%edi
  58:	8b 75 14             	mov    0x14(%ebp),%esi
  5b:	89 77 fc             	mov    %esi,-0x4(%edi)
  5e:	8b 75 10             	mov    0x10(%ebp),%esi
  61:	89 77 f8             	mov    %esi,-0x8(%edi)
  64:	8b 75 0c             	mov    0xc(%ebp),%esi
  67:	89 77 f4             	mov    %esi,-0xc(%edi)
  6a:	8b 75 08             	mov    0x8(%ebp),%esi
  6d:	89 77 f0             	mov    %esi,-0x10(%edi)
  70:	8b 75 04             	mov    0x4(%ebp),%esi
  73:	89 77 ec             	mov    %esi,-0x14(%edi)
  76:	8b 75 00             	mov    0x0(%ebp),%esi
  79:	89 77 e8             	mov    %esi,-0x18(%edi)
  7c:	8d 67 e8             	lea    -0x18(%edi),%esp
  7f:	5e                   	pop    %esi
  80:	5f                   	pop    %edi
  81:	5d                   	pop    %ebp
  82:	cf                   	iret   

00000083 <__am_irq0>:
  83:	fa                   	cli    
  84:	6a 00                	push   $0x0
  86:	6a 00                	push   $0x0
  88:	e9 7b ff ff ff       	jmp    8 <trap>

0000008d <__am_irq1>:
  8d:	fa                   	cli    
  8e:	6a 00                	push   $0x0
  90:	6a 01                	push   $0x1
  92:	e9 71 ff ff ff       	jmp    8 <trap>

00000097 <__am_irq2>:
  97:	fa                   	cli    
  98:	6a 00                	push   $0x0
  9a:	6a 02                	push   $0x2
  9c:	e9 67 ff ff ff       	jmp    8 <trap>

000000a1 <__am_irq3>:
  a1:	fa                   	cli    
  a2:	6a 00                	push   $0x0
  a4:	6a 03                	push   $0x3
  a6:	e9 5d ff ff ff       	jmp    8 <trap>

000000ab <__am_irq4>:
  ab:	fa                   	cli    
  ac:	6a 00                	push   $0x0
  ae:	6a 04                	push   $0x4
  b0:	e9 53 ff ff ff       	jmp    8 <trap>

000000b5 <__am_irq5>:
  b5:	fa                   	cli    
  b6:	6a 00                	push   $0x0
  b8:	6a 05                	push   $0x5
  ba:	e9 49 ff ff ff       	jmp    8 <trap>

000000bf <__am_irq6>:
  bf:	fa                   	cli    
  c0:	6a 00                	push   $0x0
  c2:	6a 06                	push   $0x6
  c4:	e9 3f ff ff ff       	jmp    8 <trap>

000000c9 <__am_irq7>:
  c9:	fa                   	cli    
  ca:	6a 00                	push   $0x0
  cc:	6a 07                	push   $0x7
  ce:	e9 35 ff ff ff       	jmp    8 <trap>

000000d3 <__am_irq8>:
  d3:	fa                   	cli    
  d4:	6a 08                	push   $0x8
  d6:	e9 2d ff ff ff       	jmp    8 <trap>

000000db <__am_irq9>:
  db:	fa                   	cli    
  dc:	6a 00                	push   $0x0
  de:	6a 09                	push   $0x9
  e0:	e9 23 ff ff ff       	jmp    8 <trap>

000000e5 <__am_irq10>:
  e5:	fa                   	cli    
  e6:	6a 0a                	push   $0xa
  e8:	e9 1b ff ff ff       	jmp    8 <trap>

000000ed <__am_irq11>:
  ed:	fa                   	cli    
  ee:	6a 0b                	push   $0xb
  f0:	e9 13 ff ff ff       	jmp    8 <trap>

000000f5 <__am_irq12>:
  f5:	fa                   	cli    
  f6:	6a 0c                	push   $0xc
  f8:	e9 0b ff ff ff       	jmp    8 <trap>

000000fd <__am_irq13>:
  fd:	fa                   	cli    
  fe:	6a 0d                	push   $0xd
 100:	e9 03 ff ff ff       	jmp    8 <trap>

00000105 <__am_irq14>:
 105:	fa                   	cli    
 106:	6a 0e                	push   $0xe
 108:	e9 fb fe ff ff       	jmp    8 <trap>

0000010d <__am_irq15>:
 10d:	fa                   	cli    
 10e:	6a 00                	push   $0x0
 110:	6a 0f                	push   $0xf
 112:	e9 f1 fe ff ff       	jmp    8 <trap>

00000117 <__am_irq16>:
 117:	fa                   	cli    
 118:	6a 00                	push   $0x0
 11a:	6a 10                	push   $0x10
 11c:	e9 e7 fe ff ff       	jmp    8 <trap>

00000121 <__am_irq19>:
 121:	fa                   	cli    
 122:	6a 00                	push   $0x0
 124:	6a 13                	push   $0x13
 126:	e9 dd fe ff ff       	jmp    8 <trap>

0000012b <__am_irq31>:
 12b:	fa                   	cli    
 12c:	6a 00                	push   $0x0
 12e:	6a 1f                	push   $0x1f
 130:	e9 d3 fe ff ff       	jmp    8 <trap>

00000135 <__am_irq32>:
 135:	fa                   	cli    
 136:	6a 00                	push   $0x0
 138:	6a 20                	push   $0x20
 13a:	e9 c9 fe ff ff       	jmp    8 <trap>

0000013f <__am_irq33>:
 13f:	fa                   	cli    
 140:	6a 00                	push   $0x0
 142:	6a 21                	push   $0x21
 144:	e9 bf fe ff ff       	jmp    8 <trap>

00000149 <__am_irq34>:
 149:	fa                   	cli    
 14a:	6a 00                	push   $0x0
 14c:	6a 22                	push   $0x22
 14e:	e9 b5 fe ff ff       	jmp    8 <trap>

00000153 <__am_irq35>:
 153:	fa                   	cli    
 154:	6a 00                	push   $0x0
 156:	6a 23                	push   $0x23
 158:	e9 ab fe ff ff       	jmp    8 <trap>

0000015d <__am_irq36>:
 15d:	fa                   	cli    
 15e:	6a 00                	push   $0x0
 160:	6a 24                	push   $0x24
 162:	e9 a1 fe ff ff       	jmp    8 <trap>

00000167 <__am_irq37>:
 167:	fa                   	cli    
 168:	6a 00                	push   $0x0
 16a:	6a 25                	push   $0x25
 16c:	e9 97 fe ff ff       	jmp    8 <trap>

00000171 <__am_irq38>:
 171:	fa                   	cli    
 172:	6a 00                	push   $0x0
 174:	6a 26                	push   $0x26
 176:	e9 8d fe ff ff       	jmp    8 <trap>

0000017b <__am_irq39>:
 17b:	fa                   	cli    
 17c:	6a 00                	push   $0x0
 17e:	6a 27                	push   $0x27
 180:	e9 83 fe ff ff       	jmp    8 <trap>

00000185 <__am_irq40>:
 185:	fa                   	cli    
 186:	6a 00                	push   $0x0
 188:	6a 28                	push   $0x28
 18a:	e9 79 fe ff ff       	jmp    8 <trap>

0000018f <__am_irq41>:
 18f:	fa                   	cli    
 190:	6a 00                	push   $0x0
 192:	6a 29                	push   $0x29
 194:	e9 6f fe ff ff       	jmp    8 <trap>

00000199 <__am_irq42>:
 199:	fa                   	cli    
 19a:	6a 00                	push   $0x0
 19c:	6a 2a                	push   $0x2a
 19e:	e9 65 fe ff ff       	jmp    8 <trap>

000001a3 <__am_irq43>:
 1a3:	fa                   	cli    
 1a4:	6a 00                	push   $0x0
 1a6:	6a 2b                	push   $0x2b
 1a8:	e9 5b fe ff ff       	jmp    8 <trap>

000001ad <__am_irq44>:
 1ad:	fa                   	cli    
 1ae:	6a 00                	push   $0x0
 1b0:	6a 2c                	push   $0x2c
 1b2:	e9 51 fe ff ff       	jmp    8 <trap>

000001b7 <__am_irq45>:
 1b7:	fa                   	cli    
 1b8:	6a 00                	push   $0x0
 1ba:	6a 2d                	push   $0x2d
 1bc:	e9 47 fe ff ff       	jmp    8 <trap>

000001c1 <__am_irq46>:
 1c1:	fa                   	cli    
 1c2:	6a 00                	push   $0x0
 1c4:	6a 2e                	push   $0x2e
 1c6:	e9 3d fe ff ff       	jmp    8 <trap>

000001cb <__am_irq47>:
 1cb:	fa                   	cli    
 1cc:	6a 00                	push   $0x0
 1ce:	6a 2f                	push   $0x2f
 1d0:	e9 33 fe ff ff       	jmp    8 <trap>

000001d5 <__am_irq128>:
 1d5:	fa                   	cli    
 1d6:	6a 00                	push   $0x0
 1d8:	68 80 00 00 00       	push   $0x80
 1dd:	e9 26 fe ff ff       	jmp    8 <trap>

000001e2 <__am_irq129>:
 1e2:	fa                   	cli    
 1e3:	6a 00                	push   $0x0
 1e5:	68 81 00 00 00       	push   $0x81
 1ea:	e9 19 fe ff ff       	jmp    8 <trap>

000001ef <__am_irqall>:
 1ef:	fa                   	cli    
 1f0:	6a 00                	push   $0x0
 1f2:	6a ff                	push   $0xffffffff
 1f4:	e9 0f fe ff ff       	jmp    8 <trap>

trm.o:     file format elf32-i386


Disassembly of section .text:

00000000 <putch>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	ba f8 03 00 00       	mov    $0x3f8,%edx
   8:	8a 45 08             	mov    0x8(%ebp),%al
   b:	ee                   	out    %al,(%dx)
   c:	5d                   	pop    %ebp
   d:	c3                   	ret    
   e:	66 90                	xchg   %ax,%ax

00000010 <halt>:
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	57                   	push   %edi
  14:	56                   	push   %esi
  15:	53                   	push   %ebx
  16:	83 ec 0c             	sub    $0xc,%esp
  19:	8b 75 08             	mov    0x8(%ebp),%esi
  1c:	fa                   	cli    
  1d:	e8 fc ff ff ff       	call   1e <halt+0xe>
  22:	bb 00 00 00 00       	mov    $0x0,%ebx
  27:	b0 43                	mov    $0x43,%al
  29:	bf f8 03 00 00       	mov    $0x3f8,%edi
  2e:	eb 0a                	jmp    3a <halt+0x2a>
  30:	89 fa                	mov    %edi,%edx
  32:	ee                   	out    %al,(%dx)
  33:	43                   	inc    %ebx
  34:	8a 03                	mov    (%ebx),%al
  36:	84 c0                	test   %al,%al
  38:	74 23                	je     5d <halt+0x4d>
  3a:	88 c2                	mov    %al,%dl
  3c:	83 e2 fb             	and    $0xfffffffb,%edx
  3f:	80 fa 30             	cmp    $0x30,%dl
  42:	74 2c                	je     70 <halt+0x60>
  44:	3c 24                	cmp    $0x24,%al
  46:	75 e8                	jne    30 <halt+0x20>
  48:	e8 fc ff ff ff       	call   49 <halt+0x39>
  4d:	8a 80 13 00 00 00    	mov    0x13(%eax),%al
  53:	89 fa                	mov    %edi,%edx
  55:	ee                   	out    %al,(%dx)
  56:	43                   	inc    %ebx
  57:	8a 03                	mov    (%ebx),%al
  59:	84 c0                	test   %al,%al
  5b:	75 dd                	jne    3a <halt+0x2a>
  5d:	b8 00 20 00 00       	mov    $0x2000,%eax
  62:	ba 04 06 00 00       	mov    $0x604,%edx
  67:	66 ef                	out    %ax,(%dx)
  69:	8d 76 00             	lea    0x0(%esi),%esi
  6c:	f4                   	hlt    
  6d:	eb fd                	jmp    6c <halt+0x5c>
  6f:	90                   	nop
  70:	8d 48 d0             	lea    -0x30(%eax),%ecx
  73:	89 f0                	mov    %esi,%eax
  75:	d3 f8                	sar    %cl,%eax
  77:	83 e0 0f             	and    $0xf,%eax
  7a:	8a 80 13 00 00 00    	mov    0x13(%eax),%al
  80:	89 fa                	mov    %edi,%edx
  82:	ee                   	out    %al,(%dx)
  83:	eb ae                	jmp    33 <halt+0x23>
  85:	8d 76 00             	lea    0x0(%esi),%esi

00000088 <call_main>:
  88:	55                   	push   %ebp
  89:	89 e5                	mov    %esp,%ebp
  8b:	83 ec 14             	sub    $0x14,%esp
  8e:	ff 75 08             	push   0x8(%ebp)
  91:	e8 fc ff ff ff       	call   92 <call_main+0xa>
  96:	89 04 24             	mov    %eax,(%esp)
  99:	e8 fc ff ff ff       	call   9a <call_main+0x12>
  9e:	66 90                	xchg   %ax,%ax

000000a0 <__am_heap_init>:
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	57                   	push   %edi
  a4:	56                   	push   %esi
  a5:	53                   	push   %ebx
  a6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  a9:	bf 70 00 00 00       	mov    $0x70,%edi
  ae:	b0 34                	mov    $0x34,%al
  b0:	89 fa                	mov    %edi,%edx
  b2:	ee                   	out    %al,(%dx)
  b3:	be 71 00 00 00       	mov    $0x71,%esi
  b8:	89 f2                	mov    %esi,%edx
  ba:	ec                   	in     (%dx),%al
  bb:	0f b6 c8             	movzbl %al,%ecx
  be:	b0 35                	mov    $0x35,%al
  c0:	89 fa                	mov    %edi,%edx
  c2:	ee                   	out    %al,(%dx)
  c3:	89 f2                	mov    %esi,%edx
  c5:	ec                   	in     (%dx),%al
  c6:	ba ff ff 0f 00       	mov    $0xfffff,%edx
  cb:	81 e2 00 00 f0 ff    	and    $0xfff00000,%edx
  d1:	89 13                	mov    %edx,(%ebx)
  d3:	0f b6 c0             	movzbl %al,%eax
  d6:	40                   	inc    %eax
  d7:	c1 e0 08             	shl    $0x8,%eax
  da:	09 c8                	or     %ecx,%eax
  dc:	c1 e0 10             	shl    $0x10,%eax
  df:	89 43 04             	mov    %eax,0x4(%ebx)
  e2:	89 d8                	mov    %ebx,%eax
  e4:	5b                   	pop    %ebx
  e5:	5e                   	pop    %esi
  e6:	5f                   	pop    %edi
  e7:	5d                   	pop    %ebp
  e8:	c2 04 00             	ret    $0x4
  eb:	90                   	nop

000000ec <__am_lapic_init>:
  ec:	55                   	push   %ebp
  ed:	89 e5                	mov    %esp,%ebp
  ef:	53                   	push   %ebx
  f0:	50                   	push   %eax
  f1:	b8 00 00 0f 00       	mov    $0xf0000,%eax
  f6:	eb 08                	jmp    100 <__am_lapic_init+0x14>
  f8:	40                   	inc    %eax
  f9:	3d ff ff ff 00       	cmp    $0xffffff,%eax
  fe:	74 50                	je     150 <__am_lapic_init+0x64>
 100:	8b 10                	mov    (%eax),%edx
 102:	81 fa 5f 4d 50 5f    	cmp    $0x5f504d5f,%edx
 108:	75 ee                	jne    f8 <__am_lapic_init+0xc>
 10a:	8b 48 04             	mov    0x4(%eax),%ecx
 10d:	8b 41 24             	mov    0x24(%ecx),%eax
 110:	a3 00 00 00 00       	mov    %eax,0x0
 115:	8d 41 2c             	lea    0x2c(%ecx),%eax
 118:	0f b7 51 04          	movzwl 0x4(%ecx),%edx
 11c:	01 d1                	add    %edx,%ecx
 11e:	39 c8                	cmp    %ecx,%eax
 120:	73 26                	jae    148 <__am_lapic_init+0x5c>
 122:	66 90                	xchg   %ax,%ax
 124:	8a 10                	mov    (%eax),%dl
 126:	84 d2                	test   %dl,%dl
 128:	75 17                	jne    141 <__am_lapic_init+0x55>
 12a:	83 c0 0c             	add    $0xc,%eax
 12d:	8b 1d 00 00 00 00    	mov    0x0,%ebx
 133:	8d 53 01             	lea    0x1(%ebx),%edx
 136:	89 15 00 00 00 00    	mov    %edx,0x0
 13c:	83 fa 08             	cmp    $0x8,%edx
 13f:	7f 6c                	jg     1ad <__am_lapic_init+0xc1>
 141:	83 c0 08             	add    $0x8,%eax
 144:	39 c8                	cmp    %ecx,%eax
 146:	72 dc                	jb     124 <__am_lapic_init+0x38>
 148:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 14b:	c9                   	leave  
 14c:	c3                   	ret    
 14d:	8d 76 00             	lea    0x0(%esi),%esi
 150:	b3 4d                	mov    $0x4d,%bl
 152:	b9 24 00 00 00       	mov    $0x24,%ecx
 157:	b0 41                	mov    $0x41,%al
 159:	ba f8 03 00 00       	mov    $0x3f8,%edx
 15e:	eb 05                	jmp    165 <__am_lapic_init+0x79>
 160:	88 d8                	mov    %bl,%al
 162:	8a 59 01             	mov    0x1(%ecx),%bl
 165:	ee                   	out    %al,(%dx)
 166:	41                   	inc    %ecx
 167:	84 db                	test   %bl,%bl
 169:	75 f5                	jne    160 <__am_lapic_init+0x74>
 16b:	b3 6e                	mov    $0x6e,%bl
 16d:	b9 64 00 00 00       	mov    $0x64,%ecx
 172:	b0 69                	mov    $0x69,%al
 174:	ba f8 03 00 00       	mov    $0x3f8,%edx
 179:	eb 06                	jmp    181 <__am_lapic_init+0x95>
 17b:	90                   	nop
 17c:	88 d8                	mov    %bl,%al
 17e:	8a 59 01             	mov    0x1(%ecx),%bl
 181:	ee                   	out    %al,(%dx)
 182:	41                   	inc    %ecx
 183:	84 db                	test   %bl,%bl
 185:	75 f5                	jne    17c <__am_lapic_init+0x90>
 187:	b3 40                	mov    $0x40,%bl
 189:	b9 88 00 00 00       	mov    $0x88,%ecx
 18e:	b0 20                	mov    $0x20,%al
 190:	ba f8 03 00 00       	mov    $0x3f8,%edx
 195:	eb 06                	jmp    19d <__am_lapic_init+0xb1>
 197:	90                   	nop
 198:	88 d8                	mov    %bl,%al
 19a:	8a 59 01             	mov    0x1(%ecx),%bl
 19d:	ee                   	out    %al,(%dx)
 19e:	41                   	inc    %ecx
 19f:	84 db                	test   %bl,%bl
 1a1:	75 f5                	jne    198 <__am_lapic_init+0xac>
 1a3:	83 ec 0c             	sub    $0xc,%esp
 1a6:	6a 01                	push   $0x1
 1a8:	e8 fc ff ff ff       	call   1a9 <__am_lapic_init+0xbd>
 1ad:	b3 4d                	mov    $0x4d,%bl
 1af:	b9 24 00 00 00       	mov    $0x24,%ecx
 1b4:	b0 41                	mov    $0x41,%al
 1b6:	ba f8 03 00 00       	mov    $0x3f8,%edx
 1bb:	eb 05                	jmp    1c2 <__am_lapic_init+0xd6>
 1bd:	88 d8                	mov    %bl,%al
 1bf:	8a 59 01             	mov    0x1(%ecx),%bl
 1c2:	ee                   	out    %al,(%dx)
 1c3:	41                   	inc    %ecx
 1c4:	84 db                	test   %bl,%bl
 1c6:	75 f5                	jne    1bd <__am_lapic_init+0xd1>
 1c8:	b3 61                	mov    $0x61,%bl
 1ca:	b9 00 00 00 00       	mov    $0x0,%ecx
 1cf:	b0 63                	mov    $0x63,%al
 1d1:	ba f8 03 00 00       	mov    $0x3f8,%edx
 1d6:	eb 05                	jmp    1dd <__am_lapic_init+0xf1>
 1d8:	88 d8                	mov    %bl,%al
 1da:	8a 59 01             	mov    0x1(%ecx),%bl
 1dd:	ee                   	out    %al,(%dx)
 1de:	41                   	inc    %ecx
 1df:	84 db                	test   %bl,%bl
 1e1:	75 f5                	jne    1d8 <__am_lapic_init+0xec>
 1e3:	b3 40                	mov    $0x40,%bl
 1e5:	b9 24 00 00 00       	mov    $0x24,%ecx
 1ea:	b0 20                	mov    $0x20,%al
 1ec:	ba f8 03 00 00       	mov    $0x3f8,%edx
 1f1:	eb 05                	jmp    1f8 <__am_lapic_init+0x10c>
 1f3:	88 d8                	mov    %bl,%al
 1f5:	8a 59 01             	mov    0x1(%ecx),%bl
 1f8:	ee                   	out    %al,(%dx)
 1f9:	41                   	inc    %ecx
 1fa:	84 db                	test   %bl,%bl
 1fc:	75 f5                	jne    1f3 <__am_lapic_init+0x107>
 1fe:	eb a3                	jmp    1a3 <__am_lapic_init+0xb7>

00000200 <__am_percpu_initgdt>:
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	50                   	push   %eax
 205:	e8 fc ff ff ff       	call   206 <__am_percpu_initgdt+0x6>
 20a:	89 c2                	mov    %eax,%edx
 20c:	c1 e0 06             	shl    $0x6,%eax
 20f:	01 d0                	add    %edx,%eax
 211:	8d 04 c2             	lea    (%edx,%eax,8),%eax
 214:	01 c0                	add    %eax,%eax
 216:	01 d0                	add    %edx,%eax
 218:	01 c0                	add    %eax,%eax
 21a:	01 d0                	add    %edx,%eax
 21c:	8d 1c 85 04 00 00 00 	lea    0x4(,%eax,4),%ebx
 223:	e8 fc ff ff ff       	call   224 <__am_percpu_initgdt+0x24>
 228:	89 c2                	mov    %eax,%edx
 22a:	c1 e0 06             	shl    $0x6,%eax
 22d:	01 d0                	add    %edx,%eax
 22f:	8d 04 c2             	lea    (%edx,%eax,8),%eax
 232:	01 c0                	add    %eax,%eax
 234:	01 d0                	add    %edx,%eax
 236:	01 c0                	add    %eax,%eax
 238:	01 d0                	add    %edx,%eax
 23a:	8d 04 85 34 00 00 00 	lea    0x34(,%eax,4),%eax
 241:	c7 43 08 ff ff 00 00 	movl   $0xffff,0x8(%ebx)
 248:	c7 43 0c 00 9a cf 00 	movl   $0xcf9a00,0xc(%ebx)
 24f:	c7 43 10 ff ff 00 00 	movl   $0xffff,0x10(%ebx)
 256:	c7 43 14 00 92 cf 00 	movl   $0xcf9200,0x14(%ebx)
 25d:	c7 43 18 ff ff 00 00 	movl   $0xffff,0x18(%ebx)
 264:	c7 43 1c 00 fa cf 00 	movl   $0xcffa00,0x1c(%ebx)
 26b:	c7 43 20 ff ff 00 00 	movl   $0xffff,0x20(%ebx)
 272:	c7 43 24 00 f2 cf 00 	movl   $0xcff200,0x24(%ebx)
 279:	66 c7 43 28 67 00    	movw   $0x67,0x28(%ebx)
 27f:	66 89 43 2a          	mov    %ax,0x2a(%ebx)
 283:	89 c2                	mov    %eax,%edx
 285:	c1 ea 10             	shr    $0x10,%edx
 288:	88 53 2c             	mov    %dl,0x2c(%ebx)
 28b:	66 c7 43 2d 89 40    	movw   $0x4089,0x2d(%ebx)
 291:	c1 e8 18             	shr    $0x18,%eax
 294:	88 43 2f             	mov    %al,0x2f(%ebx)
 297:	66 c7 05 0c 00 00 00 	movw   $0x30,0xc
 29e:	30 00 
 2a0:	89 1d 0e 00 00 00    	mov    %ebx,0xe
 2a6:	b8 0c 00 00 00       	mov    $0xc,%eax
 2ab:	0f 01 10             	lgdtl  (%eax)
 2ae:	b8 28 00 00 00       	mov    $0x28,%eax
 2b3:	0f 00 d8             	ltr    %ax
 2b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b9:	c9                   	leave  
 2ba:	c3                   	ret    
 2bb:	90                   	nop

000002bc <__am_percpu_init>:
 2bc:	55                   	push   %ebp
 2bd:	89 e5                	mov    %esp,%ebp
 2bf:	83 ec 08             	sub    $0x8,%esp
 2c2:	e8 fc ff ff ff       	call   2c3 <__am_percpu_init+0x7>
 2c7:	e8 fc ff ff ff       	call   2c8 <__am_percpu_init+0xc>
 2cc:	c9                   	leave  
 2cd:	e9 fc ff ff ff       	jmp    2ce <__am_percpu_init+0x12>
 2d2:	66 90                	xchg   %ax,%ax

000002d4 <__am_bootcpu_init>:
 2d4:	55                   	push   %ebp
 2d5:	89 e5                	mov    %esp,%ebp
 2d7:	56                   	push   %esi
 2d8:	53                   	push   %ebx
 2d9:	be 70 00 00 00       	mov    $0x70,%esi
 2de:	b0 34                	mov    $0x34,%al
 2e0:	89 f2                	mov    %esi,%edx
 2e2:	ee                   	out    %al,(%dx)
 2e3:	bb 71 00 00 00       	mov    $0x71,%ebx
 2e8:	89 da                	mov    %ebx,%edx
 2ea:	ec                   	in     (%dx),%al
 2eb:	0f b6 c8             	movzbl %al,%ecx
 2ee:	b0 35                	mov    $0x35,%al
 2f0:	89 f2                	mov    %esi,%edx
 2f2:	ee                   	out    %al,(%dx)
 2f3:	89 da                	mov    %ebx,%edx
 2f5:	ec                   	in     (%dx),%al
 2f6:	ba ff ff 0f 00       	mov    $0xfffff,%edx
 2fb:	81 e2 00 00 f0 ff    	and    $0xfff00000,%edx
 301:	89 15 00 00 00 00    	mov    %edx,0x0
 307:	0f b6 c0             	movzbl %al,%eax
 30a:	40                   	inc    %eax
 30b:	c1 e0 08             	shl    $0x8,%eax
 30e:	09 c8                	or     %ecx,%eax
 310:	c1 e0 10             	shl    $0x10,%eax
 313:	a3 04 00 00 00       	mov    %eax,0x4
 318:	e8 fc ff ff ff       	call   319 <__am_bootcpu_init+0x45>
 31d:	e8 fc ff ff ff       	call   31e <__am_bootcpu_init+0x4a>
 322:	e8 fc ff ff ff       	call   323 <__am_bootcpu_init+0x4f>
 327:	e8 fc ff ff ff       	call   328 <__am_bootcpu_init+0x54>
 32c:	5b                   	pop    %ebx
 32d:	5e                   	pop    %esi
 32e:	5d                   	pop    %ebp
 32f:	e9 fc ff ff ff       	jmp    330 <__am_bootcpu_init+0x5c>

00000334 <_start_c>:
 334:	55                   	push   %ebp
 335:	89 e5                	mov    %esp,%ebp
 337:	57                   	push   %edi
 338:	56                   	push   %esi
 339:	53                   	push   %ebx
 33a:	83 ec 0c             	sub    $0xc,%esp
 33d:	8b 75 08             	mov    0x8(%ebp),%esi
 340:	a1 04 70 00 00       	mov    0x7004,%eax
 345:	85 c0                	test   %eax,%eax
 347:	74 0f                	je     358 <_start_c+0x24>
 349:	83 c4 0c             	add    $0xc,%esp
 34c:	5b                   	pop    %ebx
 34d:	5e                   	pop    %esi
 34e:	5f                   	pop    %edi
 34f:	5d                   	pop    %ebp
 350:	e9 fc ff ff ff       	jmp    351 <_start_c+0x1d>
 355:	8d 76 00             	lea    0x0(%esi),%esi
 358:	bf 70 00 00 00       	mov    $0x70,%edi
 35d:	b0 34                	mov    $0x34,%al
 35f:	89 fa                	mov    %edi,%edx
 361:	ee                   	out    %al,(%dx)
 362:	bb 71 00 00 00       	mov    $0x71,%ebx
 367:	89 da                	mov    %ebx,%edx
 369:	ec                   	in     (%dx),%al
 36a:	0f b6 c8             	movzbl %al,%ecx
 36d:	b0 35                	mov    $0x35,%al
 36f:	89 fa                	mov    %edi,%edx
 371:	ee                   	out    %al,(%dx)
 372:	89 da                	mov    %ebx,%edx
 374:	ec                   	in     (%dx),%al
 375:	ba ff ff 0f 00       	mov    $0xfffff,%edx
 37a:	81 e2 00 00 f0 ff    	and    $0xfff00000,%edx
 380:	89 15 00 00 00 00    	mov    %edx,0x0
 386:	0f b6 c0             	movzbl %al,%eax
 389:	40                   	inc    %eax
 38a:	c1 e0 08             	shl    $0x8,%eax
 38d:	09 c8                	or     %ecx,%eax
 38f:	c1 e0 10             	shl    $0x10,%eax
 392:	a3 04 00 00 00       	mov    %eax,0x4
 397:	e8 fc ff ff ff       	call   398 <_start_c+0x64>
 39c:	e8 fc ff ff ff       	call   39d <_start_c+0x69>
 3a1:	e8 fc ff ff ff       	call   3a2 <_start_c+0x6e>
 3a6:	e8 fc ff ff ff       	call   3a7 <_start_c+0x73>
 3ab:	e8 fc ff ff ff       	call   3ac <_start_c+0x78>
 3b0:	e8 fc ff ff ff       	call   3b1 <_start_c+0x7d>
 3b5:	89 c2                	mov    %eax,%edx
 3b7:	c1 e0 06             	shl    $0x6,%eax
 3ba:	01 d0                	add    %edx,%eax
 3bc:	8d 04 c2             	lea    (%edx,%eax,8),%eax
 3bf:	01 c0                	add    %eax,%eax
 3c1:	01 d0                	add    %edx,%eax
 3c3:	01 c0                	add    %eax,%eax
 3c5:	01 d0                	add    %edx,%eax
 3c7:	8d 1c 85 94 20 00 00 	lea    0x2094(,%eax,4),%ebx
 3ce:	ba 88 00 00 00       	mov    $0x88,%edx
 3d3:	89 f0                	mov    %esi,%eax
 3d5:	89 dc                	mov    %ebx,%esp
 3d7:	89 43 04             	mov    %eax,0x4(%ebx)
 3da:	ff e2                	jmp    *%edx
 3dc:	83 c4 0c             	add    $0xc,%esp
 3df:	5b                   	pop    %ebx
 3e0:	5e                   	pop    %esi
 3e1:	5f                   	pop    %edi
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    

cte.o:     file format elf32-i386


Disassembly of section .text:

00000000 <__am_irq_handle>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 2c             	sub    $0x2c,%esp
   9:	8b 5d 08             	mov    0x8(%ebp),%ebx
   c:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  13:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1a:	c7 45 e4 25 00 00 00 	movl   $0x25,-0x1c(%ebp)
  21:	8b 43 44             	mov    0x44(%ebx),%eax
  24:	89 43 28             	mov    %eax,0x28(%ebx)
  27:	8b 43 48             	mov    0x48(%ebx),%eax
  2a:	89 43 2c             	mov    %eax,0x2c(%ebx)
  2d:	8b 43 4c             	mov    0x4c(%ebx),%eax
  30:	89 43 30             	mov    %eax,0x30(%ebx)
  33:	e8 fc ff ff ff       	call   34 <__am_irq_handle+0x34>
  38:	89 c2                	mov    %eax,%edx
  3a:	c1 e0 06             	shl    $0x6,%eax
  3d:	01 d0                	add    %edx,%eax
  3f:	8d 04 c2             	lea    (%edx,%eax,8),%eax
  42:	01 c0                	add    %eax,%eax
  44:	01 d0                	add    %edx,%eax
  46:	01 c0                	add    %eax,%eax
  48:	01 d0                	add    %edx,%eax
  4a:	8b 04 85 38 00 00 00 	mov    0x38(,%eax,4),%eax
  51:	89 43 18             	mov    %eax,0x18(%ebx)
  54:	c7 43 38 23 00 00 00 	movl   $0x23,0x38(%ebx)
  5b:	f6 43 48 03          	testb  $0x3,0x48(%ebx)
  5f:	0f 84 db 00 00 00    	je     140 <__am_irq_handle+0x140>
  65:	8b 43 50             	mov    0x50(%ebx),%eax
  68:	89 43 34             	mov    %eax,0x34(%ebx)
  6b:	0f 20 d8             	mov    %cr3,%eax
  6e:	89 45 d0             	mov    %eax,-0x30(%ebp)
  71:	8b 45 d0             	mov    -0x30(%ebp),%eax
  74:	89 03                	mov    %eax,(%ebx)
  76:	8b 43 3c             	mov    0x3c(%ebx),%eax
  79:	8d 50 e0             	lea    -0x20(%eax),%edx
  7c:	83 fa 1f             	cmp    $0x1f,%edx
  7f:	0f 86 c3 00 00 00    	jbe    148 <__am_irq_handle+0x148>
  85:	83 f8 24             	cmp    $0x24,%eax
  88:	77 0a                	ja     94 <__am_irq_handle+0x94>
  8a:	ff 24 85 00 00 00 00 	jmp    *0x0(,%eax,4)
  91:	8d 76 00             	lea    0x0(%esi),%esi
  94:	3d 80 00 00 00       	cmp    $0x80,%eax
  99:	0f 84 05 02 00 00    	je     2a4 <__am_irq_handle+0x2a4>
  9f:	3d 81 00 00 00       	cmp    $0x81,%eax
  a4:	0f 85 ae 00 00 00    	jne    158 <__am_irq_handle+0x158>
  aa:	c7 45 e4 92 00 00 00 	movl   $0x92,-0x1c(%ebp)
  b1:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%ebp)
  b8:	31 c0                	xor    %eax,%eax
  ba:	66 90                	xchg   %ax,%ax
  bc:	89 45 dc             	mov    %eax,-0x24(%ebp)
  bf:	83 ec 0c             	sub    $0xc,%esp
  c2:	53                   	push   %ebx
  c3:	83 ec 10             	sub    $0x10,%esp
  c6:	8d 75 d8             	lea    -0x28(%ebp),%esi
  c9:	b9 04 00 00 00       	mov    $0x4,%ecx
  ce:	89 e7                	mov    %esp,%edi
  d0:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  d2:	ff 15 20 08 00 00    	call   *0x820
  d8:	89 c3                	mov    %eax,%ebx
  da:	83 c4 20             	add    $0x20,%esp
  dd:	85 c0                	test   %eax,%eax
  df:	0f 84 d4 01 00 00    	je     2b9 <__am_irq_handle+0x2b9>
  e5:	8b 00                	mov    (%eax),%eax
  e7:	85 c0                	test   %eax,%eax
  e9:	74 46                	je     131 <__am_irq_handle+0x131>
  eb:	0f 22 d8             	mov    %eax,%cr3
  ee:	e8 fc ff ff ff       	call   ef <__am_irq_handle+0xef>
  f3:	89 c2                	mov    %eax,%edx
  f5:	c1 e0 06             	shl    $0x6,%eax
  f8:	01 d0                	add    %edx,%eax
  fa:	8d 04 c2             	lea    (%edx,%eax,8),%eax
  fd:	01 c0                	add    %eax,%eax
  ff:	01 d0                	add    %edx,%eax
 101:	01 c0                	add    %eax,%eax
 103:	01 d0                	add    %edx,%eax
 105:	c7 04 85 3c 00 00 00 	movl   $0x10,0x3c(,%eax,4)
 10c:	10 00 00 00 
 110:	e8 fc ff ff ff       	call   111 <__am_irq_handle+0x111>
 115:	89 c2                	mov    %eax,%edx
 117:	c1 e0 06             	shl    $0x6,%eax
 11a:	01 d0                	add    %edx,%eax
 11c:	8d 04 c2             	lea    (%edx,%eax,8),%eax
 11f:	01 c0                	add    %eax,%eax
 121:	01 d0                	add    %edx,%eax
 123:	01 c0                	add    %eax,%eax
 125:	01 d0                	add    %edx,%eax
 127:	8b 53 18             	mov    0x18(%ebx),%edx
 12a:	89 14 85 38 00 00 00 	mov    %edx,0x38(,%eax,4)
 131:	89 5d 08             	mov    %ebx,0x8(%ebp)
 134:	8d 65 f4             	lea    -0xc(%ebp),%esp
 137:	5b                   	pop    %ebx
 138:	5e                   	pop    %esi
 139:	5f                   	pop    %edi
 13a:	5d                   	pop    %ebp
 13b:	e9 fc ff ff ff       	jmp    13c <__am_irq_handle+0x13c>
 140:	8d 43 50             	lea    0x50(%ebx),%eax
 143:	e9 20 ff ff ff       	jmp    68 <__am_irq_handle+0x68>
 148:	e8 fc ff ff ff       	call   149 <__am_irq_handle+0x149>
 14d:	8b 43 3c             	mov    0x3c(%ebx),%eax
 150:	e9 30 ff ff ff       	jmp    85 <__am_irq_handle+0x85>
 155:	8d 76 00             	lea    0x0(%esi),%esi
 158:	c7 45 e4 ac 00 00 00 	movl   $0xac,-0x1c(%ebp)
 15f:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 166:	8b 43 40             	mov    0x40(%ebx),%eax
 169:	e9 4e ff ff ff       	jmp    bc <__am_irq_handle+0xbc>
 16e:	66 90                	xchg   %ax,%ax
 170:	c7 45 e4 a2 00 00 00 	movl   $0xa2,-0x1c(%ebp)
 177:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 17e:	e9 39 ff ff ff       	jmp    bc <__am_irq_handle+0xbc>
 183:	90                   	nop
 184:	c7 45 e4 b7 00 00 00 	movl   $0xb7,-0x1c(%ebp)
 18b:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 192:	31 c0                	xor    %eax,%eax
 194:	e9 23 ff ff ff       	jmp    bc <__am_irq_handle+0xbc>
 199:	8d 76 00             	lea    0x0(%esi),%esi
 19c:	c7 45 e4 cc 00 00 00 	movl   $0xcc,-0x1c(%ebp)
 1a3:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 1aa:	31 c0                	xor    %eax,%eax
 1ac:	e9 0b ff ff ff       	jmp    bc <__am_irq_handle+0xbc>
 1b1:	8d 76 00             	lea    0x0(%esi),%esi
 1b4:	c7 45 e4 e4 00 00 00 	movl   $0xe4,-0x1c(%ebp)
 1bb:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 1c2:	31 c0                	xor    %eax,%eax
 1c4:	e9 f3 fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 1c9:	8d 76 00             	lea    0x0(%esi),%esi
 1cc:	c7 45 e4 f7 00 00 00 	movl   $0xf7,-0x1c(%ebp)
 1d3:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 1da:	31 c0                	xor    %eax,%eax
 1dc:	e9 db fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 1e1:	8d 76 00             	lea    0x0(%esi),%esi
 1e4:	c7 45 e4 40 00 00 00 	movl   $0x40,-0x1c(%ebp)
 1eb:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 1f2:	31 c0                	xor    %eax,%eax
 1f4:	e9 c3 fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 1f9:	8d 76 00             	lea    0x0(%esi),%esi
 1fc:	c7 45 e4 0a 01 00 00 	movl   $0x10a,-0x1c(%ebp)
 203:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 20a:	31 c0                	xor    %eax,%eax
 20c:	e9 ab fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 211:	8d 76 00             	lea    0x0(%esi),%esi
 214:	c7 45 e4 60 00 00 00 	movl   $0x60,-0x1c(%ebp)
 21b:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%ebp)
 222:	31 c0                	xor    %eax,%eax
 224:	e9 93 fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 229:	8d 76 00             	lea    0x0(%esi),%esi
 22c:	c7 45 e4 84 00 00 00 	movl   $0x84,-0x1c(%ebp)
 233:	c7 45 d8 03 00 00 00 	movl   $0x3,-0x28(%ebp)
 23a:	8b 43 40             	mov    0x40(%ebx),%eax
 23d:	83 e0 02             	and    $0x2,%eax
 240:	83 f8 01             	cmp    $0x1,%eax
 243:	19 c0                	sbb    %eax,%eax
 245:	83 c0 02             	add    $0x2,%eax
 248:	0f 20 d2             	mov    %cr2,%edx
 24b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 24e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 251:	89 55 e0             	mov    %edx,-0x20(%ebp)
 254:	e9 63 fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 259:	8d 76 00             	lea    0x0(%esi),%esi
 25c:	c7 45 e4 32 00 00 00 	movl   $0x32,-0x1c(%ebp)
 263:	c7 45 d8 05 00 00 00 	movl   $0x5,-0x28(%ebp)
 26a:	31 c0                	xor    %eax,%eax
 26c:	e9 4b fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 271:	8d 76 00             	lea    0x0(%esi),%esi
 274:	c7 45 e4 4a 00 00 00 	movl   $0x4a,-0x1c(%ebp)
 27b:	c7 45 d8 06 00 00 00 	movl   $0x6,-0x28(%ebp)
 282:	31 c0                	xor    %eax,%eax
 284:	e9 33 fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 289:	8d 76 00             	lea    0x0(%esi),%esi
 28c:	c7 45 e4 65 00 00 00 	movl   $0x65,-0x1c(%ebp)
 293:	c7 45 d8 06 00 00 00 	movl   $0x6,-0x28(%ebp)
 29a:	31 c0                	xor    %eax,%eax
 29c:	e9 1b fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 2a1:	8d 76 00             	lea    0x0(%esi),%esi
 2a4:	c7 45 e4 7c 00 00 00 	movl   $0x7c,-0x1c(%ebp)
 2ab:	c7 45 d8 02 00 00 00 	movl   $0x2,-0x28(%ebp)
 2b2:	31 c0                	xor    %eax,%eax
 2b4:	e9 03 fe ff ff       	jmp    bc <__am_irq_handle+0xbc>
 2b9:	bb 00 00 00 00       	mov    $0x0,%ebx
 2be:	b8 41 00 00 00       	mov    $0x41,%eax
 2c3:	83 ec 0c             	sub    $0xc,%esp
 2c6:	50                   	push   %eax
 2c7:	e8 fc ff ff ff       	call   2c8 <__am_irq_handle+0x2c8>
 2cc:	43                   	inc    %ebx
 2cd:	0f be 03             	movsbl (%ebx),%eax
 2d0:	83 c4 10             	add    $0x10,%esp
 2d3:	84 c0                	test   %al,%al
 2d5:	75 ec                	jne    2c3 <__am_irq_handle+0x2c3>
 2d7:	bb 0b 00 00 00       	mov    $0xb,%ebx
 2dc:	b8 72 00 00 00       	mov    $0x72,%eax
 2e1:	83 ec 0c             	sub    $0xc,%esp
 2e4:	50                   	push   %eax
 2e5:	e8 fc ff ff ff       	call   2e6 <__am_irq_handle+0x2e6>
 2ea:	43                   	inc    %ebx
 2eb:	0f be 03             	movsbl (%ebx),%eax
 2ee:	83 c4 10             	add    $0x10,%esp
 2f1:	84 c0                	test   %al,%al
 2f3:	75 ec                	jne    2e1 <__am_irq_handle+0x2e1>
 2f5:	bb 00 00 00 00       	mov    $0x0,%ebx
 2fa:	b8 20 00 00 00       	mov    $0x20,%eax
 2ff:	83 ec 0c             	sub    $0xc,%esp
 302:	50                   	push   %eax
 303:	e8 fc ff ff ff       	call   304 <__am_irq_handle+0x304>
 308:	43                   	inc    %ebx
 309:	0f be 03             	movsbl (%ebx),%eax
 30c:	83 c4 10             	add    $0x10,%esp
 30f:	84 c0                	test   %al,%al
 311:	75 ec                	jne    2ff <__am_irq_handle+0x2ff>
 313:	83 ec 0c             	sub    $0xc,%esp
 316:	6a 01                	push   $0x1
 318:	e8 fc ff ff ff       	call   319 <__am_irq_handle+0x319>
 31d:	8d 76 00             	lea    0x0(%esi),%esi

00000320 <cte_init>:
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	50                   	push   %eax
 325:	8b 5d 08             	mov    0x8(%ebp),%ebx
 328:	e8 fc ff ff ff       	call   329 <cte_init+0x9>
 32d:	85 c0                	test   %eax,%eax
 32f:	0f 85 eb 04 00 00    	jne    820 <cte_init+0x500>
 335:	85 db                	test   %ebx,%ebx
 337:	0f 84 47 05 00 00    	je     884 <cte_init+0x564>
 33d:	ba 00 00 00 00       	mov    $0x0,%edx
 342:	89 d1                	mov    %edx,%ecx
 344:	c1 e9 10             	shr    $0x10,%ecx
 347:	90                   	nop
 348:	66 89 14 c5 20 00 00 	mov    %dx,0x20(,%eax,8)
 34f:	00 
 350:	c7 04 c5 22 00 00 00 	movl   $0x8f000008,0x22(,%eax,8)
 357:	08 00 00 8f 
 35b:	66 89 0c c5 26 00 00 	mov    %cx,0x26(,%eax,8)
 362:	00 
 363:	40                   	inc    %eax
 364:	3d 00 01 00 00       	cmp    $0x100,%eax
 369:	75 dd                	jne    348 <cte_init+0x28>
 36b:	b8 00 00 00 00       	mov    $0x0,%eax
 370:	66 a3 20 00 00 00    	mov    %ax,0x20
 376:	c7 05 22 00 00 00 08 	movl   $0x8f000008,0x22
 37d:	00 00 8f 
 380:	c1 e8 10             	shr    $0x10,%eax
 383:	66 a3 26 00 00 00    	mov    %ax,0x26
 389:	b8 00 00 00 00       	mov    $0x0,%eax
 38e:	66 a3 28 00 00 00    	mov    %ax,0x28
 394:	c7 05 2a 00 00 00 08 	movl   $0x8f000008,0x2a
 39b:	00 00 8f 
 39e:	c1 e8 10             	shr    $0x10,%eax
 3a1:	66 a3 2e 00 00 00    	mov    %ax,0x2e
 3a7:	b8 00 00 00 00       	mov    $0x0,%eax
 3ac:	66 a3 30 00 00 00    	mov    %ax,0x30
 3b2:	c7 05 32 00 00 00 08 	movl   $0x8f000008,0x32
 3b9:	00 00 8f 
 3bc:	c1 e8 10             	shr    $0x10,%eax
 3bf:	66 a3 36 00 00 00    	mov    %ax,0x36
 3c5:	b8 00 00 00 00       	mov    $0x0,%eax
 3ca:	66 a3 38 00 00 00    	mov    %ax,0x38
 3d0:	c7 05 3a 00 00 00 08 	movl   $0x8f000008,0x3a
 3d7:	00 00 8f 
 3da:	c1 e8 10             	shr    $0x10,%eax
 3dd:	66 a3 3e 00 00 00    	mov    %ax,0x3e
 3e3:	b8 00 00 00 00       	mov    $0x0,%eax
 3e8:	66 a3 40 00 00 00    	mov    %ax,0x40
 3ee:	c7 05 42 00 00 00 08 	movl   $0x8f000008,0x42
 3f5:	00 00 8f 
 3f8:	c1 e8 10             	shr    $0x10,%eax
 3fb:	66 a3 46 00 00 00    	mov    %ax,0x46
 401:	b8 00 00 00 00       	mov    $0x0,%eax
 406:	66 a3 48 00 00 00    	mov    %ax,0x48
 40c:	c7 05 4a 00 00 00 08 	movl   $0x8f000008,0x4a
 413:	00 00 8f 
 416:	c1 e8 10             	shr    $0x10,%eax
 419:	66 a3 4e 00 00 00    	mov    %ax,0x4e
 41f:	b8 00 00 00 00       	mov    $0x0,%eax
 424:	66 a3 50 00 00 00    	mov    %ax,0x50
 42a:	c7 05 52 00 00 00 08 	movl   $0x8f000008,0x52
 431:	00 00 8f 
 434:	c1 e8 10             	shr    $0x10,%eax
 437:	66 a3 56 00 00 00    	mov    %ax,0x56
 43d:	b8 00 00 00 00       	mov    $0x0,%eax
 442:	66 a3 58 00 00 00    	mov    %ax,0x58
 448:	c7 05 5a 00 00 00 08 	movl   $0x8f000008,0x5a
 44f:	00 00 8f 
 452:	c1 e8 10             	shr    $0x10,%eax
 455:	66 a3 5e 00 00 00    	mov    %ax,0x5e
 45b:	b8 00 00 00 00       	mov    $0x0,%eax
 460:	66 a3 60 00 00 00    	mov    %ax,0x60
 466:	c7 05 62 00 00 00 08 	movl   $0x8f000008,0x62
 46d:	00 00 8f 
 470:	c1 e8 10             	shr    $0x10,%eax
 473:	66 a3 66 00 00 00    	mov    %ax,0x66
 479:	b8 00 00 00 00       	mov    $0x0,%eax
 47e:	66 a3 68 00 00 00    	mov    %ax,0x68
 484:	c7 05 6a 00 00 00 08 	movl   $0x8f000008,0x6a
 48b:	00 00 8f 
 48e:	c1 e8 10             	shr    $0x10,%eax
 491:	66 a3 6e 00 00 00    	mov    %ax,0x6e
 497:	b8 00 00 00 00       	mov    $0x0,%eax
 49c:	66 a3 70 00 00 00    	mov    %ax,0x70
 4a2:	c7 05 72 00 00 00 08 	movl   $0x8f000008,0x72
 4a9:	00 00 8f 
 4ac:	c1 e8 10             	shr    $0x10,%eax
 4af:	66 a3 76 00 00 00    	mov    %ax,0x76
 4b5:	b8 00 00 00 00       	mov    $0x0,%eax
 4ba:	66 a3 78 00 00 00    	mov    %ax,0x78
 4c0:	c7 05 7a 00 00 00 08 	movl   $0x8f000008,0x7a
 4c7:	00 00 8f 
 4ca:	c1 e8 10             	shr    $0x10,%eax
 4cd:	66 a3 7e 00 00 00    	mov    %ax,0x7e
 4d3:	b8 00 00 00 00       	mov    $0x0,%eax
 4d8:	66 a3 80 00 00 00    	mov    %ax,0x80
 4de:	c7 05 82 00 00 00 08 	movl   $0x8f000008,0x82
 4e5:	00 00 8f 
 4e8:	c1 e8 10             	shr    $0x10,%eax
 4eb:	66 a3 86 00 00 00    	mov    %ax,0x86
 4f1:	b8 00 00 00 00       	mov    $0x0,%eax
 4f6:	66 a3 88 00 00 00    	mov    %ax,0x88
 4fc:	c7 05 8a 00 00 00 08 	movl   $0x8f000008,0x8a
 503:	00 00 8f 
 506:	c1 e8 10             	shr    $0x10,%eax
 509:	66 a3 8e 00 00 00    	mov    %ax,0x8e
 50f:	b8 00 00 00 00       	mov    $0x0,%eax
 514:	66 a3 90 00 00 00    	mov    %ax,0x90
 51a:	66 c7 05 92 00 00 00 	movw   $0x8,0x92
 521:	08 00 
 523:	66 c7 05 94 00 00 00 	movw   $0x8f00,0x94
 52a:	00 8f 
 52c:	c1 e8 10             	shr    $0x10,%eax
 52f:	66 a3 96 00 00 00    	mov    %ax,0x96
 535:	b8 00 00 00 00       	mov    $0x0,%eax
 53a:	66 a3 98 00 00 00    	mov    %ax,0x98
 540:	c7 05 9a 00 00 00 08 	movl   $0x8f000008,0x9a
 547:	00 00 8f 
 54a:	c1 e8 10             	shr    $0x10,%eax
 54d:	66 a3 9e 00 00 00    	mov    %ax,0x9e
 553:	b8 00 00 00 00       	mov    $0x0,%eax
 558:	66 a3 a0 00 00 00    	mov    %ax,0xa0
 55e:	c7 05 a2 00 00 00 08 	movl   $0x8f000008,0xa2
 565:	00 00 8f 
 568:	c1 e8 10             	shr    $0x10,%eax
 56b:	66 a3 a6 00 00 00    	mov    %ax,0xa6
 571:	b8 00 00 00 00       	mov    $0x0,%eax
 576:	66 a3 b8 00 00 00    	mov    %ax,0xb8
 57c:	c7 05 ba 00 00 00 08 	movl   $0x8f000008,0xba
 583:	00 00 8f 
 586:	c1 e8 10             	shr    $0x10,%eax
 589:	66 a3 be 00 00 00    	mov    %ax,0xbe
 58f:	b8 00 00 00 00       	mov    $0x0,%eax
 594:	66 a3 18 01 00 00    	mov    %ax,0x118
 59a:	c7 05 1a 01 00 00 08 	movl   $0x8f000008,0x11a
 5a1:	00 00 8f 
 5a4:	c1 e8 10             	shr    $0x10,%eax
 5a7:	66 a3 1e 01 00 00    	mov    %ax,0x11e
 5ad:	b8 00 00 00 00       	mov    $0x0,%eax
 5b2:	66 a3 20 01 00 00    	mov    %ax,0x120
 5b8:	c7 05 22 01 00 00 08 	movl   $0x8f000008,0x122
 5bf:	00 00 8f 
 5c2:	c1 e8 10             	shr    $0x10,%eax
 5c5:	66 a3 26 01 00 00    	mov    %ax,0x126
 5cb:	b8 00 00 00 00       	mov    $0x0,%eax
 5d0:	66 a3 28 01 00 00    	mov    %ax,0x128
 5d6:	c7 05 2a 01 00 00 08 	movl   $0x8f000008,0x12a
 5dd:	00 00 8f 
 5e0:	c1 e8 10             	shr    $0x10,%eax
 5e3:	66 a3 2e 01 00 00    	mov    %ax,0x12e
 5e9:	ba 00 00 00 00       	mov    $0x0,%edx
 5ee:	66 89 15 30 01 00 00 	mov    %dx,0x130
 5f5:	a1 32 01 00 00       	mov    0x132,%eax
 5fa:	25 00 00 e0 ff       	and    $0xffe00000,%eax
 5ff:	83 c8 08             	or     $0x8,%eax
 602:	a3 32 01 00 00       	mov    %eax,0x132
 607:	a1 34 01 00 00       	mov    0x134,%eax
 60c:	83 e0 1f             	and    $0x1f,%eax
 60f:	0d 00 8f ff ff       	or     $0xffff8f00,%eax
 614:	66 a3 34 01 00 00    	mov    %ax,0x134
 61a:	c1 ea 10             	shr    $0x10,%edx
 61d:	66 89 15 36 01 00 00 	mov    %dx,0x136
 624:	b8 00 00 00 00       	mov    $0x0,%eax
 629:	66 a3 38 01 00 00    	mov    %ax,0x138
 62f:	c7 05 3a 01 00 00 08 	movl   $0x8f000008,0x13a
 636:	00 00 8f 
 639:	c1 e8 10             	shr    $0x10,%eax
 63c:	66 a3 3e 01 00 00    	mov    %ax,0x13e
 642:	b8 00 00 00 00       	mov    $0x0,%eax
 647:	66 a3 40 01 00 00    	mov    %ax,0x140
 64d:	c7 05 42 01 00 00 08 	movl   $0x8f000008,0x142
 654:	00 00 8f 
 657:	c1 e8 10             	shr    $0x10,%eax
 65a:	66 a3 46 01 00 00    	mov    %ax,0x146
 660:	b8 00 00 00 00       	mov    $0x0,%eax
 665:	66 a3 48 01 00 00    	mov    %ax,0x148
 66b:	c7 05 4a 01 00 00 08 	movl   $0x8f000008,0x14a
 672:	00 00 8f 
 675:	c1 e8 10             	shr    $0x10,%eax
 678:	66 a3 4e 01 00 00    	mov    %ax,0x14e
 67e:	b8 00 00 00 00       	mov    $0x0,%eax
 683:	66 a3 50 01 00 00    	mov    %ax,0x150
 689:	c7 05 52 01 00 00 08 	movl   $0x8f000008,0x152
 690:	00 00 8f 
 693:	c1 e8 10             	shr    $0x10,%eax
 696:	66 a3 56 01 00 00    	mov    %ax,0x156
 69c:	b8 00 00 00 00       	mov    $0x0,%eax
 6a1:	66 a3 58 01 00 00    	mov    %ax,0x158
 6a7:	c7 05 5a 01 00 00 08 	movl   $0x8f000008,0x15a
 6ae:	00 00 8f 
 6b1:	c1 e8 10             	shr    $0x10,%eax
 6b4:	66 a3 5e 01 00 00    	mov    %ax,0x15e
 6ba:	b8 00 00 00 00       	mov    $0x0,%eax
 6bf:	66 a3 60 01 00 00    	mov    %ax,0x160
 6c5:	c7 05 62 01 00 00 08 	movl   $0x8f000008,0x162
 6cc:	00 00 8f 
 6cf:	c1 e8 10             	shr    $0x10,%eax
 6d2:	66 a3 66 01 00 00    	mov    %ax,0x166
 6d8:	ba 00 00 00 00       	mov    $0x0,%edx
 6dd:	66 89 15 68 01 00 00 	mov    %dx,0x168
 6e4:	a1 6a 01 00 00       	mov    0x16a,%eax
 6e9:	25 00 00 00 ff       	and    $0xff000000,%eax
 6ee:	83 c8 08             	or     $0x8,%eax
 6f1:	a3 6a 01 00 00       	mov    %eax,0x16a
 6f6:	c6 05 6d 01 00 00 8f 	movb   $0x8f,0x16d
 6fd:	c1 ea 10             	shr    $0x10,%edx
 700:	66 89 15 6e 01 00 00 	mov    %dx,0x16e
 707:	b8 00 00 00 00       	mov    $0x0,%eax
 70c:	66 a3 70 01 00 00    	mov    %ax,0x170
 712:	c7 05 72 01 00 00 08 	movl   $0x8f000008,0x172
 719:	00 00 8f 
 71c:	c1 e8 10             	shr    $0x10,%eax
 71f:	66 a3 76 01 00 00    	mov    %ax,0x176
 725:	b8 00 00 00 00       	mov    $0x0,%eax
 72a:	66 a3 78 01 00 00    	mov    %ax,0x178
 730:	c7 05 7a 01 00 00 08 	movl   $0x8f000008,0x17a
 737:	00 00 8f 
 73a:	c1 e8 10             	shr    $0x10,%eax
 73d:	66 a3 7e 01 00 00    	mov    %ax,0x17e
 743:	b8 00 00 00 00       	mov    $0x0,%eax
 748:	66 a3 80 01 00 00    	mov    %ax,0x180
 74e:	c7 05 82 01 00 00 08 	movl   $0x8f000008,0x182
 755:	00 00 8f 
 758:	c1 e8 10             	shr    $0x10,%eax
 75b:	66 a3 86 01 00 00    	mov    %ax,0x186
 761:	b8 00 00 00 00       	mov    $0x0,%eax
 766:	66 a3 88 01 00 00    	mov    %ax,0x188
 76c:	c7 05 8a 01 00 00 08 	movl   $0x8f000008,0x18a
 773:	00 00 8f 
 776:	c1 e8 10             	shr    $0x10,%eax
 779:	66 a3 8e 01 00 00    	mov    %ax,0x18e
 77f:	b8 00 00 00 00       	mov    $0x0,%eax
 784:	66 a3 90 01 00 00    	mov    %ax,0x190
 78a:	c7 05 92 01 00 00 08 	movl   $0x8f000008,0x192
 791:	00 00 8f 
 794:	c1 e8 10             	shr    $0x10,%eax
 797:	66 a3 96 01 00 00    	mov    %ax,0x196
 79d:	b8 00 00 00 00       	mov    $0x0,%eax
 7a2:	66 a3 98 01 00 00    	mov    %ax,0x198
 7a8:	c7 05 9a 01 00 00 08 	movl   $0x8f000008,0x19a
 7af:	00 00 8f 
 7b2:	c1 e8 10             	shr    $0x10,%eax
 7b5:	66 a3 9e 01 00 00    	mov    %ax,0x19e
 7bb:	ba 00 00 00 00       	mov    $0x0,%edx
 7c0:	66 89 15 20 04 00 00 	mov    %dx,0x420
 7c7:	a1 22 04 00 00       	mov    0x422,%eax
 7cc:	25 00 00 00 f0       	and    $0xf0000000,%eax
 7d1:	0d 08 00 00 0f       	or     $0xf000008,%eax
 7d6:	a3 22 04 00 00       	mov    %eax,0x422
 7db:	a0 25 04 00 00       	mov    0x425,%al
 7e0:	83 e0 0f             	and    $0xf,%eax
 7e3:	83 c8 e0             	or     $0xffffffe0,%eax
 7e6:	a2 25 04 00 00       	mov    %al,0x425
 7eb:	c1 ea 10             	shr    $0x10,%edx
 7ee:	66 89 15 26 04 00 00 	mov    %dx,0x426
 7f5:	b8 00 00 00 00       	mov    $0x0,%eax
 7fa:	66 a3 28 04 00 00    	mov    %ax,0x428
 800:	c7 05 2a 04 00 00 08 	movl   $0xef000008,0x42a
 807:	00 00 ef 
 80a:	c1 e8 10             	shr    $0x10,%eax
 80d:	66 a3 2e 04 00 00    	mov    %ax,0x42e
 813:	89 1d 20 08 00 00    	mov    %ebx,0x820
 819:	b0 01                	mov    $0x1,%al
 81b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 81e:	c9                   	leave  
 81f:	c3                   	ret    
 820:	bb 00 00 00 00       	mov    $0x0,%ebx
 825:	b8 41 00 00 00       	mov    $0x41,%eax
 82a:	83 ec 0c             	sub    $0xc,%esp
 82d:	50                   	push   %eax
 82e:	e8 fc ff ff ff       	call   82f <cte_init+0x50f>
 833:	43                   	inc    %ebx
 834:	0f be 03             	movsbl (%ebx),%eax
 837:	83 c4 10             	add    $0x10,%esp
 83a:	84 c0                	test   %al,%al
 83c:	75 ec                	jne    82a <cte_init+0x50a>
 83e:	bb 1d 01 00 00       	mov    $0x11d,%ebx
 843:	b8 69 00 00 00       	mov    $0x69,%eax
 848:	83 ec 0c             	sub    $0xc,%esp
 84b:	50                   	push   %eax
 84c:	e8 fc ff ff ff       	call   84d <cte_init+0x52d>
 851:	43                   	inc    %ebx
 852:	0f be 03             	movsbl (%ebx),%eax
 855:	83 c4 10             	add    $0x10,%esp
 858:	84 c0                	test   %al,%al
 85a:	75 ec                	jne    848 <cte_init+0x528>
 85c:	bb d0 00 00 00       	mov    $0xd0,%ebx
 861:	b8 20 00 00 00       	mov    $0x20,%eax
 866:	83 ec 0c             	sub    $0xc,%esp
 869:	50                   	push   %eax
 86a:	e8 fc ff ff ff       	call   86b <cte_init+0x54b>
 86f:	43                   	inc    %ebx
 870:	0f be 03             	movsbl (%ebx),%eax
 873:	83 c4 10             	add    $0x10,%esp
 876:	84 c0                	test   %al,%al
 878:	75 ec                	jne    866 <cte_init+0x546>
 87a:	83 ec 0c             	sub    $0xc,%esp
 87d:	6a 01                	push   $0x1
 87f:	e8 fc ff ff ff       	call   880 <cte_init+0x560>
 884:	bb 00 00 00 00       	mov    $0x0,%ebx
 889:	b8 41 00 00 00       	mov    $0x41,%eax
 88e:	83 ec 0c             	sub    $0xc,%esp
 891:	50                   	push   %eax
 892:	e8 fc ff ff ff       	call   893 <cte_init+0x573>
 897:	43                   	inc    %ebx
 898:	0f be 03             	movsbl (%ebx),%eax
 89b:	83 c4 10             	add    $0x10,%esp
 89e:	84 c0                	test   %al,%al
 8a0:	75 ec                	jne    88e <cte_init+0x56e>
 8a2:	bb 3b 01 00 00       	mov    $0x13b,%ebx
 8a7:	b8 6e 00 00 00       	mov    $0x6e,%eax
 8ac:	83 ec 0c             	sub    $0xc,%esp
 8af:	50                   	push   %eax
 8b0:	e8 fc ff ff ff       	call   8b1 <cte_init+0x591>
 8b5:	43                   	inc    %ebx
 8b6:	0f be 03             	movsbl (%ebx),%eax
 8b9:	83 c4 10             	add    $0x10,%esp
 8bc:	84 c0                	test   %al,%al
 8be:	75 ec                	jne    8ac <cte_init+0x58c>
 8c0:	bb 10 01 00 00       	mov    $0x110,%ebx
 8c5:	b8 20 00 00 00       	mov    $0x20,%eax
 8ca:	83 ec 0c             	sub    $0xc,%esp
 8cd:	50                   	push   %eax
 8ce:	e8 fc ff ff ff       	call   8cf <cte_init+0x5af>
 8d3:	43                   	inc    %ebx
 8d4:	0f be 03             	movsbl (%ebx),%eax
 8d7:	83 c4 10             	add    $0x10,%esp
 8da:	84 c0                	test   %al,%al
 8dc:	75 ec                	jne    8ca <cte_init+0x5aa>
 8de:	eb 9a                	jmp    87a <cte_init+0x55a>

000008e0 <yield>:
 8e0:	cd 81                	int    $0x81
 8e2:	c3                   	ret    
 8e3:	90                   	nop

000008e4 <ienabled>:
 8e4:	55                   	push   %ebp
 8e5:	89 e5                	mov    %esp,%ebp
 8e7:	83 ec 10             	sub    $0x10,%esp
 8ea:	9c                   	pushf  
 8eb:	58                   	pop    %eax
 8ec:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8ef:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8f2:	c1 e8 09             	shr    $0x9,%eax
 8f5:	83 e0 01             	and    $0x1,%eax
 8f8:	c9                   	leave  
 8f9:	c3                   	ret    
 8fa:	66 90                	xchg   %ax,%ax

000008fc <iset>:
 8fc:	55                   	push   %ebp
 8fd:	89 e5                	mov    %esp,%ebp
 8ff:	80 7d 08 00          	cmpb   $0x0,0x8(%ebp)
 903:	74 03                	je     908 <iset+0xc>
 905:	fb                   	sti    
 906:	5d                   	pop    %ebp
 907:	c3                   	ret    
 908:	fa                   	cli    
 909:	5d                   	pop    %ebp
 90a:	c3                   	ret    
 90b:	90                   	nop

0000090c <__am_panic_on_return>:
 90c:	55                   	push   %ebp
 90d:	89 e5                	mov    %esp,%ebp
 90f:	53                   	push   %ebx
 910:	50                   	push   %eax
 911:	bb 00 00 00 00       	mov    $0x0,%ebx
 916:	b8 41 00 00 00       	mov    $0x41,%eax
 91b:	90                   	nop
 91c:	83 ec 0c             	sub    $0xc,%esp
 91f:	50                   	push   %eax
 920:	e8 fc ff ff ff       	call   921 <__am_panic_on_return+0x15>
 925:	43                   	inc    %ebx
 926:	0f be 03             	movsbl (%ebx),%eax
 929:	83 c4 10             	add    $0x10,%esp
 92c:	84 c0                	test   %al,%al
 92e:	75 ec                	jne    91c <__am_panic_on_return+0x10>
 930:	bb 50 01 00 00       	mov    $0x150,%ebx
 935:	b8 6b 00 00 00       	mov    $0x6b,%eax
 93a:	66 90                	xchg   %ax,%ax
 93c:	83 ec 0c             	sub    $0xc,%esp
 93f:	50                   	push   %eax
 940:	e8 fc ff ff ff       	call   941 <__am_panic_on_return+0x35>
 945:	43                   	inc    %ebx
 946:	0f be 03             	movsbl (%ebx),%eax
 949:	83 c4 10             	add    $0x10,%esp
 94c:	84 c0                	test   %al,%al
 94e:	75 ec                	jne    93c <__am_panic_on_return+0x30>
 950:	bb 50 01 00 00       	mov    $0x150,%ebx
 955:	b8 20 00 00 00       	mov    $0x20,%eax
 95a:	66 90                	xchg   %ax,%ax
 95c:	83 ec 0c             	sub    $0xc,%esp
 95f:	50                   	push   %eax
 960:	e8 fc ff ff ff       	call   961 <__am_panic_on_return+0x55>
 965:	43                   	inc    %ebx
 966:	0f be 03             	movsbl (%ebx),%eax
 969:	83 c4 10             	add    $0x10,%esp
 96c:	84 c0                	test   %al,%al
 96e:	75 ec                	jne    95c <__am_panic_on_return+0x50>
 970:	83 ec 0c             	sub    $0xc,%esp
 973:	6a 01                	push   $0x1
 975:	e8 fc ff ff ff       	call   976 <__am_panic_on_return+0x6a>
 97a:	66 90                	xchg   %ax,%ax

0000097c <kcontext>:
 97c:	55                   	push   %ebp
 97d:	89 e5                	mov    %esp,%ebp
 97f:	57                   	push   %edi
 980:	8b 55 0c             	mov    0xc(%ebp),%edx
 983:	8d 7a c4             	lea    -0x3c(%edx),%edi
 986:	b9 0f 00 00 00       	mov    $0xf,%ecx
 98b:	31 c0                	xor    %eax,%eax
 98d:	f3 ab                	rep stos %eax,%es:(%edi)
 98f:	c7 42 c8 10 00 00 00 	movl   $0x10,-0x38(%edx)
 996:	c7 42 f0 08 00 00 00 	movl   $0x8,-0x10(%edx)
 99d:	c7 42 ec 00 00 00 00 	movl   $0x0,-0x14(%edx)
 9a4:	c7 42 f4 00 02 00 00 	movl   $0x200,-0xc(%edx)
 9ab:	89 52 f8             	mov    %edx,-0x8(%edx)
 9ae:	8b 45 14             	mov    0x14(%ebp),%eax
 9b1:	89 42 cc             	mov    %eax,-0x34(%edx)
 9b4:	8b 45 10             	mov    0x10(%ebp),%eax
 9b7:	89 42 d0             	mov    %eax,-0x30(%edx)
 9ba:	8d 42 c4             	lea    -0x3c(%edx),%eax
 9bd:	8b 7d fc             	mov    -0x4(%ebp),%edi
 9c0:	c9                   	leave  
 9c1:	c3                   	ret    
 9c2:	66 90                	xchg   %ax,%ax

000009c4 <__am_percpu_initirq>:
 9c4:	55                   	push   %ebp
 9c5:	89 e5                	mov    %esp,%ebp
 9c7:	83 ec 10             	sub    $0x10,%esp
 9ca:	6a 00                	push   $0x0
 9cc:	6a 01                	push   $0x1
 9ce:	e8 fc ff ff ff       	call   9cf <__am_percpu_initirq+0xb>
 9d3:	58                   	pop    %eax
 9d4:	5a                   	pop    %edx
 9d5:	6a 00                	push   $0x0
 9d7:	6a 04                	push   $0x4
 9d9:	e8 fc ff ff ff       	call   9da <__am_percpu_initirq+0x16>
 9de:	66 c7 05 00 00 00 00 	movw   $0x800,0x0
 9e5:	00 08 
 9e7:	c7 05 02 00 00 00 20 	movl   $0x20,0x2
 9ee:	00 00 00 
 9f1:	b8 00 00 00 00       	mov    $0x0,%eax
 9f6:	0f 01 18             	lidtl  (%eax)
 9f9:	83 c4 10             	add    $0x10,%esp
 9fc:	c9                   	leave  
 9fd:	c3                   	ret    

ioe.o:     file format elf32-i386


Disassembly of section .text:

00000000 <uart_config>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	c6 00 01             	movb   $0x1,(%eax)
   9:	5d                   	pop    %ebp
   a:	c3                   	ret    
   b:	90                   	nop

0000000c <uart_tx>:
   c:	55                   	push   %ebp
   d:	89 e5                	mov    %esp,%ebp
   f:	8b 45 08             	mov    0x8(%ebp),%eax
  12:	8a 00                	mov    (%eax),%al
  14:	ba f8 03 00 00       	mov    $0x3f8,%edx
  19:	ee                   	out    %al,(%dx)
  1a:	5d                   	pop    %ebp
  1b:	c3                   	ret    

0000001c <uart_rx>:
  1c:	55                   	push   %ebp
  1d:	89 e5                	mov    %esp,%ebp
  1f:	ba fd 03 00 00       	mov    $0x3fd,%edx
  24:	ec                   	in     (%dx),%al
  25:	a8 01                	test   $0x1,%al
  27:	74 0f                	je     38 <uart_rx+0x1c>
  29:	ba f8 03 00 00       	mov    $0x3f8,%edx
  2e:	ec                   	in     (%dx),%al
  2f:	8b 55 08             	mov    0x8(%ebp),%edx
  32:	88 02                	mov    %al,(%edx)
  34:	5d                   	pop    %ebp
  35:	c3                   	ret    
  36:	66 90                	xchg   %ax,%ax
  38:	b0 ff                	mov    $0xff,%al
  3a:	8b 55 08             	mov    0x8(%ebp),%edx
  3d:	88 02                	mov    %al,(%edx)
  3f:	5d                   	pop    %ebp
  40:	c3                   	ret    
  41:	8d 76 00             	lea    0x0(%esi),%esi

00000044 <read_rtc_async>:
  44:	55                   	push   %ebp
  45:	89 e5                	mov    %esp,%ebp
  47:	56                   	push   %esi
  48:	53                   	push   %ebx
  49:	83 ec 08             	sub    $0x8,%esp
  4c:	89 c1                	mov    %eax,%ecx
  4e:	be 70 00 00 00       	mov    $0x70,%esi
  53:	b0 09                	mov    $0x9,%al
  55:	89 f2                	mov    %esi,%edx
  57:	ee                   	out    %al,(%dx)
  58:	bb 71 00 00 00       	mov    $0x71,%ebx
  5d:	89 da                	mov    %ebx,%edx
  5f:	ec                   	in     (%dx),%al
  60:	88 45 f7             	mov    %al,-0x9(%ebp)
  63:	b0 08                	mov    $0x8,%al
  65:	89 f2                	mov    %esi,%edx
  67:	ee                   	out    %al,(%dx)
  68:	89 da                	mov    %ebx,%edx
  6a:	ec                   	in     (%dx),%al
  6b:	88 45 f6             	mov    %al,-0xa(%ebp)
  6e:	b0 07                	mov    $0x7,%al
  70:	89 f2                	mov    %esi,%edx
  72:	ee                   	out    %al,(%dx)
  73:	89 da                	mov    %ebx,%edx
  75:	ec                   	in     (%dx),%al
  76:	88 45 f5             	mov    %al,-0xb(%ebp)
  79:	b0 04                	mov    $0x4,%al
  7b:	89 f2                	mov    %esi,%edx
  7d:	ee                   	out    %al,(%dx)
  7e:	89 da                	mov    %ebx,%edx
  80:	ec                   	in     (%dx),%al
  81:	88 45 f4             	mov    %al,-0xc(%ebp)
  84:	b0 02                	mov    $0x2,%al
  86:	89 f2                	mov    %esi,%edx
  88:	ee                   	out    %al,(%dx)
  89:	89 da                	mov    %ebx,%edx
  8b:	ec                   	in     (%dx),%al
  8c:	88 45 f3             	mov    %al,-0xd(%ebp)
  8f:	31 c0                	xor    %eax,%eax
  91:	89 f2                	mov    %esi,%edx
  93:	ee                   	out    %al,(%dx)
  94:	89 da                	mov    %ebx,%edx
  96:	ec                   	in     (%dx),%al
  97:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
  9b:	89 d3                	mov    %edx,%ebx
  9d:	c1 fa 04             	sar    $0x4,%edx
  a0:	8d 14 92             	lea    (%edx,%edx,4),%edx
  a3:	01 d2                	add    %edx,%edx
  a5:	89 de                	mov    %ebx,%esi
  a7:	83 e6 0f             	and    $0xf,%esi
  aa:	8d 94 32 d0 07 00 00 	lea    0x7d0(%edx,%esi,1),%edx
  b1:	89 11                	mov    %edx,(%ecx)
  b3:	0f b6 55 f6          	movzbl -0xa(%ebp),%edx
  b7:	89 d3                	mov    %edx,%ebx
  b9:	c1 fa 04             	sar    $0x4,%edx
  bc:	8d 14 92             	lea    (%edx,%edx,4),%edx
  bf:	01 d2                	add    %edx,%edx
  c1:	89 de                	mov    %ebx,%esi
  c3:	83 e6 0f             	and    $0xf,%esi
  c6:	01 f2                	add    %esi,%edx
  c8:	89 51 04             	mov    %edx,0x4(%ecx)
  cb:	0f b6 55 f5          	movzbl -0xb(%ebp),%edx
  cf:	89 d3                	mov    %edx,%ebx
  d1:	c1 fa 04             	sar    $0x4,%edx
  d4:	8d 14 92             	lea    (%edx,%edx,4),%edx
  d7:	01 d2                	add    %edx,%edx
  d9:	89 de                	mov    %ebx,%esi
  db:	83 e6 0f             	and    $0xf,%esi
  de:	01 f2                	add    %esi,%edx
  e0:	89 51 08             	mov    %edx,0x8(%ecx)
  e3:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
  e7:	89 d3                	mov    %edx,%ebx
  e9:	c1 fa 04             	sar    $0x4,%edx
  ec:	8d 14 92             	lea    (%edx,%edx,4),%edx
  ef:	01 d2                	add    %edx,%edx
  f1:	89 de                	mov    %ebx,%esi
  f3:	83 e6 0f             	and    $0xf,%esi
  f6:	01 f2                	add    %esi,%edx
  f8:	89 51 0c             	mov    %edx,0xc(%ecx)
  fb:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  ff:	89 d3                	mov    %edx,%ebx
 101:	c1 fa 04             	sar    $0x4,%edx
 104:	8d 14 92             	lea    (%edx,%edx,4),%edx
 107:	01 d2                	add    %edx,%edx
 109:	83 e3 0f             	and    $0xf,%ebx
 10c:	01 da                	add    %ebx,%edx
 10e:	89 51 10             	mov    %edx,0x10(%ecx)
 111:	0f b6 d0             	movzbl %al,%edx
 114:	c1 fa 04             	sar    $0x4,%edx
 117:	8d 14 92             	lea    (%edx,%edx,4),%edx
 11a:	01 d2                	add    %edx,%edx
 11c:	83 e0 0f             	and    $0xf,%eax
 11f:	01 c2                	add    %eax,%edx
 121:	89 51 14             	mov    %edx,0x14(%ecx)
 124:	83 c4 08             	add    $0x8,%esp
 127:	5b                   	pop    %ebx
 128:	5e                   	pop    %esi
 129:	5d                   	pop    %ebp
 12a:	c3                   	ret    
 12b:	90                   	nop

0000012c <timer_config>:
 12c:	55                   	push   %ebp
 12d:	89 e5                	mov    %esp,%ebp
 12f:	8b 45 08             	mov    0x8(%ebp),%eax
 132:	66 c7 00 01 01       	movw   $0x101,(%eax)
 137:	5d                   	pop    %ebp
 138:	c3                   	ret    
 139:	8d 76 00             	lea    0x0(%esi),%esi

0000013c <timer_rtc>:
 13c:	55                   	push   %ebp
 13d:	89 e5                	mov    %esp,%ebp
 13f:	57                   	push   %edi
 140:	56                   	push   %esi
 141:	53                   	push   %ebx
 142:	8b 5d 08             	mov    0x8(%ebp),%ebx
 145:	31 ff                	xor    %edi,%edi
 147:	be 70 00 00 00       	mov    $0x70,%esi
 14c:	89 d8                	mov    %ebx,%eax
 14e:	e8 f1 fe ff ff       	call   44 <read_rtc_async>
 153:	89 f8                	mov    %edi,%eax
 155:	89 f2                	mov    %esi,%edx
 157:	ee                   	out    %al,(%dx)
 158:	ba 71 00 00 00       	mov    $0x71,%edx
 15d:	ec                   	in     (%dx),%al
 15e:	0f b6 d0             	movzbl %al,%edx
 161:	c1 fa 04             	sar    $0x4,%edx
 164:	8d 14 92             	lea    (%edx,%edx,4),%edx
 167:	01 d2                	add    %edx,%edx
 169:	83 e0 0f             	and    $0xf,%eax
 16c:	01 c2                	add    %eax,%edx
 16e:	39 53 14             	cmp    %edx,0x14(%ebx)
 171:	75 d9                	jne    14c <timer_rtc+0x10>
 173:	5b                   	pop    %ebx
 174:	5e                   	pop    %esi
 175:	5f                   	pop    %edi
 176:	5d                   	pop    %ebp
 177:	c3                   	ret    

00000178 <timer_uptime>:
 178:	55                   	push   %ebp
 179:	89 e5                	mov    %esp,%ebp
 17b:	53                   	push   %ebx
 17c:	50                   	push   %eax
 17d:	0f 31                	rdtsc  
 17f:	89 c1                	mov    %eax,%ecx
 181:	89 d3                	mov    %edx,%ebx
 183:	2b 0d 48 00 10 00    	sub    0x100048,%ecx
 189:	1b 1d 4c 00 10 00    	sbb    0x10004c,%ebx
 18f:	a1 00 02 00 00       	mov    0x200,%eax
 194:	31 d2                	xor    %edx,%edx
 196:	52                   	push   %edx
 197:	50                   	push   %eax
 198:	53                   	push   %ebx
 199:	51                   	push   %ecx
 19a:	e8 fc ff ff ff       	call   19b <timer_uptime+0x23>
 19f:	83 c4 10             	add    $0x10,%esp
 1a2:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1a5:	89 01                	mov    %eax,(%ecx)
 1a7:	89 51 04             	mov    %edx,0x4(%ecx)
 1aa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1ad:	c9                   	leave  
 1ae:	c3                   	ret    
 1af:	90                   	nop

000001b0 <input_config>:
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 45 08             	mov    0x8(%ebp),%eax
 1b6:	c6 00 01             	movb   $0x1,(%eax)
 1b9:	5d                   	pop    %ebp
 1ba:	c3                   	ret    
 1bb:	90                   	nop

000001bc <gpu_config>:
 1bc:	55                   	push   %ebp
 1bd:	89 e5                	mov    %esp,%ebp
 1bf:	57                   	push   %edi
 1c0:	56                   	push   %esi
 1c1:	53                   	push   %ebx
 1c2:	8b 55 08             	mov    0x8(%ebp),%edx
 1c5:	0f b7 35 0a 00 00 00 	movzwl 0xa,%esi
 1cc:	0f b7 1d 0c 00 00 00 	movzwl 0xc,%ebx
 1d3:	b9 04 00 00 00       	mov    $0x4,%ecx
 1d8:	31 c0                	xor    %eax,%eax
 1da:	89 d7                	mov    %edx,%edi
 1dc:	f3 ab                	rep stos %eax,%es:(%edi)
 1de:	c6 02 01             	movb   $0x1,(%edx)
 1e1:	89 72 04             	mov    %esi,0x4(%edx)
 1e4:	89 5a 08             	mov    %ebx,0x8(%edx)
 1e7:	c7 42 0c 00 00 08 00 	movl   $0x80000,0xc(%edx)
 1ee:	5b                   	pop    %ebx
 1ef:	5e                   	pop    %esi
 1f0:	5f                   	pop    %edi
 1f1:	5d                   	pop    %ebp
 1f2:	c3                   	ret    
 1f3:	90                   	nop

000001f4 <gpu_fbdraw>:
 1f4:	55                   	push   %ebp
 1f5:	89 e5                	mov    %esp,%ebp
 1f7:	57                   	push   %edi
 1f8:	56                   	push   %esi
 1f9:	53                   	push   %ebx
 1fa:	83 ec 18             	sub    $0x18,%esp
 1fd:	8b 5d 08             	mov    0x8(%ebp),%ebx
 200:	8b 13                	mov    (%ebx),%edx
 202:	8b 73 04             	mov    0x4(%ebx),%esi
 205:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 208:	8b 43 10             	mov    0x10(%ebx),%eax
 20b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 20e:	0f b7 05 0a 00 00 00 	movzwl 0xa,%eax
 215:	0f b7 3d 0c 00 00 00 	movzwl 0xc,%edi
 21c:	89 7d f0             	mov    %edi,-0x10(%ebp)
 21f:	8b 7b 08             	mov    0x8(%ebx),%edi
 222:	8d 1c 0a             	lea    (%edx,%ecx,1),%ebx
 225:	39 c3                	cmp    %eax,%ebx
 227:	0f 8c 93 00 00 00    	jl     2c0 <gpu_fbdraw+0xcc>
 22d:	89 c3                	mov    %eax,%ebx
 22f:	29 d3                	sub    %edx,%ebx
 231:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 234:	8b 5d e8             	mov    -0x18(%ebp),%ebx
 237:	85 db                	test   %ebx,%ebx
 239:	7e 7c                	jle    2b7 <gpu_fbdraw+0xc3>
 23b:	c1 e1 02             	shl    $0x2,%ecx
 23e:	89 4d ec             	mov    %ecx,-0x14(%ebp)
 241:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 244:	01 c1                	add    %eax,%ecx
 246:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 249:	0f af c6             	imul   %esi,%eax
 24c:	01 d0                	add    %edx,%eax
 24e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 251:	01 c8                	add    %ecx,%eax
 253:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
 256:	01 c3                	add    %eax,%ebx
 258:	03 1d 40 00 10 00    	add    0x100040,%ebx
 25e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 261:	01 f0                	add    %esi,%eax
 263:	89 45 e8             	mov    %eax,-0x18(%ebp)
 266:	89 c8                	mov    %ecx,%eax
 268:	01 c8                	add    %ecx,%eax
 26a:	01 c8                	add    %ecx,%eax
 26c:	f7 d8                	neg    %eax
 26e:	89 45 dc             	mov    %eax,-0x24(%ebp)
 271:	eb 0d                	jmp    280 <gpu_fbdraw+0x8c>
 273:	90                   	nop
 274:	03 7d ec             	add    -0x14(%ebp),%edi
 277:	46                   	inc    %esi
 278:	03 5d e4             	add    -0x1c(%ebp),%ebx
 27b:	3b 75 e8             	cmp    -0x18(%ebp),%esi
 27e:	74 37                	je     2b7 <gpu_fbdraw+0xc3>
 280:	39 75 f0             	cmp    %esi,-0x10(%ebp)
 283:	7e ef                	jle    274 <gpu_fbdraw+0x80>
 285:	8b 45 dc             	mov    -0x24(%ebp),%eax
 288:	01 d8                	add    %ebx,%eax
 28a:	8b 55 e0             	mov    -0x20(%ebp),%edx
 28d:	85 d2                	test   %edx,%edx
 28f:	7e e3                	jle    274 <gpu_fbdraw+0x80>
 291:	89 f9                	mov    %edi,%ecx
 293:	90                   	nop
 294:	8b 11                	mov    (%ecx),%edx
 296:	88 10                	mov    %dl,(%eax)
 298:	88 70 01             	mov    %dh,0x1(%eax)
 29b:	c1 ea 10             	shr    $0x10,%edx
 29e:	88 50 02             	mov    %dl,0x2(%eax)
 2a1:	83 c0 03             	add    $0x3,%eax
 2a4:	83 c1 04             	add    $0x4,%ecx
 2a7:	39 d8                	cmp    %ebx,%eax
 2a9:	75 e9                	jne    294 <gpu_fbdraw+0xa0>
 2ab:	03 7d ec             	add    -0x14(%ebp),%edi
 2ae:	46                   	inc    %esi
 2af:	03 5d e4             	add    -0x1c(%ebp),%ebx
 2b2:	3b 75 e8             	cmp    -0x18(%ebp),%esi
 2b5:	75 c9                	jne    280 <gpu_fbdraw+0x8c>
 2b7:	83 c4 18             	add    $0x18,%esp
 2ba:	5b                   	pop    %ebx
 2bb:	5e                   	pop    %esi
 2bc:	5f                   	pop    %edi
 2bd:	5d                   	pop    %ebp
 2be:	c3                   	ret    
 2bf:	90                   	nop
 2c0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 2c3:	e9 6c ff ff ff       	jmp    234 <gpu_fbdraw+0x40>

000002c8 <gpu_status>:
 2c8:	55                   	push   %ebp
 2c9:	89 e5                	mov    %esp,%ebp
 2cb:	8b 45 08             	mov    0x8(%ebp),%eax
 2ce:	c6 00 01             	movb   $0x1,(%eax)
 2d1:	5d                   	pop    %ebp
 2d2:	c3                   	ret    
 2d3:	90                   	nop

000002d4 <gpu_memcpy>:
 2d4:	55                   	push   %ebp
 2d5:	89 e5                	mov    %esp,%ebp
 2d7:	56                   	push   %esi
 2d8:	53                   	push   %ebx
 2d9:	8b 75 08             	mov    0x8(%ebp),%esi
 2dc:	8b 5e 04             	mov    0x4(%esi),%ebx
 2df:	8b 0e                	mov    (%esi),%ecx
 2e1:	83 f9 ff             	cmp    $0xffffffff,%ecx
 2e4:	74 22                	je     308 <gpu_memcpy+0x34>
 2e6:	81 c1 40 00 08 00    	add    $0x80040,%ecx
 2ec:	8b 46 08             	mov    0x8(%esi),%eax
 2ef:	85 c0                	test   %eax,%eax
 2f1:	7e 11                	jle    304 <gpu_memcpy+0x30>
 2f3:	31 c0                	xor    %eax,%eax
 2f5:	8d 76 00             	lea    0x0(%esi),%esi
 2f8:	8a 14 03             	mov    (%ebx,%eax,1),%dl
 2fb:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2fe:	40                   	inc    %eax
 2ff:	39 46 08             	cmp    %eax,0x8(%esi)
 302:	7f f4                	jg     2f8 <gpu_memcpy+0x24>
 304:	5b                   	pop    %ebx
 305:	5e                   	pop    %esi
 306:	5d                   	pop    %ebp
 307:	c3                   	ret    
 308:	31 c9                	xor    %ecx,%ecx
 30a:	eb e0                	jmp    2ec <gpu_memcpy+0x18>

0000030c <disk_config>:
 30c:	55                   	push   %ebp
 30d:	89 e5                	mov    %esp,%ebp
 30f:	8b 45 08             	mov    0x8(%ebp),%eax
 312:	c6 00 01             	movb   $0x1,(%eax)
 315:	c7 40 04 00 02 00 00 	movl   $0x200,0x4(%eax)
 31c:	c7 40 08 00 00 02 00 	movl   $0x20000,0x8(%eax)
 323:	5d                   	pop    %ebp
 324:	c3                   	ret    
 325:	8d 76 00             	lea    0x0(%esi),%esi

00000328 <disk_status>:
 328:	55                   	push   %ebp
 329:	89 e5                	mov    %esp,%ebp
 32b:	8b 45 08             	mov    0x8(%ebp),%eax
 32e:	c6 00 01             	movb   $0x1,(%eax)
 331:	5d                   	pop    %ebp
 332:	c3                   	ret    
 333:	90                   	nop

00000334 <disk_blkio>:
 334:	55                   	push   %ebp
 335:	89 e5                	mov    %esp,%ebp
 337:	57                   	push   %edi
 338:	56                   	push   %esi
 339:	53                   	push   %ebx
 33a:	83 ec 08             	sub    $0x8,%esp
 33d:	8b 45 08             	mov    0x8(%ebp),%eax
 340:	8b 78 08             	mov    0x8(%eax),%edi
 343:	8b 50 0c             	mov    0xc(%eax),%edx
 346:	8b 58 04             	mov    0x4(%eax),%ebx
 349:	85 d2                	test   %edx,%edx
 34b:	0f 84 9e 00 00 00    	je     3ef <disk_blkio+0xbb>
 351:	8a 00                	mov    (%eax),%al
 353:	88 45 f3             	mov    %al,-0xd(%ebp)
 356:	81 c3 00 02 00 00    	add    $0x200,%ebx
 35c:	3c 01                	cmp    $0x1,%al
 35e:	19 c0                	sbb    %eax,%eax
 360:	83 e0 f0             	and    $0xfffffff0,%eax
 363:	83 c0 30             	add    $0x30,%eax
 366:	88 45 f2             	mov    %al,-0xe(%ebp)
 369:	8d 04 17             	lea    (%edi,%edx,1),%eax
 36c:	89 45 ec             	mov    %eax,-0x14(%ebp)
 36f:	be f7 01 00 00       	mov    $0x1f7,%esi
 374:	8d 8b 00 fe ff ff    	lea    -0x200(%ebx),%ecx
 37a:	66 90                	xchg   %ax,%ax
 37c:	89 f2                	mov    %esi,%edx
 37e:	ec                   	in     (%dx),%al
 37f:	83 e0 c0             	and    $0xffffffc0,%eax
 382:	3c 40                	cmp    $0x40,%al
 384:	75 f6                	jne    37c <disk_blkio+0x48>
 386:	ba f2 01 00 00       	mov    $0x1f2,%edx
 38b:	b0 01                	mov    $0x1,%al
 38d:	ee                   	out    %al,(%dx)
 38e:	ba f3 01 00 00       	mov    $0x1f3,%edx
 393:	89 f8                	mov    %edi,%eax
 395:	ee                   	out    %al,(%dx)
 396:	89 f8                	mov    %edi,%eax
 398:	c1 e8 08             	shr    $0x8,%eax
 39b:	ba f4 01 00 00       	mov    $0x1f4,%edx
 3a0:	ee                   	out    %al,(%dx)
 3a1:	89 f8                	mov    %edi,%eax
 3a3:	c1 e8 10             	shr    $0x10,%eax
 3a6:	ba f5 01 00 00       	mov    $0x1f5,%edx
 3ab:	ee                   	out    %al,(%dx)
 3ac:	89 f8                	mov    %edi,%eax
 3ae:	c1 e8 18             	shr    $0x18,%eax
 3b1:	83 c8 e0             	or     $0xffffffe0,%eax
 3b4:	ba f6 01 00 00       	mov    $0x1f6,%edx
 3b9:	ee                   	out    %al,(%dx)
 3ba:	8a 45 f2             	mov    -0xe(%ebp),%al
 3bd:	89 f2                	mov    %esi,%edx
 3bf:	ee                   	out    %al,(%dx)
 3c0:	89 f2                	mov    %esi,%edx
 3c2:	ec                   	in     (%dx),%al
 3c3:	83 e0 c0             	and    $0xffffffc0,%eax
 3c6:	3c 40                	cmp    $0x40,%al
 3c8:	75 f6                	jne    3c0 <disk_blkio+0x8c>
 3ca:	ba f0 01 00 00       	mov    $0x1f0,%edx
 3cf:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
 3d3:	74 23                	je     3f8 <disk_blkio+0xc4>
 3d5:	8d 76 00             	lea    0x0(%esi),%esi
 3d8:	83 c1 04             	add    $0x4,%ecx
 3db:	8b 41 fc             	mov    -0x4(%ecx),%eax
 3de:	ef                   	out    %eax,(%dx)
 3df:	39 d9                	cmp    %ebx,%ecx
 3e1:	75 f5                	jne    3d8 <disk_blkio+0xa4>
 3e3:	47                   	inc    %edi
 3e4:	81 c3 00 02 00 00    	add    $0x200,%ebx
 3ea:	3b 7d ec             	cmp    -0x14(%ebp),%edi
 3ed:	75 85                	jne    374 <disk_blkio+0x40>
 3ef:	83 c4 08             	add    $0x8,%esp
 3f2:	5b                   	pop    %ebx
 3f3:	5e                   	pop    %esi
 3f4:	5f                   	pop    %edi
 3f5:	5d                   	pop    %ebp
 3f6:	c3                   	ret    
 3f7:	90                   	nop
 3f8:	83 c1 04             	add    $0x4,%ecx
 3fb:	ed                   	in     (%dx),%eax
 3fc:	89 41 fc             	mov    %eax,-0x4(%ecx)
 3ff:	39 d9                	cmp    %ebx,%ecx
 401:	75 f5                	jne    3f8 <disk_blkio+0xc4>
 403:	eb de                	jmp    3e3 <disk_blkio+0xaf>
 405:	8d 76 00             	lea    0x0(%esi),%esi

00000408 <audio_config>:
 408:	55                   	push   %ebp
 409:	89 e5                	mov    %esp,%ebp
 40b:	8b 45 08             	mov    0x8(%ebp),%eax
 40e:	c6 00 00             	movb   $0x0,(%eax)
 411:	5d                   	pop    %ebp
 412:	c3                   	ret    
 413:	90                   	nop

00000414 <net_config>:
 414:	55                   	push   %ebp
 415:	89 e5                	mov    %esp,%ebp
 417:	8b 45 08             	mov    0x8(%ebp),%eax
 41a:	c6 00 00             	movb   $0x0,(%eax)
 41d:	5d                   	pop    %ebp
 41e:	c3                   	ret    
 41f:	90                   	nop

00000420 <fail>:
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	50                   	push   %eax
 425:	bb 00 00 00 00       	mov    $0x0,%ebx
 42a:	b8 41 00 00 00       	mov    $0x41,%eax
 42f:	90                   	nop
 430:	83 ec 0c             	sub    $0xc,%esp
 433:	50                   	push   %eax
 434:	e8 fc ff ff ff       	call   435 <fail+0x15>
 439:	43                   	inc    %ebx
 43a:	0f be 03             	movsbl (%ebx),%eax
 43d:	83 c4 10             	add    $0x10,%esp
 440:	84 c0                	test   %al,%al
 442:	75 ec                	jne    430 <fail+0x10>
 444:	bb 0b 00 00 00       	mov    $0xb,%ebx
 449:	b8 61 00 00 00       	mov    $0x61,%eax
 44e:	66 90                	xchg   %ax,%ax
 450:	83 ec 0c             	sub    $0xc,%esp
 453:	50                   	push   %eax
 454:	e8 fc ff ff ff       	call   455 <fail+0x35>
 459:	43                   	inc    %ebx
 45a:	0f be 03             	movsbl (%ebx),%eax
 45d:	83 c4 10             	add    $0x10,%esp
 460:	84 c0                	test   %al,%al
 462:	75 ec                	jne    450 <fail+0x30>
 464:	bb 00 00 00 00       	mov    $0x0,%ebx
 469:	b8 20 00 00 00       	mov    $0x20,%eax
 46e:	66 90                	xchg   %ax,%ax
 470:	83 ec 0c             	sub    $0xc,%esp
 473:	50                   	push   %eax
 474:	e8 fc ff ff ff       	call   475 <fail+0x55>
 479:	43                   	inc    %ebx
 47a:	0f be 03             	movsbl (%ebx),%eax
 47d:	83 c4 10             	add    $0x10,%esp
 480:	84 c0                	test   %al,%al
 482:	75 ec                	jne    470 <fail+0x50>
 484:	83 ec 0c             	sub    $0xc,%esp
 487:	6a 01                	push   $0x1
 489:	e8 fc ff ff ff       	call   48a <fail+0x6a>
 48e:	66 90                	xchg   %ax,%ax

00000490 <input_keybrd>:
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 4d 08             	mov    0x8(%ebp),%ecx
 496:	ba 64 00 00 00       	mov    $0x64,%edx
 49b:	ec                   	in     (%dx),%al
 49c:	a8 01                	test   $0x1,%al
 49e:	74 20                	je     4c0 <input_keybrd+0x30>
 4a0:	ba 60 00 00 00       	mov    $0x60,%edx
 4a5:	ec                   	in     (%dx),%al
 4a6:	88 c2                	mov    %al,%dl
 4a8:	f7 d2                	not    %edx
 4aa:	c0 ea 07             	shr    $0x7,%dl
 4ad:	88 11                	mov    %dl,(%ecx)
 4af:	83 e0 7f             	and    $0x7f,%eax
 4b2:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
 4b9:	89 41 04             	mov    %eax,0x4(%ecx)
 4bc:	5d                   	pop    %ebp
 4bd:	c3                   	ret    
 4be:	66 90                	xchg   %ax,%ax
 4c0:	c6 01 00             	movb   $0x0,(%ecx)
 4c3:	31 c0                	xor    %eax,%eax
 4c5:	89 41 04             	mov    %eax,0x4(%ecx)
 4c8:	5d                   	pop    %ebp
 4c9:	c3                   	ret    
 4ca:	66 90                	xchg   %ax,%ax

000004cc <render.isra.0>:
 4cc:	55                   	push   %ebp
 4cd:	89 e5                	mov    %esp,%ebp
 4cf:	57                   	push   %edi
 4d0:	56                   	push   %esi
 4d1:	53                   	push   %ebx
 4d2:	83 ec 3c             	sub    $0x3c,%esp
 4d5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 4d8:	89 4d bc             	mov    %ecx,-0x44(%ebp)
 4db:	0f b7 7a 02          	movzwl 0x2(%edx),%edi
 4df:	89 7d c0             	mov    %edi,-0x40(%ebp)
 4e2:	66 8b 00             	mov    (%eax),%ax
 4e5:	66 83 f8 01          	cmp    $0x1,%ax
 4e9:	0f 84 29 01 00 00    	je     618 <render.isra.0+0x14c>
 4ef:	66 83 f8 02          	cmp    $0x2,%ax
 4f3:	0f 85 51 01 00 00    	jne    64a <render.isra.0+0x17e>
 4f9:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 4fc:	0f b7 47 02          	movzwl 0x2(%edi),%eax
 500:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 503:	0f b7 7f 04          	movzwl 0x4(%edi),%edi
 507:	89 7d d8             	mov    %edi,-0x28(%ebp)
 50a:	0f af c7             	imul   %edi,%eax
 50d:	8d 14 00             	lea    (%eax,%eax,1),%edx
 510:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 513:	a1 24 00 00 00       	mov    0x24,%eax
 518:	89 45 dc             	mov    %eax,-0x24(%ebp)
 51b:	8d 14 08             	lea    (%eax,%ecx,1),%edx
 51e:	89 15 24 00 00 00    	mov    %edx,0x24
 524:	81 fa 40 00 08 00    	cmp    $0x80040,%edx
 52a:	0f 87 7e 01 00 00    	ja     6ae <render.isra.0+0x1e2>
 530:	85 c9                	test   %ecx,%ecx
 532:	7e 08                	jle    53c <render.isra.0+0x70>
 534:	c6 00 00             	movb   $0x0,(%eax)
 537:	40                   	inc    %eax
 538:	39 d0                	cmp    %edx,%eax
 53a:	75 f8                	jne    534 <render.isra.0+0x68>
 53c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 53f:	8b 58 12             	mov    0x12(%eax),%ebx
 542:	83 fb ff             	cmp    $0xffffffff,%ebx
 545:	74 2a                	je     571 <render.isra.0+0xa5>
 547:	81 c3 40 00 08 00    	add    $0x80040,%ebx
 54d:	8b 75 dc             	mov    -0x24(%ebp),%esi
 550:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 553:	eb 09                	jmp    55e <render.isra.0+0x92>
 555:	8d 76 00             	lea    0x0(%esi),%esi
 558:	81 c3 40 00 08 00    	add    $0x80040,%ebx
 55e:	89 f1                	mov    %esi,%ecx
 560:	89 fa                	mov    %edi,%edx
 562:	89 d8                	mov    %ebx,%eax
 564:	e8 63 ff ff ff       	call   4cc <render.isra.0>
 569:	8b 5b 0e             	mov    0xe(%ebx),%ebx
 56c:	83 fb ff             	cmp    $0xffffffff,%ebx
 56f:	75 e7                	jne    558 <render.isra.0+0x8c>
 571:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 574:	0f b7 47 0a          	movzwl 0xa(%edi),%eax
 578:	89 45 cc             	mov    %eax,-0x34(%ebp)
 57b:	85 c0                	test   %eax,%eax
 57d:	0f 84 8d 00 00 00    	je     610 <render.isra.0+0x144>
 583:	0f b7 7f 0c          	movzwl 0xc(%edi),%edi
 587:	8b 75 c0             	mov    -0x40(%ebp),%esi
 58a:	89 f0                	mov    %esi,%eax
 58c:	01 f0                	add    %esi,%eax
 58e:	01 f0                	add    %esi,%eax
 590:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 593:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 59a:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 5a1:	8d 76 00             	lea    0x0(%esi),%esi
 5a4:	85 ff                	test   %edi,%edi
 5a6:	74 57                	je     5ff <render.isra.0+0x133>
 5a8:	8b 45 c8             	mov    -0x38(%ebp),%eax
 5ab:	99                   	cltd   
 5ac:	f7 7d cc             	idivl  -0x34(%ebp)
 5af:	89 45 e0             	mov    %eax,-0x20(%ebp)
 5b2:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 5b5:	0f b7 43 06          	movzwl 0x6(%ebx),%eax
 5b9:	03 45 d0             	add    -0x30(%ebp),%eax
 5bc:	0f b7 53 08          	movzwl 0x8(%ebx),%edx
 5c0:	0f af 55 c0          	imul   -0x40(%ebp),%edx
 5c4:	01 d0                	add    %edx,%eax
 5c6:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
 5c9:	01 c1                	add    %eax,%ecx
 5cb:	03 4d bc             	add    -0x44(%ebp),%ecx
 5ce:	31 db                	xor    %ebx,%ebx
 5d0:	31 f6                	xor    %esi,%esi
 5d2:	66 90                	xchg   %ax,%ax
 5d4:	89 d8                	mov    %ebx,%eax
 5d6:	99                   	cltd   
 5d7:	f7 ff                	idiv   %edi
 5d9:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
 5dd:	03 45 e0             	add    -0x20(%ebp),%eax
 5e0:	8d 14 00             	lea    (%eax,%eax,1),%edx
 5e3:	01 d0                	add    %edx,%eax
 5e5:	03 45 dc             	add    -0x24(%ebp),%eax
 5e8:	66 8b 10             	mov    (%eax),%dx
 5eb:	66 89 11             	mov    %dx,(%ecx)
 5ee:	8a 40 02             	mov    0x2(%eax),%al
 5f1:	88 41 02             	mov    %al,0x2(%ecx)
 5f4:	46                   	inc    %esi
 5f5:	03 5d d8             	add    -0x28(%ebp),%ebx
 5f8:	03 4d d4             	add    -0x2c(%ebp),%ecx
 5fb:	39 fe                	cmp    %edi,%esi
 5fd:	75 d5                	jne    5d4 <render.isra.0+0x108>
 5ff:	ff 45 d0             	incl   -0x30(%ebp)
 602:	8b 45 d0             	mov    -0x30(%ebp),%eax
 605:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 608:	01 5d c8             	add    %ebx,-0x38(%ebp)
 60b:	3b 45 cc             	cmp    -0x34(%ebp),%eax
 60e:	75 94                	jne    5a4 <render.isra.0+0xd8>
 610:	8d 65 f4             	lea    -0xc(%ebp),%esp
 613:	5b                   	pop    %ebx
 614:	5e                   	pop    %esi
 615:	5f                   	pop    %edi
 616:	5d                   	pop    %ebp
 617:	c3                   	ret    
 618:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 61b:	0f b7 78 12          	movzwl 0x12(%eax),%edi
 61f:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 622:	0f b7 78 14          	movzwl 0x14(%eax),%edi
 626:	89 7d d8             	mov    %edi,-0x28(%ebp)
 629:	8b 40 16             	mov    0x16(%eax),%eax
 62c:	83 f8 ff             	cmp    $0xffffffff,%eax
 62f:	74 0d                	je     63e <render.isra.0+0x172>
 631:	05 40 00 08 00       	add    $0x80040,%eax
 636:	89 45 dc             	mov    %eax,-0x24(%ebp)
 639:	e9 33 ff ff ff       	jmp    571 <render.isra.0+0xa5>
 63e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 645:	e9 27 ff ff ff       	jmp    571 <render.isra.0+0xa5>
 64a:	bb 00 00 00 00       	mov    $0x0,%ebx
 64f:	b8 41 00 00 00       	mov    $0x41,%eax
 654:	83 ec 0c             	sub    $0xc,%esp
 657:	50                   	push   %eax
 658:	e8 fc ff ff ff       	call   659 <render.isra.0+0x18d>
 65d:	43                   	inc    %ebx
 65e:	0f be 03             	movsbl (%ebx),%eax
 661:	83 c4 10             	add    $0x10,%esp
 664:	84 c0                	test   %al,%al
 666:	75 ec                	jne    654 <render.isra.0+0x188>
 668:	bb 2e 00 00 00       	mov    $0x2e,%ebx
 66d:	b8 69 00 00 00       	mov    $0x69,%eax
 672:	83 ec 0c             	sub    $0xc,%esp
 675:	50                   	push   %eax
 676:	e8 fc ff ff ff       	call   677 <render.isra.0+0x1ab>
 67b:	43                   	inc    %ebx
 67c:	0f be 03             	movsbl (%ebx),%eax
 67f:	83 c4 10             	add    $0x10,%esp
 682:	84 c0                	test   %al,%al
 684:	75 ec                	jne    672 <render.isra.0+0x1a6>
 686:	bb 80 00 00 00       	mov    $0x80,%ebx
 68b:	b8 20 00 00 00       	mov    $0x20,%eax
 690:	83 ec 0c             	sub    $0xc,%esp
 693:	50                   	push   %eax
 694:	e8 fc ff ff ff       	call   695 <render.isra.0+0x1c9>
 699:	43                   	inc    %ebx
 69a:	0f be 03             	movsbl (%ebx),%eax
 69d:	83 c4 10             	add    $0x10,%esp
 6a0:	84 c0                	test   %al,%al
 6a2:	75 ec                	jne    690 <render.isra.0+0x1c4>
 6a4:	83 ec 0c             	sub    $0xc,%esp
 6a7:	6a 01                	push   $0x1
 6a9:	e8 fc ff ff ff       	call   6aa <render.isra.0+0x1de>
 6ae:	bb 00 00 00 00       	mov    $0x0,%ebx
 6b3:	b8 41 00 00 00       	mov    $0x41,%eax
 6b8:	83 ec 0c             	sub    $0xc,%esp
 6bb:	50                   	push   %eax
 6bc:	e8 fc ff ff ff       	call   6bd <render.isra.0+0x1f1>
 6c1:	43                   	inc    %ebx
 6c2:	0f be 03             	movsbl (%ebx),%eax
 6c5:	83 c4 10             	add    $0x10,%esp
 6c8:	84 c0                	test   %al,%al
 6ca:	75 ec                	jne    6b8 <render.isra.0+0x1ec>
 6cc:	bb 24 00 00 00       	mov    $0x24,%ebx
 6d1:	b8 6e 00 00 00       	mov    $0x6e,%eax
 6d6:	83 ec 0c             	sub    $0xc,%esp
 6d9:	50                   	push   %eax
 6da:	e8 fc ff ff ff       	call   6db <render.isra.0+0x20f>
 6df:	43                   	inc    %ebx
 6e0:	0f be 03             	movsbl (%ebx),%eax
 6e3:	83 c4 10             	add    $0x10,%esp
 6e6:	84 c0                	test   %al,%al
 6e8:	75 ec                	jne    6d6 <render.isra.0+0x20a>
 6ea:	bb 40 00 00 00       	mov    $0x40,%ebx
 6ef:	b8 20 00 00 00       	mov    $0x20,%eax
 6f4:	83 ec 0c             	sub    $0xc,%esp
 6f7:	50                   	push   %eax
 6f8:	e8 fc ff ff ff       	call   6f9 <render.isra.0+0x22d>
 6fd:	43                   	inc    %ebx
 6fe:	0f be 03             	movsbl (%ebx),%eax
 701:	83 c4 10             	add    $0x10,%esp
 704:	84 c0                	test   %al,%al
 706:	75 ec                	jne    6f4 <render.isra.0+0x228>
 708:	eb 9a                	jmp    6a4 <render.isra.0+0x1d8>
 70a:	66 90                	xchg   %ax,%ax

0000070c <gpu_render>:
 70c:	55                   	push   %ebp
 70d:	89 e5                	mov    %esp,%ebp
 70f:	c7 05 24 00 00 00 40 	movl   $0x40,0x24
 716:	00 00 00 
 719:	8b 0d 40 00 10 00    	mov    0x100040,%ecx
 71f:	8b 45 08             	mov    0x8(%ebp),%eax
 722:	8b 00                	mov    (%eax),%eax
 724:	83 f8 ff             	cmp    $0xffffffff,%eax
 727:	74 13                	je     73c <gpu_render+0x30>
 729:	05 40 00 08 00       	add    $0x80040,%eax
 72e:	ba 08 00 00 00       	mov    $0x8,%edx
 733:	5d                   	pop    %ebp
 734:	e9 93 fd ff ff       	jmp    4cc <render.isra.0>
 739:	8d 76 00             	lea    0x0(%esi),%esi
 73c:	31 c0                	xor    %eax,%eax
 73e:	ba 08 00 00 00       	mov    $0x8,%edx
 743:	5d                   	pop    %ebp
 744:	e9 83 fd ff ff       	jmp    4cc <render.isra.0>
 749:	8d 76 00             	lea    0x0(%esi),%esi

0000074c <ioe_init>:
 74c:	55                   	push   %ebp
 74d:	89 e5                	mov    %esp,%ebp
 74f:	57                   	push   %edi
 750:	56                   	push   %esi
 751:	53                   	push   %ebx
 752:	83 ec 7c             	sub    $0x7c,%esp
 755:	e8 fc ff ff ff       	call   756 <ioe_init+0xa>
 75a:	85 c0                	test   %eax,%eax
 75c:	74 0e                	je     76c <ioe_init+0x20>
 75e:	e9 b9 01 00 00       	jmp    91c <ioe_init+0x1d0>
 763:	90                   	nop
 764:	40                   	inc    %eax
 765:	3d 80 00 00 00       	cmp    $0x80,%eax
 76a:	74 1e                	je     78a <ioe_init+0x3e>
 76c:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
 773:	85 d2                	test   %edx,%edx
 775:	75 ed                	jne    764 <ioe_init+0x18>
 777:	c7 04 85 00 00 00 00 	movl   $0x420,0x0(,%eax,4)
 77e:	20 04 00 00 
 782:	40                   	inc    %eax
 783:	3d 80 00 00 00       	cmp    $0x80,%eax
 788:	75 e2                	jne    76c <ioe_init+0x20>
 78a:	bb fa 03 00 00       	mov    $0x3fa,%ebx
 78f:	31 c0                	xor    %eax,%eax
 791:	89 da                	mov    %ebx,%edx
 793:	ee                   	out    %al,(%dx)
 794:	bf fb 03 00 00       	mov    $0x3fb,%edi
 799:	b0 80                	mov    $0x80,%al
 79b:	89 fa                	mov    %edi,%edx
 79d:	ee                   	out    %al,(%dx)
 79e:	b9 f8 03 00 00       	mov    $0x3f8,%ecx
 7a3:	b0 0c                	mov    $0xc,%al
 7a5:	89 ca                	mov    %ecx,%edx
 7a7:	ee                   	out    %al,(%dx)
 7a8:	be f9 03 00 00       	mov    $0x3f9,%esi
 7ad:	31 c0                	xor    %eax,%eax
 7af:	89 f2                	mov    %esi,%edx
 7b1:	ee                   	out    %al,(%dx)
 7b2:	b0 03                	mov    $0x3,%al
 7b4:	89 fa                	mov    %edi,%edx
 7b6:	ee                   	out    %al,(%dx)
 7b7:	ba fc 03 00 00       	mov    $0x3fc,%edx
 7bc:	31 c0                	xor    %eax,%eax
 7be:	ee                   	out    %al,(%dx)
 7bf:	b0 01                	mov    $0x1,%al
 7c1:	89 f2                	mov    %esi,%edx
 7c3:	ee                   	out    %al,(%dx)
 7c4:	89 da                	mov    %ebx,%edx
 7c6:	ec                   	in     (%dx),%al
 7c7:	89 ca                	mov    %ecx,%edx
 7c9:	ec                   	in     (%dx),%al
 7ca:	66 90                	xchg   %ax,%ax
 7cc:	8d 45 d0             	lea    -0x30(%ebp),%eax
 7cf:	e8 70 f8 ff ff       	call   44 <read_rtc_async>
 7d4:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
 7db:	8b 45 9c             	mov    -0x64(%ebp),%eax
 7de:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
 7e3:	7f 14                	jg     7f9 <ioe_init+0xad>
 7e5:	8d 76 00             	lea    0x0(%esi),%esi
 7e8:	8b 45 9c             	mov    -0x64(%ebp),%eax
 7eb:	40                   	inc    %eax
 7ec:	89 45 9c             	mov    %eax,-0x64(%ebp)
 7ef:	8b 45 9c             	mov    -0x64(%ebp),%eax
 7f2:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
 7f7:	7e ef                	jle    7e8 <ioe_init+0x9c>
 7f9:	8d 45 a0             	lea    -0x60(%ebp),%eax
 7fc:	e8 43 f8 ff ff       	call   44 <read_rtc_async>
 801:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
 807:	74 c3                	je     7cc <ioe_init+0x80>
 809:	0f 31                	rdtsc  
 80b:	89 55 88             	mov    %edx,-0x78(%ebp)
 80e:	89 45 8c             	mov    %eax,-0x74(%ebp)
 811:	8b 55 b0             	mov    -0x50(%ebp),%edx
 814:	8d 04 12             	lea    (%edx,%edx,1),%eax
 817:	01 d0                	add    %edx,%eax
 819:	8d 04 80             	lea    (%eax,%eax,4),%eax
 81c:	8d 1c 81             	lea    (%ecx,%eax,4),%ebx
 81f:	89 5d 90             	mov    %ebx,-0x70(%ebp)
 822:	89 d8                	mov    %ebx,%eax
 824:	c1 f8 1f             	sar    $0x1f,%eax
 827:	89 45 94             	mov    %eax,-0x6c(%ebp)
 82a:	66 90                	xchg   %ax,%ax
 82c:	8d 45 d0             	lea    -0x30(%ebp),%eax
 82f:	e8 10 f8 ff ff       	call   44 <read_rtc_async>
 834:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
 83b:	8b 45 98             	mov    -0x68(%ebp),%eax
 83e:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
 843:	7f 14                	jg     859 <ioe_init+0x10d>
 845:	8d 76 00             	lea    0x0(%esi),%esi
 848:	8b 45 98             	mov    -0x68(%ebp),%eax
 84b:	40                   	inc    %eax
 84c:	89 45 98             	mov    %eax,-0x68(%ebp)
 84f:	8b 45 98             	mov    -0x68(%ebp),%eax
 852:	3d 9f 86 01 00       	cmp    $0x1869f,%eax
 857:	7e ef                	jle    848 <ioe_init+0xfc>
 859:	8d 45 b8             	lea    -0x48(%ebp),%eax
 85c:	e8 e3 f7 ff ff       	call   44 <read_rtc_async>
 861:	8b 4d cc             	mov    -0x34(%ebp),%ecx
 864:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
 867:	74 c3                	je     82c <ioe_init+0xe0>
 869:	0f 31                	rdtsc  
 86b:	89 55 84             	mov    %edx,-0x7c(%ebp)
 86e:	8b 75 c8             	mov    -0x38(%ebp),%esi
 871:	8d 14 36             	lea    (%esi,%esi,1),%edx
 874:	01 f2                	add    %esi,%edx
 876:	8d 14 92             	lea    (%edx,%edx,4),%edx
 879:	8d 14 91             	lea    (%ecx,%edx,4),%edx
 87c:	89 d6                	mov    %edx,%esi
 87e:	89 d7                	mov    %edx,%edi
 880:	c1 ff 1f             	sar    $0x1f,%edi
 883:	39 d3                	cmp    %edx,%ebx
 885:	8b 5d 94             	mov    -0x6c(%ebp),%ebx
 888:	19 fb                	sbb    %edi,%ebx
 88a:	0f 83 3c ff ff ff    	jae    7cc <ioe_init+0x80>
 890:	89 c1                	mov    %eax,%ecx
 892:	8b 5d 84             	mov    -0x7c(%ebp),%ebx
 895:	8b 45 8c             	mov    -0x74(%ebp),%eax
 898:	8b 55 88             	mov    -0x78(%ebp),%edx
 89b:	29 c1                	sub    %eax,%ecx
 89d:	19 d3                	sbb    %edx,%ebx
 89f:	0f ac d9 14          	shrd   $0x14,%ebx,%ecx
 8a3:	c1 eb 14             	shr    $0x14,%ebx
 8a6:	2b 75 90             	sub    -0x70(%ebp),%esi
 8a9:	1b 7d 94             	sbb    -0x6c(%ebp),%edi
 8ac:	57                   	push   %edi
 8ad:	56                   	push   %esi
 8ae:	53                   	push   %ebx
 8af:	51                   	push   %ecx
 8b0:	e8 fc ff ff ff       	call   8b1 <ioe_init+0x165>
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	a3 00 02 00 00       	mov    %eax,0x200
 8bd:	31 f6                	xor    %esi,%esi
 8bf:	bb 70 00 00 00       	mov    $0x70,%ebx
 8c4:	b8 50 00 10 00       	mov    $0x100050,%eax
 8c9:	e8 76 f7 ff ff       	call   44 <read_rtc_async>
 8ce:	89 f0                	mov    %esi,%eax
 8d0:	89 da                	mov    %ebx,%edx
 8d2:	ee                   	out    %al,(%dx)
 8d3:	ba 71 00 00 00       	mov    $0x71,%edx
 8d8:	ec                   	in     (%dx),%al
 8d9:	0f b6 d0             	movzbl %al,%edx
 8dc:	c1 fa 04             	sar    $0x4,%edx
 8df:	8d 14 92             	lea    (%edx,%edx,4),%edx
 8e2:	01 d2                	add    %edx,%edx
 8e4:	83 e0 0f             	and    $0xf,%eax
 8e7:	01 c2                	add    %eax,%edx
 8e9:	3b 15 64 00 10 00    	cmp    0x100064,%edx
 8ef:	75 d3                	jne    8c4 <ioe_init+0x178>
 8f1:	0f 31                	rdtsc  
 8f3:	a3 48 00 10 00       	mov    %eax,0x100048
 8f8:	89 15 4c 00 10 00    	mov    %edx,0x10004c
 8fe:	a1 12 40 00 00       	mov    0x4012,%eax
 903:	a3 0a 00 00 00       	mov    %eax,0xa
 908:	a1 28 40 00 00       	mov    0x4028,%eax
 90d:	a3 40 00 10 00       	mov    %eax,0x100040
 912:	b0 01                	mov    $0x1,%al
 914:	8d 65 f4             	lea    -0xc(%ebp),%esp
 917:	5b                   	pop    %ebx
 918:	5e                   	pop    %esi
 919:	5f                   	pop    %edi
 91a:	5d                   	pop    %ebp
 91b:	c3                   	ret    
 91c:	bb 00 00 00 00       	mov    $0x0,%ebx
 921:	b8 41 00 00 00       	mov    $0x41,%eax
 926:	83 ec 0c             	sub    $0xc,%esp
 929:	50                   	push   %eax
 92a:	e8 fc ff ff ff       	call   92b <ioe_init+0x1df>
 92f:	43                   	inc    %ebx
 930:	0f be 03             	movsbl (%ebx),%eax
 933:	83 c4 10             	add    $0x10,%esp
 936:	84 c0                	test   %al,%al
 938:	75 ec                	jne    926 <ioe_init+0x1da>
 93a:	bb 3b 00 00 00       	mov    $0x3b,%ebx
 93f:	b8 69 00 00 00       	mov    $0x69,%eax
 944:	83 ec 0c             	sub    $0xc,%esp
 947:	50                   	push   %eax
 948:	e8 fc ff ff ff       	call   949 <ioe_init+0x1fd>
 94d:	43                   	inc    %ebx
 94e:	0f be 03             	movsbl (%ebx),%eax
 951:	83 c4 10             	add    $0x10,%esp
 954:	84 c0                	test   %al,%al
 956:	75 ec                	jne    944 <ioe_init+0x1f8>
 958:	bb c0 00 00 00       	mov    $0xc0,%ebx
 95d:	b8 20 00 00 00       	mov    $0x20,%eax
 962:	83 ec 0c             	sub    $0xc,%esp
 965:	50                   	push   %eax
 966:	e8 fc ff ff ff       	call   967 <ioe_init+0x21b>
 96b:	43                   	inc    %ebx
 96c:	0f be 03             	movsbl (%ebx),%eax
 96f:	83 c4 10             	add    $0x10,%esp
 972:	84 c0                	test   %al,%al
 974:	75 ec                	jne    962 <ioe_init+0x216>
 976:	83 ec 0c             	sub    $0xc,%esp
 979:	6a 01                	push   $0x1
 97b:	e8 fc ff ff ff       	call   97c <ioe_init+0x230>

00000980 <ioe_read>:
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	8b 45 08             	mov    0x8(%ebp),%eax
 986:	8b 55 0c             	mov    0xc(%ebp),%edx
 989:	89 55 08             	mov    %edx,0x8(%ebp)
 98c:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
 993:	5d                   	pop    %ebp
 994:	ff e0                	jmp    *%eax
 996:	66 90                	xchg   %ax,%ax

00000998 <ioe_write>:
 998:	55                   	push   %ebp
 999:	89 e5                	mov    %esp,%ebp
 99b:	8b 45 08             	mov    0x8(%ebp),%eax
 99e:	8b 55 0c             	mov    0xc(%ebp),%edx
 9a1:	89 55 08             	mov    %edx,0x8(%ebp)
 9a4:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
 9ab:	5d                   	pop    %ebp
 9ac:	ff e0                	jmp    *%eax
 9ae:	66 90                	xchg   %ax,%ax

000009b0 <__am_percpu_initlapic>:
 9b0:	a1 00 00 00 00       	mov    0x0,%eax
 9b5:	c7 80 f0 00 00 00 3f 	movl   $0x13f,0xf0(%eax)
 9bc:	01 00 00 
 9bf:	8b 50 20             	mov    0x20(%eax),%edx
 9c2:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%eax)
 9c9:	00 00 00 
 9cc:	8b 50 20             	mov    0x20(%eax),%edx
 9cf:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%eax)
 9d6:	00 02 00 
 9d9:	8b 50 20             	mov    0x20(%eax),%edx
 9dc:	c7 80 80 03 00 00 80 	movl   $0x989680,0x380(%eax)
 9e3:	96 98 00 
 9e6:	8b 50 20             	mov    0x20(%eax),%edx
 9e9:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%eax)
 9f0:	00 01 00 
 9f3:	8b 50 20             	mov    0x20(%eax),%edx
 9f6:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%eax)
 9fd:	00 01 00 
 a00:	8b 50 20             	mov    0x20(%eax),%edx
 a03:	8b 50 30             	mov    0x30(%eax),%edx
 a06:	c1 ea 10             	shr    $0x10,%edx
 a09:	81 e2 fc 00 00 00    	and    $0xfc,%edx
 a0f:	74 0d                	je     a1e <__am_percpu_initlapic+0x6e>
 a11:	c7 80 40 03 00 00 00 	movl   $0x10000,0x340(%eax)
 a18:	00 01 00 
 a1b:	8b 50 20             	mov    0x20(%eax),%edx
 a1e:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%eax)
 a25:	00 00 00 
 a28:	8b 50 20             	mov    0x20(%eax),%edx
 a2b:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
 a32:	00 00 00 
 a35:	8b 50 20             	mov    0x20(%eax),%edx
 a38:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
 a3f:	00 00 00 
 a42:	8b 50 20             	mov    0x20(%eax),%edx
 a45:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
 a4c:	00 00 00 
 a4f:	8b 50 20             	mov    0x20(%eax),%edx
 a52:	c7 80 10 03 00 00 00 	movl   $0x0,0x310(%eax)
 a59:	00 00 00 
 a5c:	8b 50 20             	mov    0x20(%eax),%edx
 a5f:	c7 80 00 03 00 00 00 	movl   $0x88500,0x300(%eax)
 a66:	85 08 00 
 a69:	8b 50 20             	mov    0x20(%eax),%edx
 a6c:	8b 90 00 03 00 00    	mov    0x300(%eax),%edx
 a72:	80 e6 10             	and    $0x10,%dh
 a75:	75 f5                	jne    a6c <__am_percpu_initlapic+0xbc>
 a77:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
 a7e:	00 00 00 
 a81:	8b 40 20             	mov    0x20(%eax),%eax
 a84:	c3                   	ret    
 a85:	8d 76 00             	lea    0x0(%esi),%esi

00000a88 <__am_lapic_eoi>:
 a88:	a1 00 00 00 00       	mov    0x0,%eax
 a8d:	85 c0                	test   %eax,%eax
 a8f:	74 0d                	je     a9e <__am_lapic_eoi+0x16>
 a91:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
 a98:	00 00 00 
 a9b:	8b 40 20             	mov    0x20(%eax),%eax
 a9e:	c3                   	ret    
 a9f:	90                   	nop

00000aa0 <__am_lapic_bootap>:
 aa0:	55                   	push   %ebp
 aa1:	89 e5                	mov    %esp,%ebp
 aa3:	53                   	push   %ebx
 aa4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 aa7:	b0 0f                	mov    $0xf,%al
 aa9:	ba 70 00 00 00       	mov    $0x70,%edx
 aae:	ee                   	out    %al,(%dx)
 aaf:	b0 0a                	mov    $0xa,%al
 ab1:	ba 71 00 00 00       	mov    $0x71,%edx
 ab6:	ee                   	out    %al,(%dx)
 ab7:	66 c7 05 67 04 00 00 	movw   $0x0,0x467
 abe:	00 00 
 ac0:	89 c8                	mov    %ecx,%eax
 ac2:	c1 e8 04             	shr    $0x4,%eax
 ac5:	66 a3 69 04 00 00    	mov    %ax,0x469
 acb:	8b 55 08             	mov    0x8(%ebp),%edx
 ace:	c1 e2 18             	shl    $0x18,%edx
 ad1:	a1 00 00 00 00       	mov    0x0,%eax
 ad6:	89 90 10 03 00 00    	mov    %edx,0x310(%eax)
 adc:	8b 58 20             	mov    0x20(%eax),%ebx
 adf:	c7 80 00 03 00 00 00 	movl   $0xc500,0x300(%eax)
 ae6:	c5 00 00 
 ae9:	8b 58 20             	mov    0x20(%eax),%ebx
 aec:	c7 80 00 03 00 00 00 	movl   $0x8500,0x300(%eax)
 af3:	85 00 00 
 af6:	8b 58 20             	mov    0x20(%eax),%ebx
 af9:	89 90 10 03 00 00    	mov    %edx,0x310(%eax)
 aff:	8b 58 20             	mov    0x20(%eax),%ebx
 b02:	c1 e9 0c             	shr    $0xc,%ecx
 b05:	80 cd 06             	or     $0x6,%ch
 b08:	89 88 00 03 00 00    	mov    %ecx,0x300(%eax)
 b0e:	8b 58 20             	mov    0x20(%eax),%ebx
 b11:	89 90 10 03 00 00    	mov    %edx,0x310(%eax)
 b17:	8b 50 20             	mov    0x20(%eax),%edx
 b1a:	89 88 00 03 00 00    	mov    %ecx,0x300(%eax)
 b20:	8b 40 20             	mov    0x20(%eax),%eax
 b23:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 b26:	c9                   	leave  
 b27:	c3                   	ret    

00000b28 <__am_ioapic_init>:
 b28:	55                   	push   %ebp
 b29:	89 e5                	mov    %esp,%ebp
 b2b:	53                   	push   %ebx
 b2c:	c7 05 04 00 00 00 00 	movl   $0xfec00000,0x4
 b33:	00 c0 fe 
 b36:	c7 05 00 00 c0 fe 01 	movl   $0x1,0xfec00000
 b3d:	00 00 00 
 b40:	a1 10 00 c0 fe       	mov    0xfec00010,%eax
 b45:	c1 e8 10             	shr    $0x10,%eax
 b48:	0f b6 c0             	movzbl %al,%eax
 b4b:	8d 5c 00 12          	lea    0x12(%eax,%eax,1),%ebx
 b4f:	b8 10 00 00 00       	mov    $0x10,%eax
 b54:	ba 20 00 00 00       	mov    $0x20,%edx
 b59:	8d 76 00             	lea    0x0(%esi),%esi
 b5c:	89 d1                	mov    %edx,%ecx
 b5e:	81 c9 00 00 01 00    	or     $0x10000,%ecx
 b64:	a3 00 00 c0 fe       	mov    %eax,0xfec00000
 b69:	89 0d 10 00 c0 fe    	mov    %ecx,0xfec00010
 b6f:	8d 48 01             	lea    0x1(%eax),%ecx
 b72:	89 0d 00 00 c0 fe    	mov    %ecx,0xfec00000
 b78:	c7 05 10 00 c0 fe 00 	movl   $0x0,0xfec00010
 b7f:	00 00 00 
 b82:	42                   	inc    %edx
 b83:	83 c0 02             	add    $0x2,%eax
 b86:	39 d8                	cmp    %ebx,%eax
 b88:	75 d2                	jne    b5c <__am_ioapic_init+0x34>
 b8a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 b8d:	c9                   	leave  
 b8e:	c3                   	ret    
 b8f:	90                   	nop

00000b90 <__am_ioapic_enable>:
 b90:	55                   	push   %ebp
 b91:	89 e5                	mov    %esp,%ebp
 b93:	8b 45 08             	mov    0x8(%ebp),%eax
 b96:	8d 48 20             	lea    0x20(%eax),%ecx
 b99:	8d 54 00 10          	lea    0x10(%eax,%eax,1),%edx
 b9d:	a1 04 00 00 00       	mov    0x4,%eax
 ba2:	89 10                	mov    %edx,(%eax)
 ba4:	89 48 10             	mov    %ecx,0x10(%eax)
 ba7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 baa:	c1 e1 18             	shl    $0x18,%ecx
 bad:	42                   	inc    %edx
 bae:	89 10                	mov    %edx,(%eax)
 bb0:	89 48 10             	mov    %ecx,0x10(%eax)
 bb3:	5d                   	pop    %ebp
 bb4:	c3                   	ret    

vme.o:     file format elf32-i386


Disassembly of section .text:

00000000 <teardown>:
   0:	83 f8 03             	cmp    $0x3,%eax
   3:	74 6f                	je     74 <teardown+0x74>
   5:	55                   	push   %ebp
   6:	89 e5                	mov    %esp,%ebp
   8:	57                   	push   %edi
   9:	56                   	push   %esi
   a:	53                   	push   %ebx
   b:	83 ec 1c             	sub    $0x1c,%esp
   e:	89 c6                	mov    %eax,%esi
  10:	89 d7                	mov    %edx,%edi
  12:	c1 e0 04             	shl    $0x4,%eax
  15:	8b 88 14 00 00 00    	mov    0x14(%eax),%ecx
  1b:	b8 01 00 00 00       	mov    $0x1,%eax
  20:	d3 e0                	shl    %cl,%eax
  22:	89 c1                	mov    %eax,%ecx
  24:	85 c0                	test   %eax,%eax
  26:	7e 1a                	jle    42 <teardown+0x42>
  28:	31 db                	xor    %ebx,%ebx
  2a:	8d 46 01             	lea    0x1(%esi),%eax
  2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  30:	8b 14 9f             	mov    (%edi,%ebx,4),%edx
  33:	89 d0                	mov    %edx,%eax
  35:	83 e0 05             	and    $0x5,%eax
  38:	83 f8 05             	cmp    $0x5,%eax
  3b:	74 1f                	je     5c <teardown+0x5c>
  3d:	43                   	inc    %ebx
  3e:	39 cb                	cmp    %ecx,%ebx
  40:	75 ee                	jne    30 <teardown+0x30>
  42:	85 f6                	test   %esi,%esi
  44:	7e 0d                	jle    53 <teardown+0x53>
  46:	83 ec 0c             	sub    $0xc,%esp
  49:	57                   	push   %edi
  4a:	ff 15 00 00 00 00    	call   *0x0
  50:	83 c4 10             	add    $0x10,%esp
  53:	8d 65 f4             	lea    -0xc(%ebp),%esp
  56:	5b                   	pop    %ebx
  57:	5e                   	pop    %esi
  58:	5f                   	pop    %edi
  59:	5d                   	pop    %ebp
  5a:	c3                   	ret    
  5b:	90                   	nop
  5c:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  5f:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  65:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  68:	e8 93 ff ff ff       	call   0 <teardown>
  6d:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  70:	eb cb                	jmp    3d <teardown+0x3d>
  72:	66 90                	xchg   %ax,%ax
  74:	c3                   	ret    
  75:	8d 76 00             	lea    0x0(%esi),%esi

00000078 <pgallocz.part.0>:
  78:	55                   	push   %ebp
  79:	89 e5                	mov    %esp,%ebp
  7b:	53                   	push   %ebx
  7c:	50                   	push   %eax
  7d:	bb 00 00 00 00       	mov    $0x0,%ebx
  82:	b8 41 00 00 00       	mov    $0x41,%eax
  87:	90                   	nop
  88:	83 ec 0c             	sub    $0xc,%esp
  8b:	50                   	push   %eax
  8c:	e8 fc ff ff ff       	call   8d <pgallocz.part.0+0x15>
  91:	43                   	inc    %ebx
  92:	0f be 03             	movsbl (%ebx),%eax
  95:	83 c4 10             	add    $0x10,%esp
  98:	84 c0                	test   %al,%al
  9a:	75 ec                	jne    88 <pgallocz.part.0+0x10>
  9c:	bb 0b 00 00 00       	mov    $0xb,%ebx
  a1:	b8 63 00 00 00       	mov    $0x63,%eax
  a6:	66 90                	xchg   %ax,%ax
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	50                   	push   %eax
  ac:	e8 fc ff ff ff       	call   ad <pgallocz.part.0+0x35>
  b1:	43                   	inc    %ebx
  b2:	0f be 03             	movsbl (%ebx),%eax
  b5:	83 c4 10             	add    $0x10,%esp
  b8:	84 c0                	test   %al,%al
  ba:	75 ec                	jne    a8 <pgallocz.part.0+0x30>
  bc:	bb 00 00 00 00       	mov    $0x0,%ebx
  c1:	b8 20 00 00 00       	mov    $0x20,%eax
  c6:	66 90                	xchg   %ax,%ax
  c8:	83 ec 0c             	sub    $0xc,%esp
  cb:	50                   	push   %eax
  cc:	e8 fc ff ff ff       	call   cd <pgallocz.part.0+0x55>
  d1:	43                   	inc    %ebx
  d2:	0f be 03             	movsbl (%ebx),%eax
  d5:	83 c4 10             	add    $0x10,%esp
  d8:	84 c0                	test   %al,%al
  da:	75 ec                	jne    c8 <pgallocz.part.0+0x50>
  dc:	83 ec 0c             	sub    $0xc,%esp
  df:	6a 01                	push   $0x1
  e1:	e8 fc ff ff ff       	call   e2 <pgallocz.part.0+0x6a>
  e6:	66 90                	xchg   %ax,%ax

000000e8 <ptwalk>:
  e8:	55                   	push   %ebp
  e9:	89 e5                	mov    %esp,%ebp
  eb:	57                   	push   %edi
  ec:	56                   	push   %esi
  ed:	53                   	push   %ebx
  ee:	83 ec 1c             	sub    $0x1c,%esp
  f1:	89 d6                	mov    %edx,%esi
  f3:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  f6:	8d 50 0c             	lea    0xc(%eax),%edx
  f9:	bb 00 00 00 00       	mov    $0x0,%ebx
  fe:	31 c0                	xor    %eax,%eax
 100:	8d 3c 82             	lea    (%edx,%eax,4),%edi
 103:	8b 17                	mov    (%edi),%edx
 105:	f6 c2 01             	test   $0x1,%dl
 108:	74 26                	je     130 <ptwalk+0x48>
 10a:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 110:	8b 43 1c             	mov    0x1c(%ebx),%eax
 113:	21 f0                	and    %esi,%eax
 115:	8b 4b 20             	mov    0x20(%ebx),%ecx
 118:	d3 e8                	shr    %cl,%eax
 11a:	83 c3 10             	add    $0x10,%ebx
 11d:	81 fb 20 00 00 00    	cmp    $0x20,%ebx
 123:	75 db                	jne    100 <ptwalk+0x18>
 125:	8d 04 82             	lea    (%edx,%eax,4),%eax
 128:	8d 65 f4             	lea    -0xc(%ebp),%esp
 12b:	5b                   	pop    %ebx
 12c:	5e                   	pop    %esi
 12d:	5f                   	pop    %edi
 12e:	5d                   	pop    %ebp
 12f:	c3                   	ret    
 130:	83 ec 0c             	sub    $0xc,%esp
 133:	68 00 10 00 00       	push   $0x1000
 138:	ff 15 04 00 00 00    	call   *0x4
 13e:	89 c2                	mov    %eax,%edx
 140:	83 c4 10             	add    $0x10,%esp
 143:	85 c0                	test   %eax,%eax
 145:	74 22                	je     169 <ptwalk+0x81>
 147:	8d 88 00 10 00 00    	lea    0x1000(%eax),%ecx
 14d:	8d 76 00             	lea    0x0(%esi),%esi
 150:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 156:	83 c0 04             	add    $0x4,%eax
 159:	39 c8                	cmp    %ecx,%eax
 15b:	75 f3                	jne    150 <ptwalk+0x68>
 15d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 160:	09 d0                	or     %edx,%eax
 162:	83 c8 01             	or     $0x1,%eax
 165:	89 07                	mov    %eax,(%edi)
 167:	eb a7                	jmp    110 <ptwalk+0x28>
 169:	e8 0a ff ff ff       	call   78 <pgallocz.part.0>
 16e:	66 90                	xchg   %ax,%ax

00000170 <vme_init>:
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	83 ec 2c             	sub    $0x2c,%esp
 179:	e8 fc ff ff ff       	call   17a <vme_init+0xa>
 17e:	85 c0                	test   %eax,%eax
 180:	0f 85 91 00 00 00    	jne    217 <vme_init+0xa7>
 186:	8b 45 08             	mov    0x8(%ebp),%eax
 189:	a3 04 00 00 00       	mov    %eax,0x4
 18e:	8b 45 0c             	mov    0xc(%ebp),%eax
 191:	a3 00 00 00 00       	mov    %eax,0x0
 196:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 19d:	bb 00 00 00 00       	mov    $0x0,%ebx
 1a2:	83 c3 0c             	add    $0xc,%ebx
 1a5:	b8 24 00 00 00       	mov    $0x24,%eax
 1aa:	39 d8                	cmp    %ebx,%eax
 1ac:	74 3e                	je     1ec <vme_init+0x7c>
 1ae:	8b 43 08             	mov    0x8(%ebx),%eax
 1b1:	85 c0                	test   %eax,%eax
 1b3:	74 ed                	je     1a2 <vme_init+0x32>
 1b5:	8b 33                	mov    (%ebx),%esi
 1b7:	8b 7b 04             	mov    0x4(%ebx),%edi
 1ba:	39 fe                	cmp    %edi,%esi
 1bc:	74 e4                	je     1a2 <vme_init+0x32>
 1be:	66 90                	xchg   %ax,%ax
 1c0:	b9 02 00 00 00       	mov    $0x2,%ecx
 1c5:	89 f2                	mov    %esi,%edx
 1c7:	8d 45 d8             	lea    -0x28(%ebp),%eax
 1ca:	e8 19 ff ff ff       	call   e8 <ptwalk>
 1cf:	89 f2                	mov    %esi,%edx
 1d1:	83 ca 03             	or     $0x3,%edx
 1d4:	89 10                	mov    %edx,(%eax)
 1d6:	81 c6 00 10 00 00    	add    $0x1000,%esi
 1dc:	39 fe                	cmp    %edi,%esi
 1de:	75 e0                	jne    1c0 <vme_init+0x50>
 1e0:	83 c3 0c             	add    $0xc,%ebx
 1e3:	b8 24 00 00 00       	mov    $0x24,%eax
 1e8:	39 d8                	cmp    %ebx,%eax
 1ea:	75 c2                	jne    1ae <vme_init+0x3e>
 1ec:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 1ef:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 1f4:	a3 08 00 00 00       	mov    %eax,0x8
 1f9:	0f 22 d8             	mov    %eax,%cr3
 1fc:	0f 20 c0             	mov    %cr0,%eax
 1ff:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 202:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 205:	0d 00 00 00 80       	or     $0x80000000,%eax
 20a:	0f 22 c0             	mov    %eax,%cr0
 20d:	b0 01                	mov    $0x1,%al
 20f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 212:	5b                   	pop    %ebx
 213:	5e                   	pop    %esi
 214:	5f                   	pop    %edi
 215:	5d                   	pop    %ebp
 216:	c3                   	ret    
 217:	bb 00 00 00 00       	mov    $0x0,%ebx
 21c:	b8 41 00 00 00       	mov    $0x41,%eax
 221:	83 ec 0c             	sub    $0xc,%esp
 224:	50                   	push   %eax
 225:	e8 fc ff ff ff       	call   226 <vme_init+0xb6>
 22a:	43                   	inc    %ebx
 22b:	0f be 03             	movsbl (%ebx),%eax
 22e:	83 c4 10             	add    $0x10,%esp
 231:	84 c0                	test   %al,%al
 233:	75 ec                	jne    221 <vme_init+0xb1>
 235:	bb 20 00 00 00       	mov    $0x20,%ebx
 23a:	b8 69 00 00 00       	mov    $0x69,%eax
 23f:	83 ec 0c             	sub    $0xc,%esp
 242:	50                   	push   %eax
 243:	e8 fc ff ff ff       	call   244 <vme_init+0xd4>
 248:	43                   	inc    %ebx
 249:	0f be 03             	movsbl (%ebx),%eax
 24c:	83 c4 10             	add    $0x10,%esp
 24f:	84 c0                	test   %al,%al
 251:	75 ec                	jne    23f <vme_init+0xcf>
 253:	bb 40 00 00 00       	mov    $0x40,%ebx
 258:	b8 20 00 00 00       	mov    $0x20,%eax
 25d:	83 ec 0c             	sub    $0xc,%esp
 260:	50                   	push   %eax
 261:	e8 fc ff ff ff       	call   262 <vme_init+0xf2>
 266:	43                   	inc    %ebx
 267:	0f be 03             	movsbl (%ebx),%eax
 26a:	83 c4 10             	add    $0x10,%esp
 26d:	84 c0                	test   %al,%al
 26f:	75 ec                	jne    25d <vme_init+0xed>
 271:	83 ec 0c             	sub    $0xc,%esp
 274:	6a 01                	push   $0x1
 276:	e8 fc ff ff ff       	call   277 <vme_init+0x107>
 27b:	90                   	nop

0000027c <protect>:
 27c:	55                   	push   %ebp
 27d:	89 e5                	mov    %esp,%ebp
 27f:	57                   	push   %edi
 280:	56                   	push   %esi
 281:	53                   	push   %ebx
 282:	83 ec 28             	sub    $0x28,%esp
 285:	68 00 10 00 00       	push   $0x1000
 28a:	ff 15 04 00 00 00    	call   *0x4
 290:	83 c4 10             	add    $0x10,%esp
 293:	85 c0                	test   %eax,%eax
 295:	0f 84 92 00 00 00    	je     32d <protect+0xb1>
 29b:	89 c1                	mov    %eax,%ecx
 29d:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
 2a3:	90                   	nop
 2a4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 2aa:	83 c0 04             	add    $0x4,%eax
 2ad:	39 d0                	cmp    %edx,%eax
 2af:	75 f3                	jne    2a4 <protect+0x28>
 2b1:	8b 3d 08 00 00 00    	mov    0x8,%edi
 2b7:	bb 00 00 00 00       	mov    $0x0,%ebx
 2bc:	83 c3 0c             	add    $0xc,%ebx
 2bf:	81 fb 24 00 00 00    	cmp    $0x24,%ebx
 2c5:	74 3b                	je     302 <protect+0x86>
 2c7:	8b 43 08             	mov    0x8(%ebx),%eax
 2ca:	85 c0                	test   %eax,%eax
 2cc:	74 ee                	je     2bc <protect+0x40>
 2ce:	8b 13                	mov    (%ebx),%edx
 2d0:	8b 73 04             	mov    0x4(%ebx),%esi
 2d3:	39 f2                	cmp    %esi,%edx
 2d5:	74 e5                	je     2bc <protect+0x40>
 2d7:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 2da:	66 90                	xchg   %ax,%ax
 2dc:	89 d0                	mov    %edx,%eax
 2de:	c1 e8 16             	shr    $0x16,%eax
 2e1:	c1 e0 02             	shl    $0x2,%eax
 2e4:	8b 1c 07             	mov    (%edi,%eax,1),%ebx
 2e7:	89 1c 01             	mov    %ebx,(%ecx,%eax,1)
 2ea:	81 c2 00 00 40 00    	add    $0x400000,%edx
 2f0:	39 f2                	cmp    %esi,%edx
 2f2:	75 e8                	jne    2dc <protect+0x60>
 2f4:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 2f7:	83 c3 0c             	add    $0xc,%ebx
 2fa:	81 fb 24 00 00 00    	cmp    $0x24,%ebx
 300:	75 c5                	jne    2c7 <protect+0x4b>
 302:	8b 45 08             	mov    0x8(%ebp),%eax
 305:	c7 00 00 10 00 00    	movl   $0x1000,(%eax)
 30b:	a1 00 00 00 00       	mov    0x0,%eax
 310:	8b 15 04 00 00 00    	mov    0x4,%edx
 316:	8b 75 08             	mov    0x8(%ebp),%esi
 319:	89 46 04             	mov    %eax,0x4(%esi)
 31c:	89 56 08             	mov    %edx,0x8(%esi)
 31f:	83 c9 05             	or     $0x5,%ecx
 322:	89 4e 0c             	mov    %ecx,0xc(%esi)
 325:	8d 65 f4             	lea    -0xc(%ebp),%esp
 328:	5b                   	pop    %ebx
 329:	5e                   	pop    %esi
 32a:	5f                   	pop    %edi
 32b:	5d                   	pop    %ebp
 32c:	c3                   	ret    
 32d:	e8 46 fd ff ff       	call   78 <pgallocz.part.0>
 332:	66 90                	xchg   %ax,%ax

00000334 <unprotect>:
 334:	55                   	push   %ebp
 335:	89 e5                	mov    %esp,%ebp
 337:	8b 45 08             	mov    0x8(%ebp),%eax
 33a:	8b 50 0c             	mov    0xc(%eax),%edx
 33d:	89 d0                	mov    %edx,%eax
 33f:	83 e0 05             	and    $0x5,%eax
 342:	83 f8 05             	cmp    $0x5,%eax
 345:	74 05                	je     34c <unprotect+0x18>
 347:	5d                   	pop    %ebp
 348:	c3                   	ret    
 349:	8d 76 00             	lea    0x0(%esi),%esi
 34c:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 352:	b8 01 00 00 00       	mov    $0x1,%eax
 357:	5d                   	pop    %ebp
 358:	e9 a3 fc ff ff       	jmp    0 <teardown>
 35d:	8d 76 00             	lea    0x0(%esi),%esi

00000360 <map>:
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
 365:	53                   	push   %ebx
 366:	83 ec 1c             	sub    $0x1c,%esp
 369:	8b 75 08             	mov    0x8(%ebp),%esi
 36c:	8b 55 0c             	mov    0xc(%ebp),%edx
 36f:	8b 7d 10             	mov    0x10(%ebp),%edi
 372:	8b 5d 14             	mov    0x14(%ebp),%ebx
 375:	81 fa ff ff ff 3f    	cmp    $0x3fffffff,%edx
 37b:	0f 86 cc 00 00 00    	jbe    44d <map+0xed>
 381:	81 fa ff ff ff 7f    	cmp    $0x7fffffff,%edx
 387:	0f 87 c0 00 00 00    	ja     44d <map+0xed>
 38d:	f7 c2 ff 0f 00 00    	test   $0xfff,%edx
 393:	75 54                	jne    3e9 <map+0x89>
 395:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
 39b:	75 4c                	jne    3e9 <map+0x89>
 39d:	b9 06 00 00 00       	mov    $0x6,%ecx
 3a2:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 3a5:	89 f0                	mov    %esi,%eax
 3a7:	e8 3c fd ff ff       	call   e8 <ptwalk>
 3ac:	85 db                	test   %ebx,%ebx
 3ae:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 3b1:	74 29                	je     3dc <map+0x7c>
 3b3:	f6 00 01             	testb  $0x1,(%eax)
 3b6:	0f 85 ed 00 00 00    	jne    4a9 <map+0x149>
 3bc:	83 e3 02             	and    $0x2,%ebx
 3bf:	09 fb                	or     %edi,%ebx
 3c1:	83 cb 05             	or     $0x5,%ebx
 3c4:	89 18                	mov    %ebx,(%eax)
 3c6:	b9 06 00 00 00       	mov    $0x6,%ecx
 3cb:	89 f0                	mov    %esi,%eax
 3cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3d0:	5b                   	pop    %ebx
 3d1:	5e                   	pop    %esi
 3d2:	5f                   	pop    %edi
 3d3:	5d                   	pop    %ebp
 3d4:	e9 0f fd ff ff       	jmp    e8 <ptwalk>
 3d9:	8d 76 00             	lea    0x0(%esi),%esi
 3dc:	f6 00 01             	testb  $0x1,(%eax)
 3df:	0f 84 23 01 00 00    	je     508 <map+0x1a8>
 3e5:	31 db                	xor    %ebx,%ebx
 3e7:	eb db                	jmp    3c4 <map+0x64>
 3e9:	bb 00 00 00 00       	mov    $0x0,%ebx
 3ee:	b8 41 00 00 00       	mov    $0x41,%eax
 3f3:	83 ec 0c             	sub    $0xc,%esp
 3f6:	50                   	push   %eax
 3f7:	e8 fc ff ff ff       	call   3f8 <map+0x98>
 3fc:	43                   	inc    %ebx
 3fd:	0f be 03             	movsbl (%ebx),%eax
 400:	83 c4 10             	add    $0x10,%esp
 403:	84 c0                	test   %al,%al
 405:	75 ec                	jne    3f3 <map+0x93>
 407:	bb 59 00 00 00       	mov    $0x59,%ebx
 40c:	b8 6e 00 00 00       	mov    $0x6e,%eax
 411:	83 ec 0c             	sub    $0xc,%esp
 414:	50                   	push   %eax
 415:	e8 fc ff ff ff       	call   416 <map+0xb6>
 41a:	43                   	inc    %ebx
 41b:	0f be 03             	movsbl (%ebx),%eax
 41e:	83 c4 10             	add    $0x10,%esp
 421:	84 c0                	test   %al,%al
 423:	75 ec                	jne    411 <map+0xb1>
 425:	bb c0 00 00 00       	mov    $0xc0,%ebx
 42a:	b8 20 00 00 00       	mov    $0x20,%eax
 42f:	83 ec 0c             	sub    $0xc,%esp
 432:	50                   	push   %eax
 433:	e8 fc ff ff ff       	call   434 <map+0xd4>
 438:	43                   	inc    %ebx
 439:	0f be 03             	movsbl (%ebx),%eax
 43c:	83 c4 10             	add    $0x10,%esp
 43f:	84 c0                	test   %al,%al
 441:	75 ec                	jne    42f <map+0xcf>
 443:	83 ec 0c             	sub    $0xc,%esp
 446:	6a 01                	push   $0x1
 448:	e8 fc ff ff ff       	call   449 <map+0xe9>
 44d:	bb 00 00 00 00       	mov    $0x0,%ebx
 452:	b8 41 00 00 00       	mov    $0x41,%eax
 457:	83 ec 0c             	sub    $0xc,%esp
 45a:	50                   	push   %eax
 45b:	e8 fc ff ff ff       	call   45c <map+0xfc>
 460:	43                   	inc    %ebx
 461:	0f be 03             	movsbl (%ebx),%eax
 464:	83 c4 10             	add    $0x10,%esp
 467:	84 c0                	test   %al,%al
 469:	75 ec                	jne    457 <map+0xf7>
 46b:	bb 3e 00 00 00       	mov    $0x3e,%ebx
 470:	b8 6d 00 00 00       	mov    $0x6d,%eax
 475:	83 ec 0c             	sub    $0xc,%esp
 478:	50                   	push   %eax
 479:	e8 fc ff ff ff       	call   47a <map+0x11a>
 47e:	43                   	inc    %ebx
 47f:	0f be 03             	movsbl (%ebx),%eax
 482:	83 c4 10             	add    $0x10,%esp
 485:	84 c0                	test   %al,%al
 487:	75 ec                	jne    475 <map+0x115>
 489:	bb 80 00 00 00       	mov    $0x80,%ebx
 48e:	b8 20 00 00 00       	mov    $0x20,%eax
 493:	83 ec 0c             	sub    $0xc,%esp
 496:	50                   	push   %eax
 497:	e8 fc ff ff ff       	call   498 <map+0x138>
 49c:	43                   	inc    %ebx
 49d:	0f be 03             	movsbl (%ebx),%eax
 4a0:	83 c4 10             	add    $0x10,%esp
 4a3:	84 c0                	test   %al,%al
 4a5:	75 ec                	jne    493 <map+0x133>
 4a7:	eb 9a                	jmp    443 <map+0xe3>
 4a9:	bb 00 00 00 00       	mov    $0x0,%ebx
 4ae:	b8 41 00 00 00       	mov    $0x41,%eax
 4b3:	83 ec 0c             	sub    $0xc,%esp
 4b6:	50                   	push   %eax
 4b7:	e8 fc ff ff ff       	call   4b8 <map+0x158>
 4bc:	43                   	inc    %ebx
 4bd:	0f be 03             	movsbl (%ebx),%eax
 4c0:	83 c4 10             	add    $0x10,%esp
 4c3:	84 c0                	test   %al,%al
 4c5:	75 ec                	jne    4b3 <map+0x153>
 4c7:	bb 8f 00 00 00       	mov    $0x8f,%ebx
 4cc:	b8 72 00 00 00       	mov    $0x72,%eax
 4d1:	83 ec 0c             	sub    $0xc,%esp
 4d4:	50                   	push   %eax
 4d5:	e8 fc ff ff ff       	call   4d6 <map+0x176>
 4da:	43                   	inc    %ebx
 4db:	0f be 03             	movsbl (%ebx),%eax
 4de:	83 c4 10             	add    $0x10,%esp
 4e1:	84 c0                	test   %al,%al
 4e3:	75 ec                	jne    4d1 <map+0x171>
 4e5:	bb 40 01 00 00       	mov    $0x140,%ebx
 4ea:	b8 20 00 00 00       	mov    $0x20,%eax
 4ef:	83 ec 0c             	sub    $0xc,%esp
 4f2:	50                   	push   %eax
 4f3:	e8 fc ff ff ff       	call   4f4 <map+0x194>
 4f8:	43                   	inc    %ebx
 4f9:	0f be 03             	movsbl (%ebx),%eax
 4fc:	83 c4 10             	add    $0x10,%esp
 4ff:	84 c0                	test   %al,%al
 501:	75 ec                	jne    4ef <map+0x18f>
 503:	e9 3b ff ff ff       	jmp    443 <map+0xe3>
 508:	bb 00 00 00 00       	mov    $0x0,%ebx
 50d:	b8 41 00 00 00       	mov    $0x41,%eax
 512:	83 ec 0c             	sub    $0xc,%esp
 515:	50                   	push   %eax
 516:	e8 fc ff ff ff       	call   517 <map+0x1b7>
 51b:	43                   	inc    %ebx
 51c:	0f be 03             	movsbl (%ebx),%eax
 51f:	83 c4 10             	add    $0x10,%esp
 522:	84 c0                	test   %al,%al
 524:	75 ec                	jne    512 <map+0x1b2>
 526:	bb 73 00 00 00       	mov    $0x73,%ebx
 52b:	b8 75 00 00 00       	mov    $0x75,%eax
 530:	83 ec 0c             	sub    $0xc,%esp
 533:	50                   	push   %eax
 534:	e8 fc ff ff ff       	call   535 <map+0x1d5>
 539:	43                   	inc    %ebx
 53a:	0f be 03             	movsbl (%ebx),%eax
 53d:	83 c4 10             	add    $0x10,%esp
 540:	84 c0                	test   %al,%al
 542:	75 ec                	jne    530 <map+0x1d0>
 544:	bb 00 01 00 00       	mov    $0x100,%ebx
 549:	b8 20 00 00 00       	mov    $0x20,%eax
 54e:	83 ec 0c             	sub    $0xc,%esp
 551:	50                   	push   %eax
 552:	e8 fc ff ff ff       	call   553 <map+0x1f3>
 557:	43                   	inc    %ebx
 558:	0f be 03             	movsbl (%ebx),%eax
 55b:	83 c4 10             	add    $0x10,%esp
 55e:	84 c0                	test   %al,%al
 560:	75 ec                	jne    54e <map+0x1ee>
 562:	e9 dc fe ff ff       	jmp    443 <map+0xe3>
 567:	90                   	nop

00000568 <ucontext>:
 568:	55                   	push   %ebp
 569:	89 e5                	mov    %esp,%ebp
 56b:	57                   	push   %edi
 56c:	8b 55 10             	mov    0x10(%ebp),%edx
 56f:	8d 7a c4             	lea    -0x3c(%edx),%edi
 572:	b9 0f 00 00 00       	mov    $0xf,%ecx
 577:	31 c0                	xor    %eax,%eax
 579:	f3 ab                	rep stos %eax,%es:(%edi)
 57b:	c7 42 f0 1b 00 00 00 	movl   $0x1b,-0x10(%edx)
 582:	c7 42 c8 23 00 00 00 	movl   $0x23,-0x38(%edx)
 589:	c7 42 fc 23 00 00 00 	movl   $0x23,-0x4(%edx)
 590:	8b 45 14             	mov    0x14(%ebp),%eax
 593:	89 42 ec             	mov    %eax,-0x14(%edx)
 596:	c7 42 f4 00 02 00 00 	movl   $0x200,-0xc(%edx)
 59d:	c7 42 f8 00 00 00 80 	movl   $0x80000000,-0x8(%edx)
 5a4:	89 52 dc             	mov    %edx,-0x24(%edx)
 5a7:	8b 45 08             	mov    0x8(%ebp),%eax
 5aa:	8b 40 0c             	mov    0xc(%eax),%eax
 5ad:	89 42 c4             	mov    %eax,-0x3c(%edx)
 5b0:	8d 42 c4             	lea    -0x3c(%edx),%eax
 5b3:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5b6:	c9                   	leave  
 5b7:	c3                   	ret    

mpe.o:     file format elf32-i386


Disassembly of section .text:

00000000 <call_user_entry>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	50                   	push   %eax
   5:	a1 e4 04 01 00       	mov    0x104e4,%eax
   a:	ff d0                	call   *%eax
   c:	bb 00 00 00 00       	mov    $0x0,%ebx
  11:	b8 41 00 00 00       	mov    $0x41,%eax
  16:	66 90                	xchg   %ax,%ax
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	50                   	push   %eax
  1c:	e8 fc ff ff ff       	call   1d <call_user_entry+0x1d>
  21:	43                   	inc    %ebx
  22:	0f be 03             	movsbl (%ebx),%eax
  25:	83 c4 10             	add    $0x10,%esp
  28:	84 c0                	test   %al,%al
  2a:	75 ec                	jne    18 <call_user_entry+0x18>
  2c:	bb 0b 00 00 00       	mov    $0xb,%ebx
  31:	b8 4d 00 00 00       	mov    $0x4d,%eax
  36:	66 90                	xchg   %ax,%ax
  38:	83 ec 0c             	sub    $0xc,%esp
  3b:	50                   	push   %eax
  3c:	e8 fc ff ff ff       	call   3d <call_user_entry+0x3d>
  41:	43                   	inc    %ebx
  42:	0f be 03             	movsbl (%ebx),%eax
  45:	83 c4 10             	add    $0x10,%esp
  48:	84 c0                	test   %al,%al
  4a:	75 ec                	jne    38 <call_user_entry+0x38>
  4c:	bb 00 00 00 00       	mov    $0x0,%ebx
  51:	b8 20 00 00 00       	mov    $0x20,%eax
  56:	66 90                	xchg   %ax,%ax
  58:	83 ec 0c             	sub    $0xc,%esp
  5b:	50                   	push   %eax
  5c:	e8 fc ff ff ff       	call   5d <call_user_entry+0x5d>
  61:	43                   	inc    %ebx
  62:	0f be 03             	movsbl (%ebx),%eax
  65:	83 c4 10             	add    $0x10,%esp
  68:	84 c0                	test   %al,%al
  6a:	75 ec                	jne    58 <call_user_entry+0x58>
  6c:	83 ec 0c             	sub    $0xc,%esp
  6f:	6a 01                	push   $0x1
  71:	e8 fc ff ff ff       	call   72 <call_user_entry+0x72>
  76:	66 90                	xchg   %ax,%ax

00000078 <othercpu_entry>:
  78:	55                   	push   %ebp
  79:	89 e5                	mov    %esp,%ebp
  7b:	83 ec 08             	sub    $0x8,%esp
  7e:	e8 fc ff ff ff       	call   7f <othercpu_entry+0x7>
  83:	b8 01 00 00 00       	mov    $0x1,%eax
  88:	f0 87 05 e0 04 01 00 	lock xchg %eax,0x104e0
  8f:	e8 6c ff ff ff       	call   0 <call_user_entry>

00000094 <mpe_init>:
  94:	55                   	push   %ebp
  95:	89 e5                	mov    %esp,%ebp
  97:	56                   	push   %esi
  98:	53                   	push   %ebx
  99:	8b 45 08             	mov    0x8(%ebp),%eax
  9c:	a3 e4 04 01 00       	mov    %eax,0x104e4
  a1:	c7 05 00 70 00 00 e9 	movl   $0xbfde9,0x7000
  a8:	fd 0b 00 
  ab:	83 3d 00 00 00 00 01 	cmpl   $0x1,0x0
  b2:	7e 47                	jle    fb <mpe_init+0x67>
  b4:	be 01 00 00 00       	mov    $0x1,%esi
  b9:	31 db                	xor    %ebx,%ebx
  bb:	90                   	nop
  bc:	c7 05 04 70 00 00 01 	movl   $0x1,0x7004
  c3:	00 00 00 
  c6:	83 ec 08             	sub    $0x8,%esp
  c9:	68 00 70 00 00       	push   $0x7000
  ce:	56                   	push   %esi
  cf:	e8 fc ff ff ff       	call   d0 <mpe_init+0x3c>
  d4:	89 d8                	mov    %ebx,%eax
  d6:	f0 87 05 e0 04 01 00 	lock xchg %eax,0x104e0
  dd:	83 c4 10             	add    $0x10,%esp
  e0:	48                   	dec    %eax
  e1:	74 0f                	je     f2 <mpe_init+0x5e>
  e3:	90                   	nop
  e4:	f3 90                	pause  
  e6:	89 d8                	mov    %ebx,%eax
  e8:	f0 87 05 e0 04 01 00 	lock xchg %eax,0x104e0
  ef:	48                   	dec    %eax
  f0:	75 f2                	jne    e4 <mpe_init+0x50>
  f2:	46                   	inc    %esi
  f3:	39 35 00 00 00 00    	cmp    %esi,0x0
  f9:	7f c1                	jg     bc <mpe_init+0x28>
  fb:	e8 00 ff ff ff       	call   0 <call_user_entry>

00000100 <__am_othercpu_entry>:
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	53                   	push   %ebx
 104:	a1 00 00 00 00       	mov    0x0,%eax
 109:	8b 50 20             	mov    0x20(%eax),%edx
 10c:	c1 ea 18             	shr    $0x18,%edx
 10f:	89 d0                	mov    %edx,%eax
 111:	c1 e0 06             	shl    $0x6,%eax
 114:	01 d0                	add    %edx,%eax
 116:	8d 04 c2             	lea    (%edx,%eax,8),%eax
 119:	01 c0                	add    %eax,%eax
 11b:	01 d0                	add    %edx,%eax
 11d:	01 c0                	add    %eax,%eax
 11f:	01 d0                	add    %edx,%eax
 121:	8d 1c 85 94 20 00 00 	lea    0x2094(,%eax,4),%ebx
 128:	ba 78 00 00 00       	mov    $0x78,%edx
 12d:	31 c0                	xor    %eax,%eax
 12f:	89 dc                	mov    %ebx,%esp
 131:	89 43 04             	mov    %eax,0x4(%ebx)
 134:	ff e2                	jmp    *%edx
 136:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 139:	c9                   	leave  
 13a:	c3                   	ret    
 13b:	90                   	nop

0000013c <cpu_count>:
 13c:	a1 00 00 00 00       	mov    0x0,%eax
 141:	c3                   	ret    
 142:	66 90                	xchg   %ax,%ax

00000144 <cpu_current>:
 144:	a1 00 00 00 00       	mov    0x0,%eax
 149:	8b 40 20             	mov    0x20(%eax),%eax
 14c:	c1 e8 18             	shr    $0x18,%eax
 14f:	c3                   	ret    

00000150 <atomic_xchg>:
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	8b 55 08             	mov    0x8(%ebp),%edx
 156:	8b 45 0c             	mov    0xc(%ebp),%eax
 159:	f0 87 02             	lock xchg %eax,(%edx)
 15c:	5d                   	pop    %ebp
 15d:	c3                   	ret    
 15e:	66 90                	xchg   %ax,%ax

00000160 <__am_stop_the_world>:
 160:	c7 05 00 70 00 00 eb 	movl   $0xfeeb,0x7000
 167:	fe 00 00 
 16a:	8b 15 00 00 00 00    	mov    0x0,%edx
 170:	85 d2                	test   %edx,%edx
 172:	7e 38                	jle    1ac <__am_stop_the_world+0x4c>
 174:	55                   	push   %ebp
 175:	89 e5                	mov    %esp,%ebp
 177:	53                   	push   %ebx
 178:	50                   	push   %eax
 179:	31 db                	xor    %ebx,%ebx
 17b:	90                   	nop
 17c:	a1 00 00 00 00       	mov    0x0,%eax
 181:	8b 40 20             	mov    0x20(%eax),%eax
 184:	c1 e8 18             	shr    $0x18,%eax
 187:	39 d8                	cmp    %ebx,%eax
 189:	74 11                	je     19c <__am_stop_the_world+0x3c>
 18b:	83 ec 08             	sub    $0x8,%esp
 18e:	68 00 70 00 00       	push   $0x7000
 193:	53                   	push   %ebx
 194:	e8 fc ff ff ff       	call   195 <__am_stop_the_world+0x35>
 199:	83 c4 10             	add    $0x10,%esp
 19c:	43                   	inc    %ebx
 19d:	39 1d 00 00 00 00    	cmp    %ebx,0x0
 1a3:	7f d7                	jg     17c <__am_stop_the_world+0x1c>
 1a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1a8:	c9                   	leave  
 1a9:	c3                   	ret    
 1aa:	66 90                	xchg   %ax,%ax
 1ac:	c3                   	ret    
