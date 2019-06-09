# Makefile created by mkmf $Id: mkmf,v 16.1 2010/05/19 18:49:19 fms Exp $ 

SRCROOT = /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/

CPPDEFS = -Duse_libMPI -Duse_netCDF -Duse_LARGEFILE -DINTERNAL_FILE_NML -DOVERLOAD_C8


include /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../bin/mkmf.template.ubuntu


.DEFAULT:
	-echo $@ does not exist.
all: full_dynamics.x
affinity.o: $(SRCROOT)shared/mpp/affinity.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/affinity.c
atmos_model.o: $(SRCROOT)atmos_solo/atmos_model.F90 mpp.o fms.o atmosphere.o time_manager.o fms_io.o mpp_domains.o mpp_io.o diag_manager.o field_manager.o tracer_manager.o memutils.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_solo/atmos_model.F90
atmosphere.o: $(SRCROOT)atmos_spectral/driver/solo/atmosphere.F90 fms.o constants.o transforms.o time_manager.o press_and_geopot.o spectral_dynamics.o tracer_type.o hs_forcing.o field_manager.o tracer_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/driver/solo/atmosphere.F90
constants.o: $(SRCROOT)shared/constants/constants.F90
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/constants/constants.F90
create_xgrid.o: $(SRCROOT)shared/mosaic/create_xgrid.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/create_xgrid.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic	$(SRCROOT)shared/mosaic/create_xgrid.c
diag_axis.o: $(SRCROOT)shared/diag_manager/diag_axis.F90 mpp_domains.o fms.o diag_data.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_axis.F90
diag_data.o: $(SRCROOT)shared/diag_manager/diag_data.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h time_manager.o mpp_domains.o mpp_io.o fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/diag_manager/diag_data.F90
diag_grid.o: $(SRCROOT)shared/diag_manager/diag_grid.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h constants.o fms.o mpp.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/diag_manager/diag_grid.F90
diag_manager.o: $(SRCROOT)shared/diag_manager/diag_manager.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h time_manager.o mpp_io.o mpp.o fms.o diag_axis.o diag_util.o diag_data.o diag_table.o diag_output.o diag_grid.o constants.o mpp_domains.o fms_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/diag_manager/diag_manager.F90
diag_output.o: $(SRCROOT)shared/diag_manager/diag_output.F90 mpp_io.o mpp_domains.o mpp.o diag_axis.o diag_data.o time_manager.o fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_output.F90
diag_table.o: $(SRCROOT)shared/diag_manager/diag_table.F90 mpp_io.o mpp.o fms.o time_manager.o constants.o diag_data.o diag_util.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_table.F90
diag_util.o: $(SRCROOT)shared/diag_manager/diag_util.F90 diag_data.o diag_axis.o diag_output.o diag_grid.o fms.o fms_io.o mpp_domains.o time_manager.o mpp_io.o mpp.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/diag_manager/diag_util.F90
every_step_diagnostics.o: $(SRCROOT)atmos_spectral/model/every_step_diagnostics.F90 fms.o time_manager.o field_manager.o tracer_manager.o diag_manager.o press_and_geopot.o transforms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/every_step_diagnostics.F90
fft.o: $(SRCROOT)shared/fft/fft.F90 platform.o fms.o fft99.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/fft/fft.F90
fft99.o: $(SRCROOT)shared/fft/fft99.F90 constants.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/fft/fft99.F90
field_manager.o: $(SRCROOT)shared/field_manager/field_manager.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/field_manager/parse.inc mpp.o mpp_io.o fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/field_manager	$(SRCROOT)shared/field_manager/field_manager.F90
fm_util.o: $(SRCROOT)shared/field_manager/fm_util.F90 field_manager.o fms.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/field_manager/fm_util.F90
fms.o: $(SRCROOT)shared/fms/fms.F90 mpp.o mpp_domains.o mpp_io.o fms_io.o memutils.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/fms/fms.F90
fms_io.o: $(SRCROOT)shared/fms/fms_io.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_2d.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_3d.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_4d.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/write_data.inc mpp_io.o mpp_domains.o mpp.o platform.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms	$(SRCROOT)shared/fms/fms_io.F90
fv_advection.o: $(SRCROOT)atmos_spectral/model/fv_advection.F90 fms.o constants.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/fv_advection.F90
gauss_and_legendre.o: $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 fms.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90
gaussian_topog.o: $(SRCROOT)shared/topography/gaussian_topog.F90 fms.o constants.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/topography/gaussian_topog.F90
get_cal_time.o: $(SRCROOT)shared/time_manager/get_cal_time.F90 fms.o time_manager.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/time_manager/get_cal_time.F90
global_integral.o: $(SRCROOT)atmos_spectral/model/global_integral.F90 fms.o press_and_geopot.o transforms.o constants.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/global_integral.F90
gradient.o: $(SRCROOT)shared/mosaic/gradient.F90 mpp.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mosaic/gradient.F90
gradient_c2l.o: $(SRCROOT)shared/mosaic/gradient_c2l.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/gradient_c2l.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic	$(SRCROOT)shared/mosaic/gradient_c2l.c
grid.o: $(SRCROOT)shared/mosaic/grid.F90 mpp.o constants.o fms.o mosaic.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mosaic/grid.F90
grid_fourier.o: $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 fms.o constants.o fft.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/grid_fourier.F90
horiz_interp.o: $(SRCROOT)shared/horiz_interp/horiz_interp.F90 fms.o mpp.o constants.o horiz_interp_type.o horiz_interp_conserve.o horiz_interp_bilinear.o horiz_interp_bicubic.o horiz_interp_spherical.o mpp_io.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/horiz_interp/horiz_interp.F90
horiz_interp_bicubic.o: $(SRCROOT)shared/horiz_interp/horiz_interp_bicubic.F90 mpp.o fms.o horiz_interp_type.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/horiz_interp/horiz_interp_bicubic.F90
horiz_interp_bilinear.o: $(SRCROOT)shared/horiz_interp/horiz_interp_bilinear.F90 mpp.o fms.o constants.o horiz_interp_type.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/horiz_interp/horiz_interp_bilinear.F90
horiz_interp_conserve.o: $(SRCROOT)shared/horiz_interp/horiz_interp_conserve.F90 mpp.o fms.o constants.o horiz_interp_type.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/horiz_interp/horiz_interp_conserve.F90
horiz_interp_spherical.o: $(SRCROOT)shared/horiz_interp/horiz_interp_spherical.F90 mpp.o fms.o constants.o horiz_interp_type.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/horiz_interp/horiz_interp_spherical.F90
horiz_interp_type.o: $(SRCROOT)shared/horiz_interp/horiz_interp_type.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/horiz_interp/horiz_interp_type.F90
hs_forcing.o: $(SRCROOT)atmos_param/hs_forcing/hs_forcing.F90 mpp.o fms.o constants.o time_manager.o diag_manager.o field_manager.o tracer_manager.o interpolator.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_param/hs_forcing/hs_forcing.F90
ic_from_external_file.o: $(SRCROOT)atmos_spectral/init/ic_from_external_file.F90 mpp.o fms.o transforms.o tracer_type.o field_manager.o tracer_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/ic_from_external_file.F90
implicit.o: $(SRCROOT)atmos_spectral/model/implicit.F90 fms.o constants.o press_and_geopot.o matrix_invert.o transforms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/implicit.F90
interp.o: $(SRCROOT)shared/mosaic/interp.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/interp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/create_xgrid.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic	$(SRCROOT)shared/mosaic/interp.c
interpolator.o: $(SRCROOT)atmos_shared/interpolator/interpolator.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o mpp_io.o mpp_domains.o diag_manager.o fms.o horiz_interp.o time_manager.o time_interp.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)atmos_shared/interpolator/interpolator.F90
jablonowski_2006.o: $(SRCROOT)atmos_spectral/init/jablonowski_2006.F90 mpp.o fms.o constants.o vert_coordinate.o transforms.o press_and_geopot.o diag_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/jablonowski_2006.F90
leapfrog.o: $(SRCROOT)atmos_spectral/model/leapfrog.F90 fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/leapfrog.F90
matrix_invert.o: $(SRCROOT)atmos_spectral/model/matrix_invert.F90 fms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/matrix_invert.F90
memuse.o: $(SRCROOT)shared/memutils/memuse.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/memutils/memuse.c
memutils.o: $(SRCROOT)shared/memutils/memutils.F90 mpp.o mpp_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/memutils/memutils.F90
mosaic.o: $(SRCROOT)shared/mosaic/mosaic.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mosaic/mosaic.F90
mosaic_util.o: $(SRCROOT)shared/mosaic/mosaic_util.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic	$(SRCROOT)shared/mosaic/mosaic_util.c
mpp.o: $(SRCROOT)shared/mpp/mpp.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/system_clock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_a.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_s.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_a.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_s.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_int.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_scalar.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_gather.h mpp_parameter.o mpp_data.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp.F90
mpp_data.o: $(SRCROOT)shared/mpp/mpp_data.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_nocomm.inc mpp_parameter.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp_data.F90
mpp_domains.o: $(SRCROOT)shared/mpp/mpp_domains.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_define_nest_domains.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_comm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_define.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_misc.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_check.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_checkV.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_nest_domains.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nest.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_redistribute.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_reduce.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_reduce.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum_tl.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_field.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_global_field.h mpp_parameter.o mpp_data.o mpp.o mpp_memutils.o mpp_pset.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp_domains.F90
mpp_io.o: $(SRCROOT)shared/mpp/mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_misc.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_connect.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_read.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_read_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_write.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write.h mpp_parameter.o mpp.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include	$(SRCROOT)shared/mpp/mpp_io.F90
mpp_memutils.o: $(SRCROOT)shared/mpp/mpp_memutils.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/mpp_memutils.F90
mpp_parameter.o: $(SRCROOT)shared/mpp/mpp_parameter.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/mpp/mpp_parameter.F90
mpp_pset.o: $(SRCROOT)shared/mpp/mpp_pset.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/mpp/mpp_pset.F90
mpp_utilities.o: $(SRCROOT)shared/mpp/mpp_utilities.F90 mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/mpp_utilities.F90
nsclock.o: $(SRCROOT)shared/mpp/nsclock.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/nsclock.c
platform.o: $(SRCROOT)shared/platform/platform.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/platform/platform.F90
polvani_2004.o: $(SRCROOT)atmos_spectral/init/polvani_2004.F90 mpp.o fms.o constants.o vert_coordinate.o transforms.o press_and_geopot.o diag_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/polvani_2004.F90
polvani_2007.o: $(SRCROOT)atmos_spectral/init/polvani_2007.F90 mpp.o fms.o constants.o vert_coordinate.o transforms.o press_and_geopot.o diag_manager.o tracer_type.o field_manager.o tracer_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/polvani_2007.F90
press_and_geopot.o: $(SRCROOT)atmos_spectral/model/press_and_geopot.F90 fms.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/press_and_geopot.F90
read_mosaic.o: $(SRCROOT)shared/mosaic/read_mosaic.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/read_mosaic.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic	$(SRCROOT)shared/mosaic/read_mosaic.c
spec_mpp.o: $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 fms.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/spec_mpp.F90
spectral_damping.o: $(SRCROOT)atmos_spectral/model/spectral_damping.F90 fms.o transforms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/spectral_damping.F90
spectral_dynamics.o: $(SRCROOT)atmos_spectral/model/spectral_dynamics.F90 mpp.o fms.o constants.o time_manager.o field_manager.o tracer_manager.o diag_manager.o transforms.o vert_advection.o implicit.o press_and_geopot.o spectral_damping.o leapfrog.o fv_advection.o water_borrowing.o global_integral.o spectral_init_cond.o tracer_type.o every_step_diagnostics.o mpp_domains.o polvani_2004.o polvani_2007.o jablonowski_2006.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/spectral_dynamics.F90
spectral_init_cond.o: $(SRCROOT)atmos_spectral/init/spectral_init_cond.F90 mpp.o fms.o mpp_domains.o constants.o vert_coordinate.o transforms.o press_and_geopot.o spectral_initialize_fields.o ic_from_external_file.o topog_regularization.o topography.o tracer_type.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/spectral_init_cond.F90
spectral_initialize_fields.o: $(SRCROOT)atmos_spectral/init/spectral_initialize_fields.F90 fms.o constants.o transforms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/spectral_initialize_fields.F90
spherical.o: $(SRCROOT)atmos_spectral/tools/spherical.F90 fms.o spec_mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/spherical.F90
spherical_fourier.o: $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 fms.o mpp.o mpp_domains.o constants.o spec_mpp.o spherical.o gauss_and_legendre.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/spherical_fourier.F90
test_fms_io.o: $(SRCROOT)shared/fms/test_fms_io.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o mpp_domains.o mpp_io.o fms_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/fms/test_fms_io.F90
test_mpp.o: $(SRCROOT)shared/mpp/test_mpp.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp.F90
test_mpp_domains.o: $(SRCROOT)shared/mpp/test_mpp_domains.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o mpp_domains.o mpp_memutils.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp_domains.F90
test_mpp_io.o: $(SRCROOT)shared/mpp/test_mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o mpp_domains.o mpp_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp_io.F90
test_mpp_pset.o: $(SRCROOT)shared/mpp/test_mpp_pset.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h mpp.o mpp_pset.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c -I/mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include	$(SRCROOT)shared/mpp/test_mpp_pset.F90
threadloc.o: $(SRCROOT)shared/mpp/threadloc.c
	$(CC) $(CPPDEFS) $(CPPFLAGS) $(CFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/mpp/threadloc.c
time_interp.o: $(SRCROOT)shared/time_interp/time_interp.F90 time_manager.o fms.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/time_interp/time_interp.F90
time_manager.o: $(SRCROOT)shared/time_manager/time_manager.F90 constants.o fms.o mpp.o fms_io.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/time_manager/time_manager.F90
topog_regularization.o: $(SRCROOT)atmos_spectral/init/topog_regularization.F90 fms.o mpp.o constants.o transforms.o mpp_domains.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/topog_regularization.F90
topography.o: $(SRCROOT)shared/topography/topography.F90 gaussian_topog.o horiz_interp.o fms.o fms_io.o constants.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/topography/topography.F90
tracer_manager.o: $(SRCROOT)shared/tracer_manager/tracer_manager.F90 mpp.o mpp_io.o fms.o field_manager.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)shared/tracer_manager/tracer_manager.F90
tracer_type.o: $(SRCROOT)atmos_spectral/model/tracer_type.F90
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/tracer_type.F90
transforms.o: $(SRCROOT)atmos_spectral/tools/transforms.F90 mpp.o fms.o mpp_domains.o spec_mpp.o constants.o spherical_fourier.o grid_fourier.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/tools/transforms.F90
vert_advection.o: $(SRCROOT)atmos_shared/vert_advection/vert_advection.F90 fms.o mpp.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_shared/vert_advection/vert_advection.F90
vert_coordinate.o: $(SRCROOT)atmos_spectral/init/vert_coordinate.F90 mpp.o fms.o constants.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/init/vert_coordinate.F90
water_borrowing.o: $(SRCROOT)atmos_spectral/model/water_borrowing.F90 fms.o transforms.o
	$(FC) $(CPPDEFS) $(CPPFLAGS) $(FPPFLAGS) $(FFLAGS) $(OTHERFLAGS) -c	$(SRCROOT)atmos_spectral/model/water_borrowing.F90
