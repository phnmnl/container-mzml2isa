![Logo](logo.png)

# mzml2isa
Version: 0.4.28

## Short Description

A container image definition for the mzml2isa python tool

## Description

mzml2isa is a Python3 program that can automatically generate ISA-Tab document structure metadata files from raw XML metabolomics data files (mzML open access data format). The mzml2ISA tool provides the backbone of ISA-Tab metabolomics study which can then be edited with an ISA editing tool, ISAcreator.

## Key features

- Extract meta information from mzML files and stores it as either python dictionary or JSON format
- Creates an ISA-Tab file structure with relevant meta information filled in.
- Add additional metadata that cannot be parsed from mzML files to the ISA-Tab files through a JSON formatted dictionnary.

## Functionality

- Data Management / Study Metadata Extraction from Raw Data

## Approaches

- Metabolomics
- Isotopic Labelling Analysis

## Instrument Data Types

- MS

## Tool Authors

- [Martin Larralde](https://github.com/althonos) (ENS Cachan)
- [Thomas N. Lawson](https://github.com/Tomnl) (U. of Birmingham)


## Container Contributors

- [Pablo Moreno](https://github.com/pcm32) (EMBL-EBI)
- [Kristian Peters](https://github.com/korseby) (IPB Halle)
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford)

## Website

- https://github.com/ISA-tools/mzml2isa


## Git Repository

- https://github.com/phnmnl/container-mzml2isa.git

## Installation 

This tool is preloaded in PhenoMeNal Galaxy deployments.

For local individual installation:

```bash
docker pull container-registry.phenomenal-h2020.eu/phnmnl/mzml2isa
```

## Usage Instructions

Available on PhenoMeNal Galaxy instances under PhenoMeNal H2020 Tools -> MS.

For direct docker usage:

```bash
docker run -v $PWD:/data container-registry.phenomenal-h2020.eu/phnmnl/mzml2isa -i /data/mzml_files/ -o /data/out_folder/ -s name_of_study
```

## Publications

- Rocca-Serra, P., Brandizi, M., Maguire, E., Sklyar, N., Taylor, C., Begley, K., ... & Neumann, S. (2010). ISA software suite: supporting standards-compliant experimental annotation and enabling curation at the community level. Bioinformatics, 26(18), 2354-2356.
