module slab_fortran_wrapper
implicit none
contains
  
  subroutine dostuff()
    write(*,*) "Hello from Fortran!!!"
  end subroutine

  subroutine run_test_case(test_number)
    integer :: test_number
    character(len=256) :: root, input_file, output_file
    character(len=10) :: test_number_str
    root = "/Users/jimmy/Documents/GitHub/lastra/src/"
    write(test_number_str, "(I1)") test_number
    input_file = trim(root)//"INPR"//trim(test_number_str)
    output_file = trim(root)//"OUTPR"//trim(test_number_str)
    call state(input_file, output_file)
  end subroutine
  
end module