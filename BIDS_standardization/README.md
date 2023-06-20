Code for data standardization of human electrophysiology


This repository exist of:

* Folder with BIDS template of electrocorticography and local field potentials (Charité mock example)
* Folder BIDS MEG template (Düsseldorf)
* electronic Labbook template for electrophysiological recordings
* CHARITE_CHANNEL_NAMING.xlsx file with renaming file

Python-based:

* BIDS input tool to convert .poly5 to brainvision or to standardize brainvision files into json-metadata including
**   BIDS_input_frontend.ipynb (PyWidgets input frame)
**   BIDS_input_backend.py (providing the settings for the PyWidgets)
=> this provides an output of each recording in .json medadata file

Matlab-based:
* BIDS conversion tool to converts .json metadata file into BIDS
**   call function: BIDS_data_quality_control
**   settings function: BIDS_retrieve_fieldtrip_settings

GUI-based (python)
* relabelling tool: v22_relabeltool_Neumann_Lab.py

Python-based:
* convert existing raw BIDS dataset into metadata .json files or CSV files
**   BIDS_read_rawdata_to_metadata.py
**   BIDS_read_rawdata_to_csv.py
Notebooks:
* split recordings (WIP) of Poly5 files
* Quality Check plotting (WIP) of Poly5 and brainvision files

