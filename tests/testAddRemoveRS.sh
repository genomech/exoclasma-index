#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd; )
Name="TestRS"
Regexp="GA[ATGC]TC"

exoclasma-index AddRS --n ${Name} --r ''${Regexp}''
exoclasma-index RemoveRS --n ${Name}
