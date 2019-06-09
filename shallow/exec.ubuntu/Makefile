# Makefile created by mkmf $Id: mkmf,v 16.1 2010/05/19 18:49:19 fms Exp $ 

SRCROOT = /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/

CPPDEFS = -Duse_libMPI -Duse_netCDF -Duse_LARGEFILE -DINTERNAL_FILE_NML -DOVERLOAD_C8


include /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../bin/mkmf.template.ubuntu


.DEFAULT:
	-echo $@ does not exist.
all: shallow.x
affinity.o: $(SRCROOT)shared/mpp/affinity.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/affinity.c
atmos_model.o: $(SRCROOT)atmos_solo/atmos_model.F90 mpp.o fms.o atmosphere.o time_manager.o fms_io.o mpp_domains.o mpp_io.o diag_manager.o field_manager.o tracer_manager.o memutils.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_solo/atmos_model.F90
atmosphere.o: $(SRCROOT)atmos_spectral_shallow/atmosphere.F90 fms.o mpp.o constants.o transforms.o time_manager.o shallow_dynamics.o dynamic_type.o shallow_physics.o shallow_diagnostics.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral_shallow/atmosphere.F90
constants.o: $(SRCROOT)shared/constants/constants.F90
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/constants/constants.F90
create_xgrid.o: $(SRCROOT)shared/mosaic/create_xgrid.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/create_xgrid.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic	$(SRCROOT)shared/mosaic/create_xgrid.c
diag_axis.o: $(SRCROOT)shared/diag_manager/diag_axis.F90 mpp_domains.o fms.o diag_data.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_axis.F90
diag_data.o: $(SRCROOT)shared/diag_manager/diag_data.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h time_manager.o mpp_domains.o mpp_io.o fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/diag_manager/diag_data.F90
diag_grid.o: $(SRCROOT)shared/diag_manager/diag_grid.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h constants.o fms.o mpp.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/diag_manager/diag_grid.F90
diag_manager.o: $(SRCROOT)shared/diag_manager/diag_manager.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h time_manager.o mpp_io.o mpp.o fms.o diag_axis.o diag_util.o diag_data.o diag_table.o diag_output.o diag_grid.o constants.o mpp_domains.o fms_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/diag_manager/diag_manager.F90
diag_output.o: $(SRCROOT)shared/diag_manager/diag_output.F90 mpp_io.o mpp_domains.o mpp.o diag_axis.o diag_data.o time_manager.o fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_output.F90
diag_table.o: $(SRCROOT)shared/diag_manager/diag_table.F90 mpp_io.o mpp.o fms.o time_manager.o constants.o diag_data.o diag_util.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_table.F90
diag_util.o: $(SRCROOT)shared/diag_manager/diag_util.F90 diag_data.o diag_axis.o diag_output.o diag_grid.o fms.o fms_io.o mpp_domains.o time_manager.o mpp_io.o mpp.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_util.F90
dynamic_type.o: $(SRCROOT)shared/dynamic_type/dynamic_type.F90
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/dynamic_type/dynamic_type.F90
fft.o: $(SRCROOT)shared/fft/fft.F90 platform.o fms.o fft99.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/fft/fft.F90
fft99.o: $(SRCROOT)shared/fft/fft99.F90 constants.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/fft/fft99.F90
field_manager.o: $(SRCROOT)shared/field_manager/field_manager.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/field_manager/parse.inc mpp.o mpp_io.o fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/field_manager	$(SRCROOT)shared/field_manager/field_manager.F90
fm_util.o: $(SRCROOT)shared/field_manager/fm_util.F90 field_manager.o fms.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/field_manager/fm_util.F90
fms.o: $(SRCROOT)shared/fms/fms.F90 mpp.o mpp_domains.o mpp_io.o fms_io.o memutils.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/fms/fms.F90
fms_io.o: $(SRCROOT)shared/fms/fms_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_2d.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_3d.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_4d.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/write_data.inc mpp_io.o mpp_domains.o mpp.o platform.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms	$(SRCROOT)shared/fms/fms_io.F90
fv_advection.o: $(SRCROOT)atmos_spectral/model/fv_advection.F90 fms.o constants.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/fv_advection.F90
gauss_and_legendre.o: $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 fms.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90
get_cal_time.o: $(SRCROOT)shared/time_manager/get_cal_time.F90 fms.o time_manager.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/time_manager/get_cal_time.F90
gradient.o: $(SRCROOT)shared/mosaic/gradient.F90 mpp.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mosaic/gradient.F90
gradient_c2l.o: $(SRCROOT)shared/mosaic/gradient_c2l.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/gradient_c2l.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic	$(SRCROOT)shared/mosaic/gradient_c2l.c
grid.o: $(SRCROOT)shared/mosaic/grid.F90 mpp.o constants.o fms.o mosaic.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mosaic/grid.F90
grid_fourier.o: $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 fms.o constants.o fft.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/grid_fourier.F90
interp.o: $(SRCROOT)shared/mosaic/interp.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/interp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/create_xgrid.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic	$(SRCROOT)shared/mosaic/interp.c
leapfrog.o: $(SRCROOT)atmos_spectral/model/leapfrog.F90 fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/leapfrog.F90
memuse.o: $(SRCROOT)shared/memutils/memuse.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/memutils/memuse.c
memutils.o: $(SRCROOT)shared/memutils/memutils.F90 mpp.o mpp_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/memutils/memutils.F90
mosaic.o: $(SRCROOT)shared/mosaic/mosaic.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mosaic/mosaic.F90
mosaic_util.o: $(SRCROOT)shared/mosaic/mosaic_util.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic	$(SRCROOT)shared/mosaic/mosaic_util.c
mpp.o: $(SRCROOT)shared/mpp/mpp.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/system_clock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_a.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_s.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_a.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_s.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_int.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_scalar.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_gather.h mpp_parameter.o mpp_data.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp.F90
mpp_data.o: $(SRCROOT)shared/mpp/mpp_data.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_nocomm.inc mpp_parameter.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp_data.F90
mpp_domains.o: $(SRCROOT)shared/mpp/mpp_domains.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_define_nest_domains.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_comm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_define.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_misc.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_check.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_checkV.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_nest_domains.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nest.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_redistribute.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_reduce.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_reduce.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum_tl.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_field.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_global_field.h mpp_parameter.o mpp_data.o mpp.o mpp_memutils.o mpp_pset.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp_domains.F90
mpp_io.o: $(SRCROOT)shared/mpp/mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_misc.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_connect.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_read.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_read_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_write.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write.h mpp_parameter.o mpp.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp_io.F90
mpp_memutils.o: $(SRCROOT)shared/mpp/mpp_memutils.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/mpp_memutils.F90
mpp_parameter.o: $(SRCROOT)shared/mpp/mpp_parameter.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/mpp/mpp_parameter.F90
mpp_pset.o: $(SRCROOT)shared/mpp/mpp_pset.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/mpp/mpp_pset.F90
mpp_utilities.o: $(SRCROOT)shared/mpp/mpp_utilities.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/mpp_utilities.F90
nsclock.o: $(SRCROOT)shared/mpp/nsclock.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/nsclock.c
platform.o: $(SRCROOT)shared/platform/platform.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/platform/platform.F90
read_mosaic.o: $(SRCROOT)shared/mosaic/read_mosaic.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/read_mosaic.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic	$(SRCROOT)shared/mosaic/read_mosaic.c
shallow_diagnostics.o: $(SRCROOT)atmos_spectral_shallow/shallow_diagnostics.F90 fms.o transforms.o diag_manager.o time_manager.o shallow_physics.o dynamic_type.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral_shallow/shallow_diagnostics.F90
shallow_dynamics.o: $(SRCROOT)atmos_spectral_shallow/shallow_dynamics.F90 fms.o time_manager.o constants.o transforms.o spectral_damping.o leapfrog.o fv_advection.o dynamic_type.o test_case.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral_shallow/shallow_dynamics.F90
shallow_physics.o: $(SRCROOT)atmos_spectral_shallow/shallow_physics.F90 fms.o transforms.o time_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral_shallow/shallow_physics.F90
spec_mpp.o: $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 fms.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/spec_mpp.F90
spectral_damping.o: $(SRCROOT)atmos_spectral/model/spectral_damping.F90 fms.o transforms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/spectral_damping.F90
spherical.o: $(SRCROOT)atmos_spectral/tools/spherical.F90 fms.o spec_mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/spherical.F90
spherical_fourier.o: $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 fms.o mpp.o mpp_domains.o constants.o spec_mpp.o spherical.o gauss_and_legendre.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/spherical_fourier.F90
test_case.o: $(SRCROOT)shared/test_case/test_case.F90 constants.o transforms.o dynamic_type.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/test_case/test_case.F90
test_fms_io.o: $(SRCROOT)shared/fms/test_fms_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h mpp.o mpp_domains.o mpp_io.o fms_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/fms/test_fms_io.F90
test_mpp.o: $(SRCROOT)shared/mpp/test_mpp.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp.F90
test_mpp_domains.o: $(SRCROOT)shared/mpp/test_mpp_domains.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h mpp.o mpp_domains.o mpp_memutils.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp_domains.F90
test_mpp_io.o: $(SRCROOT)shared/mpp/test_mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h mpp.o mpp_domains.o mpp_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp_io.F90
test_mpp_pset.o: $(SRCROOT)shared/mpp/test_mpp_pset.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h mpp.o mpp_pset.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp_pset.F90
threadloc.o: $(SRCROOT)shared/mpp/threadloc.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/threadloc.c
time_manager.o: $(SRCROOT)shared/time_manager/time_manager.F90 constants.o fms.o mpp.o fms_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/time_manager/time_manager.F90
tracer_manager.o: $(SRCROOT)shared/tracer_manager/tracer_manager.F90 mpp.o mpp_io.o fms.o field_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/tracer_manager/tracer_manager.F90
transforms.o: $(SRCROOT)atmos_spectral/tools/transforms.F90 mpp.o fms.o mpp_domains.o spec_mpp.o constants.o spherical_fourier.o grid_fourier.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/transforms.F90
./create_xgrid.c: $(SRCROOT)shared/mosaic/create_xgrid.c
	cp $(SRCROOT)shared/mosaic/create_xgrid.c .
