/*
 * fibTest.S
 * RECURSE
 *  Created on: Jun 13, 2017
 *      Author: Albader
 */

//int fun_asm(int base, int pow){
//	if(pow == 0)
//		return 1;
//	if(pow < 0)
//		return -1;	// not implemented
//	if(pow == 1)
//		return base;
//	return base*(fun_asm(base), pow-1);
//}
/*
.syntax unified
.cpu cortex-m0
.align 2
.global asm_sum
.thumb
.thumb_func

fun_asm:
base_case_one:
	cmp r1, 0
	bgt base_case_two
	mov r0, 1			//set R0 to 1
	mov pc, lr			//return
base_case_two:
	cmp r1, 0
	blt base_case_three
	mov r0, -1
	mov pc, lr
base_case_three:
	cmp r1, 1
	bgt recurse
	mov pc, lr
resurse:
	push{r0}			// manage stack manually push{lr, r0}
	sub r1, 1
	b fun_asm
	pop{r3}
	mul r0, r0, r3
	mov pc, lr		// manage stack manually pop{pc}

*/
