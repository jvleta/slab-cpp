import os
import shutil

build = '../build'
path_to_input = os.path.join(build, 'input')
path_to_predict = os.path.join(build, 'predict')

def run_slab(input_file):
    if os.path.exists('predict'):
        os.remove('predict')
    shutil.copy(input_file, 'input')
    os.system('../build/Slab')
    shutil.move('predict', f'OUT{input_file[-3:]}')

if __name__ == "__main__":
    run_slab('INPR1')
    run_slab('INPR2')
    run_slab('INPR3')
    run_slab('INPR4')
