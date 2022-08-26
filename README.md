# exoclasma-index

## Description

exoclasma-index is a tools for reference sequence and capture intervals preparation, a part of upcoming ExoClasma Suite.

Features:

- Prepare FASTA reference sequence (purge names, uncompress, sort and filter contigs, etc.)
- Create restriction sites for [Juicer](https://github.com/aidenlab/juicer) as described at `config.json`.
For now available restrictases include:
	- HindIII
	- DpnII
	- MboI
	- Sau3AI
	- Arima
- Add your own restriction sites.
- Create indices for:
	- SAMtools (`samtools faidx`)
	- BWA (`bwa index`)
	- optional: GATK (`gatk CreateSequenceDictionary`)

Also, the tool can check and prepare exome BED files (captures).

**This is a pre-release. Use it at your own risk!**

## Installation

```bash
python3 -m pip install exoclasma-index
```

## Command-line dependencies

- [SAMtools](https://github.com/samtools/samtools)
- [BWA](https://github.com/lh3/bwa)
- [BEDtools](https://github.com/arq5x/bedtools2)
- [GATK](https://github.com/broadinstitute/gatk)

First three are available at Ubuntu repos:

```bash
apt install samtools bwa bedtools
```

GATK should be installed into Miniconda environment [as described by the developer](https://github.com/broadinstitute/gatk#requirements).

## Usage

### Reference preparation

```bash
exoclasma-index Reference -f ${FastaFile} -n ${ReferenceName} -p ${ParentDirectory}
```

Optional:  `-d ${ReferenceDescription}`, `--no-gatk`, `-c ${Contigs}`.

Contigs may be filtered or sorted with `-c` option.
Full list of FASTA contigs can be displayed via

```bash
exoclasma-index Contigs -f ${FastaFile}
```

### Capture preparation

```bash
exoclasma-index Capture -b ${BedFile} -n ${CaptureName} -g ${GenomeInfoJSON}
```

`GenomeInfoJSON` is a JSON file which created via `exoclasma-index Reference`.

Optional:  `-d ${ReferenceDescription}`

### Restriction sites manipulation

Restriction sites can be displayed, added, or removed:

```bash
exoclasma-index RestrictionSites
exoclasma-index AddRS -n ${RestrictionSiteName} -r ''${RestrictionSiteRegExp}''
exoclasma-index RemoveRS -n ${RestrictionSiteName}
```
