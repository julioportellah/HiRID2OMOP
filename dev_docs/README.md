# Developer Log

This is the developer log where I put the initial issues for the project. Further issues will be uploaded to the issues section at github

## Suggestions from Hyeoneui

 1. Yellow highlights: change the mapped concept code and/or OMOP CDM table. I suggested a few codes from SNOMED-CT
 2. Suggested codes without yellow highlights – something to consider.  If component level of mapping is sufficient, RxNorm already provides many exact matches. If brand names are important, keep the current extension mapping.
 3. I schemed through the Exact matches of RxNorm and spot check 30-40 matches. They all looked fine. If time permits, having someone with clinical background review 30-40 random cases just to be safe.
 
## Things to do

 1. Perform a random review of 30 - 40 translated pharmaceutical items
 2. Keep updating the source_to_map
 
## Instructions

 1. Download OMOP CDM [USAGI](https://github.com/OHDSI/Usagi/releases)
 
 2. Download a vocabulary from athena. Make sure to have these vocabularies
	* LOINC
	* SNOMED
	* RxNorm
	* Gender
	* RxNorm Extension
	* OMOP Extension
 
 3. Set Usagi's code based on the vocabulary downloaded in part 2. Use: **File/Import Codes**
 
 4. Go to dev_docs and download usag_source_DAYMONTH.csv and load it into Usagi. **Use File/Open**
 
 5. Review, approve, change the vocabularies.
