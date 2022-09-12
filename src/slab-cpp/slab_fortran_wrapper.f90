module slab_fortran_wrapper
use SlabClassic, only: state
use slab_data, only: SlabData
implicit none

contains
  
  subroutine dostuff(slabdata_ptr)
    type(SlabData), pointer, intent(inout) :: slabdata_ptr 
    write(*,*) "Hello from Fortran!!!"
    write(*,"(A,I1)") "spill type: ", slabdata_ptr%spill_type
  end subroutine

! subroutine slope
! end subroutine

! subroutine solve
! end subroutine
! subroutine eval
! end subroutine

! subroutine slopepf
! end subroutine

! subroutine solvepf
! end subroutine

! subroutine evalpf
! end subroutine

! subroutine entran
! end subroutine

! subroutine thermo
! end subroutine

! subroutine store
! end subroutine

! subroutine errint
! end subroutine

! subroutine editin
! end subroutine

! subroutine edits
! end subroutine

! subroutine editcc
! end subroutine

! function uafn
! end function

! subroutine run_test_case(test_number)
!   integer :: test_number
!   character(len=256) :: root, input_file, output_file
!   character(len=10) :: test_number_str
!   root = "/Users/jimmy/Documents/GitHub/lastra/src/"
!   write(test_number_str, "(I1)") test_number
!   input_file = trim(root)//"INPR"//trim(test_number_str)
!   output_file = trim(root)//"OUTPR"//trim(test_number_str)
!   call state(input_file, output_file)
! end subroutine
  
end module