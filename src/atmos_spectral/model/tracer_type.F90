module tracer_type_mod

!-----------------------------------------------------------------------
!                   GNU General Public License                        
!                                                                      
! This program is free software; you can redistribute it and/or modify it and  
! are expected to follow the terms of the GNU General Public License  
! as published by the Free Software Foundation; either version 2 of   
! the License, or (at your option) any later version.                 
!                                                                      
! This program is distributed in the hope that it will be useful, but WITHOUT    
! ANY WARRANTY; without even the implied warranty of MERCHANTABILITY  
! or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public    
! License for more details.                                           
!                                                                      
! For the full text of the GNU General Public License,                
! write to: Free Software Foundation, Inc.,                           
!           675 Mass Ave, Cambridge, MA 02139, USA.                   
! or see:   http://www.gnu.org/licenses/gpl.html                      
!-----------------------------------------------------------------------

implicit none
private

public :: tracer_type
public :: tracer_type_version, tracer_type_tagname

character(len=128) :: tracer_type_version = '$Id: tracer_type.F90,v 11.0 2004/09/28 19:30:05 fms Exp $'
character(len=128) :: tracer_type_tagname = '$Name: siena_201207 $'

type tracer_type
  character(len=32) :: name, numerical_representation, advect_horiz, advect_vert, hole_filling
  real :: robert_coeff
end type

end module tracer_type_mod
