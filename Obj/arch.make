# 
# This file is part of the SIESTA package.
#
# Copyright (c) Fundacion General Universidad Autonoma de Madrid:
# E.Artacho, J.Gale, A.Garcia, J.Junquera, P.Ordejon, D.Sanchez-Portal
# and J.M.Soler, 1996- .
# 
# Use of this software constitutes agreement with the full conditions
# given in the SIESTA license, as signed by all legitimate users.
#
.SUFFIXES:
.SUFFIXES: .f .F .o .a .f90 .F90

SIESTA_ARCH=x86_64-unknownd

FPP=
FPP_OUTPUT= 
FC=mpiifort  #mpif90 #/home/qichen/epw/openmpi-1.6.5/exec/bin/mpif90
#FC=/home/qichen/intel/impi/2018.0.128/intel64/bin/mpif90 #mpif90
RANLIB=echo
FC_SERIAL =ifort
PP = icpc -E -P -C
SYS=nag

SP_KIND=4
DP_KIND=8
KINDS=$(SP_KIND) $(DP_KIND)

#FFLAGS=-g -O2
FFLAGS=-g -O2
#FFLAGS =-g -O2  # -xSSE4.2 -ip -mp1 -fpp -heap-arrays 1024 \
        # -warn unused,truncated_source,uncalled,declarations,usage
#FPPFLAGS= -DMPI -DFC_HAVE_FLUSH -DFC_HAVE_ABORT
LDFLAGS=
AR = xiar
ARFLAGS_EXTRA=
LDFLAGS = -shared-intel
FCFLAGS_fixed_f=
FCFLAGS_free_f90=
FPPFLAGS_fixed_F=
FPPFLAGS_free_F90=

#BLAS_LIBS = -L/cm/shared/apps/blas/oplib64 -lblas
#BLAS_LIBS=/home/scalapack_installer_0.96/lib/librefblas.a
#LAPACK_LIBS=
#BLACS_LIBS=/cm/shared/apps/blacs/openmpi/open64/current/lib64/libblacs.a  /cm/shared/apps/blacs/openmpi/open64/current/lib64/libblacsCinit.a  /cm/shared/apps/blacs/openmpi/open64/current/lib64/libblacsF77init.a
#-L/-lblacsF77init-openmpi -lblacsCinit-openmpi -lblacs-openmpi #/cm/shared/apps/blacs/openmpi/open64/current/lib64
#SCALAPACK_LIBS=/home/qichen/epw/ompisca/scalapack-2.0.2/libscalapack.a #-lscalapack-openmpi

#COMP_LIBS += libsiestaLAPACK.a
#COMP_LIBS += libncdf.a
#COMP_LIBS+= libsiestaBLAS.a 
#COMP_LIBS += libvardict.a

#NETCDF_LIBS=/home/qichen/epw/netcdf-fortran-4.4.2/exec/lib
#NETCDF_INCFLAGS=/home/qichen/epw/netcdf-fortran-4.4.2/exec/include
#NETCDF_LIBS=-lnetcdff -lnetcdf
#NETCDF_INCFLAGS = 
MKL=/home/qichen/intel/compilers_and_libraries/linux/mkl  #/home/qichen/intel/parallel_studio_xe_2018/compilers_and_libraries_2018/linux/mkl
#MKL =  /cm/shared/apps/intel-compiler/1.0.080/mkl
INTEL_LIBS       = /home/qichen/intel/compilers_and_libraries/linux/mkl/lib/intel64/libmkl_intel_lp64.a \
                   /home/qichen/intel/compilers_and_libraries/linux/mkl/lib/intel64/libmkl_sequential.a \
                   /home/qichen/intel/compilers_and_libraries/linux/mkl/lib/intel64/libmkl_core.a \
                   /home/qichen/intel/compilers_and_libraries/linux/mkl/lib/intel64/libmkl_blacs_intelmpi_lp64.a \
                   /home/qichen/intel/compilers_and_libraries/linux/mkl/lib/intel64/libmkl_scalapack_lp64.a
MKL_LIBS         = -Wl,--start-group $(INTEL_LIBS) \
                   -Wl,--end-group -lpthread -lm 
#MKL_INCLUDE      = -I$(MKL)/include # -I$(MKL)/include/intel64/lp64


#MPIL=/cm/shared/apps/openmpi/intel   #/cm/shared/apps/intel-compiler/1.0.080/mpirt
MPI_LIBS =-L/home/qichen/intel/compilers_and_libraries/linux/mpi/lib64 -lmpi
#MPI_INTERFACE=/home/qichen/intel/compilers_and_libraries/linux/mpi/intel64/lib/libmpifort.a  # libmpi.a #libmpi_f90.a
#MPI_INCLUDE=
MPI_INTERFACE=libmpi_f90.a
#MPI_INTERFACE=/home/qichen/intel/impi/2018.0.128/intel64/lib/libmpi.a
MPI_INCLUDE=-I/home/qichen/intel/compilers_and_libraries/linux/mpi/include64
#MPI_INCLUDE=/cm/shared/apps/openmpi/open64/64/1.6.5/include
#MPI_INCLUDE=/cm/shared/apps/openmpi/intel/include
#MPI_INTERFACE=/cm/shared/apps/openmpi/intel/include
LIBS= $(MKL_LIBS) $(MPI_LIBS) #$(SCALAPACK_LIBS) $(BLACS_LIBS) $(LAPACK_LIBS) $(BLAS_LIBS) $(NETCDF_LIBS)
#INCFLAGS =  $(MKL_INCLUDE) #$(NETCDF_INCFLAGS)
INCFLAGS =  $(MPI_INCLUDE) $(MKL_INCLUDE)
#SIESTA needs an F90 interface to MPI
#This will give you SIESTA's own implementation
#If your compiler vendor offers an alternative, you may change
#to it here.
#MPI_INTERFACE=libmpi_f90.a
#FPPFLAGS_CDF = -DCDF -DNCDF -DNCDF_4-DFC_HAVE_FLUSH -DFC_HAVE_ABORT -DGRID_DP -DPHI_GRID_SP
 
FPPFLAGS_MPI = -DMPI 
FPPFLAGS =  $(FPPFLAGS_MPI)
LIBS += $(MKL_LIBS) $(MPI_LIBS) 
DUMMY_FOX = --enable-dummy
#Dependency rules are created by autoconf according to whether
#discrete preprocessing is necessary or not.
.F.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS) $(FPPFLAGS) $(FPPFLAGS_fixed_F)  $< 
.F90.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS) $(FPPFLAGS) $(FPPFLAGS_free_F90) $< 
.f.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS) $(FCFLAGS_fixed_f)  $<
.f90.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS) $(FCFLAGS_free_f90)  $<


