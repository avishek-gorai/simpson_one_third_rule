Integrator.o: Integrator.f90
	gfortran -g --std=f95 -c Integrator.f90

Function.o: Function.f90
	gfortran -g -std=f95 -c Function.f90

Integrator.exe: Function.o Integrator.o
	gfortran -o Integrator.exe Function.o Integrator.o
