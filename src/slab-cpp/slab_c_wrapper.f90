module slab_c_wrapper
  use, intrinsic :: iso_c_binding
  use slab_fortran_wrapper



contains  

  subroutine call_dostuff(slabdata_c_ptr) bind(c, name='dostuff')
    type(c_ptr), intent(inout) :: slabdata_c_ptr
    type(SlabData), pointer :: slabdata_f_ptr
    call c_f_pointer(slabdata_c_ptr, slabdata_f_ptr)
    call dostuff(slabdata_f_ptr)
    slabdata_c_ptr = c_loc(slabdata_f_ptr)
  end subroutine

  subroutine call_run_test_case(test_number) bind(c, name='run_test_case')
    integer(c_int) :: test_number
    call run_test_case(test_number)
  end subroutine

end module