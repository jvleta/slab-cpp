include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.11.0
)
FetchContent_MakeAvailable(googletest)

FetchContent_Declare(ApprovalTests
        GIT_REPOSITORY https://github.com/approvals/ApprovalTests.cpp.git
        GIT_TAG master)

FetchContent_MakeAvailable(ApprovalTests)

add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest_main)

add_executable(slab_approval_tests approval_tests.cpp main.cpp)

enable_language(Fortran)
target_link_libraries(slab_approval_tests
  ApprovalTests::ApprovalTests
  GTest::GTest
  slabwrapper
  )
  
add_test(slab_approval_tests slab_approval_tests)
