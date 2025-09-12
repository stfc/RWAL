# RWAL - Resistive Wall for Arbitrary Layers
### David Posthuma de Boer (ISIS, STFC, UKRI)

This repository contains a Jupyter notebook, RWAL, for evaluating the
beam coupling impedance of infinitely long, multi-layer,
concentric cylindrical structures. It relies on well documented
theory [1, 2] and is not the only code of its kind [3]. Since the EM fields
don't need to be solved in all regions, RWAL uses Cramer's rule
to find expressions for the impedance by solving for the field in
the beam region. Whilst this approach limits the number of material
layers, it has the advantage that the expressions for a given number
of layers are general and can be saved to disk. Solutions for up
to five material layers are included with this repository.


# Dependencies
RWAL requires at least a recent version of Python 3, some python packages
and a method of interacting with jupyter notebooks. 

## Python Dependencies
Python dependencies will be installed during installation, but the
reasons for their inclusion are listed here.

- Sympy - Computer algebra system
- Numpy - For linear algebra & numerics
- Mpmath - Arbitrary precision library for large and small numbers
- gmpy2 - Can make some parts of mpmath faster (optional)
- scipy - For physical constants
- ipykernel - For Jupyter kernel
- matplotlib - For plotting
- tqdm - For a progress bar


## Credits

Wake functions are computed using Filon integration [4]. The implementation
of this has been taken from the package [dynasor](https://gitlab.com/materials-modeling/dynasor). 


# Installing and Running RWAL
The recommended method for using RWAL is to set up a dedicated
Python virtual environment to install its dependencies and then
accessing it from a Jupyter interface. Users that are familiar
with Python and Jupyter can set things up as they prefer, but
some instructions for linux or macos are given below.
Instructions for installing jupyter are not provided.

## Setting up a Virtual Environment
Create a virtual environment for RWAL
```bash
python -m venv ~/.venvs/rwal
```

## Installing Dependencies into new Environment
Activate your new virtual environment
```bash
source ~/.venvs/rwal/bin/activate
```
and install the RWAL dependencies
```bash
python -m pip install -r requirements.txt
```
and deactivate the environment
```bash
deactivate
```

## Make a Jupyter kernel for new Environment
Ensure the virtual environment is active
```bash
source ~/.venvs/rwal/bin/activate
```
then install a new jupyter kernel
```bash
ipython kernel install --user --name=RWAL
```
and deactivate the environment
```bash
deactivate
```

## Open the RWAL notebook in Jupyter
If you run Jupyter lab, you will find a new kernel option called *RWAL*. This
will be a python kernel with the packages you just installed. Make sure this
is selected when running RWAL. Once the notebook has been opened, the
example problem can be run by clicking the "run all cells" button in Jupyter.

# References

1) B. W. Zotter, ‘Transverse oscillations of a relativistic particle beam in a laminated vacuum chamber’, CERN 69-15, June 1969. doi: 10.5170/CERN-1969-015.
2) R. L. Gluckstern, ‘Analytic Methods for Calculating Coupling Impedances’, CERN, CERN-2000-011, 2000. doi: 10.5170/CERN-2000-011.
3) https://gitlab.cern.ch/IRIS/IW2D
4)  Alfredo Deaño et. al, "Computing Highly Oscillatory Integrals", SIAM - Society for Industrial and Applied Mathematics, 2018, ISBN13: 978-1611975116.


