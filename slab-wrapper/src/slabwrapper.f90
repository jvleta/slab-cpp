module slab_c_wrapper
  use slab_data
  implicit none
  
   
  contains
  subroutine runslab(inpr)
    ! 1. Take the struct and write to values to /tmp/input
    ! 2. Run Slab.
    type(ProblemInput) :: inpr

  end subroutine
  !subroutine callstate(input_file, output_file)
  !  character(len=*) input_file, output_file
  !  call state(input_file, output_file)
  !end subroutine
end module