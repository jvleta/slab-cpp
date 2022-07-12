#pragma once

struct SlabInput {
  int idspl;
  int ncalc;
  double wms;
  double cps;
  double tbp;
  double cmed0;
  double dhe;
  double cpsl;
  double rhosl;
  double spb;
  double spc;
  double ts;
  double qs;
  double as;
  double tsd;
  double qtis;
  double hs;
  double tav;
  double xffm;
  double zp1;
  double zp2;
  double zp3;
  double zp4;
  double z0;
  double za;
  double ua;
  double ta;
  double rh;
  double stab;
  double ala;
};

SlabInput get_problem1() {
  SlabInput s;
  s.idspl = 1;
  s.ncalc = 1;
  s.wms = 0.016043;
  s.cps = 2238.00;
  s.tbp = 111.70;
  s.cmed0 = 0.00;
  s.dhe = 509900.;
  s.cpsl = 3348.50;
  s.rhosl = 424.10;
  s.spb = -1.00;
  s.spc = 0.00;
  s.ts = 111.70;
  s.qs = 117.00;
  s.as = 657.00;
  s.tsd = 107.;
  s.qtis = 0.00;
  s.hs = 0.00;
  s.tav = 10.00;
  s.xffm = 1000.00;
  s.zp1 = 0.00;
  s.zp2 = 0.00;
  s.zp3 = 0.00;
  s.zp4 = 0.00;
  s.z0 = 0.000200;
  s.za = 2.88;
  s.ua = 1.92;
  s.ta = 306.00;
  s.rh = 4.60;
  s.stab = 0.00;
  s.ala = 0.0665;
  return s;
};

void run_slab(SlabInput input) {}