./spherical_fourier.F90: $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90
	cp $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 .
./mpp_do_update_nonblock.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nonblock.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nonblock.h .
./constant.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h .
./transforms.F90: $(SRCROOT)atmos_spectral/tools/transforms.F90
	cp $(SRCROOT)atmos_spectral/tools/transforms.F90 .
./mpp_do_updateV_nonblock.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV_nonblock.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV_nonblock.h .
./constants.F90: $(SRCROOT)shared/constants/constants.F90
	cp $(SRCROOT)shared/constants/constants.F90 .
./mpp_reduce_nocomm.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_nocomm.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_nocomm.h .
./parse.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/field_manager/parse.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/field_manager/parse.inc .
./mpp_read_2Ddecomp.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_read_2Ddecomp.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_read_2Ddecomp.h .
./mpp_error_a_s.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_s.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_s.h .
./mpp_io_misc.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_misc.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_misc.inc .
./mpp_io.F90: $(SRCROOT)shared/mpp/mpp_io.F90
	cp $(SRCROOT)shared/mpp/mpp_io.F90 .
./mpp_util_mpi.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_mpi.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_mpi.inc .
./mpp_domains_comm.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_comm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_comm.inc .
./read_data_3d.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_3d.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_3d.inc .
./mpp_global_reduce.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_reduce.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_reduce.h .
./mpp_update_nest_domains.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_nest_domains.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_nest_domains.h .
./fft99.F90: $(SRCROOT)shared/fft/fft99.F90
	cp $(SRCROOT)shared/fft/fft99.F90 .