./memutils.F90: $(SRCROOT)shared/memutils/memutils.F90
	cp $(SRCROOT)shared/memutils/memutils.F90 .
./threadloc.c: $(SRCROOT)shared/mpp/threadloc.c
	cp $(SRCROOT)shared/mpp/threadloc.c .
./mpp_transmit_nocomm.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_nocomm.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_nocomm.h .
./parse.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/field_manager/parse.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/field_manager/parse.inc .
./mpp_global_reduce.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_reduce.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_reduce.h .
./fms_io.F90: $(SRCROOT)shared/fms/fms_io.F90
	cp $(SRCROOT)shared/fms/fms_io.F90 .
./horiz_interp_type.F90: $(SRCROOT)shared/horiz_interp/horiz_interp_type.F90
	cp $(SRCROOT)shared/horiz_interp/horiz_interp_type.F90 .
./jablonowski_2006.F90: $(SRCROOT)atmos_spectral/init/jablonowski_2006.F90
	cp $(SRCROOT)atmos_spectral/init/jablonowski_2006.F90 .
./mpp_chksum_scalar.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_scalar.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_scalar.h .
./matrix_invert.F90: $(SRCROOT)atmos_spectral/model/matrix_invert.F90
	cp $(SRCROOT)atmos_spectral/model/matrix_invert.F90 .
