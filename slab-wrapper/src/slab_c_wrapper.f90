module slab_c_wrapper
  use, intrinsic :: iso_c_binding
  use slab_fortran_wrapper

contains  

  subroutine call_dostuff() bind(c, name='dostuff')
    call dostuff()
  end subroutine

end module