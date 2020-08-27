# HiRID2OMOP

This repository contains the whole tools and documents to perform an Extract-Transform-Load (ETL) process for mapping the
[HiRID database](https://physionet.org/content/hirid/1.0/) to the [OMOP Common Data Base Model v6.0](https://github.com/OHDSI/CommonDataModel).
The process involved the transformation and creation of OMOP CDM variables based on the HiRID elements.

# The repository

The repository contains the next elements:

 * HiRID_2_CDM.ipynb: The Jupyter notebook is the implementation of the ETL process. It only needs the root directory where the HiRID csv files are located to generate the OMOP CDM tables based on the ETL document.
 * ETL Folder: Folder where the ETL documents needed for the OHDSI tools
   * Rabbit In A Hat Files: This folder contains the save files for Rabbit in a Hat. You can download RabbitInAHat [here](https://www.ohdsi.org/analytic-tools/whiterabbit-for-etl-design/)
   * UsagiFiles: This folder contains the HiRID vocabulary mapping files to OMOP CDM. To use it, you need to download from [Athena](https://athena.ohdsi.org/search-terms/start) these vocabularies.
	  * SNOMED
	  * LOINC
	  * RxNorm
	  * OMOP Gender
	  * RxNorm Extension
	  * OMOP Extension
   * Vocabulary Mapping: The vocabulary mapping from HiRID to OMOP. This file is used to generate the content of OMOP's table source_to_concept_map
	
	


# How to run the Translation Process