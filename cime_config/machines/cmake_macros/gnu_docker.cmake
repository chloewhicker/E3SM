set(AR "/opt/conda/bin/x86_64-conda-linux-gnu-ar")
set(CFLAGS "-mcmodel=medium")
if (compile_threaded)
  string(APPEND CFLAGS " -fopenmp")
endif()
if (DEBUG)
  string(APPEND CFLAGS " -g -Wall -fbacktrace -fcheck=bounds -ffpe-trap=invalid,zero,overflow")
endif()
if (NOT DEBUG)
  string(APPEND CFLAGS " -O")
endif()
if (COMP_NAME STREQUAL csm_share)
  string(APPEND CFLAGS " -std=c99")
endif()
set(CXXFLAGS "-std=c++14")
if (compile_threaded)
  string(APPEND CXXFLAGS " -fopenmp")
endif()
if (DEBUG)
  string(APPEND CXXFLAGS " -g -Wall -fbacktrace")
endif()
if (NOT DEBUG)
  string(APPEND CXXFLAGS " -O")
endif()
if (COMP_NAME STREQUAL cism)
  string(APPEND CMAKE_OPTS " -D CISM_GNU=ON")
endif()
string(APPEND CMAKE_OPTS " -D CMAKE_AR=/opt/conda/bin/x86_64-conda-linux-gnu-ar")
string(APPEND CMAKE_OPTS " -DCMAKE_Fortran_COMPILER_RANLIB=/opt/conda/bin/x86_64-conda-linux-gnu-ranlib")
string(APPEND CMAKE_OPTS " -DCMAKE_C_COMPILER_RANLIB=/opt/conda/bin/x86_64-conda-linux-gnu-ranlib")
string(APPEND CMAKE_OPTS " -DCMAKE_CXX_COMPILER_RANLIB=/opt/conda/bin/x86_64-conda-linux-gnu-ranlib")
string(APPEND CPPDEFS " -DFORTRANUNDERSCORE -DNO_R16 -DCPRGNU")
if (DEBUG)
  string(APPEND CPPDEFS " -DYAKL_DEBUG")
endif()
set(SLIBS "-L/opt/conda/lib -lnetcdf -lnetcdff")
set(CXX_LIBS "-lstdc++")
set(CXX_LINKER "FORTRAN")
set(FC_AUTO_R8 "-fdefault-real-8")
set(FFLAGS "-I/opt/conda/include -mcmodel=medium -fconvert=big-endian -ffree-line-length-none -ffixed-line-length-none")
if (compile_threaded)
  string(APPEND FFLAGS " -fopenmp")
endif()
if (DEBUG)
  string(APPEND FFLAGS " -g -Wall -fbacktrace -fcheck=bounds -ffpe-trap=zero,overflow")
endif()
if (NOT DEBUG)
  string(APPEND FFLAGS " -O")
endif()
set(FFLAGS_NOOPT "-O0")
set(FIXEDFLAGS "-ffixed-form")
set(FREEFLAGS "-ffree-form")
set(HAS_F2008_CONTIGUOUS "FALSE")
if (compile_threaded)
  string(APPEND LDFLAGS " -fopenmp")
endif()
set(SLIBS " -L/opt/conda/lib -lnetcdff -lnetcdf")
set(MPI_PATH "/opt/conda")
set(MPICC "/opt/conda/bin/mpicc")
set(MPICXX "/opt/conda/bin/mpicxx")
set(MPIFC "/opt/conda/bin/mpif90")
set(NETCDF_C_PATH "/opt/conda")
set(NETCDF_FORTRAN_PATH "/opt/conda")
set(PNETCDF_PATH "/opt/conda")
set(SCC "/opt/conda/bin/x86_64-conda-linux-gnu-gcc")
set(SCXX "/opt/conda/bin/x86_64-conda-linux-gnu-g++")
set(SFC "/opt/conda/bin/x86_64-conda-linux-gnu-gfortran")
set(SUPPORTS_CXX "TRUE")