      subroutine errint(x,erf,erfc)
c
c  TODO: Investigate replacing this routine with an equivalent routine from an external library.
c
c  calculates the error function
c

c     cic               errint         c3.2-020
      implicit real*8(a-h,o-z)
      real*4 x,erf,erfc
c     error,probability,and related functions
c     journal of research national bureau of standards  b-math
c     vol.74b  no.3  july-sept. 1970   page 211-224
c     toler=two**(-nbm)   nbm=48
c     c1=two**((nbc-one)/two)   nbc=11
c     ulcf=cons*c1    cons=.83
c     scf=two**(c1**2-nbc)
      data trrtpi,c1,ulcf/1.1283791670955,32.,26.56/
      data one,two,four,ulps/1.,2.,4.,1./
c     data toler,scf/3.5527136788005e-15,8.7777985100258e304/
      data toler,scf/3.5527136788005e-15,3.4028235e+38/
      if (x == 0) then
         go to 1
      else
         go to 2
      end if
    1 erf=0.
      erfc=one
      return
    2 y=abs(x)
      ysq=y**2
      if ((y - ulps) <= 0.0) go to 3
    4 if((y-ulcf) <= 0.0) go to 10
   11 erf=one
      erfc=0.
      go to 7
    3 sum=0.
      dn=one
      tn=one
      pwr=ysq+ysq
    6 dn=dn+two
      tn=pwr*tn/dn
      sum=tn+sum
      if((tn-toler) >= 0.0) go to 6
    5 erf=(sum+one)*trrtpi*y*exp(-ysq)
      erfc=one-erf
    7 if(x >= 0.0) go to 9
    8 erf=-erf
      erfc=two-erfc
    9 return
   10 fnm2=0.
      gnm2=one
      fnm1=y+y
      gnm1=ysq+ysq+one
      prev=fnm1/gnm1
      wn=one
      bn=gnm1+four
   14 an=-wn*(wn+one)
      fn=bn*fnm1+an*fnm2
      gn=bn*gnm1+an*gnm2
      f=fn/gn
      if((abs(one-(f/prev))-toler) <= 0.0) go to 12
   13 if((prev-f) > 0.0) go to 18
   17 if(gn.lt.scf) goto 16
      go to 15
   15 fn=fn/scf
      gn=gn/scf
      fnm1=fnm1/scf
      gnm1=gnm1/scf
   16 fnm2=fnm1
      gnm2=gnm1
      fnm1=fn
      gnm1=gn
      wn=wn+two
      bn=bn+four
      prev=f
      go to 14
   18 f=prev
   12 erfc=f*exp(-ysq)*trrtpi/two
      erf=one-erfc
      go to 7
      end