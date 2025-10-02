// file: lab04p2b_main.s
// author: Aidan Murphy

.global main
main:

.section  .text


    push {r4,r5,r6,r7,lr}
	
	// use r4 to establish addressability to DS
	ldr r4, =DS
	ldr  r5, [r4, #(W - DS)]
	ldrb r6, [r4, #(B - DS)]
	// Load data referenced by B and W into registers r5 and r6 respectively
	

    all_done: nop

    pop {r4,r5,r6,r7,lr}
  
      bx lr


 .section .data
.org 300
.align 2, 0xaa

  .word 0xbbbbbbbb
  
   B:	.byte	85
      .align 2, 0xaa
   DS: .word ~0
	
	.align 2, 0xaa
  W: .word 287454020

	.word 0xeeeeeeee

  .end