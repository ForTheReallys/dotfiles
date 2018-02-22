#!/usr/bin/python

import os

def FlagsForFile(filename, **kwargs):
    cpp_dirs = os.listdir("/usr/include/c++")
    if cpp_dirs:
        # use the latest version
        cpp_dirs.reverse()
        cpp_dir = cpp_dirs[0]
    else:
        cpp_dir = ""

    flags = ['']
    flags += ['-isystem', '/usr/include']
    flags += ['-isystem', '/usr/local/include']
    flags += ['-I', 'src']
    flags += ['-I', 'include']

    data = kwargs['client_data']

    filetype = data['&filetype']
    if filetype == 'c':
        flags += ['-std=c11']
    elif filetype == 'cpp':
        flags += ['-isystem', '/usr/include/c++/'+cpp_dir]
        flags += ['std=c++11']
        flags += ['stdlib=libc++']

    return {
        'flags': flags
    }
