#!/bin/bash

apt-get update && apt-get install -y --no-install-recommends wget
wget --no-check-certificate https://github.com/ISA-tools/mzml2isa-galaxy/raw/master/galaxy/mzml2isa/test-data/metabolomics_study.zip
mkdir /tmp/study-dir
wrapper.py -html_file /tmp/study-dir/index.html -inputzip metabolomics_study.zip -out_dir /tmp/study-dir -study_title "test-study"

# check that files were created
if ! [ -e "/tmp/study-dir/index.html" ]; then
	echo "HTML file doesn't exist"
	exit 1
fi

if ! [ -e "/tmp/study-dir/test-study/i_Investigation.txt" ]; then
	echo "ISA investigation file not found"
	exit 1
fi

echo "All files created successfully"
