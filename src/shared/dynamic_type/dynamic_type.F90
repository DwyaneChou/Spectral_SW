module dynamic_type

implicit none

type grid_type
   real, pointer, dimension(:,:,:) :: u  =>NULL(), v  =>NULL(), &
                                      vor=>NULL(), div=>NULL(), &
                                      trs=>NULL(), tr =>NULL(), &
                                      h  =>NULL()
   real, pointer, dimension(:,:)   :: pv =>NULL(), stream=>NULL()
   real, pointer, dimension(:)     :: zonal_u_init=>NULL()
end type
type spectral_type
   complex, pointer, dimension(:,:,:) :: vor=>NULL(), div=>NULL(), h=>NULL(), trs=>NULL()
end type
type tendency_type
   real, pointer, dimension(:,:) :: u=>NULL(), v=>NULL(), h=>NULL(), trs=>NULL(), tr=>NULL()
end type
type dynamics_type
   type(grid_type)     :: grid
   type(spectral_type) :: spec
   type(tendency_type) :: tend
   integer             :: num_lon, num_lat
   logical             :: grid_tracer, spec_tracer
end type


end module dynamic_type
