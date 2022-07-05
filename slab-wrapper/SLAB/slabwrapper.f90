module slabwrapper
  contains
  subroutine callstate(input_file, output_file)
    character(len=*) input_file, output_file
    call state(input_file, output_file)
  end subroutine
end module