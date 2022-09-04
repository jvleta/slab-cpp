#include <filesystem>
#include <fstream>
#include <string>
#include <chrono>
#include <thread>

#include "gtest/gtest.h"
#include "ApprovalTests/Approvals.h"

#include "../src/slab-cpp/slab_io.h"
#include "../src/slab-cpp/slab_c_wrapper.h"

// using namespace ApprovalTests;

namespace fs = std::filesystem;

std::string run(int n) {
  run_test_case(&n);
  std::chrono::milliseconds timespan(2000);
  std::this_thread::sleep_for(timespan);
  return read_file("/Users/jimmy/Documents/GitHub/lastra/src/OUTPR" + std::to_string(n));
}

TEST(slab_tests, INPR1) {
  const auto output = run(1);
  ApprovalTests::Approvals::verify(output);
  ApprovalTests::Approvals::verify(output);
}

TEST(slab_tests, INPR2) {
  const auto output = run(2);
  ApprovalTests::Approvals::verify(output);
}

TEST(slab_tests, INPR3) {
  const auto output = run(3);
  ApprovalTests::Approvals::verify(output);
}

TEST(slab_tests, INPR4) {
  const auto output = run(4);
  ApprovalTests::Approvals::verify(output);
}
