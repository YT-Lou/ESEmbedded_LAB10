.syntax unified

.global	read_sp
read_sp:
	//??????
	mov r0, SP;
	bx  lr;

.global	read_msp
read_msp:
	//??????
        mrs r0, MSP;
	bx  lr;

.global	read_psp
read_psp:
	//??????
        mrs r0, PSP;
	bx  lr;


.global	read_ctrl
read_ctrl:
	//??????
        mrs r0,CONTROL;
	bx  lr;

.global	start_user
start_user:
	//??????
        movs lr,r0;
	msr PSP, r1;

	mov r3, #0b011;
	msr CONTROL, r3;
	isb
	bx  lr;

.global	sw_priv
sw_priv:
	//??????
	mov r0, #0b000;
	msr CONTROL, r0;
	bx  lr;
