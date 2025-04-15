.section .boot, "ax"

    bl kmain
	bx lr

.pool