./mpp_do_check.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_check.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_check.h .
./shallow_diagnostics.F90: $(SRCROOT)atmos_spectral_shallow/shallow_diagnostics.F90
	cp $(SRCROOT)atmos_spectral_shallow/shallow_diagnostics.F90 .
./mpp_domains.F90: $(SRCROOT)shared/mpp/mpp_domains.F90
	cp $(SRCROOT)shared/mpp/mpp_domains.F90 .
./time_manager.F90: $(SRCROOT)shared/time_manager/time_manager.F90
	cp $(SRCROOT)shared/time_manager/time_manager.F90 .
./read_mosaic.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/read_mosaic.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/read_mosaic.h .
./gauss_and_legendre.F90: $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90
	cp $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 .
./mpp_data_nocomm.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_nocomm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_nocomm.inc .
./read_data_2d.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_2d.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_2d.inc .
./fft.F90: $(SRCROOT)shared/fft/fft.F90
	cp $(SRCROOT)shared/fft/fft.F90 .
./mpp_comm.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm.inc .
./write_data.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/write_data.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/write_data.inc .
./test_mpp.F90: $(SRCROOT)shared/mpp/test_mpp.F90
	cp $(SRCROOT)shared/mpp/test_mpp.F90 .
./mpp_error_s_s.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_s.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_s.h .
./shallow_dynamics.F90: $(SRCROOT)atmos_spectral_shallow/shallow_dynamics.F90
	cp $(SRCROOT)atmos_spectral_shallow/shallow_dynamics.F90 .