./mpp_domains_util.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_util.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_util.inc .
./mpp_comm_sma.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_sma.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_sma.inc .
./mpp_domains_comm.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_comm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_comm.inc .
./mpp_domains_define.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_define.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_define.inc .
./leapfrog.F90: $(SRCROOT)atmos_spectral/model/leapfrog.F90
	cp $(SRCROOT)atmos_spectral/model/leapfrog.F90 .
./global_integral.F90: $(SRCROOT)atmos_spectral/model/global_integral.F90
	cp $(SRCROOT)atmos_spectral/model/global_integral.F90 .
./tracer_type.F90: $(SRCROOT)atmos_spectral/model/tracer_type.F90
	cp $(SRCROOT)atmos_spectral/model/tracer_type.F90 .
./mpp_io_connect.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_connect.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_connect.inc .
./spectral_initialize_fields.F90: $(SRCROOT)atmos_spectral/init/spectral_initialize_fields.F90
	cp $(SRCROOT)atmos_spectral/init/spectral_initialize_fields.F90 .
./mpp.F90: $(SRCROOT)shared/mpp/mpp.F90
	cp $(SRCROOT)shared/mpp/mpp.F90 .
./create_xgrid.c: $(SRCROOT)shared/mosaic/create_xgrid.c
	cp $(SRCROOT)shared/mosaic/create_xgrid.c .
