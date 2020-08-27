--Management queries
--Code for clearing OMOP CDM tables
delete from person;
delete from visit_occurrence;
delete from measurement;
delete from drug_exposure;
delete from observation_period;
--Code for clearing the databse
DROP SCHEMA your_schema_name CASCADE;
CREATE SCHEMA your_schema_name;