./test_fms_io.F90: $(SRCROOT)shared/fms/test_fms_io.F90
	cp $(SRCROOT)shared/fms/test_fms_io.F90 .
./fms_platform.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h .
./mpp_do_update_nest.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nest.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nest.h .
./diag_grid.F90: $(SRCROOT)shared/diag_manager/diag_grid.F90
	cp $(SRCROOT)shared/diag_manager/diag_grid.F90 .
./mpp_comm_mpi.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_mpi.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_mpi.inc .
./atmosphere.F90: $(SRCROOT)atmos_spectral_shallow/atmosphere.F90
	cp $(SRCROOT)atmos_spectral_shallow/atmosphere.F90 .
./mpp_global_sum.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum.h .
./mpp_data_sma.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_sma.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_sma.inc .
./test_mpp_domains.F90: $(SRCROOT)shared/mpp/test_mpp_domains.F90
	cp $(SRCROOT)shared/mpp/test_mpp_domains.F90 .
./dynamic_type.F90: $(SRCROOT)shared/dynamic_type/dynamic_type.F90
	cp $(SRCROOT)shared/dynamic_type/dynamic_type.F90 .
./mpp_transmit_nocomm.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_nocomm.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_nocomm.h .
./system_clock.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/system_clock.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/system_clock.h .
./affinity.c: $(SRCROOT)shared/mpp/affinity.c
	cp $(SRCROOT)shared/mpp/affinity.c .
./mosaic_util.c: $(SRCROOT)shared/mosaic/mosaic_util.c
	cp $(SRCROOT)shared/mosaic/mosaic_util.c .
./diag_manager.F90: $(SRCROOT)shared/diag_manager/diag_manager.F90
	cp $(SRCROOT)shared/diag_manager/diag_manager.F90 .
./interp.c: $(SRCROOT)shared/mosaic/interp.c
	cp $(SRCROOT)shared/mosaic/interp.c .
./diag_util.F90: $(SRCROOT)shared/diag_manager/diag_util.F90
	cp $(SRCROOT)shared/diag_manager/diag_util.F90 .
./spherical.F90: $(SRCROOT)atmos_spectral/tools/spherical.F90
	cp $(SRCROOT)atmos_spectral/tools/spherical.F90 .
./get_cal_time.F90: $(SRCROOT)shared/time_manager/get_cal_time.F90
	cp $(SRCROOT)shared/time_manager/get_cal_time.F90 .
./platform.F90: $(SRCROOT)shared/platform/platform.F90
	cp $(SRCROOT)shared/platform/platform.F90 .
./mpp_get_boundary.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_get_boundary.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_get_boundary.h .
./mpp_data_mpi.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_mpi.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_mpi.inc .
./mpp_chksum.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum.h .
./create_xgrid.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/create_xgrid.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/create_xgrid.h .
./mpp_transmit.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit.inc .
./mpp_update_domains2D_nonblock.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h .
./grid_fourier.F90: $(SRCROOT)atmos_spectral/tools/grid_fourier.F90
	cp $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 .
./memutils.F90: $(SRCROOT)shared/memutils/memutils.F90
	cp $(SRCROOT)shared/memutils/memutils.F90 .
./read_mosaic.c: $(SRCROOT)shared/mosaic/read_mosaic.c
	cp $(SRCROOT)shared/mosaic/read_mosaic.c .
./mpp_global_field.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_field.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_field.h .
./mpp_io_write.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_write.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_write.inc .
./mpp_sum_sma.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_sma.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_sma.h .
./grid.F90: $(SRCROOT)shared/mosaic/grid.F90
	cp $(SRCROOT)shared/mosaic/grid.F90 .
