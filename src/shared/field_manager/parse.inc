
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
integer :: parse
integer :: is, ie, id, k, last

  parse = 0

  last = len_trim(text)
  is = index( trim(text), trim(label) )
  if (is == 0) return

! position of initial starting pointer
  is = is + len_trim(label)            ! move starting pointer after label
  is = is + scan( text(is:last), '=' ) ! move starting pointer after "="

  do k = 1, size(values(:))

   ! position of ending pointer
     id = scan( text(is:last), ',' )
     if (id == 0) then
         ie = last     ! no trailing comma, use end of text string
     else
         ie = is+id-2
     endif

   ! decode value
   ! print *, 'k,is,ie,id,last=',k,is,ie,id,last
   ! print *, 'DECODE: ', text(is:ie)
     read ( text(is:ie), *, err=99 ) values(k)
     parse = parse+1   ! parse is the number of values decoded

     if (ie == last) exit  ! end of text string ... DONE
     is = is+id            ! move starting pointer after ","
     if (is  > last) exit  ! end of text string ... DONE
  enddo
  return
  
99 continue
   call mpp_error (FATAL,'in parse, error decoding data') 