./diag_table.F90: $(SRCROOT)shared/diag_manager/diag_table.F90
	cp $(SRCROOT)shared/diag_manager/diag_table.F90 .
./test_mpp_io.F90: $(SRCROOT)shared/mpp/test_mpp_io.F90
	cp $(SRCROOT)shared/mpp/test_mpp_io.F90 .
./diag_output.F90: $(SRCROOT)shared/diag_manager/diag_output.F90
	cp $(SRCROOT)shared/diag_manager/diag_output.F90 .
./fv_advection.F90: $(SRCROOT)atmos_spectral/model/fv_advection.F90
	cp $(SRCROOT)atmos_spectral/model/fv_advection.F90 .
./read_data_4d.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_4d.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_4d.inc .
./spectral_init_cond.F90: $(SRCROOT)atmos_spectral/init/spectral_init_cond.F90
	cp $(SRCROOT)atmos_spectral/init/spectral_init_cond.F90 .
./spec_mpp.F90: $(SRCROOT)atmos_spectral/tools/spec_mpp.F90
	cp $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 .
./mosaic_util.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h .
./horiz_interp_spherical.F90: $(SRCROOT)shared/horiz_interp/horiz_interp_spherical.F90
	cp $(SRCROOT)shared/horiz_interp/horiz_interp_spherical.F90 .
./get_cal_time.F90: $(SRCROOT)shared/time_manager/get_cal_time.F90
	cp $(SRCROOT)shared/time_manager/get_cal_time.F90 .
./mpp_util_sma.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_sma.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_sma.inc .
./mpp_domains.F90: $(SRCROOT)shared/mpp/mpp_domains.F90
	cp $(SRCROOT)shared/mpp/mpp_domains.F90 .
./mpp_chksum.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum.h .
./mpp_transmit_mpi.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_mpi.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_mpi.h .
./interp.c: $(SRCROOT)shared/mosaic/interp.c
	cp $(SRCROOT)shared/mosaic/interp.c .
./time_interp.F90: $(SRCROOT)shared/time_interp/time_interp.F90
	cp $(SRCROOT)shared/time_interp/time_interp.F90 .
./fms.F90: $(SRCROOT)shared/fms/fms.F90
	cp $(SRCROOT)shared/fms/fms.F90 .
./transforms.F90: $(SRCROOT)atmos_spectral/tools/transforms.F90
	cp $(SRCROOT)atmos_spectral/tools/transforms.F90 .
./mpp_update_domains2D_nonblock.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h .
./mpp_error_a_a.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_a.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_a.h .
./mosaic_util.c: $(SRCROOT)shared/mosaic/mosaic_util.c
	cp $(SRCROOT)shared/mosaic/mosaic_util.c .
./mpp_io.F90: $(SRCROOT)shared/mpp/mpp_io.F90
	cp $(SRCROOT)shared/mpp/mpp_io.F90 .
./mpp_do_update.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update.h .
./test_mpp.F90: $(SRCROOT)shared/mpp/test_mpp.F90
	cp $(SRCROOT)shared/mpp/test_mpp.F90 .
./write_data.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/write_data.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/write_data.inc .
./mpp_io_write.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_write.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_write.inc .
./mpp_do_global_field.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_global_field.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_global_field.h .
./mpp_data_mpi.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_mpi.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_mpi.inc .
./mpp_update_domains2D.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D.h .
./spherical.F90: $(SRCROOT)atmos_spectral/tools/spherical.F90
	cp $(SRCROOT)atmos_spectral/tools/spherical.F90 .
./vert_advection.F90: $(SRCROOT)atmos_shared/vert_advection/vert_advection.F90
	cp $(SRCROOT)atmos_shared/vert_advection/vert_advection.F90 .
./mpp_error_s_s.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_s.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_s.h .
./mpp_sum.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum.inc .
./grid_fourier.F90: $(SRCROOT)atmos_spectral/tools/grid_fourier.F90
	cp $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 .
./mpp_reduce_mpi.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_mpi.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_mpi.h .
./read_mosaic.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/read_mosaic.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/read_mosaic.h .
./fft99.F90: $(SRCROOT)shared/fft/fft99.F90
	cp $(SRCROOT)shared/fft/fft99.F90 .
./mpp_do_updateV.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV.h .
./implicit.F90: $(SRCROOT)atmos_spectral/model/implicit.F90
	cp $(SRCROOT)atmos_spectral/model/implicit.F90 .
./mpp_chksum_int.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_int.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_int.h .
./diag_axis.F90: $(SRCROOT)shared/diag_manager/diag_axis.F90
	cp $(SRCROOT)shared/diag_manager/diag_axis.F90 .
./memuse.c: $(SRCROOT)shared/memutils/memuse.c
	cp $(SRCROOT)shared/memutils/memuse.c .
./create_xgrid.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/create_xgrid.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/create_xgrid.h .
./mpp_transmit_sma.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_sma.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_sma.h .
./polvani_2004.F90: $(SRCROOT)atmos_spectral/init/polvani_2004.F90
	cp $(SRCROOT)atmos_spectral/init/polvani_2004.F90 .
./hs_forcing.F90: $(SRCROOT)atmos_param/hs_forcing/hs_forcing.F90
	cp $(SRCROOT)atmos_param/hs_forcing/hs_forcing.F90 .
./mpp_global_sum.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum.h .
./fm_util.F90: $(SRCROOT)shared/field_manager/fm_util.F90
	cp $(SRCROOT)shared/field_manager/fm_util.F90 .
./test_mpp_pset.F90: $(SRCROOT)shared/mpp/test_mpp_pset.F90
	cp $(SRCROOT)shared/mpp/test_mpp_pset.F90 .
./fms_platform.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h .
./spectral_dynamics.F90: $(SRCROOT)atmos_spectral/model/spectral_dynamics.F90
	cp $(SRCROOT)atmos_spectral/model/spectral_dynamics.F90 .
./mpp_sum_nocomm.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_nocomm.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_nocomm.h .
./water_borrowing.F90: $(SRCROOT)atmos_spectral/model/water_borrowing.F90
	cp $(SRCROOT)atmos_spectral/model/water_borrowing.F90 .