./mosaic_util.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h .
./mpp_do_update.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update.h .
./mpp_do_global_field.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_global_field.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_global_field.h .
./mpp_transmit_mpi.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_mpi.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_mpi.h .
./mpp_error_s_a.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_a.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_a.h .
./mpp_io_read.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_read.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_read.inc .
./atmos_model.F90: $(SRCROOT)atmos_solo/atmos_model.F90
	cp $(SRCROOT)atmos_solo/atmos_model.F90 .
./test_mpp_pset.F90: $(SRCROOT)shared/mpp/test_mpp_pset.F90
	cp $(SRCROOT)shared/mpp/test_mpp_pset.F90 .
./mpp_pset.F90: $(SRCROOT)shared/mpp/mpp_pset.F90
	cp $(SRCROOT)shared/mpp/mpp_pset.F90 .
./mpp_io_connect.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_connect.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_connect.inc .
./mpp_data.F90: $(SRCROOT)shared/mpp/mpp_data.F90
	cp $(SRCROOT)shared/mpp/mpp_data.F90 .
./mpp_sum.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum.inc .
./mpp_do_updateV.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV.h .
./memuse.c: $(SRCROOT)shared/memutils/memuse.c
	cp $(SRCROOT)shared/memutils/memuse.c .
./mpp_util_nocomm.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_nocomm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_nocomm.inc .
./mpp_util.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util.inc .
./gradient_c2l.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/gradient_c2l.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/gradient_c2l.h .
./mpp_util_sma.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_sma.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_sma.inc .
./gradient.F90: $(SRCROOT)shared/mosaic/gradient.F90
	cp $(SRCROOT)shared/mosaic/gradient.F90 .
./test_mpp_io.F90: $(SRCROOT)shared/mpp/test_mpp_io.F90
	cp $(SRCROOT)shared/mpp/test_mpp_io.F90 .
./mpp_do_redistribute.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_redistribute.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_redistribute.h .
./diag_table.F90: $(SRCROOT)shared/diag_manager/diag_table.F90
	cp $(SRCROOT)shared/diag_manager/diag_table.F90 .
./mpp_utilities.F90: $(SRCROOT)shared/mpp/mpp_utilities.F90
	cp $(SRCROOT)shared/mpp/mpp_utilities.F90 .
./fms.F90: $(SRCROOT)shared/fms/fms.F90
	cp $(SRCROOT)shared/fms/fms.F90 .
./diag_axis.F90: $(SRCROOT)shared/diag_manager/diag_axis.F90
	cp $(SRCROOT)shared/diag_manager/diag_axis.F90 .
./mpp_update_domains2D.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D.h .
./mpp_global_sum_tl.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum_tl.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum_tl.h .
./nsclock.c: $(SRCROOT)shared/mpp/nsclock.c
	cp $(SRCROOT)shared/mpp/nsclock.c .
./mpp_sum_mpi.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_mpi.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_mpi.h .
./mpp_domains_define.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_define.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_define.inc .
./leapfrog.F90: $(SRCROOT)atmos_spectral/model/leapfrog.F90
	cp $(SRCROOT)atmos_spectral/model/leapfrog.F90 .
./mpp_io_util.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_util.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_util.inc .
./fms_io.F90: $(SRCROOT)shared/fms/fms_io.F90
	cp $(SRCROOT)shared/fms/fms_io.F90 .
./spec_mpp.F90: $(SRCROOT)atmos_spectral/tools/spec_mpp.F90
	cp $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 .
./interp.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/interp.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/interp.h .
./gradient_c2l.c: $(SRCROOT)shared/mosaic/gradient_c2l.c
	cp $(SRCROOT)shared/mosaic/gradient_c2l.c .
./spectral_damping.F90: $(SRCROOT)atmos_spectral/model/spectral_damping.F90
	cp $(SRCROOT)atmos_spectral/model/spectral_damping.F90 .
./mpp_do_get_boundary.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_get_boundary.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_get_boundary.h .
./fm_util.F90: $(SRCROOT)shared/field_manager/fm_util.F90
	cp $(SRCROOT)shared/field_manager/fm_util.F90 .
./read_data_4d.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_4d.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_4d.inc .
./field_manager.F90: $(SRCROOT)shared/field_manager/field_manager.F90
	cp $(SRCROOT)shared/field_manager/field_manager.F90 .
./mpp_comm_sma.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_sma.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_sma.inc .
./mpp_write.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write.h .
./fv_advection.F90: $(SRCROOT)atmos_spectral/model/fv_advection.F90
	cp $(SRCROOT)atmos_spectral/model/fv_advection.F90 .
