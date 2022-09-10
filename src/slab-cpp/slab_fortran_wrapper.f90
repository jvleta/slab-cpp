module slab_fortran_wrapper
use SlabClassic, only: state
implicit none

type SlabData
  ! Release Gas Properties
  ! real(4) :: source_gas_molecular_weight
  ! real(4) :: vapor_heat_capacity
  ! real(4) :: source_gas_temperature
  ! real(4) :: source_gas_density
  ! real(4) :: boiling_point_temperature
  ! real(4) :: liquid_mass_fraction
  ! real(4) :: liquid_heat_capacity
  ! real(4) :: heat_of_vaporization
  ! real(4) :: source_liquid_density
  ! real(4) :: saturation_pressure_constant_a
  ! real(4) :: saturation_pressure_constant_b
  ! real(4) :: saturation_pressure_constant_c
  
  ! Spill Characteristics
  integer :: spill_type
  ! real(4) :: mass_source_rate
  ! real(4) :: continuous_source_duration
  ! real(4) :: continuous_source_mass
  ! real(4) :: instantaneous_source_mass
  ! real(4) :: source_area
  ! real(4) :: vertical_vapor_velocity
  ! real(4) :: source_half_weight
  ! real(4) :: source_height
  ! real(4) :: horizontal_vapor_velocity
  
  ! Field Parameters
  ! real(4) :: concentration_averaging_time
  ! real(4) :: concentration_measurement_height_1
  ! real(4) :: concentration_measurement_height_2
  ! real(4) :: concentration_measurement_height_3
  ! real(4) :: concentration_measurement_height_4
  
  ! Ambient Meteorological Properties
  ! real(4) :: ambient_air_molecular_properties
  ! real(4) :: ambient_air_heat_capacity
  ! real(4) :: ambient_air_density
  ! real(4) :: ambient_measurement_height
  ! real(4) :: ambient_atmospheric_pressure
  ! real(4) :: ambient_wind_speed
  ! real(4) :: ambient_temperature
  ! real(4) :: relative_humidity
  ! real(4) :: ambient_friction_velocity
  ! real(4) :: atmospheric_stability_class_value
  ! real(4) :: inverse_monin_obukhov_length
  ! real(4) :: surface_roughness_height

  ! Additional Parameters
  integer :: substep_multiplier
  integer :: num_calculation_substeps
  real(4) :: gravitational_constant
  real(4) :: gas_constant
  real(4) :: von_karman_constant
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