./mpp_io_misc.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_misc.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_misc.inc .
./polvani_2007.F90: $(SRCROOT)atmos_spectral/init/polvani_2007.F90
	cp $(SRCROOT)atmos_spectral/init/polvani_2007.F90 .
./system_clock.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/system_clock.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/system_clock.h .
./time_manager.F90: $(SRCROOT)shared/time_manager/time_manager.F90
	cp $(SRCROOT)shared/time_manager/time_manager.F90 .
./mpp_reduce_sma.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_sma.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_sma.h .
./mpp_global_sum_tl.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum_tl.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum_tl.h .
./mpp_write.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write.h .
./mpp_pset.F90: $(SRCROOT)shared/mpp/mpp_pset.F90
	cp $(SRCROOT)shared/mpp/mpp_pset.F90 .
./constants.F90: $(SRCROOT)shared/constants/constants.F90
	cp $(SRCROOT)shared/constants/constants.F90 .
./platform.F90: $(SRCROOT)shared/platform/platform.F90
	cp $(SRCROOT)shared/platform/platform.F90 .
./mpp_parameter.F90: $(SRCROOT)shared/mpp/mpp_parameter.F90
	cp $(SRCROOT)shared/mpp/mpp_parameter.F90 .
./gradient_c2l.c: $(SRCROOT)shared/mosaic/gradient_c2l.c
	cp $(SRCROOT)shared/mosaic/gradient_c2l.c .
./mpp_utilities.F90: $(SRCROOT)shared/mpp/mpp_utilities.F90
	cp $(SRCROOT)shared/mpp/mpp_utilities.F90 .
./ic_from_external_file.F90: $(SRCROOT)atmos_spectral/init/ic_from_external_file.F90
	cp $(SRCROOT)atmos_spectral/init/ic_from_external_file.F90 .
./mpp_do_updateV_nonblock.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV_nonblock.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV_nonblock.h .
./diag_data.F90: $(SRCROOT)shared/diag_manager/diag_data.F90
	cp $(SRCROOT)shared/diag_manager/diag_data.F90 .
./mpp_io_util.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_util.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_util.inc .
./diag_util.F90: $(SRCROOT)shared/diag_manager/diag_util.F90
	cp $(SRCROOT)shared/diag_manager/diag_util.F90 .
./mpp_transmit.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit.inc .
./horiz_interp.F90: $(SRCROOT)shared/horiz_interp/horiz_interp.F90
	cp $(SRCROOT)shared/horiz_interp/horiz_interp.F90 .
./mpp_error_s_a.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_a.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_a.h .
./mosaic.F90: $(SRCROOT)shared/mosaic/mosaic.F90
	cp $(SRCROOT)shared/mosaic/mosaic.F90 .
./mpp_io_read.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_read.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_read.inc .
./gauss_and_legendre.F90: $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90
	cp $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 .
./spherical_fourier.F90: $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90
	cp $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 .
./vert_coordinate.F90: $(SRCROOT)atmos_spectral/init/vert_coordinate.F90
	cp $(SRCROOT)atmos_spectral/init/vert_coordinate.F90 .
./mpp_data_sma.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_sma.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_sma.inc .
./topography.F90: $(SRCROOT)shared/topography/topography.F90
	cp $(SRCROOT)shared/topography/topography.F90 .
./grid.F90: $(SRCROOT)shared/mosaic/grid.F90
	cp $(SRCROOT)shared/mosaic/grid.F90 .
./mpp_get_boundary.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_get_boundary.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_get_boundary.h .
./test_fms_io.F90: $(SRCROOT)shared/fms/test_fms_io.F90
	cp $(SRCROOT)shared/fms/test_fms_io.F90 .
./every_step_diagnostics.F90: $(SRCROOT)atmos_spectral/model/every_step_diagnostics.F90
	cp $(SRCROOT)atmos_spectral/model/every_step_diagnostics.F90 .
./read_data_3d.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_3d.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_3d.inc .
./diag_manager.F90: $(SRCROOT)shared/diag_manager/diag_manager.F90
	cp $(SRCROOT)shared/diag_manager/diag_manager.F90 .
./mpp_do_redistribute.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_redistribute.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_redistribute.h .
./press_and_geopot.F90: $(SRCROOT)atmos_spectral/model/press_and_geopot.F90
	cp $(SRCROOT)atmos_spectral/model/press_and_geopot.F90 .
./mpp_sum_mpi.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_mpi.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_mpi.h .
./mpp_do_checkV.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_checkV.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_checkV.h .
./horiz_interp_bicubic.F90: $(SRCROOT)shared/horiz_interp/horiz_interp_bicubic.F90
	cp $(SRCROOT)shared/horiz_interp/horiz_interp_bicubic.F90 .
./gaussian_topog.F90: $(SRCROOT)shared/topography/gaussian_topog.F90
	cp $(SRCROOT)shared/topography/gaussian_topog.F90 .
./constant.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h .
./mpp_do_update_nest.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nest.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nest.h .
./spectral_damping.F90: $(SRCROOT)atmos_spectral/model/spectral_damping.F90
	cp $(SRCROOT)atmos_spectral/model/spectral_damping.F90 .
./read_data_2d.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_2d.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_2d.inc .
./topog_regularization.F90: $(SRCROOT)atmos_spectral/init/topog_regularization.F90
	cp $(SRCROOT)atmos_spectral/init/topog_regularization.F90 .
./mpp_do_check.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_check.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_check.h .
./atmosphere.F90: $(SRCROOT)atmos_spectral/driver/solo/atmosphere.F90
	cp $(SRCROOT)atmos_spectral/driver/solo/atmosphere.F90 .
./test_mpp_domains.F90: $(SRCROOT)shared/mpp/test_mpp_domains.F90
	cp $(SRCROOT)shared/mpp/test_mpp_domains.F90 .
./horiz_interp_conserve.F90: $(SRCROOT)shared/horiz_interp/horiz_interp_conserve.F90
	cp $(SRCROOT)shared/horiz_interp/horiz_interp_conserve.F90 .
