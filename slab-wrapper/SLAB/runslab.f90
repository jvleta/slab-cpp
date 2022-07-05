program runslab
  use slabwrapper
  
  character(len=32) input_file, output_file
  
  call get_command_argument(1, input_file)
  call get_command_argument(2, output_file)

  call callstate(input_file, output_file)

end program