module slab_fortran_wrapper
contains
  
  subroutine dostuff()
    write(*,*) "Hello from Fortran!!!"
  end subroutine


  subroutine run_test_case(test_number)

  integer :: test_number
  character(len=256) input_file, output_file

  select case(test_number)

! /Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/INPR1
  case(1)
    input_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/INPR1"
    output_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/OUTPR1"
  case(2)
    input_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/INPR2"
    output_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/OUTPR2"
  case(3)
    input_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/INPR3"
    output_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/OUTPR3"
  case(4)
    input_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/INPR4"
    output_file = "/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/OUTPR4"
  end select

  call state(input_file, output_file)

  end subroutine
  
end module