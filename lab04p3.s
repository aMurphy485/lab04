// file: lab04p3.s
// desc: lab04 p3
// author: Aidan Murphy

.global main
main:

.section  .text


    push {r4,r5,r6,r7,lr}
	
	// C = A + B
	ldr r4, =DS
	ldrb r5, [r4, #(A-DS)] // MODIFY THIS SO IT DOESN"T HAVE LITERAL OFFSET
	ldrh r6, [r4, #(B-DS)] // MODIFY THIS SO IT DOESN"T HAVE LITERAL OFFSET
	
	add r7, r5, r6   
		
	str r7, [r4, #(C - DS)]	
		
    all_done: nop

    pop {r4,r5,r6,r7,lr}
  
      bx lr


	.section .data
	.org 234
	.align 2, 0xa5

DS: .word 0xbbbbbbbb
  
A:	.byte	123
   
      .align 1, 0xa5
B: .short 47587
	
	.align 2, 0xa5
C: .word ~0
  
  	.align 3, 0xa5
	.word 0xeeeeeeee

  .end