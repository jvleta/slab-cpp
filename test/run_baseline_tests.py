import unittest
import os
import shutil
from approvaltests.approvals import verify

root = os.getcwd()

def run_slab_legacy(case_number):
    path_to_src_dir = '../src/slab-legacy'
    path_to_build_dir = '../build/src/slab-legacy'
    path_to_input = os.path.join(path_to_build_dir, 'input')
    print(case_number)
    input_filename = f'INPR{case_number}'
    output_filename = f'OUTPR{case_number}'
    path_to_input_filename = os.path.join(path_to_src_dir, input_filename)
    shutil.copy(path_to_input_filename, path_to_input)
    os.chdir(path_to_build_dir)
    os.system(f'./Slab')
    path_to_predict = os.path.join(path_to_build_dir, 'predict')
    os.chdir(root)
    shutil.copy(path_to_predict, output_filename)
    with open(output_filename, 'r') as out:
        content = out.read()
    return content


def run_slabcpp(case_number):
    path_to_src_dir = '../src/slab-cpp'
    path_to_build_dir = '../build/src/slab-cpp'
    path_to_input = os.path.join(path_to_build_dir, 'input')
    print(case_number)
    input_filename = f'INPR{case_number}'
    output_filename = f'OUTPR{case_number}'
    path_to_input_filename = os.path.join(path_to_src_dir, input_filename)
    shutil.copy(path_to_input_filename, path_to_input)
    os.chdir(path_to_build_dir)
    os.system(f'./SlabCpp')
    path_to_predict = os.path.join(path_to_build_dir, 'predict')
    os.chdir(root)
    shutil.copy(path_to_predict, output_filename)
    with open(output_filename, 'r') as out:
        content = out.read()
    return content

class SlabLegacyUnitTests(unittest.TestCase):
    
    def test_INPR1(self):
        output = run_slab_legacy(1)
        verify(output)

    def test_INPR2(self):
        output = run_slab_legacy(2)
        verify(output)
        
    def test_INPR3(self):
        output = run_slab_legacy(3)
        verify(output)
        
    def test_INPR4(self):
        output = run_slab_legacy(4)
        verify(output)
        
class SlabCppUnitTests(unittest.TestCase):
    
    def test_INPR1(self):
        output = run_slabcpp(1)
        verify(output)

    def test_INPR2(self):
        output = run_slabcpp(2)
        verify(output)
        
    def test_INPR3(self):
        output = run_slabcpp(3)
        verify(output)
        
    def test_INPR4(self):
        output = run_slabcpp(4)
        verify(output)
        
    
    
if __name__ == "__main__":
    unittest.main()