./mpp_util_mpi.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_mpi.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_mpi.inc .
./gradient_c2l.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/gradient_c2l.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/gradient_c2l.h .
./nsclock.c: $(SRCROOT)shared/mpp/nsclock.c
	cp $(SRCROOT)shared/mpp/nsclock.c .
./mpp_comm_nocomm.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_nocomm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_nocomm.inc .
./mpp_global_field.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_field.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_field.h .
./atmos_model.F90: $(SRCROOT)atmos_solo/atmos_model.F90
	cp $(SRCROOT)atmos_solo/atmos_model.F90 .
./mpp_comm.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm.inc .
./mpp_data_nocomm.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_nocomm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_nocomm.inc .
./mpp_domains_misc.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_misc.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_misc.inc .
./mpp_do_update_nonblock.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nonblock.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nonblock.h .
./read_mosaic.c: $(SRCROOT)shared/mosaic/read_mosaic.c
	cp $(SRCROOT)shared/mosaic/read_mosaic.c .
./affinity.c: $(SRCROOT)shared/mpp/affinity.c
	cp $(SRCROOT)shared/mpp/affinity.c .
./mpp_error_a_s.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_s.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_s.h .
./mpp_memutils.F90: $(SRCROOT)shared/mpp/mpp_memutils.F90
	cp $(SRCROOT)shared/mpp/mpp_memutils.F90 .
./mpp_comm_mpi.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_mpi.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_mpi.inc .
./gradient.F90: $(SRCROOT)shared/mosaic/gradient.F90
	cp $(SRCROOT)shared/mosaic/gradient.F90 .
./mpp_do_get_boundary.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_get_boundary.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_get_boundary.h .
./interp.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/interp.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/interp.h .
./mpp_util_nocomm.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_nocomm.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_nocomm.inc .
./mpp_gather.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_gather.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_gather.h .
./fft.F90: $(SRCROOT)shared/fft/fft.F90
	cp $(SRCROOT)shared/fft/fft.F90 .
./mpp_util.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util.inc .
./mpp_read_2Ddecomp.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_read_2Ddecomp.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_read_2Ddecomp.h .
./mpp_update_nest_domains.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_nest_domains.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_nest_domains.h .
./horiz_interp_bilinear.F90: $(SRCROOT)shared/horiz_interp/horiz_interp_bilinear.F90
	cp $(SRCROOT)shared/horiz_interp/horiz_interp_bilinear.F90 .
./mpp_domains_reduce.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_reduce.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_reduce.inc .
./mpp_sum_sma.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_sma.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_sma.h .
./field_manager.F90: $(SRCROOT)shared/field_manager/field_manager.F90
	cp $(SRCROOT)shared/field_manager/field_manager.F90 .
./mpp_write_2Ddecomp.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write_2Ddecomp.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write_2Ddecomp.h .
./interpolator.F90: $(SRCROOT)atmos_shared/interpolator/interpolator.F90
	cp $(SRCROOT)atmos_shared/interpolator/interpolator.F90 .
./mpp_reduce_nocomm.h: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_nocomm.h
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_nocomm.h .
./tracer_manager.F90: $(SRCROOT)shared/tracer_manager/tracer_manager.F90
	cp $(SRCROOT)shared/tracer_manager/tracer_manager.F90 .
./mpp_define_nest_domains.inc: /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_define_nest_domains.inc
	cp /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_define_nest_domains.inc .
./diag_grid.F90: $(SRCROOT)shared/diag_manager/diag_grid.F90
	cp $(SRCROOT)shared/diag_manager/diag_grid.F90 .
./mpp_data.F90: $(SRCROOT)shared/mpp/mpp_data.F90
	cp $(SRCROOT)shared/mpp/mpp_data.F90 .