./mpp_domains_util.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_util.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_util.inc .
./tracer_manager.F90: $(SRCROOT)shared/tracer_manager/tracer_manager.F90
	cp $(SRCROOT)shared/tracer_manager/tracer_manager.F90 .
./mpp_chksum_int.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_int.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_int.h .
./mpp_define_nest_domains.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_define_nest_domains.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_define_nest_domains.inc .
./threadloc.c: $(SRCROOT)shared/mpp/threadloc.c
	cp $(SRCROOT)shared/mpp/threadloc.c .
./mpp_gather.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_gather.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_gather.h .
./mpp_domains_reduce.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_reduce.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_reduce.inc .
./mpp_transmit_sma.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_sma.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_sma.h .
./mpp_sum_nocomm.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_nocomm.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_nocomm.h .
./diag_data.F90: $(SRCROOT)shared/diag_manager/diag_data.F90
	cp $(SRCROOT)shared/diag_manager/diag_data.F90 .
./diag_output.F90: $(SRCROOT)shared/diag_manager/diag_output.F90
	cp $(SRCROOT)shared/diag_manager/diag_output.F90 .
./mpp_reduce_sma.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_sma.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_sma.h .
./mpp_error_a_a.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_a.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_a.h .
./mosaic.F90: $(SRCROOT)shared/mosaic/mosaic.F90
	cp $(SRCROOT)shared/mosaic/mosaic.F90 .
./mpp_do_checkV.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_checkV.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_checkV.h .
./mpp.F90: $(SRCROOT)shared/mpp/mpp.F90
	cp $(SRCROOT)shared/mpp/mpp.F90 .
./mpp_comm_nocomm.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_nocomm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_nocomm.inc .
./mpp_chksum_scalar.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_scalar.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_scalar.h .
./mpp_reduce_mpi.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_mpi.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_mpi.h .
./shallow_physics.F90: $(SRCROOT)atmos_spectral_shallow/shallow_physics.F90
	cp $(SRCROOT)atmos_spectral_shallow/shallow_physics.F90 .
./test_case.F90: $(SRCROOT)shared/test_case/test_case.F90
	cp $(SRCROOT)shared/test_case/test_case.F90 .
./mpp_write_2Ddecomp.h: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write_2Ddecomp.h
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write_2Ddecomp.h .
./mpp_domains_misc.inc: /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_misc.inc
	cp /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_misc.inc .
./mpp_parameter.F90: $(SRCROOT)shared/mpp/mpp_parameter.F90
	cp $(SRCROOT)shared/mpp/mpp_parameter.F90 .
./mpp_memutils.F90: $(SRCROOT)shared/mpp/mpp_memutils.F90
	cp $(SRCROOT)shared/mpp/mpp_memutils.F90 .
