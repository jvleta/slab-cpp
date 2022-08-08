module slab_c_wrapper
  use, intrinsic :: iso_c_binding
  use slab_fortran_wrapper

contains  

  subroutine call_dostuff() bind(c, name='dostuff')
    call dostuff()
  end subroutine

  subroutine call_run_test_case(test_number) bind(c, name='run_test_case')
    integer(c_int) :: test_number
    call run_test_case(test_number)
  end subroutine

end module