SRC = $(SRCROOT)shared/mpp/mpp_data.F90 $(SRCROOT)shared/diag_manager/diag_data.F90 $(SRCROOT)atmos_spectral/model/leapfrog.F90 $(SRCROOT)shared/mpp/mpp_io.F90 $(SRCROOT)shared/diag_manager/diag_manager.F90 $(SRCROOT)shared/mpp/test_mpp_domains.F90 $(SRCROOT)atmos_spectral/model/global_integral.F90 $(SRCROOT)shared/mpp/mpp_pset.F90 $(SRCROOT)shared/field_manager/field_manager.F90 $(SRCROOT)shared/mosaic/create_xgrid.c $(SRCROOT)shared/diag_manager/diag_axis.F90 $(SRCROOT)atmos_spectral/model/fv_advection.F90 $(SRCROOT)shared/fms/fms.F90 $(SRCROOT)shared/mpp/test_mpp_io.F90 $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 $(SRCROOT)shared/mosaic/mosaic.F90 $(SRCROOT)atmos_spectral/init/polvani_2004.F90 $(SRCROOT)atmos_spectral/model/spectral_dynamics.F90 $(SRCROOT)shared/diag_manager/diag_util.F90 $(SRCROOT)shared/mosaic/interp.c $(SRCROOT)shared/diag_manager/diag_table.F90 $(SRCROOT)shared/mosaic/mosaic_util.c $(SRCROOT)atmos_param/hs_forcing/hs_forcing.F90 $(SRCROOT)shared/horiz_interp/horiz_interp.F90 $(SRCROOT)shared/mpp/mpp.F90 $(SRCROOT)shared/diag_manager/diag_output.F90 $(SRCROOT)shared/mpp/mpp_memutils.F90 $(SRCROOT)atmos_spectral/init/spectral_init_cond.F90 $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 $(SRCROOT)shared/horiz_interp/horiz_interp_spherical.F90 $(SRCROOT)shared/mpp/test_mpp.F90 $(SRCROOT)atmos_spectral/model/water_borrowing.F90 $(SRCROOT)shared/topography/topography.F90 $(SRCROOT)shared/fms/fms_io.F90 $(SRCROOT)atmos_spectral/init/polvani_2007.F90 $(SRCROOT)shared/mpp/mpp_domains.F90 $(SRCROOT)atmos_spectral/model/press_and_geopot.F90 $(SRCROOT)shared/topography/gaussian_topog.F90 $(SRCROOT)shared/horiz_interp/horiz_interp_bilinear.F90 $(SRCROOT)shared/time_interp/time_interp.F90 $(SRCROOT)shared/time_manager/time_manager.F90 $(SRCROOT)shared/horiz_interp/horiz_interp_type.F90 $(SRCROOT)atmos_spectral/init/ic_from_external_file.F90 $(SRCROOT)shared/diag_manager/diag_grid.F90 $(SRCROOT)shared/mpp/mpp_parameter.F90 $(SRCROOT)shared/memutils/memutils.F90 $(SRCROOT)shared/mpp/nsclock.c $(SRCROOT)shared/mpp/mpp_utilities.F90 $(SRCROOT)atmos_spectral/init/topog_regularization.F90 $(SRCROOT)atmos_spectral/model/tracer_type.F90 $(SRCROOT)atmos_spectral/tools/transforms.F90 $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 $(SRCROOT)shared/mosaic/gradient_c2l.c $(SRCROOT)atmos_spectral/init/jablonowski_2006.F90 $(SRCROOT)shared/mosaic/grid.F90 $(SRCROOT)atmos_spectral/tools/spherical.F90 $(SRCROOT)shared/mpp/affinity.c $(SRCROOT)shared/time_manager/get_cal_time.F90 $(SRCROOT)shared/memutils/memuse.c $(SRCROOT)atmos_spectral/init/spectral_initialize_fields.F90 $(SRCROOT)shared/mpp/threadloc.c $(SRCROOT)atmos_spectral/driver/solo/atmosphere.F90 $(SRCROOT)shared/field_manager/fm_util.F90 $(SRCROOT)shared/constants/constants.F90 $(SRCROOT)atmos_shared/interpolator/interpolator.F90 $(SRCROOT)shared/fft/fft.F90 $(SRCROOT)atmos_spectral/init/vert_coordinate.F90 $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 $(SRCROOT)shared/platform/platform.F90 $(SRCROOT)atmos_shared/vert_advection/vert_advection.F90 $(SRCROOT)atmos_solo/atmos_model.F90 $(SRCROOT)atmos_spectral/model/every_step_diagnostics.F90 $(SRCROOT)shared/fms/test_fms_io.F90 $(SRCROOT)shared/mpp/test_mpp_pset.F90 $(SRCROOT)shared/fft/fft99.F90 $(SRCROOT)atmos_spectral/model/matrix_invert.F90 $(SRCROOT)shared/mosaic/read_mosaic.c $(SRCROOT)shared/horiz_interp/horiz_interp_bicubic.F90 $(SRCROOT)shared/tracer_manager/tracer_manager.F90 $(SRCROOT)atmos_spectral/model/implicit.F90 $(SRCROOT)atmos_spectral/model/spectral_damping.F90 $(SRCROOT)shared/horiz_interp/horiz_interp_conserve.F90 $(SRCROOT)shared/mosaic/gradient.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_a.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_3d.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_read.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_4d.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nest.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_a.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_checkV.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_redistribute.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_reduce.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_scalar.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/field_manager/parse.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_connect.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_define.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_comm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_nest_domains.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/create_xgrid.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_read_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_reduce.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_gather.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/read_mosaic.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_int.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_define_nest_domains.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/system_clock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum_tl.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_misc.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_field.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/write_data.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_2d.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_check.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/gradient_c2l.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_global_field.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_write.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/interp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_s.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_misc.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_s.h
OBJ = mpp_data.o diag_data.o leapfrog.o mpp_io.o diag_manager.o test_mpp_domains.o global_integral.o mpp_pset.o field_manager.o create_xgrid.o diag_axis.o fv_advection.o fms.o test_mpp_io.o gauss_and_legendre.o mosaic.o polvani_2004.o spectral_dynamics.o diag_util.o interp.o diag_table.o mosaic_util.o hs_forcing.o horiz_interp.o mpp.o diag_output.o mpp_memutils.o spectral_init_cond.o spec_mpp.o horiz_interp_spherical.o test_mpp.o water_borrowing.o topography.o fms_io.o polvani_2007.o mpp_domains.o press_and_geopot.o gaussian_topog.o horiz_interp_bilinear.o time_interp.o time_manager.o horiz_interp_type.o ic_from_external_file.o diag_grid.o mpp_parameter.o memutils.o nsclock.o mpp_utilities.o topog_regularization.o tracer_type.o transforms.o grid_fourier.o gradient_c2l.o jablonowski_2006.o grid.o spherical.o affinity.o get_cal_time.o memuse.o spectral_initialize_fields.o threadloc.o atmosphere.o fm_util.o constants.o interpolator.o fft.o vert_coordinate.o spherical_fourier.o platform.o vert_advection.o atmos_model.o every_step_diagnostics.o test_fms_io.o test_mpp_pset.o fft99.o matrix_invert.o read_mosaic.o horiz_interp_bicubic.o tracer_manager.o implicit.o spectral_damping.o horiz_interp_conserve.o gradient.o
OFF = $(SRCROOT)shared/memutils/memutils.F90 $(SRCROOT)shared/mpp/threadloc.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_nocomm.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/field_manager/parse.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_reduce.h $(SRCROOT)shared/fms/fms_io.F90 $(SRCROOT)shared/horiz_interp/horiz_interp_type.F90 $(SRCROOT)atmos_spectral/init/jablonowski_2006.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_scalar.h $(SRCROOT)atmos_spectral/model/matrix_invert.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_sma.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_comm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_define.inc $(SRCROOT)atmos_spectral/model/leapfrog.F90 $(SRCROOT)atmos_spectral/model/global_integral.F90 $(SRCROOT)atmos_spectral/model/tracer_type.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_connect.inc $(SRCROOT)atmos_spectral/init/spectral_initialize_fields.F90 $(SRCROOT)shared/mpp/mpp.F90 $(SRCROOT)shared/mosaic/create_xgrid.c $(SRCROOT)shared/diag_manager/diag_table.F90 $(SRCROOT)shared/mpp/test_mpp_io.F90 $(SRCROOT)shared/diag_manager/diag_output.F90 $(SRCROOT)atmos_spectral/model/fv_advection.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_4d.inc $(SRCROOT)atmos_spectral/init/spectral_init_cond.F90 $(SRCROOT)atmos_spectral/tools/spec_mpp.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/mosaic_util.h $(SRCROOT)shared/horiz_interp/horiz_interp_spherical.F90 $(SRCROOT)shared/time_manager/get_cal_time.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_sma.inc $(SRCROOT)shared/mpp/mpp_domains.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_mpi.h $(SRCROOT)shared/mosaic/interp.c $(SRCROOT)shared/time_interp/time_interp.F90 $(SRCROOT)shared/fms/fms.F90 $(SRCROOT)atmos_spectral/tools/transforms.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D_nonblock.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_a.h $(SRCROOT)shared/mosaic/mosaic_util.c $(SRCROOT)shared/mpp/mpp_io.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update.h $(SRCROOT)shared/mpp/test_mpp.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/write_data.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_write.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_global_field.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_domains2D.h $(SRCROOT)atmos_spectral/tools/spherical.F90 $(SRCROOT)atmos_shared/vert_advection/vert_advection.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_s.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum.inc $(SRCROOT)atmos_spectral/tools/grid_fourier.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/read_mosaic.h $(SRCROOT)shared/fft/fft99.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV.h $(SRCROOT)atmos_spectral/model/implicit.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_chksum_int.h $(SRCROOT)shared/diag_manager/diag_axis.F90 $(SRCROOT)shared/memutils/memuse.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/create_xgrid.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit_sma.h $(SRCROOT)atmos_spectral/init/polvani_2004.F90 $(SRCROOT)atmos_param/hs_forcing/hs_forcing.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum.h $(SRCROOT)shared/field_manager/fm_util.F90 $(SRCROOT)shared/mpp/test_mpp_pset.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/include/fms_platform.h $(SRCROOT)atmos_spectral/model/spectral_dynamics.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_nocomm.h $(SRCROOT)atmos_spectral/model/water_borrowing.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_misc.inc $(SRCROOT)atmos_spectral/init/polvani_2007.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/system_clock.h $(SRCROOT)shared/time_manager/time_manager.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_sma.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_sum_tl.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write.h $(SRCROOT)shared/mpp/mpp_pset.F90 $(SRCROOT)shared/constants/constants.F90 $(SRCROOT)shared/platform/platform.F90 $(SRCROOT)shared/mpp/mpp_parameter.F90 $(SRCROOT)shared/mosaic/gradient_c2l.c $(SRCROOT)shared/mpp/mpp_utilities.F90 $(SRCROOT)atmos_spectral/init/ic_from_external_file.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_updateV_nonblock.h $(SRCROOT)shared/diag_manager/diag_data.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_util.inc $(SRCROOT)shared/diag_manager/diag_util.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_transmit.inc $(SRCROOT)shared/horiz_interp/horiz_interp.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_s_a.h $(SRCROOT)shared/mosaic/mosaic.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_io_read.inc $(SRCROOT)atmos_spectral/tools/gauss_and_legendre.F90 $(SRCROOT)atmos_spectral/tools/spherical_fourier.F90 $(SRCROOT)atmos_spectral/init/vert_coordinate.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_sma.inc $(SRCROOT)shared/topography/topography.F90 $(SRCROOT)shared/mosaic/grid.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_get_boundary.h $(SRCROOT)shared/fms/test_fms_io.F90 $(SRCROOT)atmos_spectral/model/every_step_diagnostics.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_3d.inc $(SRCROOT)shared/diag_manager/diag_manager.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_redistribute.h $(SRCROOT)atmos_spectral/model/press_and_geopot.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_mpi.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_checkV.h $(SRCROOT)shared/horiz_interp/horiz_interp_bicubic.F90 $(SRCROOT)shared/topography/gaussian_topog.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/constant.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nest.h $(SRCROOT)atmos_spectral/model/spectral_damping.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/fms/read_data_2d.inc $(SRCROOT)atmos_spectral/init/topog_regularization.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_check.h $(SRCROOT)atmos_spectral/driver/solo/atmosphere.F90 $(SRCROOT)shared/mpp/test_mpp_domains.F90 $(SRCROOT)shared/horiz_interp/horiz_interp_conserve.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_mpi.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/gradient_c2l.h $(SRCROOT)shared/mpp/nsclock.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_global_field.h $(SRCROOT)atmos_solo/atmos_model.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_data_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_misc.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_update_nonblock.h $(SRCROOT)shared/mosaic/read_mosaic.c $(SRCROOT)shared/mpp/affinity.c /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_error_a_s.h $(SRCROOT)shared/mpp/mpp_memutils.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_comm_mpi.inc $(SRCROOT)shared/mosaic/gradient.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_do_get_boundary.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mosaic/interp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util_nocomm.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_gather.h $(SRCROOT)shared/fft/fft.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_util.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_read_2Ddecomp.h /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_update_nest_domains.h $(SRCROOT)shared/horiz_interp/horiz_interp_bilinear.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_domains_reduce.inc /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_sum_sma.h $(SRCROOT)shared/field_manager/field_manager.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_write_2Ddecomp.h $(SRCROOT)atmos_shared/interpolator/interpolator.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_reduce_nocomm.h $(SRCROOT)shared/tracer_manager/tracer_manager.F90 /mnt/e/Study/Models/Spectral/spectral_idealized_public_release/full_dynamics/../src/shared/mpp/include/mpp_define_nest_domains.inc $(SRCROOT)shared/diag_manager/diag_grid.F90 $(SRCROOT)shared/mpp/mpp_data.F90
clean: neat
	-rm -f .full_dynamics.x.cppdefs $(OBJ) full_dynamics.x
neat:
	-rm -f $(TMPFILES)
localize: $(OFF)
	cp $(OFF) .
TAGS: $(SRC)
	etags $(SRC)
tags: $(SRC)
	ctags $(SRC)
full_dynamics.x: $(OBJ) 
	$(LD) $(OBJ) -o full_dynamics.x  $(LDFLAGS)