SRC = $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 $(SRCROOT)shared/mpp/mpp_memutils.F90 $(SRCROOT)shared/fms/fms_io.F90 $(SRCROOT)shared/tracer_manager/tracer_manager.F90 $(SRCROOT)shared/fft/fft.F90 $(SRCROOT)atmos_spectral/tools/spherical.F90 $(SRCROOT)shared/constants/constants.F90 $(SRCROOT)shared/diag_manager/diag_data.F90 $(SRCROOT)atmos_spectral/model/spectral_damping.F90 $(SRCROOT)shared/mosaic/gradient.F90 $(SRCROOT)shared/mpp/mpp_parameter.F90 $(SRCROOT)shared/mpp/threadloc.c $(SRCROOT)atmos_spectral/model/leapfrog.F90 $(SRCROOT)shared/memutils/memutils.F90 $(SRCROOT)shared/time_manager/get_cal_time.F90 $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 $(SRCROOT)shared/mpp/mpp_pset.F90 $(SRCROOT)shared/mpp/test_mpp.F90 $(SRCROOT)shared/mpp/affinity.c $(SRCROOT)shared/diag_manager/diag_grid.F90 $(SRCROOT)atmos_spectral_shallow/atmosphere.F90 $(SRCROOT)shared/fft/fft99.F90 $(SRCROOT)shared/fms/fms.F90 $(SRCROOT)shared/mpp/nsclock.c $(SRCROOT)shared/mosaic/gradient_c2l.c $(SRCROOT)atmos_solo/atmos_model.F90 $(SRCROOT)atmos_spectral_shallow/shallow_physics.F90 $(SRCROOT)shared/mosaic/read_mosaic.c $(SRCROOT)shared/mosaic/mosaic_util.c $(SRCROOT)shared/mpp/mpp_domains.F90 $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 $(SRCROOT)atmos_spectral/tools/transforms.F90 $(SRCROOT)shared/dynamic_type/dynamic_type.F90 $(SRCROOT)atmos_spectral_shallow/shallow_dynamics.F90 $(SRCROOT)atmos_spectral_shallow/shallow_diagnostics.F90 $(SRCROOT)shared/platform/platform.F90 $(SRCROOT)shared/diag_manager/diag_table.F90 $(SRCROOT)shared/field_manager/field_manager.F90 $(SRCROOT)shared/diag_manager/diag_axis.F90 $(SRCROOT)shared/mpp/mpp.F90 $(SRCROOT)shared/diag_manager/diag_manager.F90 $(SRCROOT)shared/diag_manager/diag_util.F90 $(SRCROOT)shared/mpp/mpp_io.F90 $(SRCROOT)shared/time_manager/time_manager.F90 $(SRCROOT)shared/mpp/test_mpp_io.F90 $(SRCROOT)shared/diag_manager/diag_output.F90 $(SRCROOT)shared/mosaic/create_xgrid.c $(SRCROOT)shared/field_manager/fm_util.F90 $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 $(SRCROOT)shared/mpp/test_mpp_pset.F90 $(SRCROOT)shared/mosaic/grid.F90 $(SRCROOT)shared/mpp/mpp_utilities.F90 $(SRCROOT)shared/memutils/memuse.c $(SRCROOT)shared/mpp/mpp_data.F90 $(SRCROOT)shared/mpp/test_mpp_domains.F90 $(SRCROOT)shared/mosaic/mosaic.F90 $(SRCROOT)atmos_spectral/model/fv_advection.F90 $(SRCROOT)shared/test_case/test_case.F90 $(SRCROOT)shared/mosaic/interp.c $(SRCROOT)shared/fms/test_fms_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_define_nest_domains.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_int.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_gather.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_reduce.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/system_clock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_a.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/interp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_define.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_4d.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_misc.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/create_xgrid.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_field.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_write.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_checkV.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_scalar.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_nest_domains.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_check.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_reduce.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_connect.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_global_field.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_s.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_misc.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_read.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_comm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_3d.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_a.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_read_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/field_manager/parse.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_s.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum_tl.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nest.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/read_mosaic.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/write_data.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_redistribute.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/gradient_c2l.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_2d.inc
OBJ = grid_fourier.o mpp_memutils.o fms_io.o tracer_manager.o fft.o spherical.o constants.o diag_data.o spectral_damping.o gradient.o mpp_parameter.o threadloc.o leapfrog.o memutils.o get_cal_time.o spherical_fourier.o mpp_pset.o test_mpp.o affinity.o diag_grid.o atmosphere.o fft99.o fms.o nsclock.o gradient_c2l.o atmos_model.o shallow_physics.o read_mosaic.o mosaic_util.o mpp_domains.o gauss_and_legendre.o transforms.o dynamic_type.o shallow_dynamics.o shallow_diagnostics.o platform.o diag_table.o field_manager.o diag_axis.o mpp.o diag_manager.o diag_util.o mpp_io.o time_manager.o test_mpp_io.o diag_output.o create_xgrid.o fm_util.o spec_mpp.o test_mpp_pset.o grid.o mpp_utilities.o memuse.o mpp_data.o test_mpp_domains.o mosaic.o fv_advection.o test_case.o interp.o test_fms_io.o
OFF = $(SRCROOT)shared/mosaic/create_xgrid.c $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nonblock.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/constant.h $(SRCROOT)atmos_spectral/tools/transforms.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV_nonblock.h $(SRCROOT)shared/constants/constants.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/field_manager/parse.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_read_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_s.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_misc.inc $(SRCROOT)shared/mpp/mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_comm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_3d.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_reduce.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_nest_domains.h $(SRCROOT)shared/fft/fft99.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_check.h $(SRCROOT)atmos_spectral_shallow/shallow_diagnostics.F90 $(SRCROOT)shared/mpp/mpp_domains.F90 $(SRCROOT)shared/time_manager/time_manager.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/read_mosaic.h $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_2d.inc $(SRCROOT)shared/fft/fft.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/write_data.inc $(SRCROOT)shared/mpp/test_mpp.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_s.h $(SRCROOT)atmos_spectral_shallow/shallow_dynamics.F90 $(SRCROOT)shared/fms/test_fms_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update_nest.h $(SRCROOT)shared/diag_manager/diag_grid.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_mpi.inc $(SRCROOT)atmos_spectral_shallow/atmosphere.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_sma.inc $(SRCROOT)shared/mpp/test_mpp_domains.F90 $(SRCROOT)shared/dynamic_type/dynamic_type.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_nocomm.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/system_clock.h $(SRCROOT)shared/mpp/affinity.c $(SRCROOT)shared/mosaic/mosaic_util.c $(SRCROOT)shared/diag_manager/diag_manager.F90 $(SRCROOT)shared/mosaic/interp.c $(SRCROOT)shared/diag_manager/diag_util.F90 $(SRCROOT)atmos_spectral/tools/spherical.F90 $(SRCROOT)shared/time_manager/get_cal_time.F90 $(SRCROOT)shared/platform/platform.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_data_mpi.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/create_xgrid.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 $(SRCROOT)shared/memutils/memutils.F90 $(SRCROOT)shared/mosaic/read_mosaic.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_field.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_write.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_sma.h $(SRCROOT)shared/mosaic/grid.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_update.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_global_field.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_s_a.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_read.inc $(SRCROOT)atmos_solo/atmos_model.F90 $(SRCROOT)shared/mpp/test_mpp_pset.F90 $(SRCROOT)shared/mpp/mpp_pset.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_connect.inc $(SRCROOT)shared/mpp/mpp_data.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_updateV.h $(SRCROOT)shared/memutils/memuse.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/gradient_c2l.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_util_sma.inc $(SRCROOT)shared/mosaic/gradient.F90 $(SRCROOT)shared/mpp/test_mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_redistribute.h $(SRCROOT)shared/diag_manager/diag_table.F90 $(SRCROOT)shared/mpp/mpp_utilities.F90 $(SRCROOT)shared/fms/fms.F90 $(SRCROOT)shared/diag_manager/diag_axis.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_update_domains2D.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_global_sum_tl.h $(SRCROOT)shared/mpp/nsclock.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_mpi.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_define.inc $(SRCROOT)atmos_spectral/model/leapfrog.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_io_util.inc $(SRCROOT)shared/fms/fms_io.F90 $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mosaic/interp.h $(SRCROOT)shared/mosaic/gradient_c2l.c $(SRCROOT)atmos_spectral/model/spectral_damping.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_get_boundary.h $(SRCROOT)shared/field_manager/fm_util.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/fms/read_data_4d.inc $(SRCROOT)shared/field_manager/field_manager.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_sma.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write.h $(SRCROOT)atmos_spectral/model/fv_advection.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_util.inc $(SRCROOT)shared/tracer_manager/tracer_manager.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_int.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_define_nest_domains.inc $(SRCROOT)shared/mpp/threadloc.c /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_gather.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_reduce.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_transmit_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_sum_nocomm.h $(SRCROOT)shared/diag_manager/diag_data.F90 $(SRCROOT)shared/diag_manager/diag_output.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_sma.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_error_a_a.h $(SRCROOT)shared/mosaic/mosaic.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_do_checkV.h $(SRCROOT)shared/mpp/mpp.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_comm_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_chksum_scalar.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_reduce_mpi.h $(SRCROOT)atmos_spectral_shallow/shallow_physics.F90 $(SRCROOT)shared/test_case/test_case.F90 /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_write_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_modified/shallow/../src/shared/mpp/include/mpp_domains_misc.inc $(SRCROOT)shared/mpp/mpp_parameter.F90 $(SRCROOT)shared/mpp/mpp_memutils.F90
clean: neat
	-rm -f .shallow.x.cppdefs $(OBJ) shallow.x
neat:
	-rm -f $(TMPFILES)
localize: $(OFF)
	cp $(OFF) .
TAGS: $(SRC)
	etags $(SRC)
tags: $(SRC)
	ctags $(SRC)
shallow.x: $(OBJ) 
	$(LD) $(OBJ) -o shallow.x  $(LDFLAGS)
