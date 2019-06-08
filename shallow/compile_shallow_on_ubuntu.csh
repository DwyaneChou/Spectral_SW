#!/bin/csh -f
unalias *
set echo
#--------------------------------------------------------------------------------------------------------
set platform  = ubuntu                        # A unique identifier for your platform
set shallow   = /mnt/e/Study/Models/Spectral/spectral_modified/shallow
set NETCDF    = /home/choull/app/netcdf-4.1.3
set template  = $shallow/../bin/mkmf.template.$platform     # path to template for your platform
set mkmf      = $shallow/../bin/mkmf                        # path to executable mkmf
set sourcedir = $shallow/../src                             # path to directory containing model source code
set pathnames = $shallow/path_names                         # path to file containing list of source paths
set ppdir     = $shallow/../postprocessing                  # path to directory containing the tool for combining distributed diagnostic output files
#--------------------------------------------------------------------------------------------------------
set execdir    = $shallow/exec.$platform  # where code is compiled and executable is created
set executable = $execdir/shallow.x

#--------------------------------------------------------------------------------------------------------
# compile combine tool
cd $ppdir
gcc -O3 -c -I$NETCDF/include mppnccombine.c
if ( $status != 0 ) exit 1
gcc -O3 -o mppnccombine.x  mppnccombine.o -L$NETCDF/lib -lnetcdf_c++ -lnetcdf
if ( $status != 0 ) exit 1
#--------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------
# setup directory structure
if ( ! -d $execdir ) mkdir -p $execdir
cd $execdir
#--------------------------------------------------------------------------------------------------------

# execute mkmf to create makefile
set cppDefs = "-Duse_libMPI -Duse_netCDF -Duse_LARGEFILE -DINTERNAL_FILE_NML -DOVERLOAD_C8"
$mkmf -a $sourcedir -t $template -p $executable:t -c "$cppDefs" $pathnames $sourcedir/shared/include $sourcedir/shared/mpp/include
if ( $status != 0 ) then
   unset echo
   echo "ERROR: mkmf failed for shallow" 
   exit 1
endif

# --- execute make ---
make $executable:t
if ( $status != 0 ) then
   unset echo
   echo "ERROR: make failed for shallow" 
   exit 1
endif

unset echo
echo "NOTE: make successful for shallow"
