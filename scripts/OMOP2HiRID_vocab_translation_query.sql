--Ths is the Query to insert the vocabilary and vocabulary translations
COPY concept(concept_id,concept_name,domain_id,vocabulary_id,concept_class_id,standard_concept,concept_code,valid_start_date,
			valid_end_date,invalid_reason)
FROM 'your_vocabulary_folder_goes_here\CONCEPT.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY concept_ancestor(ancestor_concept_id,descendant_concept_id,min_levels_of_separation,max_levels_of_separation)
FROM 'your_vocabulary_folder_goes_here\CONCEPT_ANCESTOR.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY concept_class(concept_class_id,concept_class_name,concept_class_concept_id)
FROM 'your_vocabulary_folder_goes_here\CONCEPT_CLASS.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY concept_relationship(concept_id_1,concept_id_2,relationship_id,valid_start_date,valid_end_date,invalid_reason)
FROM 'your_vocabulary_folder_goes_here\CONCEPT_RELATIONSHIP.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY concept_synonym(concept_id,concept_synonym_name,language_concept_id)
FROM 'your_vocabulary_folder_goes_here\CONCEPT_SYNONYM.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY domain(domain_id,domain_name,domain_concept_id)
FROM 'your_vocabulary_folder_goes_here\DOMAIN.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY drug_strength(drug_concept_id,ingredient_concept_id,amount_value,amount_unit_concept_id,numerator_value,numerator_unit_concept_id
		   ,denominator_value,denominator_unit_concept_id,box_size,valid_start_date,valid_end_date,invalid_reason)
FROM 'your_vocabulary_folder_goes_here\DRUG_STRENGTH.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';

COPY relationship(relationship_id,relationship_name,is_hierarchical,defines_ancestry,reverse_relationship_id,relationship_concept_id)
FROM 'your_vocabulary_folder_goes_here\RELATIONSHIP.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';
 
COPY vocabulary(vocabulary_id,vocabulary_name,vocabulary_reference,vocabulary_version,vocabulary_concept_id)
FROM 'your_vocabulary_folder_goes_here\VOCABULARY.csv'
DELIMITER E'\t'
CSV HEADER  QUOTE E'\b';


COPY source_to_concept_map(source_code,source_concept_id,source_vocabulary_id,source_code_description,target_concept_id,target_vocabulary_id,valid_start_date,valid_end_date,invalid_reason)
FROM 'your_directory\Source_to_omop.csv'
DELIMITER ','
CSV HEADER;