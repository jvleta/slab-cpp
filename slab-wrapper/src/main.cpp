#include <iostream>
#include <string>
#include <vector>

#include "slab_c_wrapper.h"

// void run_slab_examples() {
//   std::vector<SlabInput> examples{Problem1, Problem2, Problem3, Problem4};
//   for (const auto example : examples {
//     run_slab(example);
//   }
// }

int main() {
  dostuff();
  for (int i = 1; i <= 4; i++) {
    run_test_case(&i);
  }
  return 0;
}