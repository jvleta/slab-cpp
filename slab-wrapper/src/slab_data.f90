module slab_data
  implicit none

  type(SlabInput)
    integer :: idspl
    integer :: ncalc
    real(8) :: wms
    real(8) :: cps
    real(8) :: tbp
    real(8) :: cmed0
    real(8) :: dhe
    real(8) :: cpsl
    real(8) :: rhosl
    real(8) :: spb
    real(8) :: spc
    real(8) :: ts
    real(8) :: qs
    real(8) :: as
    real(8) :: tsd
    real(8) :: qtis
    real(8) :: hs
    real(8) :: tav
    real(8) :: xffm
    real(8) :: zp(4)
    real(8) :: z0 ! surface roughness height (m) 
    real(8) :: za ! ambient measurement height (m) 
    real(8) :: ua ! ambient wind speed (m)
    real(8) :: ta ! ambient temperature (K)
    real(8) :: rh ! relative humidity (%)
    real(8) :: stab ! atmospheric stability class value
    real(8) :: ala ! inverse monin-obukhov length (1/m)
  end type
end module