// genesis
/*
***************************************************************************
**                            SIMULATION SCHEDULE                        **
***************************************************************************
*/

deletetasks

//=========================================================================
// 		function	arguments
//=========================================================================
addtask	Simulate /##[CLASS=buffer]	-action INIT
addtask	Simulate /##[CLASS=segment]	-action INIT

// note this must come before any other PROCESS action
addtask Simulate /##[CLASS=postmaster]	-action PROCESS

addtask	Simulate /##[CLASS=buffer]	-action PROCESS
addtask	Simulate /##[CLASS=projection]	-action PROCESS

//addtask Simulate /##[CLASS=gate] -action PROCESS

//addtask	Simulate /##[CLASS=segment][CLASS!=membrane][CLASS!=gate][CLASS!=concentration] -action PROCESS
addtask	Simulate /##[CLASS=segment] -action PROCESS

//addtask	Simulate /##[CLASS=membrane]	-action PROCESS
//addtask	Simulate /##[CLASS=hsolver]	-action PROCESS
//addtask	Simulate /##[CLASS=concentration]	-action PROCESS

//addtask	Simulate /##[CLASS=device]	-action PROCESS
//addtask	Simulate /##[CLASS=output]	-action PROCESS

resched
