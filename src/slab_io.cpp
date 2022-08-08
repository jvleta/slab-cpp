#include <filesystem>
#include <fstream>
#include <string>
#include <sstream>

using std::ifstream; using std::ostringstream;

std::string read_file(std::string path) {
    auto ss = ostringstream{};
    ifstream input_file(path);
    ss << input_file.rdbuf();
    return ss.str();
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