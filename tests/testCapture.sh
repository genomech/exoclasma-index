#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd; )
BED=$(realpath ""$SCRIPT_DIR"/testdata/TestCapture_sacCer3_Exome.bed"; )
Name="testCapture"
GenomeInfo=$(realpath ""$SCRIPT_DIR"/testoutput/testReference/testReference.info.json"; )
TargetDir=""$SCRIPT_DIR"/testoutput/testReference/capture/"$Name""

rm -r "$TargetDir"

exoclasma-index Capture --bed "$BED" --name "$Name" --genomeinfo "$GenomeInfo"
