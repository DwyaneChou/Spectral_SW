module test_case
    use         constants_mod          , only: radius, omega, PI,g => GRAV
    use         transforms_mod         , only: vor_div_from_uv_grid   , uv_grid_from_vor_div   ,&
                                               trans_spherical_to_grid, trans_grid_to_spherical,&
                                               get_deg_lat            , get_deg_lon
    use         dynamic_type           , only: dynamics_type
    implicit none
    
    contains
    subroutine case2(Dyn,cos_lat,sin_lat,is,ie,js,je)
    implicit none
    type(dynamics_type)        , intent(inout) :: Dyn
    integer                    , intent(in   ) :: is,ie,js,je
    real,dimension(js:je)      , intent(in   ) :: sin_lat, cos_lat
    
    real    :: u0 = 2.0*PI*radius/(12.0*86400.0)
    integer :: i,j
    
    do i = is, ie
      Dyn%Grid%u(i,:,1) = u0*cos_lat
      
      Dyn%Grid%h(i,:,1) = 2.94*10**4 - (radius*omega*u0+0.5*u0**2)*sin_lat**2
    end do
    Dyn%Grid%v(:,:,1) = 0.0
    
    call vor_div_from_uv_grid(Dyn%Grid%u  (:,:,1), Dyn%Grid%v  (:,:,1),&
                              Dyn%Spec%vor(:,:,1), Dyn%Spec%div(:,:,1))
    
    call trans_grid_to_spherical(Dyn%Grid%h  (:,:,1), Dyn%Spec%h  (:,:,1))
    call trans_spherical_to_grid(Dyn%Spec%vor(:,:,1), Dyn%Grid%vor(:,:,1))
    call trans_spherical_to_grid(Dyn%Spec%div(:,:,1), Dyn%Grid%div(:,:,1))
    
    do j = js, je
      do i = is, ie
        Dyn%Grid%vor(i,j,1) = 2.0*u0/radius*sin_lat(j)
      end do
    end do
    
    call trans_grid_to_spherical(Dyn%Grid%vor(:,:,1), Dyn%Spec%vor(:,:,1))
    
    end subroutine case2

    subroutine case6(Dyn,cos_lat,sin_lat,is,ie,js,je)
    implicit none
    type(dynamics_type)        , intent(inout) :: Dyn
    integer                    , intent(in   ) :: is,ie,js,je
    real,dimension(js:je)      , intent(in   ) :: sin_lat, cos_lat
    
    real,parameter       :: omg  = 7.848d-6		  ! angular velocity of RH wave
    real,parameter       :: R    = 4.d0           ! wave number of RH wave
    real,parameter       :: h0   = 8000.d0        ! wave number of RH wave
    
    real,dimension(is:ie,js:je) :: u,v,h,xi                ! working array
    real,dimension(is:ie,js:je) :: u1,u2,u3                ! working array
    real,dimension(is:ie,js:je) :: AA1,Ac,A21,A22,A23,Ah   ! working array
    real,dimension(is:ie,js:je) :: Bc,BB1,BB2,Bh           ! working array
    real,dimension(is:ie,js:je) :: CC,CC1,CC2,Ch           ! working array
    real,dimension(is:ie)       :: deg_lon,reg_lon
    real,dimension(js:je)       :: deg_lat,reg_lat
    real                        :: d2r
    integer                     :: i,j                     ! working variable
    
    d2r = PI/180.d0
    call get_deg_lon(deg_lon)
    call get_deg_lat(deg_lat)
    reg_lon = deg_lon*d2r
    reg_lat = deg_lat*d2r
    
    do j=js,je
        do i=is,ie
            u1(i,j) = cos_lat(j)
            u2(i,j) = R*cos_lat(j)**(R-1)*sin_lat(j)**2*dcos(dble(R*reg_lon(i)))
            u3(i,j) = cos_lat(j)**(R+1)*dcos(dble(R*reg_lon(i)))
            u (i,j) = radius*omg*(u1(i,j)+u2(i,j)-u3(i,j))
            
            v (i,j) = -radius*omg*R*cos_lat(j)**(R-1)*sin_lat(j)*dsin(dble(R*reg_lon(i)))
            
            AA1 (i,j) = omg*0.5d0*(2.d0*omega+omg)*cos_lat(j)**2
            Ac  (i,j) = 0.25*omg**2
            A21 (i,j) = (R+1.d0)*cos_lat(j)**(2.d0*R+2.d0)
            A22 (i,j) = (2.d0*R**2-R-2.d0)*cos_lat(j)**(2.d0*R)
            A23 (i,j) = 2.d0*R**2*cos_lat(j)**(2.d0*R-2)
            Ah  (i,j) = AA1(i,j)+Ac(i,j)*(A21(i,j)+A22(i,j)-A23(i,j))
            
            Bc  (i,j) = 2.*(omega+omg)*omg/((R+1)*(R+2))*cos_lat(j)**R
            BB1 (i,j) = R**2+2.d0*R+2.d0
            BB2 (i,j) = (R+1.d0)**2.*cos_lat(j)**2
            Bh  (i,j) = Bc(i,j)*(BB1(i,j)-BB2(i,j))
            
            CC  (i,j) = 0.25*omg**2*cos_lat(j)**(2.d0*R)
            CC1 (i,j) = (R+1.d0)*cos_lat(j)**2;
            CC2 (i,j) = R+2.d0
            Ch  (i,j) = CC(i,j)*(CC1(i,j)-CC2(i,j))
            
            h   (i,j) = g*h0+radius**2*(Ah(i,j) + Bh(i,j)*dcos(dble(R*reg_lon(i))) + Ch(i,j)*dcos(dble(2.d0*R*reg_lon(i))))
            
            xi  (i,j) = 2.d0*omg*sin_lat(j) - omg*sin_lat(j)*cos_lat(j)**R*(R*R+3.d0*R+2.d0)**R*dcos(dble(R*reg_lon(i)))
        enddo
    enddo
    
    Dyn%Grid%u  (:,:,1) = u
    Dyn%Grid%v  (:,:,1) = v
    Dyn%Grid%h  (:,:,1) = h
        
    call vor_div_from_uv_grid(Dyn%Grid%u  (:,:,1), Dyn%Grid%v  (:,:,1),&
                              Dyn%Spec%vor(:,:,1), Dyn%Spec%div(:,:,1))
    
    !Dyn%Grid%vor(:,:,1) = xi
    !call trans_grid_to_spherical(Dyn%Grid%vor(:,:,1), Dyn%Spec%vor(:,:,1))
    
    call trans_grid_to_spherical(Dyn%Grid%h  (:,:,1), Dyn%Spec%h  (:,:,1))
    call trans_spherical_to_grid(Dyn%Spec%vor(:,:,1), Dyn%Grid%vor(:,:,1))
    call trans_spherical_to_grid(Dyn%Spec%div(:,:,1), Dyn%Grid%div(:,:,1))
    
    !print*,'R-H wave max_u=',maxval(u),' max_v = ', maxval(v),' max_h = ', maxval(h),' max_xi = ', maxval(xi)
    !print*,'R-H wave min_u=',minval(u),' min_v = ', minval(v),' min_h = ', minval(h),' min_xi = ', minval(xi)
    
    end subroutine case6
    
end module test_case