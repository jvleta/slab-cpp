#include <filesystem>
#include <fstream>
#include <string>

#include "slab_io.h"

std::string
read_file(const std::string& path)
{
  std::ifstream file(path);
  std::string content((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

  return content;
}

// std::string read_file(fs::path path) {
//   // Open the stream to 'lock' the file.
//   std::ifstream f(path, std::ios::in | std::ios::binary);

//   // Obtain the size of the file.
//   const auto sz = fs::file_size(path);

//   // Create a buffer.
//   std::string result(sz, '\0');

//   // Read the whole file into the buffer.
//   f.read(result.data(), sz);

//   return result;
// }