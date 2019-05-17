alias l="ls -ahl"
alias ipython2="python -m IPython"

set -gx PATH ~/pacu-v2/bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/esp/xtensa-esp32-elf/bin $PATH

# NPM
set -gx PATH (npm bin) $PATH

set -gx PYTHONPATH ~/scripts
set -gx PYTHONPATH ~/scanbox-analysis/python:$PYTHONPATH
set -gx PYTHONPATH ~/pacu-v2/pacu:$PYTHONPATH


# ESP
set -gx IDF_PATH ~/esp/esp-idf

# VTK Libs
set -gx PYTHONPATH ~/vtk-build2/lib:$PYTHONPATH

# Kitware
#set -gx KITWARE_PATH ~/Code/Kitware
#
## VTK
#set -gx VTK_DATA_ROOT $KITWARE_PATH/src/VTKData
#set -gx VTK_LARGE_DATA_ROOT $KITWARE_PATH/src/VTKLargeData
#set -gx VTK_ROOT $KITWARE_PATH/src/VTK
#
#set -gx VTK_DIR $KITWARE_PATH/build/VTK
#
## For VTK TCL programs.
#set -gx TCLLIBPATH '$VTK_DIR/Wrapping/Tcl'
#alias vtk="$VTK_DIR/bin/vtk"
#
## For VTK Python programs.
#alias vtkpython="$VTK_DIR/bin/vtkpython"
#
## NOTE: Change python2.7 to match the Python version used.
#set -gx VTKPYTHONPATH $VTK_DIR/lib/python2.7/site-packages
#
## NOTE: For VTK 8.1 and earlier, VTKPYTHONPATH should be set to the following instead
## VTKPYTHONPATH $VTK_DIR/Wrapping/Python:$VTK_DIR/lib
#
#set -gx PYTHONPATH $PYTHONPATH:$VTKPYTHONPATH
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
