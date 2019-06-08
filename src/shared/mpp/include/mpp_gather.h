subroutine MPP_GATHER_1D_(sbuf, rbuf)
   MPP_TYPE_, dimension(:),    intent(in) :: sbuf
   MPP_TYPE_, dimension(:), intent(inout) :: rbuf
   integer :: cnt, l, nproc

   nproc = mpp_npes()
   cnt = size(sbuf(:))
   if(size(rbuf(:)) .NE. cnt*nproc) call mpp_error(FATAL, &
          "MPP_GATHER_1D_: size(rbuf) should equal to npes*size(sbuf) ")

   !--- pre-post receiving
   if(pe == root_pe ) then
      rbuf(1:cnt) = sbuf
      do l = 1, nproc-1
         call mpp_recv(rbuf(l*cnt+1), glen=cnt, from_pe=root_pe+l, block=.FALSE., tag=COMM_TAG_1 )
      enddo
   else
      call mpp_send(sbuf(1), plen=cnt, to_pe=root_pe, tag=COMM_TAG_1)
   endif

   call mpp_sync_self(check=EVENT_RECV)
   call mpp_sync_self()

end subroutine MPP_GATHER_1D_


subroutine MPP_GATHER_1DV_(sbuf, ssize, rbuf, rsize)
   MPP_TYPE_, dimension(:),    intent(in) :: sbuf
   MPP_TYPE_, dimension(:), intent(inout) :: rbuf
   integer,                    intent(in) :: ssize
   integer,   dimension(:),    intent(in) :: rsize 
   integer :: cnt, l, nproc, pos

   nproc = mpp_npes()

   !--- pre-post receiving
   if(pe == root_pe ) then
      rbuf(1:ssize) = sbuf
      pos = ssize
      do l = 1, nproc-1
         call mpp_recv(rbuf(pos+1), glen=rsize(l+1), from_pe=root_pe+l, block=.FALSE., tag=COMM_TAG_2 )
         pos = pos + rsize(l+1)
      enddo
   else
      call mpp_send(sbuf(1), plen=ssize, to_pe=root_pe, tag=COMM_TAG_2)
   endif

   call mpp_sync_self(check=EVENT_RECV)
   call mpp_sync_self()

end subroutine MPP_GATHER_1DV_
