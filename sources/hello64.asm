.global _start
.section .text

_start:
	#write syscall
	mov x8, #64
	mov x0, #1
	ldr x1, =message
	mov x2, #13
	svc 0

	#exit syscall
	mov x8, #0x5d
	mov x0, #4
	svc 0

.section .data
	message:
	.ascii "Hello World!\n"
