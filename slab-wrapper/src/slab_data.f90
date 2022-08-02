module slab_data
  implicit none

  type :: SlabInput
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
contains
  
  subroutine echo_input(input)
    type(SlabInput) :: input
    integer         :: i
      write (3,114) input%idspl,input%ncalc,input%wms,input%cps,input%tbp, &
                    input%cmed0,input%dhe,input%cpsl,input%rhosl,input%spb, &
                    input%spc,input%ts,input%qs,input%as,input%tsd,input%qtis, & 
                    input%hs,input%tav,input%xffm,(i,input%zp(i),i=1,4)

  114 format (///'problem input'//'  idspl =',5x,i5/'  ncalc =',5x,i5/ &
      '  wms   =',f10.6/'  cps   =',f10.2/ &
      '  tbp   =',f10.2/'  cmed0 =',f10.2/ &
      '  dhe   =',f10.0/'  cpsl  =',f10.2/'  rhosl =',f10.2/ &
      '  spb   =',f10.2/'  spc   =',f10.2/ &
      '  ts    =',f10.2/'  qs    =',f10.2/'  as    =',f10.2/ &
      '  tsd   =',f10.0/'  qtis  =',f10.2/'  hs    =',f10.2/ &
      '  tav   =',f10.2/'  xffm  =',f10.2/('  zp(',i1,') =',f10.2)) 

      write (3,115) input%z0,input%za,input%ua,input%ta,input%rh,input%stab
  115 format ('  z0    =',f10.6/'  za    =',f10.2/'  ua    =',f10.2/ &
      '  ta    =',f10.2/,'  rh    =',f10.2/,'  stab  =',f10.2) 

      if (input%stab .eq. 0.) then
      write (3,112) input%ala
  112 format ('  ala   =',f10.4)
      endif

  end subroutine
end module