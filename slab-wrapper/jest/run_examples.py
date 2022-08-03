import os
import shutil

build = '../build'
path_to_input = os.path.join(build, 'input')
path_to_predict = os.path.join(build, 'predict')

def run_slab(input_file, output_file):
    os.system(f'../src/build/Slab {input_file} {output_file}')

if __name__ == "__main__":
    run_slab('INPR1', 'OUTPR1')
    run_slab('INPR2', 'OUTPR2')
    run_slab('INPR3', 'OUTPR3')
    run_slab('INPR4', 'OUTPR4')
