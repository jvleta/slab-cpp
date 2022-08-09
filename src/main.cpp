#include <iostream>
#include <string>
#include <vector>

#include "slab_c_wrapper.h"

SlabData * get_INPTR1_data() {
  SlabData *s = new SlabData();
  s->spill_type = 1;
  s->num_calculation_substeps = 1;
  return s;
};

int main() {
  auto s = get_INPTR1_data();
  dostuff((void *)&s);
  return 0;
}