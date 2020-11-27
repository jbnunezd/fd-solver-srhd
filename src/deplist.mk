equation.o: equation.f90 \
	finitedifference_vars.o \
	quarticroots.o  

finitedifference_vars.o: finitedifference_vars.f90 

finitedifference.o: finitedifference.f90 \
	equation.o \
	finitedifference_vars.o \
	reconstruction.o \
	shocksindicator.o 

mesh.o: mesh.f90 \
	finitedifference_vars.o 

output.o: output.f90 \
	finitedifference_vars.o 

parameters.o: parameters.f90 \
	finitedifference_vars.o 

quarticroots.o: quarticroots.f90 

reconstruction.o: reconstruction.f90 \
	finitedifference_vars.o 

shocksindicator.o: shocksindicator.f90 \
	finitedifference_vars.o 

timediscretization.o: timediscretization.f90 \
	equation.o \
	finitedifference.o \
	finitedifference_vars.o \
	output.o 

main.o: main.f90 \
	finitedifference.o \
	mesh.o \
	parameters.o \
	timediscretization.o 

