#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd; )
Fasta=$( realpath ""$SCRIPT_DIR"/testdata/TestGenome_sacCer3.fa.gz"; )
Name="testFilteredReference"
Parent=$(realpath ""$SCRIPT_DIR"/testoutput"; )
TargetDir=""$Parent"/"$Name""

rm -r "$TargetDir"

exoclasma-index Reference --fasta "$Fasta" --name "$Name" --parent "$Parent" --contigs '["chrVI", "chrI", "chrVIII", "chrM"]' --description 'Test filtered reference' --no-gatk
