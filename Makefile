# Makefile to create the activitie and protocols

# INPUT_DIR = $(inputs/csv/)
# OUTPUT_DIR = $(inputs/csv/)

# ALL_CSV = $(wildcard $(INPUT_DIR)*.csv)
# ALL_CSV = $(wildcard data/*.csv)
# INPUT_CSV = $(wildcard data/input_file_*.csv)
# DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
# FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean clean_protocol clean_activities clean_csv

neurovault:
	ecobidas_convert --schema_to_create neurovault

# install:
# 	virtualenv -p python3.8 env
# 	source env/bin/activate
# 	pip install -r requirements.txt
# 	pip install -e python/conversion

clean_csv: 
	rm -f inputs/*.csv

clean_neurovault:
	rm -rf activities/*neuro*
	rm -rf protocols/*neuro*

clean_pet:
	rm -rf activities/*pet*
	rm -rf protocols/*pet*

clean_mri:
	rm -rf activities/*mri*
	rm -rf protocols/*mri*

clean_eyetracker:
	rm -rf activities/*eye*
	rm -rf protocols/*eye*

clean_tests: 
	rm -rf python/*/tests/outputs	

clean_activities: 
	rm -rf activities/**
	rm -rf activities/*eye*
	rm -rf activities/*mri*
	rm -rf activities/*neuro*
	rm -rf activities/*pet*

clean_protocols: 
	rm -rf protocols/**
	rm -rf protocols/*eye*
	rm -rf protocols/*mri*
	rm -rf protocols/*neuro*
	rm -rf protocols/*pet*

clean:
	rm -rf activities/**
	rm -rf protocols/**
	rm -rf activities/*eye*
	rm -rf protocols/*eye*
	rm -rf activities/*mri*
	rm -rf protocols/*mri*
	rm -rf activities/*neuro*
	rm -rf protocols/*neuro*
	rm -rf activities/*pet*
	rm -rf protocols/*pet*