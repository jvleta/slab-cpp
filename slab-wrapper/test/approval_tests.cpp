#include <filesystem>
#include <fstream>
#include <string>

#include "gtest/gtest.h"
#include "ApprovalTests/Approvals.h"

using namespace ApprovalTests;

namespace fs = std::filesystem;

std::string read_file(fs::path path) {
  // Open the stream to 'lock' the file.
  std::ifstream f(path, std::ios::in | std::ios::binary);

  // Obtain the size of the file.
  const auto sz = fs::file_size(path);

  // Create a buffer.
  std::string result(sz, '\0');

  // Read the whole file into the buffer.
  f.read(result.data(), sz);

  return result;
}

TEST(slab_tests, INPR1) {
  const auto output = read_file("OUTPR1");
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