module slab_fortran_wrapper
use SlabClassic, only: state
implicit none

type SlabData
  ! Release Gas Properties
  double precision :: source_gas_molecular_weight
  double precision :: vapor_heat_capacity
  double precision :: source_gas_temperature
  double precision :: source_gas_density
  double precision :: boiling_point_temperature
  double precision :: liquid_mass_fraction
  double precision :: liquid_heat_capacity
  double precision :: heat_of_vaporization
  double precision :: source_liquid_density
  double precision :: saturation_pressure_constant_a
  double precision :: saturation_pressure_constant_b
  double precision :: saturation_pressure_constant_c
  
  ! Spill Characteristics
  integer :: spill_type
  double precision :: mass_source_rate
  double precision :: continuous_source_duration
  double precision :: continuous_source_mass
  double precision :: instantaneous_source_mass
  double precision :: source_area
  double precision :: vertical_vapor_velocity
  double precision :: source_half_weight
  double precision :: source_height
  double precision :: horizontal_vapor_velocity
  
  ! Field Parameters
  double precision :: concentration_averaging_time
  double precision :: concentration_measurement_height_1
  double precision :: concentration_measurement_height_2
  double precision :: concentration_measurement_height_3
  double precision :: concentration_measurement_height_4
  
  ! Ambient Meteorological Properties
  double precision :: ambient_air_molecular_properties
  double precision :: ambient_air_heat_capacity
  double precision :: ambient_air_density
  double precision :: ambient_measurement_height
  double precision :: ambient_atmospheric_pressure
  double precision :: ambient_wind_speed
  double precision :: ambient_temperature
  double precision :: relative_humidity
  double precision :: ambient_friction_velocity
  double precision :: atmospheric_stability_class_value
  double precision :: inverse_monin_obukhov_length
  double precision :: surface_roughness_height

  ! Additional Parameters
  integer :: substep_multiplier
  integer :: num_calculation_substeps
  double precision :: gravitational_constant
  double precision :: gas_constant
  double precision :: von_karman_constant
end type
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