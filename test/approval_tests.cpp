#include <filesystem>
#include <fstream>
#include <string>
#include <chrono>
#include <thread>

#include "gtest/gtest.h"
#include "ApprovalTests/Approvals.h"

#include "../src/slab_io.h"
#include "../src/slab_c_wrapper.h"

using namespace ApprovalTests;

namespace fs = std::filesystem;


TEST(slab_tests, INPR1) {

  int n = 1;
  run_test_case(&n);
std::chrono::milliseconds timespan(10000); // or whatever

std::this_thread::sleep_for(timespan);
  const auto output = read_file("/Users/jimmy/Documents/GitHub/disperse/slab-wrapper/src/OUTPR1");

  ApprovalTests::Approvals::verify(output);
}

TEST(slab_tests, INPR2) {
  const auto output = read_file("OUTPR2");
  ApprovalTests::Approvals::verify(output);
}

TEST(slab_tests, INPR3) {
  const auto output = read_file("OUTPR3");
  ApprovalTests::Approvals::verify(output);
}

TEST(slab_tests, INPR4) {
  const auto output = read_file("OUTPR4");
  ApprovalTests::Approvals::verify(output);
}