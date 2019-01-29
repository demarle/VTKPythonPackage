!/bin/bash
echo "run ./scripts/dockcross-manylinux-build-wheels.sh"
echo "then make a tmp directory and cd into it."

python3 -m venv te
./te/bin/python -m pip install --upgrade pip
./te/bin/python -m pip install numpy
./te/bin/python -m pip install vtk --no-index -f ../dist
echo "NOW te/bin/python and execute some vtk calls"

echo "fails still because there is no vtk/__init__ that imports vtk/vtkmodules/all.py"
echo "and because the libraries are not on a default search path"
echo "to hack around that you can add to LD_LIBRARY_PATH and import directly vtk/vtkmodules/all instead of vtk"
echo "then things work"
