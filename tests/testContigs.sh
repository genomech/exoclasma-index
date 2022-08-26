#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd; )
Fasta=$( realpath ""$SCRIPT_DIR"/testdata/TestGenome_sacCer3.fa.gz"; )

exoclasma-index Contigs --fasta "$Fasta"
